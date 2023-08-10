require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkbookDocumentTaskChange < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignee property
            @assignee
            ## 
            # The changedBy property
            @changed_by
            ## 
            # The commentId property
            @comment_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The dueDateTime property
            @due_date_time
            ## 
            # The percentComplete property
            @percent_complete
            ## 
            # The priority property
            @priority
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            # The title property
            @title
            ## 
            # The type property
            @type
            ## 
            # The undoChangeId property
            @undo_change_id
            ## 
            ## Gets the assignee property value. The assignee property
            ## @return a workbook_email_identity
            ## 
            def assignee
                return @assignee
            end
            ## 
            ## Sets the assignee property value. The assignee property
            ## @param value Value to set for the assignee property.
            ## @return a void
            ## 
            def assignee=(value)
                @assignee = value
            end
            ## 
            ## Gets the changedBy property value. The changedBy property
            ## @return a workbook_email_identity
            ## 
            def changed_by
                return @changed_by
            end
            ## 
            ## Sets the changedBy property value. The changedBy property
            ## @param value Value to set for the changedBy property.
            ## @return a void
            ## 
            def changed_by=(value)
                @changed_by = value
            end
            ## 
            ## Gets the commentId property value. The commentId property
            ## @return a string
            ## 
            def comment_id
                return @comment_id
            end
            ## 
            ## Sets the commentId property value. The commentId property
            ## @param value Value to set for the commentId property.
            ## @return a void
            ## 
            def comment_id=(value)
                @comment_id = value
            end
            ## 
            ## Instantiates a new workbookDocumentTaskChange and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_document_task_change
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookDocumentTaskChange.new
            end
            ## 
            ## Gets the dueDateTime property value. The dueDateTime property
            ## @return a date_time
            ## 
            def due_date_time
                return @due_date_time
            end
            ## 
            ## Sets the dueDateTime property value. The dueDateTime property
            ## @param value Value to set for the dueDateTime property.
            ## @return a void
            ## 
            def due_date_time=(value)
                @due_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignee" => lambda {|n| @assignee = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookEmailIdentity.create_from_discriminator_value(pn) }) },
                    "changedBy" => lambda {|n| @changed_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookEmailIdentity.create_from_discriminator_value(pn) }) },
                    "commentId" => lambda {|n| @comment_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "dueDateTime" => lambda {|n| @due_date_time = n.get_date_time_value() },
                    "percentComplete" => lambda {|n| @percent_complete = n.get_number_value() },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "undoChangeId" => lambda {|n| @undo_change_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the percentComplete property value. The percentComplete property
            ## @return a integer
            ## 
            def percent_complete
                return @percent_complete
            end
            ## 
            ## Sets the percentComplete property value. The percentComplete property
            ## @param value Value to set for the percentComplete property.
            ## @return a void
            ## 
            def percent_complete=(value)
                @percent_complete = value
            end
            ## 
            ## Gets the priority property value. The priority property
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. The priority property
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("assignee", @assignee)
                writer.write_object_value("changedBy", @changed_by)
                writer.write_string_value("commentId", @comment_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("dueDateTime", @due_date_time)
                writer.write_number_value("percentComplete", @percent_complete)
                writer.write_number_value("priority", @priority)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("title", @title)
                writer.write_string_value("type", @type)
                writer.write_string_value("undoChangeId", @undo_change_id)
            end
            ## 
            ## Gets the startDateTime property value. The startDateTime property
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The startDateTime property
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the undoChangeId property value. The undoChangeId property
            ## @return a string
            ## 
            def undo_change_id
                return @undo_change_id
            end
            ## 
            ## Sets the undoChangeId property value. The undoChangeId property
            ## @param value Value to set for the undoChangeId property.
            ## @return a void
            ## 
            def undo_change_id=(value)
                @undo_change_id = value
            end
        end
    end
end
