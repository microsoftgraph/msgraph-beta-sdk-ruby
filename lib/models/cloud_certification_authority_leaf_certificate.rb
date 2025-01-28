require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that represents a leaf certificate issued by a cloud certification authority.
        class CloudCertificationAuthorityLeafCertificate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Enum type of possible leaf certificate statuses. These statuses indicate whether certificates are active and usable or unusable if they have been revoked or expired.
            @certificate_status
            ## 
            # The URI of the certification authority that issued the certificate. Read-only.
            @certification_authority_issuer_uri
            ## 
            # URL to find the relevant Certificate Revocation List for this certificate. Read-only.
            @crl_distribution_point_url
            ## 
            # The unique identifier of the managed device for which the certificate was created. This ID is assigned at device enrollment time. Read-only. Supports $select.
            @device_id
            ## 
            # Name of the device for which the certificate was created. Read-only. Supports $select.
            @device_name
            ## 
            # The platform of the device for which the certificate was created. Possible values are: Android, AndroidForWork, iOS, MacOS, WindowsPhone81, Windows81AndLater, Windows10AndLater, AndroidWorkProfile, Unknown, AndroidAOSP, AndroidMobileApplicationManagement, iOSMobileApplicationManagement. Default value: Unknown. Read-only. Supports $select.
            @device_platform
            ## 
            # Certificate extensions that further define the purpose of the public key contained in a certificate. Data is formatted as a comma-separated list of object identifiers (OID). For example a possible value is '1.3.6.1.5.5.7.3.2'. Read-only. Nullable.
            @extended_key_usages
            ## 
            # The globally unique identifier of the certification authority that issued the leaf certificate. Read-only.
            @issuer_id
            ## 
            # The name of the certification authority that issued the leaf certificate. Read-only.
            @issuer_name
            ## 
            # Certificate extensions that define the purpose of the public key contained in a certificate. For example possible values are 'Key Encipherment' and 'Digital Signature'. Read-only. Nullable.
            @key_usages
            ## 
            # The Online Certificate Status Protocol (OCSP) responder URI that can be used to determine certificate status. Read-only.
            @ocsp_responder_uri
            ## 
            # The date and time a certificate was revoked. If the certificate was not revoked, this will be null. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.
            @revocation_date_time
            ## 
            # The serial number used to uniquely identify a certificate with its issuing certification authority. Read-only. Supports $select.
            @serial_number
            ## 
            # The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a user or device. Read-only. Supports $select and $orderby.
            @subject_name
            ## 
            # Secure Hash Algorithm 1 digest of the certificate that can be used to identify it. Read-only. Supports $select.
            @thumbprint
            ## 
            # The unique identifier of the user for which the certificate was created. Null for userless devices. This is an Intune user ID. Nullable. Read-only. Supports $select.
            @user_id
            ## 
            # User principal name of the user for which the certificate was created. Null for userless devices. Nullable. Read-only. Supports $select.
            @user_principal_name
            ## 
            # The end date time of the validity period of a certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            @validity_end_date_time
            ## 
            # The start date time of the validity period of a certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            @validity_start_date_time
            ## 
            ## Gets the certificateStatus property value. Enum type of possible leaf certificate statuses. These statuses indicate whether certificates are active and usable or unusable if they have been revoked or expired.
            ## @return a cloud_certification_authority_leaf_certificate_status
            ## 
            def certificate_status
                return @certificate_status
            end
            ## 
            ## Sets the certificateStatus property value. Enum type of possible leaf certificate statuses. These statuses indicate whether certificates are active and usable or unusable if they have been revoked or expired.
            ## @param value Value to set for the certificateStatus property.
            ## @return a void
            ## 
            def certificate_status=(value)
                @certificate_status = value
            end
            ## 
            ## Gets the certificationAuthorityIssuerUri property value. The URI of the certification authority that issued the certificate. Read-only.
            ## @return a string
            ## 
            def certification_authority_issuer_uri
                return @certification_authority_issuer_uri
            end
            ## 
            ## Sets the certificationAuthorityIssuerUri property value. The URI of the certification authority that issued the certificate. Read-only.
            ## @param value Value to set for the certificationAuthorityIssuerUri property.
            ## @return a void
            ## 
            def certification_authority_issuer_uri=(value)
                @certification_authority_issuer_uri = value
            end
            ## 
            ## Instantiates a new CloudCertificationAuthorityLeafCertificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_certification_authority_leaf_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudCertificationAuthorityLeafCertificate.new
            end
            ## 
            ## Gets the crlDistributionPointUrl property value. URL to find the relevant Certificate Revocation List for this certificate. Read-only.
            ## @return a string
            ## 
            def crl_distribution_point_url
                return @crl_distribution_point_url
            end
            ## 
            ## Sets the crlDistributionPointUrl property value. URL to find the relevant Certificate Revocation List for this certificate. Read-only.
            ## @param value Value to set for the crlDistributionPointUrl property.
            ## @return a void
            ## 
            def crl_distribution_point_url=(value)
                @crl_distribution_point_url = value
            end
            ## 
            ## Gets the deviceId property value. The unique identifier of the managed device for which the certificate was created. This ID is assigned at device enrollment time. Read-only. Supports $select.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The unique identifier of the managed device for which the certificate was created. This ID is assigned at device enrollment time. Read-only. Supports $select.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. Name of the device for which the certificate was created. Read-only. Supports $select.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Name of the device for which the certificate was created. Read-only. Supports $select.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the devicePlatform property value. The platform of the device for which the certificate was created. Possible values are: Android, AndroidForWork, iOS, MacOS, WindowsPhone81, Windows81AndLater, Windows10AndLater, AndroidWorkProfile, Unknown, AndroidAOSP, AndroidMobileApplicationManagement, iOSMobileApplicationManagement. Default value: Unknown. Read-only. Supports $select.
            ## @return a string
            ## 
            def device_platform
                return @device_platform
            end
            ## 
            ## Sets the devicePlatform property value. The platform of the device for which the certificate was created. Possible values are: Android, AndroidForWork, iOS, MacOS, WindowsPhone81, Windows81AndLater, Windows10AndLater, AndroidWorkProfile, Unknown, AndroidAOSP, AndroidMobileApplicationManagement, iOSMobileApplicationManagement. Default value: Unknown. Read-only. Supports $select.
            ## @param value Value to set for the devicePlatform property.
            ## @return a void
            ## 
            def device_platform=(value)
                @device_platform = value
            end
            ## 
            ## Gets the extendedKeyUsages property value. Certificate extensions that further define the purpose of the public key contained in a certificate. Data is formatted as a comma-separated list of object identifiers (OID). For example a possible value is '1.3.6.1.5.5.7.3.2'. Read-only. Nullable.
            ## @return a string
            ## 
            def extended_key_usages
                return @extended_key_usages
            end
            ## 
            ## Sets the extendedKeyUsages property value. Certificate extensions that further define the purpose of the public key contained in a certificate. Data is formatted as a comma-separated list of object identifiers (OID). For example a possible value is '1.3.6.1.5.5.7.3.2'. Read-only. Nullable.
            ## @param value Value to set for the extendedKeyUsages property.
            ## @return a void
            ## 
            def extended_key_usages=(value)
                @extended_key_usages = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateStatus" => lambda {|n| @certificate_status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudCertificationAuthorityLeafCertificateStatus) },
                    "certificationAuthorityIssuerUri" => lambda {|n| @certification_authority_issuer_uri = n.get_string_value() },
                    "crlDistributionPointUrl" => lambda {|n| @crl_distribution_point_url = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "devicePlatform" => lambda {|n| @device_platform = n.get_string_value() },
                    "extendedKeyUsages" => lambda {|n| @extended_key_usages = n.get_collection_of_primitive_values(String) },
                    "issuerId" => lambda {|n| @issuer_id = n.get_string_value() },
                    "issuerName" => lambda {|n| @issuer_name = n.get_string_value() },
                    "keyUsages" => lambda {|n| @key_usages = n.get_collection_of_primitive_values(String) },
                    "ocspResponderUri" => lambda {|n| @ocsp_responder_uri = n.get_string_value() },
                    "revocationDateTime" => lambda {|n| @revocation_date_time = n.get_date_time_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "subjectName" => lambda {|n| @subject_name = n.get_string_value() },
                    "thumbprint" => lambda {|n| @thumbprint = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "validityEndDateTime" => lambda {|n| @validity_end_date_time = n.get_date_time_value() },
                    "validityStartDateTime" => lambda {|n| @validity_start_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the issuerId property value. The globally unique identifier of the certification authority that issued the leaf certificate. Read-only.
            ## @return a string
            ## 
            def issuer_id
                return @issuer_id
            end
            ## 
            ## Sets the issuerId property value. The globally unique identifier of the certification authority that issued the leaf certificate. Read-only.
            ## @param value Value to set for the issuerId property.
            ## @return a void
            ## 
            def issuer_id=(value)
                @issuer_id = value
            end
            ## 
            ## Gets the issuerName property value. The name of the certification authority that issued the leaf certificate. Read-only.
            ## @return a string
            ## 
            def issuer_name
                return @issuer_name
            end
            ## 
            ## Sets the issuerName property value. The name of the certification authority that issued the leaf certificate. Read-only.
            ## @param value Value to set for the issuerName property.
            ## @return a void
            ## 
            def issuer_name=(value)
                @issuer_name = value
            end
            ## 
            ## Gets the keyUsages property value. Certificate extensions that define the purpose of the public key contained in a certificate. For example possible values are 'Key Encipherment' and 'Digital Signature'. Read-only. Nullable.
            ## @return a string
            ## 
            def key_usages
                return @key_usages
            end
            ## 
            ## Sets the keyUsages property value. Certificate extensions that define the purpose of the public key contained in a certificate. For example possible values are 'Key Encipherment' and 'Digital Signature'. Read-only. Nullable.
            ## @param value Value to set for the keyUsages property.
            ## @return a void
            ## 
            def key_usages=(value)
                @key_usages = value
            end
            ## 
            ## Gets the ocspResponderUri property value. The Online Certificate Status Protocol (OCSP) responder URI that can be used to determine certificate status. Read-only.
            ## @return a string
            ## 
            def ocsp_responder_uri
                return @ocsp_responder_uri
            end
            ## 
            ## Sets the ocspResponderUri property value. The Online Certificate Status Protocol (OCSP) responder URI that can be used to determine certificate status. Read-only.
            ## @param value Value to set for the ocspResponderUri property.
            ## @return a void
            ## 
            def ocsp_responder_uri=(value)
                @ocsp_responder_uri = value
            end
            ## 
            ## Gets the revocationDateTime property value. The date and time a certificate was revoked. If the certificate was not revoked, this will be null. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.
            ## @return a date_time
            ## 
            def revocation_date_time
                return @revocation_date_time
            end
            ## 
            ## Sets the revocationDateTime property value. The date and time a certificate was revoked. If the certificate was not revoked, this will be null. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.
            ## @param value Value to set for the revocationDateTime property.
            ## @return a void
            ## 
            def revocation_date_time=(value)
                @revocation_date_time = value
            end
            ## 
            ## Gets the serialNumber property value. The serial number used to uniquely identify a certificate with its issuing certification authority. Read-only. Supports $select.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. The serial number used to uniquely identify a certificate with its issuing certification authority. Read-only. Supports $select.
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("certificateStatus", @certificate_status)
                writer.write_string_value("certificationAuthorityIssuerUri", @certification_authority_issuer_uri)
                writer.write_string_value("crlDistributionPointUrl", @crl_distribution_point_url)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("devicePlatform", @device_platform)
                writer.write_collection_of_primitive_values("extendedKeyUsages", @extended_key_usages)
                writer.write_string_value("issuerId", @issuer_id)
                writer.write_string_value("issuerName", @issuer_name)
                writer.write_collection_of_primitive_values("keyUsages", @key_usages)
                writer.write_string_value("ocspResponderUri", @ocsp_responder_uri)
                writer.write_date_time_value("revocationDateTime", @revocation_date_time)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_string_value("subjectName", @subject_name)
                writer.write_string_value("thumbprint", @thumbprint)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_date_time_value("validityEndDateTime", @validity_end_date_time)
                writer.write_date_time_value("validityStartDateTime", @validity_start_date_time)
            end
            ## 
            ## Gets the subjectName property value. The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a user or device. Read-only. Supports $select and $orderby.
            ## @return a string
            ## 
            def subject_name
                return @subject_name
            end
            ## 
            ## Sets the subjectName property value. The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a user or device. Read-only. Supports $select and $orderby.
            ## @param value Value to set for the subjectName property.
            ## @return a void
            ## 
            def subject_name=(value)
                @subject_name = value
            end
            ## 
            ## Gets the thumbprint property value. Secure Hash Algorithm 1 digest of the certificate that can be used to identify it. Read-only. Supports $select.
            ## @return a string
            ## 
            def thumbprint
                return @thumbprint
            end
            ## 
            ## Sets the thumbprint property value. Secure Hash Algorithm 1 digest of the certificate that can be used to identify it. Read-only. Supports $select.
            ## @param value Value to set for the thumbprint property.
            ## @return a void
            ## 
            def thumbprint=(value)
                @thumbprint = value
            end
            ## 
            ## Gets the userId property value. The unique identifier of the user for which the certificate was created. Null for userless devices. This is an Intune user ID. Nullable. Read-only. Supports $select.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The unique identifier of the user for which the certificate was created. Null for userless devices. This is an Intune user ID. Nullable. Read-only. Supports $select.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. User principal name of the user for which the certificate was created. Null for userless devices. Nullable. Read-only. Supports $select.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User principal name of the user for which the certificate was created. Null for userless devices. Nullable. Read-only. Supports $select.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the validityEndDateTime property value. The end date time of the validity period of a certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            ## @return a date_time
            ## 
            def validity_end_date_time
                return @validity_end_date_time
            end
            ## 
            ## Sets the validityEndDateTime property value. The end date time of the validity period of a certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            ## @param value Value to set for the validityEndDateTime property.
            ## @return a void
            ## 
            def validity_end_date_time=(value)
                @validity_end_date_time = value
            end
            ## 
            ## Gets the validityStartDateTime property value. The start date time of the validity period of a certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            ## @return a date_time
            ## 
            def validity_start_date_time
                return @validity_start_date_time
            end
            ## 
            ## Sets the validityStartDateTime property value. The start date time of the validity period of a certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            ## @param value Value to set for the validityStartDateTime property.
            ## @return a void
            ## 
            def validity_start_date_time=(value)
                @validity_start_date_time = value
            end
        end
    end
end
