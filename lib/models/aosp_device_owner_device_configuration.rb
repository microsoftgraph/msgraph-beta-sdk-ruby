require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AospDeviceOwnerDeviceConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates whether or not the user is allowed to enable unknown sources setting. When set to true, user is not allowed to enable unknown sources settings.
        @apps_block_install_from_unknown_sources
        ## 
        # Indicates whether or not to block a user from configuring bluetooth.
        @bluetooth_block_configuration
        ## 
        # Indicates whether or not to disable the use of bluetooth. When set to true, bluetooth cannot be enabled on the device.
        @bluetooth_blocked
        ## 
        # Indicates whether or not to disable the use of the camera.
        @camera_blocked
        ## 
        # Indicates whether or not the factory reset option in settings is disabled.
        @factory_reset_blocked
        ## 
        # Indicates the minimum length of the password required on the device. Valid values 4 to 16
        @password_minimum_length
        ## 
        # Minutes of inactivity before the screen times out.
        @password_minutes_of_inactivity_before_screen_timeout
        ## 
        # Indicates the minimum password quality required on the device. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
        @password_required_type
        ## 
        # Indicates the number of times a user can enter an incorrect password before the device is wiped. Valid values 4 to 11
        @password_sign_in_failure_count_before_factory_reset
        ## 
        # Indicates whether or not to disable the capability to take screenshots.
        @screen_capture_blocked
        ## 
        # Indicates whether or not to block the user from enabling debugging features on the device.
        @security_allow_debugging_features
        ## 
        # Indicates whether or not to block external media.
        @storage_block_external_media
        ## 
        # Indicates whether or not to block USB file transfer.
        @storage_block_usb_file_transfer
        ## 
        # Indicates whether or not to block the user from editing the wifi connection settings.
        @wifi_block_edit_configurations
        ## 
        ## Gets the appsBlockInstallFromUnknownSources property value. Indicates whether or not the user is allowed to enable unknown sources setting. When set to true, user is not allowed to enable unknown sources settings.
        ## @return a boolean
        ## 
        def apps_block_install_from_unknown_sources
            return @apps_block_install_from_unknown_sources
        end
        ## 
        ## Sets the appsBlockInstallFromUnknownSources property value. Indicates whether or not the user is allowed to enable unknown sources setting. When set to true, user is not allowed to enable unknown sources settings.
        ## @param value Value to set for the appsBlockInstallFromUnknownSources property.
        ## @return a void
        ## 
        def apps_block_install_from_unknown_sources=(value)
            @apps_block_install_from_unknown_sources = value
        end
        ## 
        ## Gets the bluetoothBlockConfiguration property value. Indicates whether or not to block a user from configuring bluetooth.
        ## @return a boolean
        ## 
        def bluetooth_block_configuration
            return @bluetooth_block_configuration
        end
        ## 
        ## Sets the bluetoothBlockConfiguration property value. Indicates whether or not to block a user from configuring bluetooth.
        ## @param value Value to set for the bluetoothBlockConfiguration property.
        ## @return a void
        ## 
        def bluetooth_block_configuration=(value)
            @bluetooth_block_configuration = value
        end
        ## 
        ## Gets the bluetoothBlocked property value. Indicates whether or not to disable the use of bluetooth. When set to true, bluetooth cannot be enabled on the device.
        ## @return a boolean
        ## 
        def bluetooth_blocked
            return @bluetooth_blocked
        end
        ## 
        ## Sets the bluetoothBlocked property value. Indicates whether or not to disable the use of bluetooth. When set to true, bluetooth cannot be enabled on the device.
        ## @param value Value to set for the bluetoothBlocked property.
        ## @return a void
        ## 
        def bluetooth_blocked=(value)
            @bluetooth_blocked = value
        end
        ## 
        ## Gets the cameraBlocked property value. Indicates whether or not to disable the use of the camera.
        ## @return a boolean
        ## 
        def camera_blocked
            return @camera_blocked
        end
        ## 
        ## Sets the cameraBlocked property value. Indicates whether or not to disable the use of the camera.
        ## @param value Value to set for the cameraBlocked property.
        ## @return a void
        ## 
        def camera_blocked=(value)
            @camera_blocked = value
        end
        ## 
        ## Instantiates a new AospDeviceOwnerDeviceConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.aospDeviceOwnerDeviceConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a aosp_device_owner_device_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AospDeviceOwnerDeviceConfiguration.new
        end
        ## 
        ## Gets the factoryResetBlocked property value. Indicates whether or not the factory reset option in settings is disabled.
        ## @return a boolean
        ## 
        def factory_reset_blocked
            return @factory_reset_blocked
        end
        ## 
        ## Sets the factoryResetBlocked property value. Indicates whether or not the factory reset option in settings is disabled.
        ## @param value Value to set for the factoryResetBlocked property.
        ## @return a void
        ## 
        def factory_reset_blocked=(value)
            @factory_reset_blocked = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appsBlockInstallFromUnknownSources" => lambda {|n| @apps_block_install_from_unknown_sources = n.get_boolean_value() },
                "bluetoothBlockConfiguration" => lambda {|n| @bluetooth_block_configuration = n.get_boolean_value() },
                "bluetoothBlocked" => lambda {|n| @bluetooth_blocked = n.get_boolean_value() },
                "cameraBlocked" => lambda {|n| @camera_blocked = n.get_boolean_value() },
                "factoryResetBlocked" => lambda {|n| @factory_reset_blocked = n.get_boolean_value() },
                "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                "passwordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerRequiredPasswordType) },
                "passwordSignInFailureCountBeforeFactoryReset" => lambda {|n| @password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                "securityAllowDebuggingFeatures" => lambda {|n| @security_allow_debugging_features = n.get_boolean_value() },
                "storageBlockExternalMedia" => lambda {|n| @storage_block_external_media = n.get_boolean_value() },
                "storageBlockUsbFileTransfer" => lambda {|n| @storage_block_usb_file_transfer = n.get_boolean_value() },
                "wifiBlockEditConfigurations" => lambda {|n| @wifi_block_edit_configurations = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the passwordMinimumLength property value. Indicates the minimum length of the password required on the device. Valid values 4 to 16
        ## @return a integer
        ## 
        def password_minimum_length
            return @password_minimum_length
        end
        ## 
        ## Sets the passwordMinimumLength property value. Indicates the minimum length of the password required on the device. Valid values 4 to 16
        ## @param value Value to set for the passwordMinimumLength property.
        ## @return a void
        ## 
        def password_minimum_length=(value)
            @password_minimum_length = value
        end
        ## 
        ## Gets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
        ## @return a integer
        ## 
        def password_minutes_of_inactivity_before_screen_timeout
            return @password_minutes_of_inactivity_before_screen_timeout
        end
        ## 
        ## Sets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
        ## @param value Value to set for the passwordMinutesOfInactivityBeforeScreenTimeout property.
        ## @return a void
        ## 
        def password_minutes_of_inactivity_before_screen_timeout=(value)
            @password_minutes_of_inactivity_before_screen_timeout = value
        end
        ## 
        ## Gets the passwordRequiredType property value. Indicates the minimum password quality required on the device. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
        ## @return a android_device_owner_required_password_type
        ## 
        def password_required_type
            return @password_required_type
        end
        ## 
        ## Sets the passwordRequiredType property value. Indicates the minimum password quality required on the device. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
        ## @param value Value to set for the passwordRequiredType property.
        ## @return a void
        ## 
        def password_required_type=(value)
            @password_required_type = value
        end
        ## 
        ## Gets the passwordSignInFailureCountBeforeFactoryReset property value. Indicates the number of times a user can enter an incorrect password before the device is wiped. Valid values 4 to 11
        ## @return a integer
        ## 
        def password_sign_in_failure_count_before_factory_reset
            return @password_sign_in_failure_count_before_factory_reset
        end
        ## 
        ## Sets the passwordSignInFailureCountBeforeFactoryReset property value. Indicates the number of times a user can enter an incorrect password before the device is wiped. Valid values 4 to 11
        ## @param value Value to set for the passwordSignInFailureCountBeforeFactoryReset property.
        ## @return a void
        ## 
        def password_sign_in_failure_count_before_factory_reset=(value)
            @password_sign_in_failure_count_before_factory_reset = value
        end
        ## 
        ## Gets the screenCaptureBlocked property value. Indicates whether or not to disable the capability to take screenshots.
        ## @return a boolean
        ## 
        def screen_capture_blocked
            return @screen_capture_blocked
        end
        ## 
        ## Sets the screenCaptureBlocked property value. Indicates whether or not to disable the capability to take screenshots.
        ## @param value Value to set for the screenCaptureBlocked property.
        ## @return a void
        ## 
        def screen_capture_blocked=(value)
            @screen_capture_blocked = value
        end
        ## 
        ## Gets the securityAllowDebuggingFeatures property value. Indicates whether or not to block the user from enabling debugging features on the device.
        ## @return a boolean
        ## 
        def security_allow_debugging_features
            return @security_allow_debugging_features
        end
        ## 
        ## Sets the securityAllowDebuggingFeatures property value. Indicates whether or not to block the user from enabling debugging features on the device.
        ## @param value Value to set for the securityAllowDebuggingFeatures property.
        ## @return a void
        ## 
        def security_allow_debugging_features=(value)
            @security_allow_debugging_features = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("appsBlockInstallFromUnknownSources", @apps_block_install_from_unknown_sources)
            writer.write_boolean_value("bluetoothBlockConfiguration", @bluetooth_block_configuration)
            writer.write_boolean_value("bluetoothBlocked", @bluetooth_blocked)
            writer.write_boolean_value("cameraBlocked", @camera_blocked)
            writer.write_boolean_value("factoryResetBlocked", @factory_reset_blocked)
            writer.write_number_value("passwordMinimumLength", @password_minimum_length)
            writer.write_number_value("passwordMinutesOfInactivityBeforeScreenTimeout", @password_minutes_of_inactivity_before_screen_timeout)
            writer.write_enum_value("passwordRequiredType", @password_required_type)
            writer.write_number_value("passwordSignInFailureCountBeforeFactoryReset", @password_sign_in_failure_count_before_factory_reset)
            writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
            writer.write_boolean_value("securityAllowDebuggingFeatures", @security_allow_debugging_features)
            writer.write_boolean_value("storageBlockExternalMedia", @storage_block_external_media)
            writer.write_boolean_value("storageBlockUsbFileTransfer", @storage_block_usb_file_transfer)
            writer.write_boolean_value("wifiBlockEditConfigurations", @wifi_block_edit_configurations)
        end
        ## 
        ## Gets the storageBlockExternalMedia property value. Indicates whether or not to block external media.
        ## @return a boolean
        ## 
        def storage_block_external_media
            return @storage_block_external_media
        end
        ## 
        ## Sets the storageBlockExternalMedia property value. Indicates whether or not to block external media.
        ## @param value Value to set for the storageBlockExternalMedia property.
        ## @return a void
        ## 
        def storage_block_external_media=(value)
            @storage_block_external_media = value
        end
        ## 
        ## Gets the storageBlockUsbFileTransfer property value. Indicates whether or not to block USB file transfer.
        ## @return a boolean
        ## 
        def storage_block_usb_file_transfer
            return @storage_block_usb_file_transfer
        end
        ## 
        ## Sets the storageBlockUsbFileTransfer property value. Indicates whether or not to block USB file transfer.
        ## @param value Value to set for the storageBlockUsbFileTransfer property.
        ## @return a void
        ## 
        def storage_block_usb_file_transfer=(value)
            @storage_block_usb_file_transfer = value
        end
        ## 
        ## Gets the wifiBlockEditConfigurations property value. Indicates whether or not to block the user from editing the wifi connection settings.
        ## @return a boolean
        ## 
        def wifi_block_edit_configurations
            return @wifi_block_edit_configurations
        end
        ## 
        ## Sets the wifiBlockEditConfigurations property value. Indicates whether or not to block the user from editing the wifi connection settings.
        ## @param value Value to set for the wifiBlockEditConfigurations property.
        ## @return a void
        ## 
        def wifi_block_edit_configurations=(value)
            @wifi_block_edit_configurations = value
        end
    end
end
