require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Windows10XSCEPCertificateProfile < MicrosoftGraphBeta::Models::Windows10XCertificateProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # CertificateStore types
            @certificate_store
            ## 
            # Certificate Validity Period Options.
            @certificate_validity_period_scale
            ## 
            # Value for the Certificate Validity Period
            @certificate_validity_period_value
            ## 
            # Extended Key Usage (EKU) settings.
            @extended_key_usages
            ## 
            # SCEP Hash Algorithm.
            @hash_algorithm
            ## 
            # Key Size Options.
            @key_size
            ## 
            # Key Storage Provider (KSP) Import Options.
            @key_storage_provider
            ## 
            # Key Usage Options.
            @key_usage
            ## 
            # Certificate renewal threshold percentage
            @renewal_threshold_percentage
            ## 
            # Trusted Root Certificate ID
            @root_certificate_id
            ## 
            # SCEP Server Url(s).
            @scep_server_urls
            ## 
            # Custom AAD Attributes.
            @subject_alternative_name_formats
            ## 
            # Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
            @subject_name_format_string
            ## 
            ## Gets the certificateStore property value. CertificateStore types
            ## @return a certificate_store
            ## 
            def certificate_store
                return @certificate_store
            end
            ## 
            ## Sets the certificateStore property value. CertificateStore types
            ## @param value Value to set for the certificate_store property.
            ## @return a void
            ## 
            def certificate_store=(value)
                @certificate_store = value
            end
            ## 
            ## Gets the certificateValidityPeriodScale property value. Certificate Validity Period Options.
            ## @return a certificate_validity_period_scale
            ## 
            def certificate_validity_period_scale
                return @certificate_validity_period_scale
            end
            ## 
            ## Sets the certificateValidityPeriodScale property value. Certificate Validity Period Options.
            ## @param value Value to set for the certificate_validity_period_scale property.
            ## @return a void
            ## 
            def certificate_validity_period_scale=(value)
                @certificate_validity_period_scale = value
            end
            ## 
            ## Gets the certificateValidityPeriodValue property value. Value for the Certificate Validity Period
            ## @return a integer
            ## 
            def certificate_validity_period_value
                return @certificate_validity_period_value
            end
            ## 
            ## Sets the certificateValidityPeriodValue property value. Value for the Certificate Validity Period
            ## @param value Value to set for the certificate_validity_period_value property.
            ## @return a void
            ## 
            def certificate_validity_period_value=(value)
                @certificate_validity_period_value = value
            end
            ## 
            ## Instantiates a new Windows10XSCEPCertificateProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10XSCEPCertificateProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_x_s_c_e_p_certificate_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10XSCEPCertificateProfile.new
            end
            ## 
            ## Gets the extendedKeyUsages property value. Extended Key Usage (EKU) settings.
            ## @return a extended_key_usage
            ## 
            def extended_key_usages
                return @extended_key_usages
            end
            ## 
            ## Sets the extendedKeyUsages property value. Extended Key Usage (EKU) settings.
            ## @param value Value to set for the extended_key_usages property.
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
                    "certificateStore" => lambda {|n| @certificate_store = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateStore) },
                    "certificateValidityPeriodScale" => lambda {|n| @certificate_validity_period_scale = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateValidityPeriodScale) },
                    "certificateValidityPeriodValue" => lambda {|n| @certificate_validity_period_value = n.get_number_value() },
                    "extendedKeyUsages" => lambda {|n| @extended_key_usages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExtendedKeyUsage.create_from_discriminator_value(pn) }) },
                    "hashAlgorithm" => lambda {|n| @hash_algorithm = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HashAlgorithms.create_from_discriminator_value(pn) }) },
                    "keySize" => lambda {|n| @key_size = n.get_enum_value(MicrosoftGraphBeta::Models::KeySize) },
                    "keyStorageProvider" => lambda {|n| @key_storage_provider = n.get_enum_value(MicrosoftGraphBeta::Models::KeyStorageProviderOption) },
                    "keyUsage" => lambda {|n| @key_usage = n.get_enum_value(MicrosoftGraphBeta::Models::KeyUsages) },
                    "renewalThresholdPercentage" => lambda {|n| @renewal_threshold_percentage = n.get_number_value() },
                    "rootCertificateId" => lambda {|n| @root_certificate_id = n.get_guid_value() },
                    "scepServerUrls" => lambda {|n| @scep_server_urls = n.get_collection_of_primitive_values(String) },
                    "subjectAlternativeNameFormats" => lambda {|n| @subject_alternative_name_formats = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Windows10XCustomSubjectAlternativeName.create_from_discriminator_value(pn) }) },
                    "subjectNameFormatString" => lambda {|n| @subject_name_format_string = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hashAlgorithm property value. SCEP Hash Algorithm.
            ## @return a hash_algorithms
            ## 
            def hash_algorithm
                return @hash_algorithm
            end
            ## 
            ## Sets the hashAlgorithm property value. SCEP Hash Algorithm.
            ## @param value Value to set for the hash_algorithm property.
            ## @return a void
            ## 
            def hash_algorithm=(value)
                @hash_algorithm = value
            end
            ## 
            ## Gets the keySize property value. Key Size Options.
            ## @return a key_size
            ## 
            def key_size
                return @key_size
            end
            ## 
            ## Sets the keySize property value. Key Size Options.
            ## @param value Value to set for the key_size property.
            ## @return a void
            ## 
            def key_size=(value)
                @key_size = value
            end
            ## 
            ## Gets the keyStorageProvider property value. Key Storage Provider (KSP) Import Options.
            ## @return a key_storage_provider_option
            ## 
            def key_storage_provider
                return @key_storage_provider
            end
            ## 
            ## Sets the keyStorageProvider property value. Key Storage Provider (KSP) Import Options.
            ## @param value Value to set for the key_storage_provider property.
            ## @return a void
            ## 
            def key_storage_provider=(value)
                @key_storage_provider = value
            end
            ## 
            ## Gets the keyUsage property value. Key Usage Options.
            ## @return a key_usages
            ## 
            def key_usage
                return @key_usage
            end
            ## 
            ## Sets the keyUsage property value. Key Usage Options.
            ## @param value Value to set for the key_usage property.
            ## @return a void
            ## 
            def key_usage=(value)
                @key_usage = value
            end
            ## 
            ## Gets the renewalThresholdPercentage property value. Certificate renewal threshold percentage
            ## @return a integer
            ## 
            def renewal_threshold_percentage
                return @renewal_threshold_percentage
            end
            ## 
            ## Sets the renewalThresholdPercentage property value. Certificate renewal threshold percentage
            ## @param value Value to set for the renewal_threshold_percentage property.
            ## @return a void
            ## 
            def renewal_threshold_percentage=(value)
                @renewal_threshold_percentage = value
            end
            ## 
            ## Gets the rootCertificateId property value. Trusted Root Certificate ID
            ## @return a guid
            ## 
            def root_certificate_id
                return @root_certificate_id
            end
            ## 
            ## Sets the rootCertificateId property value. Trusted Root Certificate ID
            ## @param value Value to set for the root_certificate_id property.
            ## @return a void
            ## 
            def root_certificate_id=(value)
                @root_certificate_id = value
            end
            ## 
            ## Gets the scepServerUrls property value. SCEP Server Url(s).
            ## @return a string
            ## 
            def scep_server_urls
                return @scep_server_urls
            end
            ## 
            ## Sets the scepServerUrls property value. SCEP Server Url(s).
            ## @param value Value to set for the scep_server_urls property.
            ## @return a void
            ## 
            def scep_server_urls=(value)
                @scep_server_urls = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("certificateStore", @certificate_store)
                writer.write_enum_value("certificateValidityPeriodScale", @certificate_validity_period_scale)
                writer.write_number_value("certificateValidityPeriodValue", @certificate_validity_period_value)
                writer.write_collection_of_object_values("extendedKeyUsages", @extended_key_usages)
                writer.write_collection_of_object_values("hashAlgorithm", @hash_algorithm)
                writer.write_enum_value("keySize", @key_size)
                writer.write_enum_value("keyStorageProvider", @key_storage_provider)
                writer.write_enum_value("keyUsage", @key_usage)
                writer.write_number_value("renewalThresholdPercentage", @renewal_threshold_percentage)
                writer.write_guid_value("rootCertificateId", @root_certificate_id)
                writer.write_collection_of_primitive_values("scepServerUrls", @scep_server_urls)
                writer.write_collection_of_object_values("subjectAlternativeNameFormats", @subject_alternative_name_formats)
                writer.write_string_value("subjectNameFormatString", @subject_name_format_string)
            end
            ## 
            ## Gets the subjectAlternativeNameFormats property value. Custom AAD Attributes.
            ## @return a windows10_x_custom_subject_alternative_name
            ## 
            def subject_alternative_name_formats
                return @subject_alternative_name_formats
            end
            ## 
            ## Sets the subjectAlternativeNameFormats property value. Custom AAD Attributes.
            ## @param value Value to set for the subject_alternative_name_formats property.
            ## @return a void
            ## 
            def subject_alternative_name_formats=(value)
                @subject_alternative_name_formats = value
            end
            ## 
            ## Gets the subjectNameFormatString property value. Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
            ## @return a string
            ## 
            def subject_name_format_string
                return @subject_name_format_string
            end
            ## 
            ## Sets the subjectNameFormatString property value. Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
            ## @param value Value to set for the subject_name_format_string property.
            ## @return a void
            ## 
            def subject_name_format_string=(value)
                @subject_name_format_string = value
            end
        end
    end
end
