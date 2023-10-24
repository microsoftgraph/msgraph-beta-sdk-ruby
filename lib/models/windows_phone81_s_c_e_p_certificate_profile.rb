require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows Phone 8.1+ SCEP certificate profile
        class WindowsPhone81SCEPCertificateProfile < MicrosoftGraphBeta::Models::WindowsPhone81CertificateProfileBase
            include MicrosoftKiotaAbstractions::Parsable
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
            # Trusted Root Certificate.
            @root_certificate
            ## 
            # SCEP Server Url(s).
            @scep_server_urls
            ## 
            # Custom String that defines the AAD Attribute.
            @subject_alternative_name_format_string
            ## 
            # Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
            @subject_name_format_string
            ## 
            ## Instantiates a new windowsPhone81SCEPCertificateProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsPhone81SCEPCertificateProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_phone81_s_c_e_p_certificate_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsPhone81SCEPCertificateProfile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "hashAlgorithm" => lambda {|n| @hash_algorithm = n.get_enum_values(MicrosoftGraphBeta::Models::HashAlgorithms) },
                    "keySize" => lambda {|n| @key_size = n.get_enum_value(MicrosoftGraphBeta::Models::KeySize) },
                    "keyUsage" => lambda {|n| @key_usage = n.get_enum_values(MicrosoftGraphBeta::Models::KeyUsages) },
                    "managedDeviceCertificateStates" => lambda {|n| @managed_device_certificate_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCertificateState.create_from_discriminator_value(pn) }) },
                    "rootCertificate" => lambda {|n| @root_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsPhone81TrustedRootCertificate.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the hashAlgorithm property.
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
            ## @param value Value to set for the keySize property.
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
            ## @param value Value to set for the keyUsage property.
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
            ## @param value Value to set for the managedDeviceCertificateStates property.
            ## @return a void
            ## 
            def managed_device_certificate_states=(value)
                @managed_device_certificate_states = value
            end
            ## 
            ## Gets the rootCertificate property value. Trusted Root Certificate.
            ## @return a windows_phone81_trusted_root_certificate
            ## 
            def root_certificate
                return @root_certificate
            end
            ## 
            ## Sets the rootCertificate property value. Trusted Root Certificate.
            ## @param value Value to set for the rootCertificate property.
            ## @return a void
            ## 
            def root_certificate=(value)
                @root_certificate = value
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
            ## @param value Value to set for the scepServerUrls property.
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
                writer.write_enum_value("hashAlgorithm", @hash_algorithm)
                writer.write_enum_value("keySize", @key_size)
                writer.write_enum_value("keyUsage", @key_usage)
                writer.write_collection_of_object_values("managedDeviceCertificateStates", @managed_device_certificate_states)
                writer.write_object_value("rootCertificate", @root_certificate)
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
            ## @param value Value to set for the subjectAlternativeNameFormatString property.
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
            ## @param value Value to set for the subjectNameFormatString property.
            ## @return a void
            ## 
            def subject_name_format_string=(value)
                @subject_name_format_string = value
            end
        end
    end
end
