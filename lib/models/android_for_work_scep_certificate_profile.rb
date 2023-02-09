require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidForWorkScepCertificateProfile < MicrosoftGraphBeta::Models::AndroidForWorkCertificateProfileBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Target store certificate. Possible values are: user, machine.
            @certificate_store
            ## 
            # Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements.
            @custom_subject_alternative_names
            ## 
            # Hash Algorithm Options.
            @hash_algorithm
            ## 
            # Key Size Options.
            @key_size
            ## 
            # Key Usage Options.
            @key_usage
            ## 
            # Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            @managed_device_certificate_states
            ## 
            # SCEP Server Url(s)
            @scep_server_urls
            ## 
            # Custom String that defines the AAD Attribute.
            @subject_alternative_name_format_string
            ## 
            # Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
            @subject_name_format_string
            ## 
            ## Gets the certificateStore property value. Target store certificate. Possible values are: user, machine.
            ## @return a certificate_store
            ## 
            def certificate_store
                return @certificate_store
            end
            ## 
            ## Sets the certificateStore property value. Target store certificate. Possible values are: user, machine.
            ## @param value Value to set for the certificate_store property.
            ## @return a void
            ## 
            def certificate_store=(value)
                @certificate_store = value
            end
            ## 
            ## Instantiates a new AndroidForWorkScepCertificateProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidForWorkScepCertificateProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_for_work_scep_certificate_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidForWorkScepCertificateProfile.new
            end
            ## 
            ## Gets the customSubjectAlternativeNames property value. Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements.
            ## @return a custom_subject_alternative_name
            ## 
            def custom_subject_alternative_names
                return @custom_subject_alternative_names
            end
            ## 
            ## Sets the customSubjectAlternativeNames property value. Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the custom_subject_alternative_names property.
            ## @return a void
            ## 
            def custom_subject_alternative_names=(value)
                @custom_subject_alternative_names = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateStore" => lambda {|n| @certificate_store = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateStore) },
                    "customSubjectAlternativeNames" => lambda {|n| @custom_subject_alternative_names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomSubjectAlternativeName.create_from_discriminator_value(pn) }) },
                    "hashAlgorithm" => lambda {|n| @hash_algorithm = n.get_enum_value(MicrosoftGraphBeta::Models::HashAlgorithms) },
                    "keySize" => lambda {|n| @key_size = n.get_enum_value(MicrosoftGraphBeta::Models::KeySize) },
                    "keyUsage" => lambda {|n| @key_usage = n.get_enum_value(MicrosoftGraphBeta::Models::KeyUsages) },
                    "managedDeviceCertificateStates" => lambda {|n| @managed_device_certificate_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCertificateState.create_from_discriminator_value(pn) }) },
                    "scepServerUrls" => lambda {|n| @scep_server_urls = n.get_collection_of_primitive_values(String) },
                    "subjectAlternativeNameFormatString" => lambda {|n| @subject_alternative_name_format_string = n.get_string_value() },
                    "subjectNameFormatString" => lambda {|n| @subject_name_format_string = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hashAlgorithm property value. Hash Algorithm Options.
            ## @return a hash_algorithms
            ## 
            def hash_algorithm
                return @hash_algorithm
            end
            ## 
            ## Sets the hashAlgorithm property value. Hash Algorithm Options.
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
            ## Gets the managedDeviceCertificateStates property value. Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            ## @return a managed_device_certificate_state
            ## 
            def managed_device_certificate_states
                return @managed_device_certificate_states
            end
            ## 
            ## Sets the managedDeviceCertificateStates property value. Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            ## @param value Value to set for the managed_device_certificate_states property.
            ## @return a void
            ## 
            def managed_device_certificate_states=(value)
                @managed_device_certificate_states = value
            end
            ## 
            ## Gets the scepServerUrls property value. SCEP Server Url(s)
            ## @return a string
            ## 
            def scep_server_urls
                return @scep_server_urls
            end
            ## 
            ## Sets the scepServerUrls property value. SCEP Server Url(s)
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
                writer.write_collection_of_object_values("customSubjectAlternativeNames", @custom_subject_alternative_names)
                writer.write_enum_value("hashAlgorithm", @hash_algorithm)
                writer.write_enum_value("keySize", @key_size)
                writer.write_enum_value("keyUsage", @key_usage)
                writer.write_collection_of_object_values("managedDeviceCertificateStates", @managed_device_certificate_states)
                writer.write_collection_of_primitive_values("scepServerUrls", @scep_server_urls)
                writer.write_string_value("subjectAlternativeNameFormatString", @subject_alternative_name_format_string)
                writer.write_string_value("subjectNameFormatString", @subject_name_format_string)
            end
            ## 
            ## Gets the subjectAlternativeNameFormatString property value. Custom String that defines the AAD Attribute.
            ## @return a string
            ## 
            def subject_alternative_name_format_string
                return @subject_alternative_name_format_string
            end
            ## 
            ## Sets the subjectAlternativeNameFormatString property value. Custom String that defines the AAD Attribute.
            ## @param value Value to set for the subject_alternative_name_format_string property.
            ## @return a void
            ## 
            def subject_alternative_name_format_string=(value)
                @subject_alternative_name_format_string = value
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
