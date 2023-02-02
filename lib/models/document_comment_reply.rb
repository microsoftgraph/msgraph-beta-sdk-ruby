require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DocumentCommentReply < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The content property
        @content
        ## 
        # The location property
        @location
        ## 
        ## Instantiates a new documentCommentReply and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the content property value. The content property
        ## @return a string
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
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a document_comment_reply
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DocumentCommentReply.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "content" => lambda {|n| @content = n.get_string_value() },
                "location" => lambda {|n| @location = n.get_string_value() },
            })
        end
        ## 
        ## Gets the location property value. The location property
        ## @return a string
        ## 
        def location
            return @location
        end
        ## 
        ## Sets the location property value. The location property
        ## @param value Value to set for the location property.
        ## @return a void
        ## 
        def location=(value)
            @location = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("content", @content)
            writer.write_string_value("location", @location)
        end
    end
end
