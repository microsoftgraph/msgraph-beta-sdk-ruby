require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Windows81CertificateProfileBase < MicrosoftGraphBeta::Models::WindowsCertificateProfileBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements.
        @custom_subject_alternative_names
        ## 
        # Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements.
        @extended_key_usages
        ## 
        ## Instantiates a new Windows81CertificateProfileBase and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windows81CertificateProfileBase"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows81_certificate_profile_base
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windows81SCEPCertificateProfile"
                        return Windows81SCEPCertificateProfile.new
                end
            end
            return Windows81CertificateProfileBase.new
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
        ## @param value Value to set for the customSubjectAlternativeNames property.
        ## @return a void
        ## 
        def custom_subject_alternative_names=(value)
            @custom_subject_alternative_names = value
        end
        ## 
        ## Gets the extendedKeyUsages property value. Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements.
        ## @return a extended_key_usage
        ## 
        def extended_key_usages
            return @extended_key_usages
        end
        ## 
        ## Sets the extendedKeyUsages property value. Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements.
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
                "customSubjectAlternativeNames" => lambda {|n| @custom_subject_alternative_names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomSubjectAlternativeName.create_from_discriminator_value(pn) }) },
                "extendedKeyUsages" => lambda {|n| @extended_key_usages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExtendedKeyUsage.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("customSubjectAlternativeNames", @custom_subject_alternative_names)
            writer.write_collection_of_object_values("extendedKeyUsages", @extended_key_usages)
        end
    end
end
