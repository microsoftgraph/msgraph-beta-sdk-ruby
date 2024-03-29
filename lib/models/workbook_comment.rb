require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkbookComment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content of the comment.
            @content
            ## 
            # Indicates the type for the comment.
            @content_type
            ## 
            # The replies property
            @replies
            ## 
            # The task property
            @task
            ## 
            ## Instantiates a new workbookComment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content of the comment.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content of the comment.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the contentType property value. Indicates the type for the comment.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. Indicates the type for the comment.
            ## @param value Value to set for the contentType property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_comment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookComment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "replies" => lambda {|n| @replies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookCommentReply.create_from_discriminator_value(pn) }) },
                    "task" => lambda {|n| @task = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookDocumentTask.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the replies property value. The replies property
            ## @return a workbook_comment_reply
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
                writer.write_string_value("contentType", @content_type)
                writer.write_collection_of_object_values("replies", @replies)
                writer.write_object_value("task", @task)
            end
            ## 
            ## Gets the task property value. The task property
            ## @return a workbook_document_task
            ## 
            def task
                return @task
            end
            ## 
            ## Sets the task property value. The task property
            ## @param value Value to set for the task property.
            ## @return a void
            ## 
            def task=(value)
                @task = value
            end
        end
    end
end
