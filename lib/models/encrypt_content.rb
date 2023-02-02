require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EncryptContent < MicrosoftGraphBeta::Models::LabelActionBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The encryptWith property
        @encrypt_with
        ## 
        ## Instantiates a new EncryptContent and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.encryptContent"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a encrypt_content
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.encryptWithTemplate"
                        return EncryptWithTemplate.new
                    when "#microsoft.graph.encryptWithUserDefinedRights"
                        return EncryptWithUserDefinedRights.new
                end
            end
            return EncryptContent.new
        end
        ## 
        ## Gets the encryptWith property value. The encryptWith property
        ## @return a encrypt_with
        ## 
        def encrypt_with
            return @encrypt_with
        end
        ## 
        ## Sets the encryptWith property value. The encryptWith property
        ## @param value Value to set for the encrypt_with property.
        ## @return a void
        ## 
        def encrypt_with=(value)
            @encrypt_with = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "encryptWith" => lambda {|n| @encrypt_with = n.get_enum_value(MicrosoftGraphBeta::Models::EncryptWith) },
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
            writer.write_enum_value("encryptWith", @encrypt_with)
        end
    end
end
