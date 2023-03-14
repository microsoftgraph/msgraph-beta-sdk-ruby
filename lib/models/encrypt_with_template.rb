require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EncryptWithTemplate < MicrosoftGraphBeta::Models::EncryptContent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The availableForEncryption property
            @available_for_encryption
            ## 
            # The templateId property
            @template_id
            ## 
            ## Gets the availableForEncryption property value. The availableForEncryption property
            ## @return a boolean
            ## 
            def available_for_encryption
                return @available_for_encryption
            end
            ## 
            ## Sets the availableForEncryption property value. The availableForEncryption property
            ## @param value Value to set for the available_for_encryption property.
            ## @return a void
            ## 
            def available_for_encryption=(value)
                @available_for_encryption = value
            end
            ## 
            ## Instantiates a new EncryptWithTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.encryptWithTemplate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a encrypt_with_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EncryptWithTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "availableForEncryption" => lambda {|n| @available_for_encryption = n.get_boolean_value() },
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
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
                writer.write_boolean_value("availableForEncryption", @available_for_encryption)
                writer.write_string_value("templateId", @template_id)
            end
            ## 
            ## Gets the templateId property value. The templateId property
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. The templateId property
            ## @param value Value to set for the template_id property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
        end
    end
end
