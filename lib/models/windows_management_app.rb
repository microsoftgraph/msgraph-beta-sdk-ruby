require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows management app entity.
        class WindowsManagementApp < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Windows management app available version.
            @available_version
            ## 
            # The list of health states for installed Windows management app.
            @health_states
            ## 
            # ManagedInstallerStatus
            @managed_installer
            ## 
            # Managed Installer Configured Date Time
            @managed_installer_configured_date_time
            ## 
            ## Gets the availableVersion property value. Windows management app available version.
            ## @return a string
            ## 
            def available_version
                return @available_version
            end
            ## 
            ## Sets the availableVersion property value. Windows management app available version.
            ## @param value Value to set for the available_version property.
            ## @return a void
            ## 
            def available_version=(value)
                @available_version = value
            end
            ## 
            ## Instantiates a new windowsManagementApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_management_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsManagementApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "availableVersion" => lambda {|n| @available_version = n.get_string_value() },
                    "healthStates" => lambda {|n| @health_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsManagementAppHealthState.create_from_discriminator_value(pn) }) },
                    "managedInstaller" => lambda {|n| @managed_installer = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedInstallerStatus) },
                    "managedInstallerConfiguredDateTime" => lambda {|n| @managed_installer_configured_date_time = n.get_string_value() },
                })
            end
            ## 
            ## Gets the healthStates property value. The list of health states for installed Windows management app.
            ## @return a windows_management_app_health_state
            ## 
            def health_states
                return @health_states
            end
            ## 
            ## Sets the healthStates property value. The list of health states for installed Windows management app.
            ## @param value Value to set for the health_states property.
            ## @return a void
            ## 
            def health_states=(value)
                @health_states = value
            end
            ## 
            ## Gets the managedInstaller property value. ManagedInstallerStatus
            ## @return a managed_installer_status
            ## 
            def managed_installer
                return @managed_installer
            end
            ## 
            ## Sets the managedInstaller property value. ManagedInstallerStatus
            ## @param value Value to set for the managed_installer property.
            ## @return a void
            ## 
            def managed_installer=(value)
                @managed_installer = value
            end
            ## 
            ## Gets the managedInstallerConfiguredDateTime property value. Managed Installer Configured Date Time
            ## @return a string
            ## 
            def managed_installer_configured_date_time
                return @managed_installer_configured_date_time
            end
            ## 
            ## Sets the managedInstallerConfiguredDateTime property value. Managed Installer Configured Date Time
            ## @param value Value to set for the managed_installer_configured_date_time property.
            ## @return a void
            ## 
            def managed_installer_configured_date_time=(value)
                @managed_installer_configured_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("availableVersion", @available_version)
                writer.write_collection_of_object_values("healthStates", @health_states)
                writer.write_enum_value("managedInstaller", @managed_installer)
                writer.write_string_value("managedInstallerConfiguredDateTime", @managed_installer_configured_date_time)
            end
        end
    end
end
