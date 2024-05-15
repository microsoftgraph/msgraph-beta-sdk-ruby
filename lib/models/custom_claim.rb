require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomClaim < MicrosoftGraphBeta::Models::CustomClaimBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name property
            @name
            ## 
            # The namespace property
            @namespace
            ## 
            # The samlAttributeNameFormat property
            @saml_attribute_name_format
            ## 
            # The tokenFormat property
            @token_format
            ## 
            ## Instantiates a new CustomClaim and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.customClaim"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_claim
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomClaim.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "namespace" => lambda {|n| @namespace = n.get_string_value() },
                    "samlAttributeNameFormat" => lambda {|n| @saml_attribute_name_format = n.get_enum_value(MicrosoftGraphBeta::Models::SamlAttributeNameFormat) },
                    "tokenFormat" => lambda {|n| @token_format = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TokenFormat.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the namespace property value. The namespace property
            ## @return a string
            ## 
            def namespace
                return @namespace
            end
            ## 
            ## Sets the namespace property value. The namespace property
            ## @param value Value to set for the namespace property.
            ## @return a void
            ## 
            def namespace=(value)
                @namespace = value
            end
            ## 
            ## Gets the samlAttributeNameFormat property value. The samlAttributeNameFormat property
            ## @return a saml_attribute_name_format
            ## 
            def saml_attribute_name_format
                return @saml_attribute_name_format
            end
            ## 
            ## Sets the samlAttributeNameFormat property value. The samlAttributeNameFormat property
            ## @param value Value to set for the samlAttributeNameFormat property.
            ## @return a void
            ## 
            def saml_attribute_name_format=(value)
                @saml_attribute_name_format = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("name", @name)
                writer.write_string_value("namespace", @namespace)
                writer.write_enum_value("samlAttributeNameFormat", @saml_attribute_name_format)
                writer.write_collection_of_object_values("tokenFormat", @token_format)
            end
            ## 
            ## Gets the tokenFormat property value. The tokenFormat property
            ## @return a token_format
            ## 
            def token_format
                return @token_format
            end
            ## 
            ## Sets the tokenFormat property value. The tokenFormat property
            ## @param value Value to set for the tokenFormat property.
            ## @return a void
            ## 
            def token_format=(value)
                @token_format = value
            end
        end
    end
end
