require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This topic provides descriptions of the declared methods, properties and relationships exposed by the AndroidDeviceOwnerAOSPCompliancePolicy resource.
        class AospDeviceOwnerCompliancePolicy < MicrosoftGraphBeta::Models::DeviceCompliancePolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Minimum Android security patch level.
            @min_android_security_patch_level
            ## 
            # Maximum Android version.
            @os_maximum_version
            ## 
            # Minimum Android version.
            @os_minimum_version
            ## 
            # Minimum password length. Valid values 4 to 16
            @password_minimum_length
            ## 
            # Minutes of inactivity before a password is required. Valid values 1 to 8640
            @password_minutes_of_inactivity_before_lock
            ## 
            # Require a password to unlock device.
            @password_required
            ## 
            # Type of characters in password. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            @password_required_type
            ## 
            # Devices must not be jailbroken or rooted.
            @security_block_jailbroken_devices
            ## 
            # Require encryption on Android devices.
            @storage_require_encryption
            ## 
            ## Instantiates a new AospDeviceOwnerCompliancePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.aospDeviceOwnerCompliancePolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aosp_device_owner_compliance_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AospDeviceOwnerCompliancePolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "minAndroidSecurityPatchLevel" => lambda {|n| @min_android_security_patch_level = n.get_string_value() },
                    "osMaximumVersion" => lambda {|n| @os_maximum_version = n.get_string_value() },
                    "osMinimumVersion" => lambda {|n| @os_minimum_version = n.get_string_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeLock" => lambda {|n| @password_minutes_of_inactivity_before_lock = n.get_number_value() },
                    "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerRequiredPasswordType) },
                    "securityBlockJailbrokenDevices" => lambda {|n| @security_block_jailbroken_devices = n.get_boolean_value() },
                    "storageRequireEncryption" => lambda {|n| @storage_require_encryption = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the minAndroidSecurityPatchLevel property value. Minimum Android security patch level.
            ## @return a string
            ## 
            def min_android_security_patch_level
                return @min_android_security_patch_level
            end
            ## 
            ## Sets the minAndroidSecurityPatchLevel property value. Minimum Android security patch level.
            ## @param value Value to set for the minAndroidSecurityPatchLevel property.
            ## @return a void
            ## 
            def min_android_security_patch_level=(value)
                @min_android_security_patch_level = value
            end
            ## 
            ## Gets the osMaximumVersion property value. Maximum Android version.
            ## @return a string
            ## 
            def os_maximum_version
                return @os_maximum_version
            end
            ## 
            ## Sets the osMaximumVersion property value. Maximum Android version.
            ## @param value Value to set for the osMaximumVersion property.
            ## @return a void
            ## 
            def os_maximum_version=(value)
                @os_maximum_version = value
            end
            ## 
            ## Gets the osMinimumVersion property value. Minimum Android version.
            ## @return a string
            ## 
            def os_minimum_version
                return @os_minimum_version
            end
            ## 
            ## Sets the osMinimumVersion property value. Minimum Android version.
            ## @param value Value to set for the osMinimumVersion property.
            ## @return a void
            ## 
            def os_minimum_version=(value)
                @os_minimum_version = value
            end
            ## 
            ## Gets the passwordMinimumLength property value. Minimum password length. Valid values 4 to 16
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. Minimum password length. Valid values 4 to 16
            ## @param value Value to set for the passwordMinimumLength property.
            ## @return a void
            ## 
            def password_minimum_length=(value)
                @password_minimum_length = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a password is required. Valid values 1 to 8640
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_lock
                return @password_minutes_of_inactivity_before_lock
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a password is required. Valid values 1 to 8640
            ## @param value Value to set for the passwordMinutesOfInactivityBeforeLock property.
            ## @return a void
            ## 
            def password_minutes_of_inactivity_before_lock=(value)
                @password_minutes_of_inactivity_before_lock = value
            end
            ## 
            ## Gets the passwordRequired property value. Require a password to unlock device.
            ## @return a boolean
            ## 
            def password_required
                return @password_required
            end
            ## 
            ## Sets the passwordRequired property value. Require a password to unlock device.
            ## @param value Value to set for the passwordRequired property.
            ## @return a void
            ## 
            def password_required=(value)
                @password_required = value
            end
            ## 
            ## Gets the passwordRequiredType property value. Type of characters in password. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            ## @return a android_device_owner_required_password_type
            ## 
            def password_required_type
                return @password_required_type
            end
            ## 
            ## Sets the passwordRequiredType property value. Type of characters in password. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            ## @param value Value to set for the passwordRequiredType property.
            ## @return a void
            ## 
            def password_required_type=(value)
                @password_required_type = value
            end
            ## 
            ## Gets the securityBlockJailbrokenDevices property value. Devices must not be jailbroken or rooted.
            ## @return a boolean
            ## 
            def security_block_jailbroken_devices
                return @security_block_jailbroken_devices
            end
            ## 
            ## Sets the securityBlockJailbrokenDevices property value. Devices must not be jailbroken or rooted.
            ## @param value Value to set for the securityBlockJailbrokenDevices property.
            ## @return a void
            ## 
            def security_block_jailbroken_devices=(value)
                @security_block_jailbroken_devices = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("minAndroidSecurityPatchLevel", @min_android_security_patch_level)
                writer.write_string_value("osMaximumVersion", @os_maximum_version)
                writer.write_string_value("osMinimumVersion", @os_minimum_version)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeLock", @password_minutes_of_inactivity_before_lock)
                writer.write_boolean_value("passwordRequired", @password_required)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_boolean_value("securityBlockJailbrokenDevices", @security_block_jailbroken_devices)
                writer.write_boolean_value("storageRequireEncryption", @storage_require_encryption)
            end
            ## 
            ## Gets the storageRequireEncryption property value. Require encryption on Android devices.
            ## @return a boolean
            ## 
            def storage_require_encryption
                return @storage_require_encryption
            end
            ## 
            ## Sets the storageRequireEncryption property value. Require encryption on Android devices.
            ## @param value Value to set for the storageRequireEncryption property.
            ## @return a void
            ## 
            def storage_require_encryption=(value)
                @storage_require_encryption = value
            end
        end
    end
end
