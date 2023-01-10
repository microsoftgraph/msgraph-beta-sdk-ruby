require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ManagedAllDeviceCertificateState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Certificate expiry date
        @certificate_expiration_date_time
        ## 
        # Enhanced Key Usage
        @certificate_extended_key_usages
        ## 
        # Issuance date
        @certificate_issuance_date_time
        ## 
        # Issuer
        @certificate_issuer_name
        ## 
        # Key Usage
        @certificate_key_usages
        ## 
        # Certificate Revocation Status.
        @certificate_revoke_status
        ## 
        # The time the revoke status was last changed
        @certificate_revoke_status_last_change_date_time
        ## 
        # Serial number
        @certificate_serial_number
        ## 
        # Certificate subject name
        @certificate_subject_name
        ## 
        # Thumbprint
        @certificate_thumbprint
        ## 
        # Device display name
        @managed_device_display_name
        ## 
        # User principal name
        @user_principal_name
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
        ## Gets the certificateExtendedKeyUsages property value. Enhanced Key Usage
        ## @return a string
        ## 
        def certificate_extended_key_usages
            return @certificate_extended_key_usages
        end
        ## 
        ## Sets the certificateExtendedKeyUsages property value. Enhanced Key Usage
        ## @param value Value to set for the certificateExtendedKeyUsages property.
        ## @return a void
        ## 
        def certificate_extended_key_usages=(value)
            @certificate_extended_key_usages = value
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
        ## Gets the certificateIssuerName property value. Issuer
        ## @return a string
        ## 
        def certificate_issuer_name
            return @certificate_issuer_name
        end
        ## 
        ## Sets the certificateIssuerName property value. Issuer
        ## @param value Value to set for the certificateIssuerName property.
        ## @return a void
        ## 
        def certificate_issuer_name=(value)
            @certificate_issuer_name = value
        end
        ## 
        ## Gets the certificateKeyUsages property value. Key Usage
        ## @return a integer
        ## 
        def certificate_key_usages
            return @certificate_key_usages
        end
        ## 
        ## Sets the certificateKeyUsages property value. Key Usage
        ## @param value Value to set for the certificateKeyUsages property.
        ## @return a void
        ## 
        def certificate_key_usages=(value)
            @certificate_key_usages = value
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
        ## Gets the certificateRevokeStatusLastChangeDateTime property value. The time the revoke status was last changed
        ## @return a date_time
        ## 
        def certificate_revoke_status_last_change_date_time
            return @certificate_revoke_status_last_change_date_time
        end
        ## 
        ## Sets the certificateRevokeStatusLastChangeDateTime property value. The time the revoke status was last changed
        ## @param value Value to set for the certificateRevokeStatusLastChangeDateTime property.
        ## @return a void
        ## 
        def certificate_revoke_status_last_change_date_time=(value)
            @certificate_revoke_status_last_change_date_time = value
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
        ## Gets the certificateSubjectName property value. Certificate subject name
        ## @return a string
        ## 
        def certificate_subject_name
            return @certificate_subject_name
        end
        ## 
        ## Sets the certificateSubjectName property value. Certificate subject name
        ## @param value Value to set for the certificateSubjectName property.
        ## @return a void
        ## 
        def certificate_subject_name=(value)
            @certificate_subject_name = value
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
        ## Instantiates a new managedAllDeviceCertificateState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a managed_all_device_certificate_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ManagedAllDeviceCertificateState.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "certificateExpirationDateTime" => lambda {|n| @certificate_expiration_date_time = n.get_date_time_value() },
                "certificateExtendedKeyUsages" => lambda {|n| @certificate_extended_key_usages = n.get_string_value() },
                "certificateIssuanceDateTime" => lambda {|n| @certificate_issuance_date_time = n.get_date_time_value() },
                "certificateIssuerName" => lambda {|n| @certificate_issuer_name = n.get_string_value() },
                "certificateKeyUsages" => lambda {|n| @certificate_key_usages = n.get_number_value() },
                "certificateRevokeStatus" => lambda {|n| @certificate_revoke_status = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateRevocationStatus) },
                "certificateRevokeStatusLastChangeDateTime" => lambda {|n| @certificate_revoke_status_last_change_date_time = n.get_date_time_value() },
                "certificateSerialNumber" => lambda {|n| @certificate_serial_number = n.get_string_value() },
                "certificateSubjectName" => lambda {|n| @certificate_subject_name = n.get_string_value() },
                "certificateThumbprint" => lambda {|n| @certificate_thumbprint = n.get_string_value() },
                "managedDeviceDisplayName" => lambda {|n| @managed_device_display_name = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the managedDeviceDisplayName property value. Device display name
        ## @return a string
        ## 
        def managed_device_display_name
            return @managed_device_display_name
        end
        ## 
        ## Sets the managedDeviceDisplayName property value. Device display name
        ## @param value Value to set for the managedDeviceDisplayName property.
        ## @return a void
        ## 
        def managed_device_display_name=(value)
            @managed_device_display_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("certificateExpirationDateTime", @certificate_expiration_date_time)
            writer.write_string_value("certificateExtendedKeyUsages", @certificate_extended_key_usages)
            writer.write_date_time_value("certificateIssuanceDateTime", @certificate_issuance_date_time)
            writer.write_string_value("certificateIssuerName", @certificate_issuer_name)
            writer.write_number_value("certificateKeyUsages", @certificate_key_usages)
            writer.write_enum_value("certificateRevokeStatus", @certificate_revoke_status)
            writer.write_date_time_value("certificateRevokeStatusLastChangeDateTime", @certificate_revoke_status_last_change_date_time)
            writer.write_string_value("certificateSerialNumber", @certificate_serial_number)
            writer.write_string_value("certificateSubjectName", @certificate_subject_name)
            writer.write_string_value("certificateThumbprint", @certificate_thumbprint)
            writer.write_string_value("managedDeviceDisplayName", @managed_device_display_name)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the userPrincipalName property value. User principal name
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. User principal name
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
