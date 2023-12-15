require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties used to assign an iOS VPP mobile app to a group.
        class IosVppAppAssignmentSettings < MicrosoftGraphBeta::Models::MobileAppAssignmentSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Whether or not the app can be removed by the user.
            @is_removable
            ## 
            # When TRUE, indicates that the app should not be automatically updated with the latest version from Apple app store. When FALSE, indicates that the app may be auto updated. By default, this property is set to null which internally is treated as FALSE.
            @prevent_auto_app_update
            ## 
            # When TRUE, indicates that the app should not be backed up to iCloud. When FALSE, indicates that the app may be backed up to iCloud. By default, this property is set to null which internally is treated as FALSE.
            @prevent_managed_app_backup
            ## 
            # Whether or not to uninstall the app when device is removed from Intune.
            @uninstall_on_device_removal
            ## 
            # Whether or not to use device licensing.
            @use_device_licensing
            ## 
            # The VPN Configuration Id to apply for this app.
            @vpn_configuration_id
            ## 
            ## Instantiates a new iosVppAppAssignmentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosVppAppAssignmentSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_vpp_app_assignment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosVppAppAssignmentSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isRemovable" => lambda {|n| @is_removable = n.get_boolean_value() },
                    "preventAutoAppUpdate" => lambda {|n| @prevent_auto_app_update = n.get_boolean_value() },
                    "preventManagedAppBackup" => lambda {|n| @prevent_managed_app_backup = n.get_boolean_value() },
                    "uninstallOnDeviceRemoval" => lambda {|n| @uninstall_on_device_removal = n.get_boolean_value() },
                    "useDeviceLicensing" => lambda {|n| @use_device_licensing = n.get_boolean_value() },
                    "vpnConfigurationId" => lambda {|n| @vpn_configuration_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isRemovable property value. Whether or not the app can be removed by the user.
            ## @return a boolean
            ## 
            def is_removable
                return @is_removable
            end
            ## 
            ## Sets the isRemovable property value. Whether or not the app can be removed by the user.
            ## @param value Value to set for the isRemovable property.
            ## @return a void
            ## 
            def is_removable=(value)
                @is_removable = value
            end
            ## 
            ## Gets the preventAutoAppUpdate property value. When TRUE, indicates that the app should not be automatically updated with the latest version from Apple app store. When FALSE, indicates that the app may be auto updated. By default, this property is set to null which internally is treated as FALSE.
            ## @return a boolean
            ## 
            def prevent_auto_app_update
                return @prevent_auto_app_update
            end
            ## 
            ## Sets the preventAutoAppUpdate property value. When TRUE, indicates that the app should not be automatically updated with the latest version from Apple app store. When FALSE, indicates that the app may be auto updated. By default, this property is set to null which internally is treated as FALSE.
            ## @param value Value to set for the preventAutoAppUpdate property.
            ## @return a void
            ## 
            def prevent_auto_app_update=(value)
                @prevent_auto_app_update = value
            end
            ## 
            ## Gets the preventManagedAppBackup property value. When TRUE, indicates that the app should not be backed up to iCloud. When FALSE, indicates that the app may be backed up to iCloud. By default, this property is set to null which internally is treated as FALSE.
            ## @return a boolean
            ## 
            def prevent_managed_app_backup
                return @prevent_managed_app_backup
            end
            ## 
            ## Sets the preventManagedAppBackup property value. When TRUE, indicates that the app should not be backed up to iCloud. When FALSE, indicates that the app may be backed up to iCloud. By default, this property is set to null which internally is treated as FALSE.
            ## @param value Value to set for the preventManagedAppBackup property.
            ## @return a void
            ## 
            def prevent_managed_app_backup=(value)
                @prevent_managed_app_backup = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isRemovable", @is_removable)
                writer.write_boolean_value("preventAutoAppUpdate", @prevent_auto_app_update)
                writer.write_boolean_value("preventManagedAppBackup", @prevent_managed_app_backup)
                writer.write_boolean_value("uninstallOnDeviceRemoval", @uninstall_on_device_removal)
                writer.write_boolean_value("useDeviceLicensing", @use_device_licensing)
                writer.write_string_value("vpnConfigurationId", @vpn_configuration_id)
            end
            ## 
            ## Gets the uninstallOnDeviceRemoval property value. Whether or not to uninstall the app when device is removed from Intune.
            ## @return a boolean
            ## 
            def uninstall_on_device_removal
                return @uninstall_on_device_removal
            end
            ## 
            ## Sets the uninstallOnDeviceRemoval property value. Whether or not to uninstall the app when device is removed from Intune.
            ## @param value Value to set for the uninstallOnDeviceRemoval property.
            ## @return a void
            ## 
            def uninstall_on_device_removal=(value)
                @uninstall_on_device_removal = value
            end
            ## 
            ## Gets the useDeviceLicensing property value. Whether or not to use device licensing.
            ## @return a boolean
            ## 
            def use_device_licensing
                return @use_device_licensing
            end
            ## 
            ## Sets the useDeviceLicensing property value. Whether or not to use device licensing.
            ## @param value Value to set for the useDeviceLicensing property.
            ## @return a void
            ## 
            def use_device_licensing=(value)
                @use_device_licensing = value
            end
            ## 
            ## Gets the vpnConfigurationId property value. The VPN Configuration Id to apply for this app.
            ## @return a string
            ## 
            def vpn_configuration_id
                return @vpn_configuration_id
            end
            ## 
            ## Sets the vpnConfigurationId property value. The VPN Configuration Id to apply for this app.
            ## @param value Value to set for the vpnConfigurationId property.
            ## @return a void
            ## 
            def vpn_configuration_id=(value)
                @vpn_configuration_id = value
            end
        end
    end
end
