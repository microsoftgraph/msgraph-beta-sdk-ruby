require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkbookCommentReply < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content of replied comment.
            @content
            ## 
            # Indicates the type for the replied comment.
            @content_type
            ## 
            # The task property
            @task
            ## 
            ## Instantiates a new workbookCommentReply and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content of replied comment.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content of replied comment.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the contentType property value. Indicates the type for the replied comment.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. Indicates the type for the replied comment.
            ## @param value Value to set for the contentType property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_comment_reply
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookCommentReply.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "task" => lambda {|n| @task = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookDocumentTask.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("content", @content)
                writer.write_string_value("contentType", @content_type)
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
