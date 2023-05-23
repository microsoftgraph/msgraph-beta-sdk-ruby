require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExternalItem < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The acl property
            @acl
            ## 
            # The content property
            @content
            ## 
            # The properties property
            @properties
            ## 
            ## Gets the acl property value. The acl property
            ## @return a acl
            ## 
            def acl
                return @acl
            end
            ## 
            ## Sets the acl property value. The acl property
            ## @param value Value to set for the acl property.
            ## @return a void
            ## 
            def acl=(value)
                @acl = value
            end
            ## 
            ## Instantiates a new externalItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content property
            ## @return a external_item_content
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content property
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "acl" => lambda {|n| @acl = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Acl.create_from_discriminator_value(pn) }) },
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ExternalItemContent.create_from_discriminator_value(pn) }) },
                    "properties" => lambda {|n| @properties = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Properties.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the properties property value. The properties property
            ## @return a properties
            ## 
            def properties
                return @properties
            end
            ## 
            ## Sets the properties property value. The properties property
            ## @param value Value to set for the properties property.
            ## @return a void
            ## 
            def properties=(value)
                @properties = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("acl", @acl)
                writer.write_object_value("content", @content)
                writer.write_object_value("properties", @properties)
            end
        end
    end
end
