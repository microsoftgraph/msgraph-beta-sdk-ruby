require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows Hello for Business settings lets users access their devices using a gesture, such as biometric authentication, or a PIN. Configure settings for enrolled Windows 10, Windows 10 Mobile and later.
        class DeviceEnrollmentWindowsHelloForBusinessConfiguration < MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values of a property
            @enhanced_biometrics_state
            ## 
            # Setting to configure Enahcned sign-in security. Default is enabled on one secure modality (face or fingerprint)
            @enhanced_sign_in_security
            ## 
            # Controls the period of time (in days) that a PIN can be used before the system requires the user to change it. This must be set between 0 and 730, inclusive. If set to 0, the user's PIN will never expire
            @pin_expiration_in_days
            ## 
            # Windows Hello for Business pin usage options
            @pin_lowercase_characters_usage
            ## 
            # Controls the maximum number of characters allowed for the Windows Hello for Business PIN. This value must be between 4 and 127, inclusive. This value must be greater than or equal to the value set for the minimum PIN.
            @pin_maximum_length
            ## 
            # Controls the minimum number of characters required for the Windows Hello for Business PIN.  This value must be between 4 and 127, inclusive, and less than or equal to the value set for the maximum PIN.
            @pin_minimum_length
            ## 
            # Controls the ability to prevent users from using past PINs. This must be set between 0 and 50, inclusive, and the current PIN of the user is included in that count. If set to 0, previous PINs are not stored. PIN history is not preserved through a PIN reset.
            @pin_previous_block_count
            ## 
            # Windows Hello for Business pin usage options
            @pin_special_characters_usage
            ## 
            # Windows Hello for Business pin usage options
            @pin_uppercase_characters_usage
            ## 
            # Controls the use of Remote Windows Hello for Business. Remote Windows Hello for Business provides the ability for a portable, registered device to be usable as a companion for desktop authentication. The desktop must be Azure AD joined and the companion device must have a Windows Hello for Business PIN.
            @remote_passport_enabled
            ## 
            # Controls whether to require a Trusted Platform Module (TPM) for provisioning Windows Hello for Business. A TPM provides an additional security benefit in that data stored on it cannot be used on other devices. If set to False, all devices can provision Windows Hello for Business even if there is not a usable TPM.
            @security_device_required
            ## 
            # Possible values of a property
            @security_key_for_sign_in
            ## 
            # Possible values of a property
            @state
            ## 
            # Controls the use of biometric gestures, such as face and fingerprint, as an alternative to the Windows Hello for Business PIN.  If set to False, biometric gestures are not allowed. Users must still configure a PIN as a backup in case of failures.
            @unlock_with_biometrics_enabled
            ## 
            ## Instantiates a new deviceEnrollmentWindowsHelloForBusinessConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceEnrollmentWindowsHelloForBusinessConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_enrollment_windows_hello_for_business_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceEnrollmentWindowsHelloForBusinessConfiguration.new
            end
            ## 
            ## Gets the enhancedBiometricsState property value. Possible values of a property
            ## @return a enablement
            ## 
            def enhanced_biometrics_state
                return @enhanced_biometrics_state
            end
            ## 
            ## Sets the enhancedBiometricsState property value. Possible values of a property
            ## @param value Value to set for the enhancedBiometricsState property.
            ## @return a void
            ## 
            def enhanced_biometrics_state=(value)
                @enhanced_biometrics_state = value
            end
            ## 
            ## Gets the enhancedSignInSecurity property value. Setting to configure Enahcned sign-in security. Default is enabled on one secure modality (face or fingerprint)
            ## @return a integer
            ## 
            def enhanced_sign_in_security
                return @enhanced_sign_in_security
            end
            ## 
            ## Sets the enhancedSignInSecurity property value. Setting to configure Enahcned sign-in security. Default is enabled on one secure modality (face or fingerprint)
            ## @param value Value to set for the enhancedSignInSecurity property.
            ## @return a void
            ## 
            def enhanced_sign_in_security=(value)
                @enhanced_sign_in_security = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enhancedBiometricsState" => lambda {|n| @enhanced_biometrics_state = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "enhancedSignInSecurity" => lambda {|n| @enhanced_sign_in_security = n.get_number_value() },
                    "pinExpirationInDays" => lambda {|n| @pin_expiration_in_days = n.get_number_value() },
                    "pinLowercaseCharactersUsage" => lambda {|n| @pin_lowercase_characters_usage = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsHelloForBusinessPinUsage) },
                    "pinMaximumLength" => lambda {|n| @pin_maximum_length = n.get_number_value() },
                    "pinMinimumLength" => lambda {|n| @pin_minimum_length = n.get_number_value() },
                    "pinPreviousBlockCount" => lambda {|n| @pin_previous_block_count = n.get_number_value() },
                    "pinSpecialCharactersUsage" => lambda {|n| @pin_special_characters_usage = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsHelloForBusinessPinUsage) },
                    "pinUppercaseCharactersUsage" => lambda {|n| @pin_uppercase_characters_usage = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsHelloForBusinessPinUsage) },
                    "remotePassportEnabled" => lambda {|n| @remote_passport_enabled = n.get_boolean_value() },
                    "securityDeviceRequired" => lambda {|n| @security_device_required = n.get_boolean_value() },
                    "securityKeyForSignIn" => lambda {|n| @security_key_for_sign_in = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "unlockWithBiometricsEnabled" => lambda {|n| @unlock_with_biometrics_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the pinExpirationInDays property value. Controls the period of time (in days) that a PIN can be used before the system requires the user to change it. This must be set between 0 and 730, inclusive. If set to 0, the user's PIN will never expire
            ## @return a integer
            ## 
            def pin_expiration_in_days
                return @pin_expiration_in_days
            end
            ## 
            ## Sets the pinExpirationInDays property value. Controls the period of time (in days) that a PIN can be used before the system requires the user to change it. This must be set between 0 and 730, inclusive. If set to 0, the user's PIN will never expire
            ## @param value Value to set for the pinExpirationInDays property.
            ## @return a void
            ## 
            def pin_expiration_in_days=(value)
                @pin_expiration_in_days = value
            end
            ## 
            ## Gets the pinLowercaseCharactersUsage property value. Windows Hello for Business pin usage options
            ## @return a windows_hello_for_business_pin_usage
            ## 
            def pin_lowercase_characters_usage
                return @pin_lowercase_characters_usage
            end
            ## 
            ## Sets the pinLowercaseCharactersUsage property value. Windows Hello for Business pin usage options
            ## @param value Value to set for the pinLowercaseCharactersUsage property.
            ## @return a void
            ## 
            def pin_lowercase_characters_usage=(value)
                @pin_lowercase_characters_usage = value
            end
            ## 
            ## Gets the pinMaximumLength property value. Controls the maximum number of characters allowed for the Windows Hello for Business PIN. This value must be between 4 and 127, inclusive. This value must be greater than or equal to the value set for the minimum PIN.
            ## @return a integer
            ## 
            def pin_maximum_length
                return @pin_maximum_length
            end
            ## 
            ## Sets the pinMaximumLength property value. Controls the maximum number of characters allowed for the Windows Hello for Business PIN. This value must be between 4 and 127, inclusive. This value must be greater than or equal to the value set for the minimum PIN.
            ## @param value Value to set for the pinMaximumLength property.
            ## @return a void
            ## 
            def pin_maximum_length=(value)
                @pin_maximum_length = value
            end
            ## 
            ## Gets the pinMinimumLength property value. Controls the minimum number of characters required for the Windows Hello for Business PIN.  This value must be between 4 and 127, inclusive, and less than or equal to the value set for the maximum PIN.
            ## @return a integer
            ## 
            def pin_minimum_length
                return @pin_minimum_length
            end
            ## 
            ## Sets the pinMinimumLength property value. Controls the minimum number of characters required for the Windows Hello for Business PIN.  This value must be between 4 and 127, inclusive, and less than or equal to the value set for the maximum PIN.
            ## @param value Value to set for the pinMinimumLength property.
            ## @return a void
            ## 
            def pin_minimum_length=(value)
                @pin_minimum_length = value
            end
            ## 
            ## Gets the pinPreviousBlockCount property value. Controls the ability to prevent users from using past PINs. This must be set between 0 and 50, inclusive, and the current PIN of the user is included in that count. If set to 0, previous PINs are not stored. PIN history is not preserved through a PIN reset.
            ## @return a integer
            ## 
            def pin_previous_block_count
                return @pin_previous_block_count
            end
            ## 
            ## Sets the pinPreviousBlockCount property value. Controls the ability to prevent users from using past PINs. This must be set between 0 and 50, inclusive, and the current PIN of the user is included in that count. If set to 0, previous PINs are not stored. PIN history is not preserved through a PIN reset.
            ## @param value Value to set for the pinPreviousBlockCount property.
            ## @return a void
            ## 
            def pin_previous_block_count=(value)
                @pin_previous_block_count = value
            end
            ## 
            ## Gets the pinSpecialCharactersUsage property value. Windows Hello for Business pin usage options
            ## @return a windows_hello_for_business_pin_usage
            ## 
            def pin_special_characters_usage
                return @pin_special_characters_usage
            end
            ## 
            ## Sets the pinSpecialCharactersUsage property value. Windows Hello for Business pin usage options
            ## @param value Value to set for the pinSpecialCharactersUsage property.
            ## @return a void
            ## 
            def pin_special_characters_usage=(value)
                @pin_special_characters_usage = value
            end
            ## 
            ## Gets the pinUppercaseCharactersUsage property value. Windows Hello for Business pin usage options
            ## @return a windows_hello_for_business_pin_usage
            ## 
            def pin_uppercase_characters_usage
                return @pin_uppercase_characters_usage
            end
            ## 
            ## Sets the pinUppercaseCharactersUsage property value. Windows Hello for Business pin usage options
            ## @param value Value to set for the pinUppercaseCharactersUsage property.
            ## @return a void
            ## 
            def pin_uppercase_characters_usage=(value)
                @pin_uppercase_characters_usage = value
            end
            ## 
            ## Gets the remotePassportEnabled property value. Controls the use of Remote Windows Hello for Business. Remote Windows Hello for Business provides the ability for a portable, registered device to be usable as a companion for desktop authentication. The desktop must be Azure AD joined and the companion device must have a Windows Hello for Business PIN.
            ## @return a boolean
            ## 
            def remote_passport_enabled
                return @remote_passport_enabled
            end
            ## 
            ## Sets the remotePassportEnabled property value. Controls the use of Remote Windows Hello for Business. Remote Windows Hello for Business provides the ability for a portable, registered device to be usable as a companion for desktop authentication. The desktop must be Azure AD joined and the companion device must have a Windows Hello for Business PIN.
            ## @param value Value to set for the remotePassportEnabled property.
            ## @return a void
            ## 
            def remote_passport_enabled=(value)
                @remote_passport_enabled = value
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
            ## @param value Value to set for the securityDeviceRequired property.
            ## @return a void
            ## 
            def security_device_required=(value)
                @security_device_required = value
            end
            ## 
            ## Gets the securityKeyForSignIn property value. Possible values of a property
            ## @return a enablement
            ## 
            def security_key_for_sign_in
                return @security_key_for_sign_in
            end
            ## 
            ## Sets the securityKeyForSignIn property value. Possible values of a property
            ## @param value Value to set for the securityKeyForSignIn property.
            ## @return a void
            ## 
            def security_key_for_sign_in=(value)
                @security_key_for_sign_in = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("enhancedBiometricsState", @enhanced_biometrics_state)
                writer.write_number_value("enhancedSignInSecurity", @enhanced_sign_in_security)
                writer.write_number_value("pinExpirationInDays", @pin_expiration_in_days)
                writer.write_enum_value("pinLowercaseCharactersUsage", @pin_lowercase_characters_usage)
                writer.write_number_value("pinMaximumLength", @pin_maximum_length)
                writer.write_number_value("pinMinimumLength", @pin_minimum_length)
                writer.write_number_value("pinPreviousBlockCount", @pin_previous_block_count)
                writer.write_enum_value("pinSpecialCharactersUsage", @pin_special_characters_usage)
                writer.write_enum_value("pinUppercaseCharactersUsage", @pin_uppercase_characters_usage)
                writer.write_boolean_value("remotePassportEnabled", @remote_passport_enabled)
                writer.write_boolean_value("securityDeviceRequired", @security_device_required)
                writer.write_enum_value("securityKeyForSignIn", @security_key_for_sign_in)
                writer.write_enum_value("state", @state)
                writer.write_boolean_value("unlockWithBiometricsEnabled", @unlock_with_biometrics_enabled)
            end
            ## 
            ## Gets the state property value. Possible values of a property
            ## @return a enablement
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Possible values of a property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
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
            ## @param value Value to set for the unlockWithBiometricsEnabled property.
            ## @return a void
            ## 
            def unlock_with_biometrics_enabled=(value)
                @unlock_with_biometrics_enabled = value
            end
        end
    end
end
