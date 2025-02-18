require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that represents a collection of metadata of a cloud certification authority.
        class CloudCertificationAuthority < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The URL to download the certification authority certificate. Read-only.
            @certificate_download_url
            ## 
            # Enum of possible cloud certification authority certificate cryptography and key size combinations.
            @certificate_key_size
            ## 
            # The cloud certification authority's Certificate Revocation List URL that can be used to determine revocation status. Read-only.
            @certificate_revocation_list_url
            ## 
            # The certificate signing request used to create an issuing certification authority with a root certification authority external to Microsoft Cloud PKI. The based-64 encoded certificate signing request can be downloaded through this property. After downloading the certificate signing request, it must be signed by the external root certifcation authority. Read-only.
            @certificate_signing_request
            ## 
            # Issuer (parent) certification authority identifier. Nullable. Read-only. Supports $orderby and $select.
            @certification_authority_issuer_id
            ## 
            # The URI of the issuing certification authority of a subordinate certification authority. Returns null if a root certification authority. Nullable. Read-only.
            @certification_authority_issuer_uri
            ## 
            # Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked.
            @certification_authority_status
            ## 
            # Enum type of possible certificate hashing algorithms used by the certification authority to create certificates.
            @cloud_certification_authority_hashing_algorithm
            ## 
            # Required OData property to expose leaf certificate API.
            @cloud_certification_authority_leaf_certificate
            ## 
            # Enum type of possible certificate authority types. This feature supports a two-tier certification authority model with a root certification authority and one or more child issuing (intermediate) certification authorities.
            @cloud_certification_authority_type
            ## 
            # The common name of the certificate subject name, which must be unique. This property is a relative distinguished name used to compose the certificate subject name. Read-only. Supports $select.
            @common_name
            ## 
            # The country name that is used to compose the subject name of a certification authority certificate in the form 'C='. Nullable. Example: US. Read-only.
            @country_name
            ## 
            # Creation date of this cloud certification authority entity instance. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.
            @created_date_time
            ## 
            # The certification authority description displayed in the Intune admin console. Nullable. Read/write. Returns null if not set.
            @description
            ## 
            # The certification authority display name the Intune admin console. Read/write. Supports $select and $orderby.
            @display_name
            ## 
            # ETag for optimistic concurrency control. Read/write.
            @e_tag
            ## 
            # The certificate extended key usages, which specify the usage capabilities of the certificate. Read-only.
            @extended_key_usages
            ## 
            # The issuerCommonName property
            @issuer_common_name
            ## 
            # Enum type of possible key platforms used by the certification authority.
            @key_platform
            ## 
            # Last modification date and time of this certification authority entity instance. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read/write.
            @last_modified_date_time
            ## 
            # The locality (town, city, etc.) name that is used to compose the subject name of a certification authority certificate in the form 'L='. This is Nullable. Example: Redmond. Read-only.
            @locality_name
            ## 
            # The Online Certificate Status Protocol (OCSP) responder URI that can be used to determine certificate status. Read-only.
            @ocsp_responder_uri
            ## 
            # The organization name that is used as a distinguished name in the subject name of a certification authority certificate in the form 'O='. Nullable. Example: Microsoft. Read-only.
            @organization_name
            ## 
            # The organization unit name that is used as a distinguished name in the subject name of a certification authority certificate in the form 'OU='. Nullable. Example: Security. Read-only.
            @organization_unit
            ## 
            # List of Scope Tags for this entity instance. Scope tags limit access to an entity instance. Nullable. Read/write.
            @role_scope_tag_ids
            ## 
            # The common name of the certificate subject name of the certification authority issuer. This property can be used to identify the certification authority that issued the current certification authority. For issuing certification authorities, this is the common name of the certificate subject name of the root certification authority to which it is anchored. For externally signed certification authorities, this is the common name of the certificate subject name of the signing certification authority. For root certification authorities, this is the common name of the certification authority's own certificate subject name. Read-only.
            @root_certificate_common_name
            ## 
            # The SCEP server URL for device SCEP connections to request certificates. Read-only.
            @scep_server_url
            ## 
            # The serial number used to uniquely identify a certificate with its issuing certification authority. Read-only. Supports $select.
            @serial_number
            ## 
            # The state or province name that is used to compose the subject name of a certification authority certificate in the form 'ST='. Nullable. Example: Washington. Read-only.
            @state_name
            ## 
            # The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a company or government entity. Read-only. Supports $orderby and $select.
            @subject_name
            ## 
            # Secure Hash Algorithm 1 digest of the certificate that can be used to identify it. Read-only. Supports $select.
            @thumbprint
            ## 
            # The end date time of the validity period of a certification authority certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            @validity_end_date_time
            ## 
            # The certification authority validity period in years configured by admins.
            @validity_period_in_years
            ## 
            # The start date time of the validity period of a certification authority certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            @validity_start_date_time
            ## 
            # The certification authority version, which is incremented each time the certification authority is renewed. Read-only.
            @version_number
            ## 
            ## Gets the certificateDownloadUrl property value. The URL to download the certification authority certificate. Read-only.
            ## @return a string
            ## 
            def certificate_download_url
                return @certificate_download_url
            end
            ## 
            ## Sets the certificateDownloadUrl property value. The URL to download the certification authority certificate. Read-only.
            ## @param value Value to set for the certificateDownloadUrl property.
            ## @return a void
            ## 
            def certificate_download_url=(value)
                @certificate_download_url = value
            end
            ## 
            ## Gets the certificateKeySize property value. Enum of possible cloud certification authority certificate cryptography and key size combinations.
            ## @return a cloud_certification_authority_certificate_key_size
            ## 
            def certificate_key_size
                return @certificate_key_size
            end
            ## 
            ## Sets the certificateKeySize property value. Enum of possible cloud certification authority certificate cryptography and key size combinations.
            ## @param value Value to set for the certificateKeySize property.
            ## @return a void
            ## 
            def certificate_key_size=(value)
                @certificate_key_size = value
            end
            ## 
            ## Gets the certificateRevocationListUrl property value. The cloud certification authority's Certificate Revocation List URL that can be used to determine revocation status. Read-only.
            ## @return a string
            ## 
            def certificate_revocation_list_url
                return @certificate_revocation_list_url
            end
            ## 
            ## Sets the certificateRevocationListUrl property value. The cloud certification authority's Certificate Revocation List URL that can be used to determine revocation status. Read-only.
            ## @param value Value to set for the certificateRevocationListUrl property.
            ## @return a void
            ## 
            def certificate_revocation_list_url=(value)
                @certificate_revocation_list_url = value
            end
            ## 
            ## Gets the certificateSigningRequest property value. The certificate signing request used to create an issuing certification authority with a root certification authority external to Microsoft Cloud PKI. The based-64 encoded certificate signing request can be downloaded through this property. After downloading the certificate signing request, it must be signed by the external root certifcation authority. Read-only.
            ## @return a string
            ## 
            def certificate_signing_request
                return @certificate_signing_request
            end
            ## 
            ## Sets the certificateSigningRequest property value. The certificate signing request used to create an issuing certification authority with a root certification authority external to Microsoft Cloud PKI. The based-64 encoded certificate signing request can be downloaded through this property. After downloading the certificate signing request, it must be signed by the external root certifcation authority. Read-only.
            ## @param value Value to set for the certificateSigningRequest property.
            ## @return a void
            ## 
            def certificate_signing_request=(value)
                @certificate_signing_request = value
            end
            ## 
            ## Gets the certificationAuthorityIssuerId property value. Issuer (parent) certification authority identifier. Nullable. Read-only. Supports $orderby and $select.
            ## @return a string
            ## 
            def certification_authority_issuer_id
                return @certification_authority_issuer_id
            end
            ## 
            ## Sets the certificationAuthorityIssuerId property value. Issuer (parent) certification authority identifier. Nullable. Read-only. Supports $orderby and $select.
            ## @param value Value to set for the certificationAuthorityIssuerId property.
            ## @return a void
            ## 
            def certification_authority_issuer_id=(value)
                @certification_authority_issuer_id = value
            end
            ## 
            ## Gets the certificationAuthorityIssuerUri property value. The URI of the issuing certification authority of a subordinate certification authority. Returns null if a root certification authority. Nullable. Read-only.
            ## @return a string
            ## 
            def certification_authority_issuer_uri
                return @certification_authority_issuer_uri
            end
            ## 
            ## Sets the certificationAuthorityIssuerUri property value. The URI of the issuing certification authority of a subordinate certification authority. Returns null if a root certification authority. Nullable. Read-only.
            ## @param value Value to set for the certificationAuthorityIssuerUri property.
            ## @return a void
            ## 
            def certification_authority_issuer_uri=(value)
                @certification_authority_issuer_uri = value
            end
            ## 
            ## Gets the certificationAuthorityStatus property value. Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked.
            ## @return a cloud_certification_authority_status
            ## 
            def certification_authority_status
                return @certification_authority_status
            end
            ## 
            ## Sets the certificationAuthorityStatus property value. Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked.
            ## @param value Value to set for the certificationAuthorityStatus property.
            ## @return a void
            ## 
            def certification_authority_status=(value)
                @certification_authority_status = value
            end
            ## 
            ## Gets the cloudCertificationAuthorityHashingAlgorithm property value. Enum type of possible certificate hashing algorithms used by the certification authority to create certificates.
            ## @return a cloud_certification_authority_hashing_algorithm
            ## 
            def cloud_certification_authority_hashing_algorithm
                return @cloud_certification_authority_hashing_algorithm
            end
            ## 
            ## Sets the cloudCertificationAuthorityHashingAlgorithm property value. Enum type of possible certificate hashing algorithms used by the certification authority to create certificates.
            ## @param value Value to set for the cloudCertificationAuthorityHashingAlgorithm property.
            ## @return a void
            ## 
            def cloud_certification_authority_hashing_algorithm=(value)
                @cloud_certification_authority_hashing_algorithm = value
            end
            ## 
            ## Gets the cloudCertificationAuthorityLeafCertificate property value. Required OData property to expose leaf certificate API.
            ## @return a cloud_certification_authority_leaf_certificate
            ## 
            def cloud_certification_authority_leaf_certificate
                return @cloud_certification_authority_leaf_certificate
            end
            ## 
            ## Sets the cloudCertificationAuthorityLeafCertificate property value. Required OData property to expose leaf certificate API.
            ## @param value Value to set for the cloudCertificationAuthorityLeafCertificate property.
            ## @return a void
            ## 
            def cloud_certification_authority_leaf_certificate=(value)
                @cloud_certification_authority_leaf_certificate = value
            end
            ## 
            ## Gets the cloudCertificationAuthorityType property value. Enum type of possible certificate authority types. This feature supports a two-tier certification authority model with a root certification authority and one or more child issuing (intermediate) certification authorities.
            ## @return a cloud_certification_authority_type
            ## 
            def cloud_certification_authority_type
                return @cloud_certification_authority_type
            end
            ## 
            ## Sets the cloudCertificationAuthorityType property value. Enum type of possible certificate authority types. This feature supports a two-tier certification authority model with a root certification authority and one or more child issuing (intermediate) certification authorities.
            ## @param value Value to set for the cloudCertificationAuthorityType property.
            ## @return a void
            ## 
            def cloud_certification_authority_type=(value)
                @cloud_certification_authority_type = value
            end
            ## 
            ## Gets the commonName property value. The common name of the certificate subject name, which must be unique. This property is a relative distinguished name used to compose the certificate subject name. Read-only. Supports $select.
            ## @return a string
            ## 
            def common_name
                return @common_name
            end
            ## 
            ## Sets the commonName property value. The common name of the certificate subject name, which must be unique. This property is a relative distinguished name used to compose the certificate subject name. Read-only. Supports $select.
            ## @param value Value to set for the commonName property.
            ## @return a void
            ## 
            def common_name=(value)
                @common_name = value
            end
            ## 
            ## Instantiates a new CloudCertificationAuthority and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the countryName property value. The country name that is used to compose the subject name of a certification authority certificate in the form 'C='. Nullable. Example: US. Read-only.
            ## @return a string
            ## 
            def country_name
                return @country_name
            end
            ## 
            ## Sets the countryName property value. The country name that is used to compose the subject name of a certification authority certificate in the form 'C='. Nullable. Example: US. Read-only.
            ## @param value Value to set for the countryName property.
            ## @return a void
            ## 
            def country_name=(value)
                @country_name = value
            end
            ## 
            ## Gets the createdDateTime property value. Creation date of this cloud certification authority entity instance. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Creation date of this cloud certification authority entity instance. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_certification_authority
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudCertificationAuthority.new
            end
            ## 
            ## Gets the description property value. The certification authority description displayed in the Intune admin console. Nullable. Read/write. Returns null if not set.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The certification authority description displayed in the Intune admin console. Nullable. Read/write. Returns null if not set.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The certification authority display name the Intune admin console. Read/write. Supports $select and $orderby.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The certification authority display name the Intune admin console. Read/write. Supports $select and $orderby.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the eTag property value. ETag for optimistic concurrency control. Read/write.
            ## @return a string
            ## 
            def e_tag
                return @e_tag
            end
            ## 
            ## Sets the eTag property value. ETag for optimistic concurrency control. Read/write.
            ## @param value Value to set for the eTag property.
            ## @return a void
            ## 
            def e_tag=(value)
                @e_tag = value
            end
            ## 
            ## Gets the extendedKeyUsages property value. The certificate extended key usages, which specify the usage capabilities of the certificate. Read-only.
            ## @return a extended_key_usage
            ## 
            def extended_key_usages
                return @extended_key_usages
            end
            ## 
            ## Sets the extendedKeyUsages property value. The certificate extended key usages, which specify the usage capabilities of the certificate. Read-only.
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
                    "certificateDownloadUrl" => lambda {|n| @certificate_download_url = n.get_string_value() },
                    "certificateKeySize" => lambda {|n| @certificate_key_size = n.get_enum_value(MicrosoftGraphBeta::Models::CloudCertificationAuthorityCertificateKeySize) },
                    "certificateRevocationListUrl" => lambda {|n| @certificate_revocation_list_url = n.get_string_value() },
                    "certificateSigningRequest" => lambda {|n| @certificate_signing_request = n.get_string_value() },
                    "certificationAuthorityIssuerId" => lambda {|n| @certification_authority_issuer_id = n.get_string_value() },
                    "certificationAuthorityIssuerUri" => lambda {|n| @certification_authority_issuer_uri = n.get_string_value() },
                    "certificationAuthorityStatus" => lambda {|n| @certification_authority_status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudCertificationAuthorityStatus) },
                    "cloudCertificationAuthorityHashingAlgorithm" => lambda {|n| @cloud_certification_authority_hashing_algorithm = n.get_enum_value(MicrosoftGraphBeta::Models::CloudCertificationAuthorityHashingAlgorithm) },
                    "cloudCertificationAuthorityLeafCertificate" => lambda {|n| @cloud_certification_authority_leaf_certificate = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudCertificationAuthorityLeafCertificate.create_from_discriminator_value(pn) }) },
                    "cloudCertificationAuthorityType" => lambda {|n| @cloud_certification_authority_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudCertificationAuthorityType) },
                    "commonName" => lambda {|n| @common_name = n.get_string_value() },
                    "countryName" => lambda {|n| @country_name = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "eTag" => lambda {|n| @e_tag = n.get_string_value() },
                    "extendedKeyUsages" => lambda {|n| @extended_key_usages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExtendedKeyUsage.create_from_discriminator_value(pn) }) },
                    "issuerCommonName" => lambda {|n| @issuer_common_name = n.get_string_value() },
                    "keyPlatform" => lambda {|n| @key_platform = n.get_enum_value(MicrosoftGraphBeta::Models::CloudCertificationAuthorityKeyPlatformType) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "localityName" => lambda {|n| @locality_name = n.get_string_value() },
                    "ocspResponderUri" => lambda {|n| @ocsp_responder_uri = n.get_string_value() },
                    "organizationName" => lambda {|n| @organization_name = n.get_string_value() },
                    "organizationUnit" => lambda {|n| @organization_unit = n.get_string_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "rootCertificateCommonName" => lambda {|n| @root_certificate_common_name = n.get_string_value() },
                    "scepServerUrl" => lambda {|n| @scep_server_url = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "stateName" => lambda {|n| @state_name = n.get_string_value() },
                    "subjectName" => lambda {|n| @subject_name = n.get_string_value() },
                    "thumbprint" => lambda {|n| @thumbprint = n.get_string_value() },
                    "validityEndDateTime" => lambda {|n| @validity_end_date_time = n.get_date_time_value() },
                    "validityPeriodInYears" => lambda {|n| @validity_period_in_years = n.get_number_value() },
                    "validityStartDateTime" => lambda {|n| @validity_start_date_time = n.get_date_time_value() },
                    "versionNumber" => lambda {|n| @version_number = n.get_number_value() },
                })
            end
            ## 
            ## Gets the issuerCommonName property value. The issuerCommonName property
            ## @return a string
            ## 
            def issuer_common_name
                return @issuer_common_name
            end
            ## 
            ## Sets the issuerCommonName property value. The issuerCommonName property
            ## @param value Value to set for the issuerCommonName property.
            ## @return a void
            ## 
            def issuer_common_name=(value)
                @issuer_common_name = value
            end
            ## 
            ## Gets the keyPlatform property value. Enum type of possible key platforms used by the certification authority.
            ## @return a cloud_certification_authority_key_platform_type
            ## 
            def key_platform
                return @key_platform
            end
            ## 
            ## Sets the keyPlatform property value. Enum type of possible key platforms used by the certification authority.
            ## @param value Value to set for the keyPlatform property.
            ## @return a void
            ## 
            def key_platform=(value)
                @key_platform = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Last modification date and time of this certification authority entity instance. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read/write.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Last modification date and time of this certification authority entity instance. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read/write.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the localityName property value. The locality (town, city, etc.) name that is used to compose the subject name of a certification authority certificate in the form 'L='. This is Nullable. Example: Redmond. Read-only.
            ## @return a string
            ## 
            def locality_name
                return @locality_name
            end
            ## 
            ## Sets the localityName property value. The locality (town, city, etc.) name that is used to compose the subject name of a certification authority certificate in the form 'L='. This is Nullable. Example: Redmond. Read-only.
            ## @param value Value to set for the localityName property.
            ## @return a void
            ## 
            def locality_name=(value)
                @locality_name = value
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
            ## Gets the organizationName property value. The organization name that is used as a distinguished name in the subject name of a certification authority certificate in the form 'O='. Nullable. Example: Microsoft. Read-only.
            ## @return a string
            ## 
            def organization_name
                return @organization_name
            end
            ## 
            ## Sets the organizationName property value. The organization name that is used as a distinguished name in the subject name of a certification authority certificate in the form 'O='. Nullable. Example: Microsoft. Read-only.
            ## @param value Value to set for the organizationName property.
            ## @return a void
            ## 
            def organization_name=(value)
                @organization_name = value
            end
            ## 
            ## Gets the organizationUnit property value. The organization unit name that is used as a distinguished name in the subject name of a certification authority certificate in the form 'OU='. Nullable. Example: Security. Read-only.
            ## @return a string
            ## 
            def organization_unit
                return @organization_unit
            end
            ## 
            ## Sets the organizationUnit property value. The organization unit name that is used as a distinguished name in the subject name of a certification authority certificate in the form 'OU='. Nullable. Example: Security. Read-only.
            ## @param value Value to set for the organizationUnit property.
            ## @return a void
            ## 
            def organization_unit=(value)
                @organization_unit = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for this entity instance. Scope tags limit access to an entity instance. Nullable. Read/write.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for this entity instance. Scope tags limit access to an entity instance. Nullable. Read/write.
            ## @param value Value to set for the roleScopeTagIds property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Gets the rootCertificateCommonName property value. The common name of the certificate subject name of the certification authority issuer. This property can be used to identify the certification authority that issued the current certification authority. For issuing certification authorities, this is the common name of the certificate subject name of the root certification authority to which it is anchored. For externally signed certification authorities, this is the common name of the certificate subject name of the signing certification authority. For root certification authorities, this is the common name of the certification authority's own certificate subject name. Read-only.
            ## @return a string
            ## 
            def root_certificate_common_name
                return @root_certificate_common_name
            end
            ## 
            ## Sets the rootCertificateCommonName property value. The common name of the certificate subject name of the certification authority issuer. This property can be used to identify the certification authority that issued the current certification authority. For issuing certification authorities, this is the common name of the certificate subject name of the root certification authority to which it is anchored. For externally signed certification authorities, this is the common name of the certificate subject name of the signing certification authority. For root certification authorities, this is the common name of the certification authority's own certificate subject name. Read-only.
            ## @param value Value to set for the rootCertificateCommonName property.
            ## @return a void
            ## 
            def root_certificate_common_name=(value)
                @root_certificate_common_name = value
            end
            ## 
            ## Gets the scepServerUrl property value. The SCEP server URL for device SCEP connections to request certificates. Read-only.
            ## @return a string
            ## 
            def scep_server_url
                return @scep_server_url
            end
            ## 
            ## Sets the scepServerUrl property value. The SCEP server URL for device SCEP connections to request certificates. Read-only.
            ## @param value Value to set for the scepServerUrl property.
            ## @return a void
            ## 
            def scep_server_url=(value)
                @scep_server_url = value
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
                writer.write_string_value("certificateDownloadUrl", @certificate_download_url)
                writer.write_enum_value("certificateKeySize", @certificate_key_size)
                writer.write_string_value("certificateRevocationListUrl", @certificate_revocation_list_url)
                writer.write_string_value("certificateSigningRequest", @certificate_signing_request)
                writer.write_string_value("certificationAuthorityIssuerId", @certification_authority_issuer_id)
                writer.write_string_value("certificationAuthorityIssuerUri", @certification_authority_issuer_uri)
                writer.write_enum_value("certificationAuthorityStatus", @certification_authority_status)
                writer.write_enum_value("cloudCertificationAuthorityHashingAlgorithm", @cloud_certification_authority_hashing_algorithm)
                writer.write_collection_of_object_values("cloudCertificationAuthorityLeafCertificate", @cloud_certification_authority_leaf_certificate)
                writer.write_enum_value("cloudCertificationAuthorityType", @cloud_certification_authority_type)
                writer.write_string_value("commonName", @common_name)
                writer.write_string_value("countryName", @country_name)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("eTag", @e_tag)
                writer.write_collection_of_object_values("extendedKeyUsages", @extended_key_usages)
                writer.write_string_value("issuerCommonName", @issuer_common_name)
                writer.write_enum_value("keyPlatform", @key_platform)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("localityName", @locality_name)
                writer.write_string_value("ocspResponderUri", @ocsp_responder_uri)
                writer.write_string_value("organizationName", @organization_name)
                writer.write_string_value("organizationUnit", @organization_unit)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_string_value("rootCertificateCommonName", @root_certificate_common_name)
                writer.write_string_value("scepServerUrl", @scep_server_url)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_string_value("stateName", @state_name)
                writer.write_string_value("subjectName", @subject_name)
                writer.write_string_value("thumbprint", @thumbprint)
                writer.write_date_time_value("validityEndDateTime", @validity_end_date_time)
                writer.write_number_value("validityPeriodInYears", @validity_period_in_years)
                writer.write_date_time_value("validityStartDateTime", @validity_start_date_time)
                writer.write_number_value("versionNumber", @version_number)
            end
            ## 
            ## Gets the stateName property value. The state or province name that is used to compose the subject name of a certification authority certificate in the form 'ST='. Nullable. Example: Washington. Read-only.
            ## @return a string
            ## 
            def state_name
                return @state_name
            end
            ## 
            ## Sets the stateName property value. The state or province name that is used to compose the subject name of a certification authority certificate in the form 'ST='. Nullable. Example: Washington. Read-only.
            ## @param value Value to set for the stateName property.
            ## @return a void
            ## 
            def state_name=(value)
                @state_name = value
            end
            ## 
            ## Gets the subjectName property value. The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a company or government entity. Read-only. Supports $orderby and $select.
            ## @return a string
            ## 
            def subject_name
                return @subject_name
            end
            ## 
            ## Sets the subjectName property value. The subject name of the certificate. The subject is the target or intended beneficiary of the security being provided, such as a company or government entity. Read-only. Supports $orderby and $select.
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
            ## Gets the validityEndDateTime property value. The end date time of the validity period of a certification authority certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            ## @return a date_time
            ## 
            def validity_end_date_time
                return @validity_end_date_time
            end
            ## 
            ## Sets the validityEndDateTime property value. The end date time of the validity period of a certification authority certificate. Certificates cannot be used after this date time as they are longer valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            ## @param value Value to set for the validityEndDateTime property.
            ## @return a void
            ## 
            def validity_end_date_time=(value)
                @validity_end_date_time = value
            end
            ## 
            ## Gets the validityPeriodInYears property value. The certification authority validity period in years configured by admins.
            ## @return a integer
            ## 
            def validity_period_in_years
                return @validity_period_in_years
            end
            ## 
            ## Sets the validityPeriodInYears property value. The certification authority validity period in years configured by admins.
            ## @param value Value to set for the validityPeriodInYears property.
            ## @return a void
            ## 
            def validity_period_in_years=(value)
                @validity_period_in_years = value
            end
            ## 
            ## Gets the validityStartDateTime property value. The start date time of the validity period of a certification authority certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            ## @return a date_time
            ## 
            def validity_start_date_time
                return @validity_start_date_time
            end
            ## 
            ## Sets the validityStartDateTime property value. The start date time of the validity period of a certification authority certificate. Certificates cannot be used before this date time as they are not yet valid. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Nullable. Read-only. Supports $orderby.
            ## @param value Value to set for the validityStartDateTime property.
            ## @return a void
            ## 
            def validity_start_date_time=(value)
                @validity_start_date_time = value
            end
            ## 
            ## Gets the versionNumber property value. The certification authority version, which is incremented each time the certification authority is renewed. Read-only.
            ## @return a integer
            ## 
            def version_number
                return @version_number
            end
            ## 
            ## Sets the versionNumber property value. The certification authority version, which is incremented each time the certification authority is renewed. Read-only.
            ## @param value Value to set for the versionNumber property.
            ## @return a void
            ## 
            def version_number=(value)
                @version_number = value
            end
        end
    end
end
