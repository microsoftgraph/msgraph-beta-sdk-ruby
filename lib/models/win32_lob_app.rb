require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties and inherited properties for Win32 apps.
        class Win32LobApp < MicrosoftGraphBeta::Models::MobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, indicates that uninstall is supported from the company portal for the Windows app (Win32) with an Available assignment. When FALSE, indicates that uninstall is not supported for the Windows app (Win32) with an Available assignment. Default value is FALSE.
            @allow_available_uninstall
            ## 
            # Contains properties for Windows architecture.
            @applicable_architectures
            ## 
            # The detection rules to detect Win32 Line of Business (LoB) app.
            @detection_rules
            ## 
            # The version displayed in the UX for this app.
            @display_version
            ## 
            # The command line to install this app
            @install_command_line
            ## 
            # The install experience for this app.
            @install_experience
            ## 
            # The value for the minimum CPU speed which is required to install this app.
            @minimum_cpu_speed_in_m_hz
            ## 
            # The value for the minimum free disk space which is required to install this app.
            @minimum_free_disk_space_in_m_b
            ## 
            # The value for the minimum physical memory which is required to install this app.
            @minimum_memory_in_m_b
            ## 
            # The value for the minimum number of processors which is required to install this app.
            @minimum_number_of_processors
            ## 
            # The value for the minimum applicable operating system.
            @minimum_supported_operating_system
            ## 
            # The value for the minimum supported windows release.
            @minimum_supported_windows_release
            ## 
            # The MSI details if this Win32 app is an MSI app.
            @msi_information
            ## 
            # The requirement rules to detect Win32 Line of Business (LoB) app.
            @requirement_rules
            ## 
            # The return codes for post installation behavior.
            @return_codes
            ## 
            # The detection and requirement rules for this app.
            @rules
            ## 
            # The relative path of the setup file in the encrypted Win32LobApp package.
            @setup_file_path
            ## 
            # The command line to uninstall this app
            @uninstall_command_line
            ## 
            ## Gets the allowAvailableUninstall property value. When TRUE, indicates that uninstall is supported from the company portal for the Windows app (Win32) with an Available assignment. When FALSE, indicates that uninstall is not supported for the Windows app (Win32) with an Available assignment. Default value is FALSE.
            ## @return a boolean
            ## 
            def allow_available_uninstall
                return @allow_available_uninstall
            end
            ## 
            ## Sets the allowAvailableUninstall property value. When TRUE, indicates that uninstall is supported from the company portal for the Windows app (Win32) with an Available assignment. When FALSE, indicates that uninstall is not supported for the Windows app (Win32) with an Available assignment. Default value is FALSE.
            ## @param value Value to set for the allowAvailableUninstall property.
            ## @return a void
            ## 
            def allow_available_uninstall=(value)
                @allow_available_uninstall = value
            end
            ## 
            ## Gets the applicableArchitectures property value. Contains properties for Windows architecture.
            ## @return a windows_architecture
            ## 
            def applicable_architectures
                return @applicable_architectures
            end
            ## 
            ## Sets the applicableArchitectures property value. Contains properties for Windows architecture.
            ## @param value Value to set for the applicableArchitectures property.
            ## @return a void
            ## 
            def applicable_architectures=(value)
                @applicable_architectures = value
            end
            ## 
            ## Instantiates a new Win32LobApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32LobApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.win32CatalogApp"
                            return Win32CatalogApp.new
                    end
                end
                return Win32LobApp.new
            end
            ## 
            ## Gets the detectionRules property value. The detection rules to detect Win32 Line of Business (LoB) app.
            ## @return a win32_lob_app_detection
            ## 
            def detection_rules
                return @detection_rules
            end
            ## 
            ## Sets the detectionRules property value. The detection rules to detect Win32 Line of Business (LoB) app.
            ## @param value Value to set for the detectionRules property.
            ## @return a void
            ## 
            def detection_rules=(value)
                @detection_rules = value
            end
            ## 
            ## Gets the displayVersion property value. The version displayed in the UX for this app.
            ## @return a string
            ## 
            def display_version
                return @display_version
            end
            ## 
            ## Sets the displayVersion property value. The version displayed in the UX for this app.
            ## @param value Value to set for the displayVersion property.
            ## @return a void
            ## 
            def display_version=(value)
                @display_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowAvailableUninstall" => lambda {|n| @allow_available_uninstall = n.get_boolean_value() },
                    "applicableArchitectures" => lambda {|n| @applicable_architectures = n.get_enum_values(MicrosoftGraphBeta::Models::WindowsArchitecture) },
                    "detectionRules" => lambda {|n| @detection_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Win32LobAppDetection.create_from_discriminator_value(pn) }) },
                    "displayVersion" => lambda {|n| @display_version = n.get_string_value() },
                    "installCommandLine" => lambda {|n| @install_command_line = n.get_string_value() },
                    "installExperience" => lambda {|n| @install_experience = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Win32LobAppInstallExperience.create_from_discriminator_value(pn) }) },
                    "minimumCpuSpeedInMHz" => lambda {|n| @minimum_cpu_speed_in_m_hz = n.get_number_value() },
                    "minimumFreeDiskSpaceInMB" => lambda {|n| @minimum_free_disk_space_in_m_b = n.get_number_value() },
                    "minimumMemoryInMB" => lambda {|n| @minimum_memory_in_m_b = n.get_number_value() },
                    "minimumNumberOfProcessors" => lambda {|n| @minimum_number_of_processors = n.get_number_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "minimumSupportedWindowsRelease" => lambda {|n| @minimum_supported_windows_release = n.get_string_value() },
                    "msiInformation" => lambda {|n| @msi_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Win32LobAppMsiInformation.create_from_discriminator_value(pn) }) },
                    "requirementRules" => lambda {|n| @requirement_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Win32LobAppRequirement.create_from_discriminator_value(pn) }) },
                    "returnCodes" => lambda {|n| @return_codes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Win32LobAppReturnCode.create_from_discriminator_value(pn) }) },
                    "rules" => lambda {|n| @rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Win32LobAppRule.create_from_discriminator_value(pn) }) },
                    "setupFilePath" => lambda {|n| @setup_file_path = n.get_string_value() },
                    "uninstallCommandLine" => lambda {|n| @uninstall_command_line = n.get_string_value() },
                })
            end
            ## 
            ## Gets the installCommandLine property value. The command line to install this app
            ## @return a string
            ## 
            def install_command_line
                return @install_command_line
            end
            ## 
            ## Sets the installCommandLine property value. The command line to install this app
            ## @param value Value to set for the installCommandLine property.
            ## @return a void
            ## 
            def install_command_line=(value)
                @install_command_line = value
            end
            ## 
            ## Gets the installExperience property value. The install experience for this app.
            ## @return a win32_lob_app_install_experience
            ## 
            def install_experience
                return @install_experience
            end
            ## 
            ## Sets the installExperience property value. The install experience for this app.
            ## @param value Value to set for the installExperience property.
            ## @return a void
            ## 
            def install_experience=(value)
                @install_experience = value
            end
            ## 
            ## Gets the minimumCpuSpeedInMHz property value. The value for the minimum CPU speed which is required to install this app.
            ## @return a integer
            ## 
            def minimum_cpu_speed_in_m_hz
                return @minimum_cpu_speed_in_m_hz
            end
            ## 
            ## Sets the minimumCpuSpeedInMHz property value. The value for the minimum CPU speed which is required to install this app.
            ## @param value Value to set for the minimumCpuSpeedInMHz property.
            ## @return a void
            ## 
            def minimum_cpu_speed_in_m_hz=(value)
                @minimum_cpu_speed_in_m_hz = value
            end
            ## 
            ## Gets the minimumFreeDiskSpaceInMB property value. The value for the minimum free disk space which is required to install this app.
            ## @return a integer
            ## 
            def minimum_free_disk_space_in_m_b
                return @minimum_free_disk_space_in_m_b
            end
            ## 
            ## Sets the minimumFreeDiskSpaceInMB property value. The value for the minimum free disk space which is required to install this app.
            ## @param value Value to set for the minimumFreeDiskSpaceInMB property.
            ## @return a void
            ## 
            def minimum_free_disk_space_in_m_b=(value)
                @minimum_free_disk_space_in_m_b = value
            end
            ## 
            ## Gets the minimumMemoryInMB property value. The value for the minimum physical memory which is required to install this app.
            ## @return a integer
            ## 
            def minimum_memory_in_m_b
                return @minimum_memory_in_m_b
            end
            ## 
            ## Sets the minimumMemoryInMB property value. The value for the minimum physical memory which is required to install this app.
            ## @param value Value to set for the minimumMemoryInMB property.
            ## @return a void
            ## 
            def minimum_memory_in_m_b=(value)
                @minimum_memory_in_m_b = value
            end
            ## 
            ## Gets the minimumNumberOfProcessors property value. The value for the minimum number of processors which is required to install this app.
            ## @return a integer
            ## 
            def minimum_number_of_processors
                return @minimum_number_of_processors
            end
            ## 
            ## Sets the minimumNumberOfProcessors property value. The value for the minimum number of processors which is required to install this app.
            ## @param value Value to set for the minimumNumberOfProcessors property.
            ## @return a void
            ## 
            def minimum_number_of_processors=(value)
                @minimum_number_of_processors = value
            end
            ## 
            ## Gets the minimumSupportedOperatingSystem property value. The value for the minimum applicable operating system.
            ## @return a windows_minimum_operating_system
            ## 
            def minimum_supported_operating_system
                return @minimum_supported_operating_system
            end
            ## 
            ## Sets the minimumSupportedOperatingSystem property value. The value for the minimum applicable operating system.
            ## @param value Value to set for the minimumSupportedOperatingSystem property.
            ## @return a void
            ## 
            def minimum_supported_operating_system=(value)
                @minimum_supported_operating_system = value
            end
            ## 
            ## Gets the minimumSupportedWindowsRelease property value. The value for the minimum supported windows release.
            ## @return a string
            ## 
            def minimum_supported_windows_release
                return @minimum_supported_windows_release
            end
            ## 
            ## Sets the minimumSupportedWindowsRelease property value. The value for the minimum supported windows release.
            ## @param value Value to set for the minimumSupportedWindowsRelease property.
            ## @return a void
            ## 
            def minimum_supported_windows_release=(value)
                @minimum_supported_windows_release = value
            end
            ## 
            ## Gets the msiInformation property value. The MSI details if this Win32 app is an MSI app.
            ## @return a win32_lob_app_msi_information
            ## 
            def msi_information
                return @msi_information
            end
            ## 
            ## Sets the msiInformation property value. The MSI details if this Win32 app is an MSI app.
            ## @param value Value to set for the msiInformation property.
            ## @return a void
            ## 
            def msi_information=(value)
                @msi_information = value
            end
            ## 
            ## Gets the requirementRules property value. The requirement rules to detect Win32 Line of Business (LoB) app.
            ## @return a win32_lob_app_requirement
            ## 
            def requirement_rules
                return @requirement_rules
            end
            ## 
            ## Sets the requirementRules property value. The requirement rules to detect Win32 Line of Business (LoB) app.
            ## @param value Value to set for the requirementRules property.
            ## @return a void
            ## 
            def requirement_rules=(value)
                @requirement_rules = value
            end
            ## 
            ## Gets the returnCodes property value. The return codes for post installation behavior.
            ## @return a win32_lob_app_return_code
            ## 
            def return_codes
                return @return_codes
            end
            ## 
            ## Sets the returnCodes property value. The return codes for post installation behavior.
            ## @param value Value to set for the returnCodes property.
            ## @return a void
            ## 
            def return_codes=(value)
                @return_codes = value
            end
            ## 
            ## Gets the rules property value. The detection and requirement rules for this app.
            ## @return a win32_lob_app_rule
            ## 
            def rules
                return @rules
            end
            ## 
            ## Sets the rules property value. The detection and requirement rules for this app.
            ## @param value Value to set for the rules property.
            ## @return a void
            ## 
            def rules=(value)
                @rules = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowAvailableUninstall", @allow_available_uninstall)
                writer.write_enum_value("applicableArchitectures", @applicable_architectures)
                writer.write_collection_of_object_values("detectionRules", @detection_rules)
                writer.write_string_value("displayVersion", @display_version)
                writer.write_string_value("installCommandLine", @install_command_line)
                writer.write_object_value("installExperience", @install_experience)
                writer.write_number_value("minimumCpuSpeedInMHz", @minimum_cpu_speed_in_m_hz)
                writer.write_number_value("minimumFreeDiskSpaceInMB", @minimum_free_disk_space_in_m_b)
                writer.write_number_value("minimumMemoryInMB", @minimum_memory_in_m_b)
                writer.write_number_value("minimumNumberOfProcessors", @minimum_number_of_processors)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("minimumSupportedWindowsRelease", @minimum_supported_windows_release)
                writer.write_object_value("msiInformation", @msi_information)
                writer.write_collection_of_object_values("requirementRules", @requirement_rules)
                writer.write_collection_of_object_values("returnCodes", @return_codes)
                writer.write_collection_of_object_values("rules", @rules)
                writer.write_string_value("setupFilePath", @setup_file_path)
                writer.write_string_value("uninstallCommandLine", @uninstall_command_line)
            end
            ## 
            ## Gets the setupFilePath property value. The relative path of the setup file in the encrypted Win32LobApp package.
            ## @return a string
            ## 
            def setup_file_path
                return @setup_file_path
            end
            ## 
            ## Sets the setupFilePath property value. The relative path of the setup file in the encrypted Win32LobApp package.
            ## @param value Value to set for the setupFilePath property.
            ## @return a void
            ## 
            def setup_file_path=(value)
                @setup_file_path = value
            end
            ## 
            ## Gets the uninstallCommandLine property value. The command line to uninstall this app
            ## @return a string
            ## 
            def uninstall_command_line
                return @uninstall_command_line
            end
            ## 
            ## Sets the uninstallCommandLine property value. The command line to uninstall this app
            ## @param value Value to set for the uninstallCommandLine property.
            ## @return a void
            ## 
            def uninstall_command_line=(value)
                @uninstall_command_line = value
            end
        end
    end
end
