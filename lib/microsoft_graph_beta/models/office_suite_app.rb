require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OfficeSuiteApp < MicrosoftGraphBeta::Models::MobileApp
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The value to accept the EULA automatically on the enduser's device.
        @auto_accept_eula
        ## 
        # The property to represent the apps which are excluded from the selected Office365 Product Id.
        @excluded_apps
        ## 
        # The Enum to specify the level of display for the Installation Progress Setup UI on the Device.
        @install_progress_display_level
        ## 
        # The property to represent the locales which are installed when the apps from Office365 is installed. It uses standard RFC 6033. Ref: https://technet.microsoft.com/library/cc179219(v=office.16).aspx
        @locales_to_install
        ## 
        # The property to represent the XML configuration file that can be specified for Office ProPlus Apps. Takes precedence over all other properties. When present, the XML configuration file will be used to create the app.
        @office_configuration_xml
        ## 
        # Contains properties for Windows architecture.
        @office_platform_architecture
        ## 
        # Describes the OfficeSuiteApp file format types that can be selected.
        @office_suite_app_default_file_format
        ## 
        # The Product Ids that represent the Office365 Suite SKU.
        @product_ids
        ## 
        # The property to determine whether to uninstall existing Office MSI if an Office365 app suite is deployed to the device or not.
        @should_uninstall_older_versions_of_office
        ## 
        # The property to represent the specific target version for the Office365 app suite that should be remained deployed on the devices.
        @target_version
        ## 
        # The Enum to specify the Office365 Updates Channel.
        @update_channel
        ## 
        # The property to represent the update version in which the specific target version is available for the Office365 app suite.
        @update_version
        ## 
        # The property to represent that whether the shared computer activation is used not for Office365 app suite.
        @use_shared_computer_activation
        ## 
        ## Gets the autoAcceptEula property value. The value to accept the EULA automatically on the enduser's device.
        ## @return a boolean
        ## 
        def auto_accept_eula
            return @auto_accept_eula
        end
        ## 
        ## Sets the autoAcceptEula property value. The value to accept the EULA automatically on the enduser's device.
        ## @param value Value to set for the autoAcceptEula property.
        ## @return a void
        ## 
        def auto_accept_eula=(value)
            @auto_accept_eula = value
        end
        ## 
        ## Instantiates a new OfficeSuiteApp and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.officeSuiteApp"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a office_suite_app
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OfficeSuiteApp.new
        end
        ## 
        ## Gets the excludedApps property value. The property to represent the apps which are excluded from the selected Office365 Product Id.
        ## @return a excluded_apps
        ## 
        def excluded_apps
            return @excluded_apps
        end
        ## 
        ## Sets the excludedApps property value. The property to represent the apps which are excluded from the selected Office365 Product Id.
        ## @param value Value to set for the excludedApps property.
        ## @return a void
        ## 
        def excluded_apps=(value)
            @excluded_apps = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "autoAcceptEula" => lambda {|n| @auto_accept_eula = n.get_boolean_value() },
                "excludedApps" => lambda {|n| @excluded_apps = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ExcludedApps.create_from_discriminator_value(pn) }) },
                "installProgressDisplayLevel" => lambda {|n| @install_progress_display_level = n.get_enum_value(MicrosoftGraphBeta::Models::OfficeSuiteInstallProgressDisplayLevel) },
                "localesToInstall" => lambda {|n| @locales_to_install = n.get_collection_of_primitive_values(String) },
                "officeConfigurationXml" => lambda {|n| @office_configuration_xml = n.get_string_value() },
                "officePlatformArchitecture" => lambda {|n| @office_platform_architecture = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsArchitecture) },
                "officeSuiteAppDefaultFileFormat" => lambda {|n| @office_suite_app_default_file_format = n.get_enum_value(MicrosoftGraphBeta::Models::OfficeSuiteDefaultFileFormatType) },
                "productIds" => lambda {|n| @product_ids = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OfficeProductId.create_from_discriminator_value(pn) }) },
                "shouldUninstallOlderVersionsOfOffice" => lambda {|n| @should_uninstall_older_versions_of_office = n.get_boolean_value() },
                "targetVersion" => lambda {|n| @target_version = n.get_string_value() },
                "updateChannel" => lambda {|n| @update_channel = n.get_enum_value(MicrosoftGraphBeta::Models::OfficeUpdateChannel) },
                "updateVersion" => lambda {|n| @update_version = n.get_string_value() },
                "useSharedComputerActivation" => lambda {|n| @use_shared_computer_activation = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the installProgressDisplayLevel property value. The Enum to specify the level of display for the Installation Progress Setup UI on the Device.
        ## @return a office_suite_install_progress_display_level
        ## 
        def install_progress_display_level
            return @install_progress_display_level
        end
        ## 
        ## Sets the installProgressDisplayLevel property value. The Enum to specify the level of display for the Installation Progress Setup UI on the Device.
        ## @param value Value to set for the installProgressDisplayLevel property.
        ## @return a void
        ## 
        def install_progress_display_level=(value)
            @install_progress_display_level = value
        end
        ## 
        ## Gets the localesToInstall property value. The property to represent the locales which are installed when the apps from Office365 is installed. It uses standard RFC 6033. Ref: https://technet.microsoft.com/library/cc179219(v=office.16).aspx
        ## @return a string
        ## 
        def locales_to_install
            return @locales_to_install
        end
        ## 
        ## Sets the localesToInstall property value. The property to represent the locales which are installed when the apps from Office365 is installed. It uses standard RFC 6033. Ref: https://technet.microsoft.com/library/cc179219(v=office.16).aspx
        ## @param value Value to set for the localesToInstall property.
        ## @return a void
        ## 
        def locales_to_install=(value)
            @locales_to_install = value
        end
        ## 
        ## Gets the officeConfigurationXml property value. The property to represent the XML configuration file that can be specified for Office ProPlus Apps. Takes precedence over all other properties. When present, the XML configuration file will be used to create the app.
        ## @return a binary
        ## 
        def office_configuration_xml
            return @office_configuration_xml
        end
        ## 
        ## Sets the officeConfigurationXml property value. The property to represent the XML configuration file that can be specified for Office ProPlus Apps. Takes precedence over all other properties. When present, the XML configuration file will be used to create the app.
        ## @param value Value to set for the officeConfigurationXml property.
        ## @return a void
        ## 
        def office_configuration_xml=(value)
            @office_configuration_xml = value
        end
        ## 
        ## Gets the officePlatformArchitecture property value. Contains properties for Windows architecture.
        ## @return a windows_architecture
        ## 
        def office_platform_architecture
            return @office_platform_architecture
        end
        ## 
        ## Sets the officePlatformArchitecture property value. Contains properties for Windows architecture.
        ## @param value Value to set for the officePlatformArchitecture property.
        ## @return a void
        ## 
        def office_platform_architecture=(value)
            @office_platform_architecture = value
        end
        ## 
        ## Gets the officeSuiteAppDefaultFileFormat property value. Describes the OfficeSuiteApp file format types that can be selected.
        ## @return a office_suite_default_file_format_type
        ## 
        def office_suite_app_default_file_format
            return @office_suite_app_default_file_format
        end
        ## 
        ## Sets the officeSuiteAppDefaultFileFormat property value. Describes the OfficeSuiteApp file format types that can be selected.
        ## @param value Value to set for the officeSuiteAppDefaultFileFormat property.
        ## @return a void
        ## 
        def office_suite_app_default_file_format=(value)
            @office_suite_app_default_file_format = value
        end
        ## 
        ## Gets the productIds property value. The Product Ids that represent the Office365 Suite SKU.
        ## @return a office_product_id
        ## 
        def product_ids
            return @product_ids
        end
        ## 
        ## Sets the productIds property value. The Product Ids that represent the Office365 Suite SKU.
        ## @param value Value to set for the productIds property.
        ## @return a void
        ## 
        def product_ids=(value)
            @product_ids = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("autoAcceptEula", @auto_accept_eula)
            writer.write_object_value("excludedApps", @excluded_apps)
            writer.write_enum_value("installProgressDisplayLevel", @install_progress_display_level)
            writer.write_collection_of_primitive_values("localesToInstall", @locales_to_install)
            writer.write_object_value("officeConfigurationXml", @office_configuration_xml)
            writer.write_enum_value("officePlatformArchitecture", @office_platform_architecture)
            writer.write_enum_value("officeSuiteAppDefaultFileFormat", @office_suite_app_default_file_format)
            writer.write_collection_of_object_values("productIds", @product_ids)
            writer.write_boolean_value("shouldUninstallOlderVersionsOfOffice", @should_uninstall_older_versions_of_office)
            writer.write_string_value("targetVersion", @target_version)
            writer.write_enum_value("updateChannel", @update_channel)
            writer.write_string_value("updateVersion", @update_version)
            writer.write_boolean_value("useSharedComputerActivation", @use_shared_computer_activation)
        end
        ## 
        ## Gets the shouldUninstallOlderVersionsOfOffice property value. The property to determine whether to uninstall existing Office MSI if an Office365 app suite is deployed to the device or not.
        ## @return a boolean
        ## 
        def should_uninstall_older_versions_of_office
            return @should_uninstall_older_versions_of_office
        end
        ## 
        ## Sets the shouldUninstallOlderVersionsOfOffice property value. The property to determine whether to uninstall existing Office MSI if an Office365 app suite is deployed to the device or not.
        ## @param value Value to set for the shouldUninstallOlderVersionsOfOffice property.
        ## @return a void
        ## 
        def should_uninstall_older_versions_of_office=(value)
            @should_uninstall_older_versions_of_office = value
        end
        ## 
        ## Gets the targetVersion property value. The property to represent the specific target version for the Office365 app suite that should be remained deployed on the devices.
        ## @return a string
        ## 
        def target_version
            return @target_version
        end
        ## 
        ## Sets the targetVersion property value. The property to represent the specific target version for the Office365 app suite that should be remained deployed on the devices.
        ## @param value Value to set for the targetVersion property.
        ## @return a void
        ## 
        def target_version=(value)
            @target_version = value
        end
        ## 
        ## Gets the updateChannel property value. The Enum to specify the Office365 Updates Channel.
        ## @return a office_update_channel
        ## 
        def update_channel
            return @update_channel
        end
        ## 
        ## Sets the updateChannel property value. The Enum to specify the Office365 Updates Channel.
        ## @param value Value to set for the updateChannel property.
        ## @return a void
        ## 
        def update_channel=(value)
            @update_channel = value
        end
        ## 
        ## Gets the updateVersion property value. The property to represent the update version in which the specific target version is available for the Office365 app suite.
        ## @return a string
        ## 
        def update_version
            return @update_version
        end
        ## 
        ## Sets the updateVersion property value. The property to represent the update version in which the specific target version is available for the Office365 app suite.
        ## @param value Value to set for the updateVersion property.
        ## @return a void
        ## 
        def update_version=(value)
            @update_version = value
        end
        ## 
        ## Gets the useSharedComputerActivation property value. The property to represent that whether the shared computer activation is used not for Office365 app suite.
        ## @return a boolean
        ## 
        def use_shared_computer_activation
            return @use_shared_computer_activation
        end
        ## 
        ## Sets the useSharedComputerActivation property value. The property to represent that whether the shared computer activation is used not for Office365 app suite.
        ## @param value Value to set for the useSharedComputerActivation property.
        ## @return a void
        ## 
        def use_shared_computer_activation=(value)
            @use_shared_computer_activation = value
        end
    end
end
