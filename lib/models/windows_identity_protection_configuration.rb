require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsIdentityProtectionConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Boolean value used to enable enhanced anti-spoofing for facial feature recognition on Windows Hello face authentication.
        @enhanced_anti_spoofing_for_facial_features_enabled
        ## 
        # Integer value specifies the period (in days) that a PIN can be used before the system requires the user to change it. Valid values are 0 to 730 inclusive. Valid values 0 to 730
        @pin_expiration_in_days
        ## 
        # Possible values of the ConfigurationUsage list.
        @pin_lowercase_characters_usage
        ## 
        # Integer value that sets the maximum number of characters allowed for the work PIN. Valid values are 4 to 127 inclusive and greater than or equal to the value set for the minimum PIN. Valid values 4 to 127
        @pin_maximum_length
        ## 
        # Integer value that sets the minimum number of characters required for the Windows Hello for Business PIN. Valid values are 4 to 127 inclusive and less than or equal to the value set for the maximum PIN. Valid values 4 to 127
        @pin_minimum_length
        ## 
        # Controls the ability to prevent users from using past PINs. This must be set between 0 and 50, inclusive, and the current PIN of the user is included in that count. If set to 0, previous PINs are not stored. PIN history is not preserved through a PIN reset. Valid values 0 to 50
        @pin_previous_block_count
        ## 
        # Boolean value that enables a user to change their PIN by using the Windows Hello for Business PIN recovery service.
        @pin_recovery_enabled
        ## 
        # Possible values of the ConfigurationUsage list.
        @pin_special_characters_usage
        ## 
        # Possible values of the ConfigurationUsage list.
        @pin_uppercase_characters_usage
        ## 
        # Controls whether to require a Trusted Platform Module (TPM) for provisioning Windows Hello for Business. A TPM provides an additional security benefit in that data stored on it cannot be used on other devices. If set to False, all devices can provision Windows Hello for Business even if there is not a usable TPM.
        @security_device_required
        ## 
        # Controls the use of biometric gestures, such as face and fingerprint, as an alternative to the Windows Hello for Business PIN.  If set to False, biometric gestures are not allowed. Users must still configure a PIN as a backup in case of failures.
        @unlock_with_biometrics_enabled
        ## 
        # Boolean value that enables Windows Hello for Business to use certificates to authenticate on-premise resources.
        @use_certificates_for_on_premises_auth_enabled
        ## 
        # Boolean value used to enable the Windows Hello security key as a logon credential.
        @use_security_key_for_signin
        ## 
        # Boolean value that blocks Windows Hello for Business as a method for signing into Windows.
        @windows_hello_for_business_blocked
        ## 
        ## Instantiates a new WindowsIdentityProtectionConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsIdentityProtectionConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_identity_protection_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsIdentityProtectionConfiguration.new
        end
        ## 
        ## Gets the enhancedAntiSpoofingForFacialFeaturesEnabled property value. Boolean value used to enable enhanced anti-spoofing for facial feature recognition on Windows Hello face authentication.
        ## @return a boolean
        ## 
        def enhanced_anti_spoofing_for_facial_features_enabled
            return @enhanced_anti_spoofing_for_facial_features_enabled
        end
        ## 
        ## Sets the enhancedAntiSpoofingForFacialFeaturesEnabled property value. Boolean value used to enable enhanced anti-spoofing for facial feature recognition on Windows Hello face authentication.
        ## @param value Value to set for the enhanced_anti_spoofing_for_facial_features_enabled property.
        ## @return a void
        ## 
        def enhanced_anti_spoofing_for_facial_features_enabled=(value)
            @enhanced_anti_spoofing_for_facial_features_enabled = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "enhancedAntiSpoofingForFacialFeaturesEnabled" => lambda {|n| @enhanced_anti_spoofing_for_facial_features_enabled = n.get_boolean_value() },
                "pinExpirationInDays" => lambda {|n| @pin_expiration_in_days = n.get_number_value() },
                "pinLowercaseCharactersUsage" => lambda {|n| @pin_lowercase_characters_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                "pinMaximumLength" => lambda {|n| @pin_maximum_length = n.get_number_value() },
                "pinMinimumLength" => lambda {|n| @pin_minimum_length = n.get_number_value() },
                "pinPreviousBlockCount" => lambda {|n| @pin_previous_block_count = n.get_number_value() },
                "pinRecoveryEnabled" => lambda {|n| @pin_recovery_enabled = n.get_boolean_value() },
                "pinSpecialCharactersUsage" => lambda {|n| @pin_special_characters_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                "pinUppercaseCharactersUsage" => lambda {|n| @pin_uppercase_characters_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                "securityDeviceRequired" => lambda {|n| @security_device_required = n.get_boolean_value() },
                "unlockWithBiometricsEnabled" => lambda {|n| @unlock_with_biometrics_enabled = n.get_boolean_value() },
                "useCertificatesForOnPremisesAuthEnabled" => lambda {|n| @use_certificates_for_on_premises_auth_enabled = n.get_boolean_value() },
                "useSecurityKeyForSignin" => lambda {|n| @use_security_key_for_signin = n.get_boolean_value() },
                "windowsHelloForBusinessBlocked" => lambda {|n| @windows_hello_for_business_blocked = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the pinExpirationInDays property value. Integer value specifies the period (in days) that a PIN can be used before the system requires the user to change it. Valid values are 0 to 730 inclusive. Valid values 0 to 730
        ## @return a integer
        ## 
        def pin_expiration_in_days
            return @pin_expiration_in_days
        end
        ## 
        ## Sets the pinExpirationInDays property value. Integer value specifies the period (in days) that a PIN can be used before the system requires the user to change it. Valid values are 0 to 730 inclusive. Valid values 0 to 730
        ## @param value Value to set for the pin_expiration_in_days property.
        ## @return a void
        ## 
        def pin_expiration_in_days=(value)
            @pin_expiration_in_days = value
        end
        ## 
        ## Gets the pinLowercaseCharactersUsage property value. Possible values of the ConfigurationUsage list.
        ## @return a configuration_usage
        ## 
        def pin_lowercase_characters_usage
            return @pin_lowercase_characters_usage
        end
        ## 
        ## Sets the pinLowercaseCharactersUsage property value. Possible values of the ConfigurationUsage list.
        ## @param value Value to set for the pin_lowercase_characters_usage property.
        ## @return a void
        ## 
        def pin_lowercase_characters_usage=(value)
            @pin_lowercase_characters_usage = value
        end
        ## 
        ## Gets the pinMaximumLength property value. Integer value that sets the maximum number of characters allowed for the work PIN. Valid values are 4 to 127 inclusive and greater than or equal to the value set for the minimum PIN. Valid values 4 to 127
        ## @return a integer
        ## 
        def pin_maximum_length
            return @pin_maximum_length
        end
        ## 
        ## Sets the pinMaximumLength property value. Integer value that sets the maximum number of characters allowed for the work PIN. Valid values are 4 to 127 inclusive and greater than or equal to the value set for the minimum PIN. Valid values 4 to 127
        ## @param value Value to set for the pin_maximum_length property.
        ## @return a void
        ## 
        def pin_maximum_length=(value)
            @pin_maximum_length = value
        end
        ## 
        ## Gets the pinMinimumLength property value. Integer value that sets the minimum number of characters required for the Windows Hello for Business PIN. Valid values are 4 to 127 inclusive and less than or equal to the value set for the maximum PIN. Valid values 4 to 127
        ## @return a integer
        ## 
        def pin_minimum_length
            return @pin_minimum_length
        end
        ## 
        ## Sets the pinMinimumLength property value. Integer value that sets the minimum number of characters required for the Windows Hello for Business PIN. Valid values are 4 to 127 inclusive and less than or equal to the value set for the maximum PIN. Valid values 4 to 127
        ## @param value Value to set for the pin_minimum_length property.
        ## @return a void
        ## 
        def pin_minimum_length=(value)
            @pin_minimum_length = value
        end
        ## 
        ## Gets the pinPreviousBlockCount property value. Controls the ability to prevent users from using past PINs. This must be set between 0 and 50, inclusive, and the current PIN of the user is included in that count. If set to 0, previous PINs are not stored. PIN history is not preserved through a PIN reset. Valid values 0 to 50
        ## @return a integer
        ## 
        def pin_previous_block_count
            return @pin_previous_block_count
        end
        ## 
        ## Sets the pinPreviousBlockCount property value. Controls the ability to prevent users from using past PINs. This must be set between 0 and 50, inclusive, and the current PIN of the user is included in that count. If set to 0, previous PINs are not stored. PIN history is not preserved through a PIN reset. Valid values 0 to 50
        ## @param value Value to set for the pin_previous_block_count property.
        ## @return a void
        ## 
        def pin_previous_block_count=(value)
            @pin_previous_block_count = value
        end
        ## 
        ## Gets the pinRecoveryEnabled property value. Boolean value that enables a user to change their PIN by using the Windows Hello for Business PIN recovery service.
        ## @return a boolean
        ## 
        def pin_recovery_enabled
            return @pin_recovery_enabled
        end
        ## 
        ## Sets the pinRecoveryEnabled property value. Boolean value that enables a user to change their PIN by using the Windows Hello for Business PIN recovery service.
        ## @param value Value to set for the pin_recovery_enabled property.
        ## @return a void
        ## 
        def pin_recovery_enabled=(value)
            @pin_recovery_enabled = value
        end
        ## 
        ## Gets the pinSpecialCharactersUsage property value. Possible values of the ConfigurationUsage list.
        ## @return a configuration_usage
        ## 
        def pin_special_characters_usage
            return @pin_special_characters_usage
        end
        ## 
        ## Sets the pinSpecialCharactersUsage property value. Possible values of the ConfigurationUsage list.
        ## @param value Value to set for the pin_special_characters_usage property.
        ## @return a void
        ## 
        def pin_special_characters_usage=(value)
            @pin_special_characters_usage = value
        end
        ## 
        ## Gets the pinUppercaseCharactersUsage property value. Possible values of the ConfigurationUsage list.
        ## @return a configuration_usage
        ## 
        def pin_uppercase_characters_usage
            return @pin_uppercase_characters_usage
        end
        ## 
        ## Sets the pinUppercaseCharactersUsage property value. Possible values of the ConfigurationUsage list.
        ## @param value Value to set for the pin_uppercase_characters_usage property.
        ## @return a void
        ## 
        def pin_uppercase_characters_usage=(value)
            @pin_uppercase_characters_usage = value
        end
        ## 
        ## Gets the securityDeviceRequired property value. Controls whether to require a Trusted Platform Module (TPM) for provisioning Windows Hello for Business. A TPM provides an additional security benefit in that data stored on it cannot be used on other devices. If set to False, all devices can provision Windows Hello for Business even if there is not a usable TPM.
        ## @return a boolean
        ## 
        def security_device_required
            return @security_device_required
        end
        ## 
        ## Sets the securityDeviceRequired property value. Controls whether to require a Trusted Platform Module (TPM) for provisioning Windows Hello for Business. A TPM provides an additional security benefit in that data stored on it cannot be used on other devices. If set to False, all devices can provision Windows Hello for Business even if there is not a usable TPM.
        ## @param value Value to set for the security_device_required property.
        ## @return a void
        ## 
        def security_device_required=(value)
            @security_device_required = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("enhancedAntiSpoofingForFacialFeaturesEnabled", @enhanced_anti_spoofing_for_facial_features_enabled)
            writer.write_number_value("pinExpirationInDays", @pin_expiration_in_days)
            writer.write_enum_value("pinLowercaseCharactersUsage", @pin_lowercase_characters_usage)
            writer.write_number_value("pinMaximumLength", @pin_maximum_length)
            writer.write_number_value("pinMinimumLength", @pin_minimum_length)
            writer.write_number_value("pinPreviousBlockCount", @pin_previous_block_count)
            writer.write_boolean_value("pinRecoveryEnabled", @pin_recovery_enabled)
            writer.write_enum_value("pinSpecialCharactersUsage", @pin_special_characters_usage)
            writer.write_enum_value("pinUppercaseCharactersUsage", @pin_uppercase_characters_usage)
            writer.write_boolean_value("securityDeviceRequired", @security_device_required)
            writer.write_boolean_value("unlockWithBiometricsEnabled", @unlock_with_biometrics_enabled)
            writer.write_boolean_value("useCertificatesForOnPremisesAuthEnabled", @use_certificates_for_on_premises_auth_enabled)
            writer.write_boolean_value("useSecurityKeyForSignin", @use_security_key_for_signin)
            writer.write_boolean_value("windowsHelloForBusinessBlocked", @windows_hello_for_business_blocked)
        end
        ## 
        ## Gets the unlockWithBiometricsEnabled property value. Controls the use of biometric gestures, such as face and fingerprint, as an alternative to the Windows Hello for Business PIN.  If set to False, biometric gestures are not allowed. Users must still configure a PIN as a backup in case of failures.
        ## @return a boolean
        ## 
        def unlock_with_biometrics_enabled
            return @unlock_with_biometrics_enabled
        end
        ## 
        ## Sets the unlockWithBiometricsEnabled property value. Controls the use of biometric gestures, such as face and fingerprint, as an alternative to the Windows Hello for Business PIN.  If set to False, biometric gestures are not allowed. Users must still configure a PIN as a backup in case of failures.
        ## @param value Value to set for the unlock_with_biometrics_enabled property.
        ## @return a void
        ## 
        def unlock_with_biometrics_enabled=(value)
            @unlock_with_biometrics_enabled = value
        end
        ## 
        ## Gets the useCertificatesForOnPremisesAuthEnabled property value. Boolean value that enables Windows Hello for Business to use certificates to authenticate on-premise resources.
        ## @return a boolean
        ## 
        def use_certificates_for_on_premises_auth_enabled
            return @use_certificates_for_on_premises_auth_enabled
        end
        ## 
        ## Sets the useCertificatesForOnPremisesAuthEnabled property value. Boolean value that enables Windows Hello for Business to use certificates to authenticate on-premise resources.
        ## @param value Value to set for the use_certificates_for_on_premises_auth_enabled property.
        ## @return a void
        ## 
        def use_certificates_for_on_premises_auth_enabled=(value)
            @use_certificates_for_on_premises_auth_enabled = value
        end
        ## 
        ## Gets the useSecurityKeyForSignin property value. Boolean value used to enable the Windows Hello security key as a logon credential.
        ## @return a boolean
        ## 
        def use_security_key_for_signin
            return @use_security_key_for_signin
        end
        ## 
        ## Sets the useSecurityKeyForSignin property value. Boolean value used to enable the Windows Hello security key as a logon credential.
        ## @param value Value to set for the use_security_key_for_signin property.
        ## @return a void
        ## 
        def use_security_key_for_signin=(value)
            @use_security_key_for_signin = value
        end
        ## 
        ## Gets the windowsHelloForBusinessBlocked property value. Boolean value that blocks Windows Hello for Business as a method for signing into Windows.
        ## @return a boolean
        ## 
        def windows_hello_for_business_blocked
            return @windows_hello_for_business_blocked
        end
        ## 
        ## Sets the windowsHelloForBusinessBlocked property value. Boolean value that blocks Windows Hello for Business as a method for signing into Windows.
        ## @param value Value to set for the windows_hello_for_business_blocked property.
        ## @return a void
        ## 
        def windows_hello_for_business_blocked=(value)
            @windows_hello_for_business_blocked = value
        end
    end
end
