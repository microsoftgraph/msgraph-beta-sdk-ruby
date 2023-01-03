require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class ManagedDeviceCertificateState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Extended key usage
        @certificate_enhanced_key_usage
        ## 
        # Error code
        @certificate_error_code
        ## 
        # Certificate expiry date
        @certificate_expiration_date_time
        ## 
        # Issuance date
        @certificate_issuance_date_time
        ## 
        # Certificate Issuance State Options.
        @certificate_issuance_state
        ## 
        # Issuer
        @certificate_issuer
        ## 
        # Key length
        @certificate_key_length
        ## 
        # Key Storage Provider (KSP) Import Options.
        @certificate_key_storage_provider
        ## 
        # Key Usage Options.
        @certificate_key_usage
        ## 
        # Last certificate issuance state change
        @certificate_last_issuance_state_changed_date_time
        ## 
        # Certificate profile display name
        @certificate_profile_display_name
        ## 
        # Certificate Revocation Status.
        @certificate_revoke_status
        ## 
        # Serial number
        @certificate_serial_number
        ## 
        # Subject Alternative Name Options.
        @certificate_subject_alternative_name_format
        ## 
        # Subject alternative name format string for custom formats
        @certificate_subject_alternative_name_format_string
        ## 
        # Subject Name Format Options.
        @certificate_subject_name_format
        ## 
        # Subject name format string for custom subject name formats
        @certificate_subject_name_format_string
        ## 
        # Thumbprint
        @certificate_thumbprint
        ## 
        # Validity period
        @certificate_validity_period
        ## 
        # Certificate Validity Period Options.
        @certificate_validity_period_units
        ## 
        # Device display name
        @device_display_name
        ## 
        # Supported platform types.
        @device_platform
        ## 
        # Last certificate issuance state change
        @last_certificate_state_change_date_time
        ## 
        # User display name
        @user_display_name
        ## 
        ## Gets the certificateEnhancedKeyUsage property value. Extended key usage
        ## @return a string
        ## 
        def certificate_enhanced_key_usage
            return @certificate_enhanced_key_usage
        end
        ## 
        ## Sets the certificateEnhancedKeyUsage property value. Extended key usage
        ## @param value Value to set for the certificateEnhancedKeyUsage property.
        ## @return a void
        ## 
        def certificate_enhanced_key_usage=(value)
            @certificate_enhanced_key_usage = value
        end
        ## 
        ## Gets the certificateErrorCode property value. Error code
        ## @return a integer
        ## 
        def certificate_error_code
            return @certificate_error_code
        end
        ## 
        ## Sets the certificateErrorCode property value. Error code
        ## @param value Value to set for the certificateErrorCode property.
        ## @return a void
        ## 
        def certificate_error_code=(value)
            @certificate_error_code = value
        end
        ## 
        ## Gets the certificateExpirationDateTime property value. Certificate expiry date
        ## @return a date_time
        ## 
        def certificate_expiration_date_time
            return @certificate_expiration_date_time
        end
        ## 
        ## Sets the certificateExpirationDateTime property value. Certificate expiry date
        ## @param value Value to set for the certificateExpirationDateTime property.
        ## @return a void
        ## 
        def certificate_expiration_date_time=(value)
            @certificate_expiration_date_time = value
        end
        ## 
        ## Gets the certificateIssuanceDateTime property value. Issuance date
        ## @return a date_time
        ## 
        def certificate_issuance_date_time
            return @certificate_issuance_date_time
        end
        ## 
        ## Sets the certificateIssuanceDateTime property value. Issuance date
        ## @param value Value to set for the certificateIssuanceDateTime property.
        ## @return a void
        ## 
        def certificate_issuance_date_time=(value)
            @certificate_issuance_date_time = value
        end
        ## 
        ## Gets the certificateIssuanceState property value. Certificate Issuance State Options.
        ## @return a certificate_issuance_states
        ## 
        def certificate_issuance_state
            return @certificate_issuance_state
        end
        ## 
        ## Sets the certificateIssuanceState property value. Certificate Issuance State Options.
        ## @param value Value to set for the certificateIssuanceState property.
        ## @return a void
        ## 
        def certificate_issuance_state=(value)
            @certificate_issuance_state = value
        end
        ## 
        ## Gets the certificateIssuer property value. Issuer
        ## @return a string
        ## 
        def certificate_issuer
            return @certificate_issuer
        end
        ## 
        ## Sets the certificateIssuer property value. Issuer
        ## @param value Value to set for the certificateIssuer property.
        ## @return a void
        ## 
        def certificate_issuer=(value)
            @certificate_issuer = value
        end
        ## 
        ## Gets the certificateKeyLength property value. Key length
        ## @return a integer
        ## 
        def certificate_key_length
            return @certificate_key_length
        end
        ## 
        ## Sets the certificateKeyLength property value. Key length
        ## @param value Value to set for the certificateKeyLength property.
        ## @return a void
        ## 
        def certificate_key_length=(value)
            @certificate_key_length = value
        end
        ## 
        ## Gets the certificateKeyStorageProvider property value. Key Storage Provider (KSP) Import Options.
        ## @return a key_storage_provider_option
        ## 
        def certificate_key_storage_provider
            return @certificate_key_storage_provider
        end
        ## 
        ## Sets the certificateKeyStorageProvider property value. Key Storage Provider (KSP) Import Options.
        ## @param value Value to set for the certificateKeyStorageProvider property.
        ## @return a void
        ## 
        def certificate_key_storage_provider=(value)
            @certificate_key_storage_provider = value
        end
        ## 
        ## Gets the certificateKeyUsage property value. Key Usage Options.
        ## @return a key_usages
        ## 
        def certificate_key_usage
            return @certificate_key_usage
        end
        ## 
        ## Sets the certificateKeyUsage property value. Key Usage Options.
        ## @param value Value to set for the certificateKeyUsage property.
        ## @return a void
        ## 
        def certificate_key_usage=(value)
            @certificate_key_usage = value
        end
        ## 
        ## Gets the certificateLastIssuanceStateChangedDateTime property value. Last certificate issuance state change
        ## @return a date_time
        ## 
        def certificate_last_issuance_state_changed_date_time
            return @certificate_last_issuance_state_changed_date_time
        end
        ## 
        ## Sets the certificateLastIssuanceStateChangedDateTime property value. Last certificate issuance state change
        ## @param value Value to set for the certificateLastIssuanceStateChangedDateTime property.
        ## @return a void
        ## 
        def certificate_last_issuance_state_changed_date_time=(value)
            @certificate_last_issuance_state_changed_date_time = value
        end
        ## 
        ## Gets the certificateProfileDisplayName property value. Certificate profile display name
        ## @return a string
        ## 
        def certificate_profile_display_name
            return @certificate_profile_display_name
        end
        ## 
        ## Sets the certificateProfileDisplayName property value. Certificate profile display name
        ## @param value Value to set for the certificateProfileDisplayName property.
        ## @return a void
        ## 
        def certificate_profile_display_name=(value)
            @certificate_profile_display_name = value
        end
        ## 
        ## Gets the certificateRevokeStatus property value. Certificate Revocation Status.
        ## @return a certificate_revocation_status
        ## 
        def certificate_revoke_status
            return @certificate_revoke_status
        end
        ## 
        ## Sets the certificateRevokeStatus property value. Certificate Revocation Status.
        ## @param value Value to set for the certificateRevokeStatus property.
        ## @return a void
        ## 
        def certificate_revoke_status=(value)
            @certificate_revoke_status = value
        end
        ## 
        ## Gets the certificateSerialNumber property value. Serial number
        ## @return a string
        ## 
        def certificate_serial_number
            return @certificate_serial_number
        end
        ## 
        ## Sets the certificateSerialNumber property value. Serial number
        ## @param value Value to set for the certificateSerialNumber property.
        ## @return a void
        ## 
        def certificate_serial_number=(value)
            @certificate_serial_number = value
        end
        ## 
        ## Gets the certificateSubjectAlternativeNameFormat property value. Subject Alternative Name Options.
        ## @return a subject_alternative_name_type
        ## 
        def certificate_subject_alternative_name_format
            return @certificate_subject_alternative_name_format
        end
        ## 
        ## Sets the certificateSubjectAlternativeNameFormat property value. Subject Alternative Name Options.
        ## @param value Value to set for the certificateSubjectAlternativeNameFormat property.
        ## @return a void
        ## 
        def certificate_subject_alternative_name_format=(value)
            @certificate_subject_alternative_name_format = value
        end
        ## 
        ## Gets the certificateSubjectAlternativeNameFormatString property value. Subject alternative name format string for custom formats
        ## @return a string
        ## 
        def certificate_subject_alternative_name_format_string
            return @certificate_subject_alternative_name_format_string
        end
        ## 
        ## Sets the certificateSubjectAlternativeNameFormatString property value. Subject alternative name format string for custom formats
        ## @param value Value to set for the certificateSubjectAlternativeNameFormatString property.
        ## @return a void
        ## 
        def certificate_subject_alternative_name_format_string=(value)
            @certificate_subject_alternative_name_format_string = value
        end
        ## 
        ## Gets the certificateSubjectNameFormat property value. Subject Name Format Options.
        ## @return a subject_name_format
        ## 
        def certificate_subject_name_format
            return @certificate_subject_name_format
        end
        ## 
        ## Sets the certificateSubjectNameFormat property value. Subject Name Format Options.
        ## @param value Value to set for the certificateSubjectNameFormat property.
        ## @return a void
        ## 
        def certificate_subject_name_format=(value)
            @certificate_subject_name_format = value
        end
        ## 
        ## Gets the certificateSubjectNameFormatString property value. Subject name format string for custom subject name formats
        ## @return a string
        ## 
        def certificate_subject_name_format_string
            return @certificate_subject_name_format_string
        end
        ## 
        ## Sets the certificateSubjectNameFormatString property value. Subject name format string for custom subject name formats
        ## @param value Value to set for the certificateSubjectNameFormatString property.
        ## @return a void
        ## 
        def certificate_subject_name_format_string=(value)
            @certificate_subject_name_format_string = value
        end
        ## 
        ## Gets the certificateThumbprint property value. Thumbprint
        ## @return a string
        ## 
        def certificate_thumbprint
            return @certificate_thumbprint
        end
        ## 
        ## Sets the certificateThumbprint property value. Thumbprint
        ## @param value Value to set for the certificateThumbprint property.
        ## @return a void
        ## 
        def certificate_thumbprint=(value)
            @certificate_thumbprint = value
        end
        ## 
        ## Gets the certificateValidityPeriod property value. Validity period
        ## @return a integer
        ## 
        def certificate_validity_period
            return @certificate_validity_period
        end
        ## 
        ## Sets the certificateValidityPeriod property value. Validity period
        ## @param value Value to set for the certificateValidityPeriod property.
        ## @return a void
        ## 
        def certificate_validity_period=(value)
            @certificate_validity_period = value
        end
        ## 
        ## Gets the certificateValidityPeriodUnits property value. Certificate Validity Period Options.
        ## @return a certificate_validity_period_scale
        ## 
        def certificate_validity_period_units
            return @certificate_validity_period_units
        end
        ## 
        ## Sets the certificateValidityPeriodUnits property value. Certificate Validity Period Options.
        ## @param value Value to set for the certificateValidityPeriodUnits property.
        ## @return a void
        ## 
        def certificate_validity_period_units=(value)
            @certificate_validity_period_units = value
        end
        ## 
        ## Instantiates a new managedDeviceCertificateState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a managed_device_certificate_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ManagedDeviceCertificateState.new
        end
        ## 
        ## Gets the deviceDisplayName property value. Device display name
        ## @return a string
        ## 
        def device_display_name
            return @device_display_name
        end
        ## 
        ## Sets the deviceDisplayName property value. Device display name
        ## @param value Value to set for the deviceDisplayName property.
        ## @return a void
        ## 
        def device_display_name=(value)
            @device_display_name = value
        end
        ## 
        ## Gets the devicePlatform property value. Supported platform types.
        ## @return a device_platform_type
        ## 
        def device_platform
            return @device_platform
        end
        ## 
        ## Sets the devicePlatform property value. Supported platform types.
        ## @param value Value to set for the devicePlatform property.
        ## @return a void
        ## 
        def device_platform=(value)
            @device_platform = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "certificateEnhancedKeyUsage" => lambda {|n| @certificate_enhanced_key_usage = n.get_string_value() },
                "certificateErrorCode" => lambda {|n| @certificate_error_code = n.get_number_value() },
                "certificateExpirationDateTime" => lambda {|n| @certificate_expiration_date_time = n.get_date_time_value() },
                "certificateIssuanceDateTime" => lambda {|n| @certificate_issuance_date_time = n.get_date_time_value() },
                "certificateIssuanceState" => lambda {|n| @certificate_issuance_state = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateIssuanceStates) },
                "certificateIssuer" => lambda {|n| @certificate_issuer = n.get_string_value() },
                "certificateKeyLength" => lambda {|n| @certificate_key_length = n.get_number_value() },
                "certificateKeyStorageProvider" => lambda {|n| @certificate_key_storage_provider = n.get_enum_value(MicrosoftGraphBeta::Models::KeyStorageProviderOption) },
                "certificateKeyUsage" => lambda {|n| @certificate_key_usage = n.get_enum_value(MicrosoftGraphBeta::Models::KeyUsages) },
                "certificateLastIssuanceStateChangedDateTime" => lambda {|n| @certificate_last_issuance_state_changed_date_time = n.get_date_time_value() },
                "certificateProfileDisplayName" => lambda {|n| @certificate_profile_display_name = n.get_string_value() },
                "certificateRevokeStatus" => lambda {|n| @certificate_revoke_status = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateRevocationStatus) },
                "certificateSerialNumber" => lambda {|n| @certificate_serial_number = n.get_string_value() },
                "certificateSubjectAlternativeNameFormat" => lambda {|n| @certificate_subject_alternative_name_format = n.get_enum_value(MicrosoftGraphBeta::Models::SubjectAlternativeNameType) },
                "certificateSubjectAlternativeNameFormatString" => lambda {|n| @certificate_subject_alternative_name_format_string = n.get_string_value() },
                "certificateSubjectNameFormat" => lambda {|n| @certificate_subject_name_format = n.get_enum_value(MicrosoftGraphBeta::Models::SubjectNameFormat) },
                "certificateSubjectNameFormatString" => lambda {|n| @certificate_subject_name_format_string = n.get_string_value() },
                "certificateThumbprint" => lambda {|n| @certificate_thumbprint = n.get_string_value() },
                "certificateValidityPeriod" => lambda {|n| @certificate_validity_period = n.get_number_value() },
                "certificateValidityPeriodUnits" => lambda {|n| @certificate_validity_period_units = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateValidityPeriodScale) },
                "deviceDisplayName" => lambda {|n| @device_display_name = n.get_string_value() },
                "devicePlatform" => lambda {|n| @device_platform = n.get_enum_value(MicrosoftGraphBeta::Models::DevicePlatformType) },
                "lastCertificateStateChangeDateTime" => lambda {|n| @last_certificate_state_change_date_time = n.get_date_time_value() },
                "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastCertificateStateChangeDateTime property value. Last certificate issuance state change
        ## @return a date_time
        ## 
        def last_certificate_state_change_date_time
            return @last_certificate_state_change_date_time
        end
        ## 
        ## Sets the lastCertificateStateChangeDateTime property value. Last certificate issuance state change
        ## @param value Value to set for the lastCertificateStateChangeDateTime property.
        ## @return a void
        ## 
        def last_certificate_state_change_date_time=(value)
            @last_certificate_state_change_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("certificateEnhancedKeyUsage", @certificate_enhanced_key_usage)
            writer.write_number_value("certificateErrorCode", @certificate_error_code)
            writer.write_date_time_value("certificateExpirationDateTime", @certificate_expiration_date_time)
            writer.write_date_time_value("certificateIssuanceDateTime", @certificate_issuance_date_time)
            writer.write_enum_value("certificateIssuanceState", @certificate_issuance_state)
            writer.write_string_value("certificateIssuer", @certificate_issuer)
            writer.write_number_value("certificateKeyLength", @certificate_key_length)
            writer.write_enum_value("certificateKeyStorageProvider", @certificate_key_storage_provider)
            writer.write_enum_value("certificateKeyUsage", @certificate_key_usage)
            writer.write_date_time_value("certificateLastIssuanceStateChangedDateTime", @certificate_last_issuance_state_changed_date_time)
            writer.write_string_value("certificateProfileDisplayName", @certificate_profile_display_name)
            writer.write_enum_value("certificateRevokeStatus", @certificate_revoke_status)
            writer.write_string_value("certificateSerialNumber", @certificate_serial_number)
            writer.write_enum_value("certificateSubjectAlternativeNameFormat", @certificate_subject_alternative_name_format)
            writer.write_string_value("certificateSubjectAlternativeNameFormatString", @certificate_subject_alternative_name_format_string)
            writer.write_enum_value("certificateSubjectNameFormat", @certificate_subject_name_format)
            writer.write_string_value("certificateSubjectNameFormatString", @certificate_subject_name_format_string)
            writer.write_string_value("certificateThumbprint", @certificate_thumbprint)
            writer.write_number_value("certificateValidityPeriod", @certificate_validity_period)
            writer.write_enum_value("certificateValidityPeriodUnits", @certificate_validity_period_units)
            writer.write_string_value("deviceDisplayName", @device_display_name)
            writer.write_enum_value("devicePlatform", @device_platform)
            writer.write_date_time_value("lastCertificateStateChangeDateTime", @last_certificate_state_change_date_time)
            writer.write_string_value("userDisplayName", @user_display_name)
        end
        ## 
        ## Gets the userDisplayName property value. User display name
        ## @return a string
        ## 
        def user_display_name
            return @user_display_name
        end
        ## 
        ## Sets the userDisplayName property value. User display name
        ## @param value Value to set for the userDisplayName property.
        ## @return a void
        ## 
        def user_display_name=(value)
            @user_display_name = value
        end
    end
end
