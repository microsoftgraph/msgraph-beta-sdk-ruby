require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidDeviceOwnerCompliancePolicy < MicrosoftGraphBeta::Models::DeviceCompliancePolicy
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # MDATP Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: unavailable, secured, low, medium, high, notSet.
        @advanced_threat_protection_required_security_level
        ## 
        # Require that devices have enabled device threat protection.
        @device_threat_protection_enabled
        ## 
        # Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: unavailable, secured, low, medium, high, notSet.
        @device_threat_protection_required_security_level
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
        # Number of days before the password expires. Valid values 1 to 365
        @password_expiration_days
        ## 
        # Minimum password length. Valid values 4 to 16
        @password_minimum_length
        ## 
        # Indicates the minimum number of letter characters required for device password. Valid values 1 to 16
        @password_minimum_letter_characters
        ## 
        # Indicates the minimum number of lower case characters required for device password. Valid values 1 to 16
        @password_minimum_lower_case_characters
        ## 
        # Indicates the minimum number of non-letter characters required for device password. Valid values 1 to 16
        @password_minimum_non_letter_characters
        ## 
        # Indicates the minimum number of numeric characters required for device password. Valid values 1 to 16
        @password_minimum_numeric_characters
        ## 
        # Indicates the minimum number of symbol characters required for device password. Valid values 1 to 16
        @password_minimum_symbol_characters
        ## 
        # Indicates the minimum number of upper case letter characters required for device password. Valid values 1 to 16
        @password_minimum_upper_case_characters
        ## 
        # Minutes of inactivity before a password is required.
        @password_minutes_of_inactivity_before_lock
        ## 
        # Number of previous passwords to block. Valid values 1 to 24
        @password_previous_password_count_to_block
        ## 
        # Require a password to unlock device.
        @password_required
        ## 
        # Type of characters in password. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
        @password_required_type
        ## 
        # If setting is set to true, checks that the Intune app installed on fully managed, dedicated, or corporate-owned work profile Android Enterprise enrolled devices, is the one provided by Microsoft from the Managed Google Playstore. If the check fails, the device will be reported as non-compliant.
        @security_require_intune_app_integrity
        ## 
        # Require the device to pass the SafetyNet basic integrity check.
        @security_require_safety_net_attestation_basic_integrity
        ## 
        # Require the device to pass the SafetyNet certified device check.
        @security_require_safety_net_attestation_certified_device
        ## 
        # Require encryption on Android devices.
        @storage_require_encryption
        ## 
        ## Gets the advancedThreatProtectionRequiredSecurityLevel property value. MDATP Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: unavailable, secured, low, medium, high, notSet.
        ## @return a device_threat_protection_level
        ## 
        def advanced_threat_protection_required_security_level
            return @advanced_threat_protection_required_security_level
        end
        ## 
        ## Sets the advancedThreatProtectionRequiredSecurityLevel property value. MDATP Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: unavailable, secured, low, medium, high, notSet.
        ## @param value Value to set for the advanced_threat_protection_required_security_level property.
        ## @return a void
        ## 
        def advanced_threat_protection_required_security_level=(value)
            @advanced_threat_protection_required_security_level = value
        end
        ## 
        ## Instantiates a new AndroidDeviceOwnerCompliancePolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidDeviceOwnerCompliancePolicy"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_device_owner_compliance_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidDeviceOwnerCompliancePolicy.new
        end
        ## 
        ## Gets the deviceThreatProtectionEnabled property value. Require that devices have enabled device threat protection.
        ## @return a boolean
        ## 
        def device_threat_protection_enabled
            return @device_threat_protection_enabled
        end
        ## 
        ## Sets the deviceThreatProtectionEnabled property value. Require that devices have enabled device threat protection.
        ## @param value Value to set for the device_threat_protection_enabled property.
        ## @return a void
        ## 
        def device_threat_protection_enabled=(value)
            @device_threat_protection_enabled = value
        end
        ## 
        ## Gets the deviceThreatProtectionRequiredSecurityLevel property value. Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: unavailable, secured, low, medium, high, notSet.
        ## @return a device_threat_protection_level
        ## 
        def device_threat_protection_required_security_level
            return @device_threat_protection_required_security_level
        end
        ## 
        ## Sets the deviceThreatProtectionRequiredSecurityLevel property value. Require Mobile Threat Protection minimum risk level to report noncompliance. Possible values are: unavailable, secured, low, medium, high, notSet.
        ## @param value Value to set for the device_threat_protection_required_security_level property.
        ## @return a void
        ## 
        def device_threat_protection_required_security_level=(value)
            @device_threat_protection_required_security_level = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "advancedThreatProtectionRequiredSecurityLevel" => lambda {|n| @advanced_threat_protection_required_security_level = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceThreatProtectionLevel) },
                "deviceThreatProtectionEnabled" => lambda {|n| @device_threat_protection_enabled = n.get_boolean_value() },
                "deviceThreatProtectionRequiredSecurityLevel" => lambda {|n| @device_threat_protection_required_security_level = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceThreatProtectionLevel) },
                "minAndroidSecurityPatchLevel" => lambda {|n| @min_android_security_patch_level = n.get_string_value() },
                "osMaximumVersion" => lambda {|n| @os_maximum_version = n.get_string_value() },
                "osMinimumVersion" => lambda {|n| @os_minimum_version = n.get_string_value() },
                "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                "passwordMinimumLetterCharacters" => lambda {|n| @password_minimum_letter_characters = n.get_number_value() },
                "passwordMinimumLowerCaseCharacters" => lambda {|n| @password_minimum_lower_case_characters = n.get_number_value() },
                "passwordMinimumNonLetterCharacters" => lambda {|n| @password_minimum_non_letter_characters = n.get_number_value() },
                "passwordMinimumNumericCharacters" => lambda {|n| @password_minimum_numeric_characters = n.get_number_value() },
                "passwordMinimumSymbolCharacters" => lambda {|n| @password_minimum_symbol_characters = n.get_number_value() },
                "passwordMinimumUpperCaseCharacters" => lambda {|n| @password_minimum_upper_case_characters = n.get_number_value() },
                "passwordMinutesOfInactivityBeforeLock" => lambda {|n| @password_minutes_of_inactivity_before_lock = n.get_number_value() },
                "passwordPreviousPasswordCountToBlock" => lambda {|n| @password_previous_password_count_to_block = n.get_number_value() },
                "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerRequiredPasswordType) },
                "securityRequireIntuneAppIntegrity" => lambda {|n| @security_require_intune_app_integrity = n.get_boolean_value() },
                "securityRequireSafetyNetAttestationBasicIntegrity" => lambda {|n| @security_require_safety_net_attestation_basic_integrity = n.get_boolean_value() },
                "securityRequireSafetyNetAttestationCertifiedDevice" => lambda {|n| @security_require_safety_net_attestation_certified_device = n.get_boolean_value() },
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
        ## @param value Value to set for the min_android_security_patch_level property.
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
        ## @param value Value to set for the os_maximum_version property.
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
        ## @param value Value to set for the os_minimum_version property.
        ## @return a void
        ## 
        def os_minimum_version=(value)
            @os_minimum_version = value
        end
        ## 
        ## Gets the passwordExpirationDays property value. Number of days before the password expires. Valid values 1 to 365
        ## @return a integer
        ## 
        def password_expiration_days
            return @password_expiration_days
        end
        ## 
        ## Sets the passwordExpirationDays property value. Number of days before the password expires. Valid values 1 to 365
        ## @param value Value to set for the password_expiration_days property.
        ## @return a void
        ## 
        def password_expiration_days=(value)
            @password_expiration_days = value
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
        ## @param value Value to set for the password_minimum_length property.
        ## @return a void
        ## 
        def password_minimum_length=(value)
            @password_minimum_length = value
        end
        ## 
        ## Gets the passwordMinimumLetterCharacters property value. Indicates the minimum number of letter characters required for device password. Valid values 1 to 16
        ## @return a integer
        ## 
        def password_minimum_letter_characters
            return @password_minimum_letter_characters
        end
        ## 
        ## Sets the passwordMinimumLetterCharacters property value. Indicates the minimum number of letter characters required for device password. Valid values 1 to 16
        ## @param value Value to set for the password_minimum_letter_characters property.
        ## @return a void
        ## 
        def password_minimum_letter_characters=(value)
            @password_minimum_letter_characters = value
        end
        ## 
        ## Gets the passwordMinimumLowerCaseCharacters property value. Indicates the minimum number of lower case characters required for device password. Valid values 1 to 16
        ## @return a integer
        ## 
        def password_minimum_lower_case_characters
            return @password_minimum_lower_case_characters
        end
        ## 
        ## Sets the passwordMinimumLowerCaseCharacters property value. Indicates the minimum number of lower case characters required for device password. Valid values 1 to 16
        ## @param value Value to set for the password_minimum_lower_case_characters property.
        ## @return a void
        ## 
        def password_minimum_lower_case_characters=(value)
            @password_minimum_lower_case_characters = value
        end
        ## 
        ## Gets the passwordMinimumNonLetterCharacters property value. Indicates the minimum number of non-letter characters required for device password. Valid values 1 to 16
        ## @return a integer
        ## 
        def password_minimum_non_letter_characters
            return @password_minimum_non_letter_characters
        end
        ## 
        ## Sets the passwordMinimumNonLetterCharacters property value. Indicates the minimum number of non-letter characters required for device password. Valid values 1 to 16
        ## @param value Value to set for the password_minimum_non_letter_characters property.
        ## @return a void
        ## 
        def password_minimum_non_letter_characters=(value)
            @password_minimum_non_letter_characters = value
        end
        ## 
        ## Gets the passwordMinimumNumericCharacters property value. Indicates the minimum number of numeric characters required for device password. Valid values 1 to 16
        ## @return a integer
        ## 
        def password_minimum_numeric_characters
            return @password_minimum_numeric_characters
        end
        ## 
        ## Sets the passwordMinimumNumericCharacters property value. Indicates the minimum number of numeric characters required for device password. Valid values 1 to 16
        ## @param value Value to set for the password_minimum_numeric_characters property.
        ## @return a void
        ## 
        def password_minimum_numeric_characters=(value)
            @password_minimum_numeric_characters = value
        end
        ## 
        ## Gets the passwordMinimumSymbolCharacters property value. Indicates the minimum number of symbol characters required for device password. Valid values 1 to 16
        ## @return a integer
        ## 
        def password_minimum_symbol_characters
            return @password_minimum_symbol_characters
        end
        ## 
        ## Sets the passwordMinimumSymbolCharacters property value. Indicates the minimum number of symbol characters required for device password. Valid values 1 to 16
        ## @param value Value to set for the password_minimum_symbol_characters property.
        ## @return a void
        ## 
        def password_minimum_symbol_characters=(value)
            @password_minimum_symbol_characters = value
        end
        ## 
        ## Gets the passwordMinimumUpperCaseCharacters property value. Indicates the minimum number of upper case letter characters required for device password. Valid values 1 to 16
        ## @return a integer
        ## 
        def password_minimum_upper_case_characters
            return @password_minimum_upper_case_characters
        end
        ## 
        ## Sets the passwordMinimumUpperCaseCharacters property value. Indicates the minimum number of upper case letter characters required for device password. Valid values 1 to 16
        ## @param value Value to set for the password_minimum_upper_case_characters property.
        ## @return a void
        ## 
        def password_minimum_upper_case_characters=(value)
            @password_minimum_upper_case_characters = value
        end
        ## 
        ## Gets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a password is required.
        ## @return a integer
        ## 
        def password_minutes_of_inactivity_before_lock
            return @password_minutes_of_inactivity_before_lock
        end
        ## 
        ## Sets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a password is required.
        ## @param value Value to set for the password_minutes_of_inactivity_before_lock property.
        ## @return a void
        ## 
        def password_minutes_of_inactivity_before_lock=(value)
            @password_minutes_of_inactivity_before_lock = value
        end
        ## 
        ## Gets the passwordPreviousPasswordCountToBlock property value. Number of previous passwords to block. Valid values 1 to 24
        ## @return a integer
        ## 
        def password_previous_password_count_to_block
            return @password_previous_password_count_to_block
        end
        ## 
        ## Sets the passwordPreviousPasswordCountToBlock property value. Number of previous passwords to block. Valid values 1 to 24
        ## @param value Value to set for the password_previous_password_count_to_block property.
        ## @return a void
        ## 
        def password_previous_password_count_to_block=(value)
            @password_previous_password_count_to_block = value
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
        ## @param value Value to set for the password_required property.
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
        ## @param value Value to set for the password_required_type property.
        ## @return a void
        ## 
        def password_required_type=(value)
            @password_required_type = value
        end
        ## 
        ## Gets the securityRequireIntuneAppIntegrity property value. If setting is set to true, checks that the Intune app installed on fully managed, dedicated, or corporate-owned work profile Android Enterprise enrolled devices, is the one provided by Microsoft from the Managed Google Playstore. If the check fails, the device will be reported as non-compliant.
        ## @return a boolean
        ## 
        def security_require_intune_app_integrity
            return @security_require_intune_app_integrity
        end
        ## 
        ## Sets the securityRequireIntuneAppIntegrity property value. If setting is set to true, checks that the Intune app installed on fully managed, dedicated, or corporate-owned work profile Android Enterprise enrolled devices, is the one provided by Microsoft from the Managed Google Playstore. If the check fails, the device will be reported as non-compliant.
        ## @param value Value to set for the security_require_intune_app_integrity property.
        ## @return a void
        ## 
        def security_require_intune_app_integrity=(value)
            @security_require_intune_app_integrity = value
        end
        ## 
        ## Gets the securityRequireSafetyNetAttestationBasicIntegrity property value. Require the device to pass the SafetyNet basic integrity check.
        ## @return a boolean
        ## 
        def security_require_safety_net_attestation_basic_integrity
            return @security_require_safety_net_attestation_basic_integrity
        end
        ## 
        ## Sets the securityRequireSafetyNetAttestationBasicIntegrity property value. Require the device to pass the SafetyNet basic integrity check.
        ## @param value Value to set for the security_require_safety_net_attestation_basic_integrity property.
        ## @return a void
        ## 
        def security_require_safety_net_attestation_basic_integrity=(value)
            @security_require_safety_net_attestation_basic_integrity = value
        end
        ## 
        ## Gets the securityRequireSafetyNetAttestationCertifiedDevice property value. Require the device to pass the SafetyNet certified device check.
        ## @return a boolean
        ## 
        def security_require_safety_net_attestation_certified_device
            return @security_require_safety_net_attestation_certified_device
        end
        ## 
        ## Sets the securityRequireSafetyNetAttestationCertifiedDevice property value. Require the device to pass the SafetyNet certified device check.
        ## @param value Value to set for the security_require_safety_net_attestation_certified_device property.
        ## @return a void
        ## 
        def security_require_safety_net_attestation_certified_device=(value)
            @security_require_safety_net_attestation_certified_device = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("advancedThreatProtectionRequiredSecurityLevel", @advanced_threat_protection_required_security_level)
            writer.write_boolean_value("deviceThreatProtectionEnabled", @device_threat_protection_enabled)
            writer.write_enum_value("deviceThreatProtectionRequiredSecurityLevel", @device_threat_protection_required_security_level)
            writer.write_string_value("minAndroidSecurityPatchLevel", @min_android_security_patch_level)
            writer.write_string_value("osMaximumVersion", @os_maximum_version)
            writer.write_string_value("osMinimumVersion", @os_minimum_version)
            writer.write_number_value("passwordExpirationDays", @password_expiration_days)
            writer.write_number_value("passwordMinimumLength", @password_minimum_length)
            writer.write_number_value("passwordMinimumLetterCharacters", @password_minimum_letter_characters)
            writer.write_number_value("passwordMinimumLowerCaseCharacters", @password_minimum_lower_case_characters)
            writer.write_number_value("passwordMinimumNonLetterCharacters", @password_minimum_non_letter_characters)
            writer.write_number_value("passwordMinimumNumericCharacters", @password_minimum_numeric_characters)
            writer.write_number_value("passwordMinimumSymbolCharacters", @password_minimum_symbol_characters)
            writer.write_number_value("passwordMinimumUpperCaseCharacters", @password_minimum_upper_case_characters)
            writer.write_number_value("passwordMinutesOfInactivityBeforeLock", @password_minutes_of_inactivity_before_lock)
            writer.write_number_value("passwordPreviousPasswordCountToBlock", @password_previous_password_count_to_block)
            writer.write_boolean_value("passwordRequired", @password_required)
            writer.write_enum_value("passwordRequiredType", @password_required_type)
            writer.write_boolean_value("securityRequireIntuneAppIntegrity", @security_require_intune_app_integrity)
            writer.write_boolean_value("securityRequireSafetyNetAttestationBasicIntegrity", @security_require_safety_net_attestation_basic_integrity)
            writer.write_boolean_value("securityRequireSafetyNetAttestationCertifiedDevice", @security_require_safety_net_attestation_certified_device)
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
        ## @param value Value to set for the storage_require_encryption property.
        ## @return a void
        ## 
        def storage_require_encryption=(value)
            @storage_require_encryption = value
        end
    end
end
