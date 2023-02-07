require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DocumentComment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The content property
        @content
        ## 
        # The replies property
        @replies
        ## 
        ## Instantiates a new documentComment and sets the default values.
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
        ## @return a document_comment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DocumentComment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "content" => lambda {|n| @content = n.get_string_value() },
                "replies" => lambda {|n| @replies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DocumentCommentReply.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the replies property value. The replies property
        ## @return a document_comment_reply
        ## 
        def replies
            return @replies
        end
        ## 
        ## Sets the replies property value. The replies property
        ## @param value Value to set for the replies property.
        ## @return a void
        ## 
        def replies=(value)
            @replies = value
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
            writer.write_collection_of_object_values("replies", @replies)
        end
    end
end
