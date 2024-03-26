require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkbookDocumentTaskChange < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user identity the task is assigned to. Only present when the type property is assign. Nullable.
            @assignee
            ## 
            # The changedBy property
            @changed_by
            ## 
            # The identifier of the associated comment.
            @comment_id
            ## 
            # Date and time when the task was changed. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The due date and time for the task. Only present when the type property is setSchedule. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @due_date_time
            ## 
            # An integer value from 0 to 100 that represents the percentage of the completion of the task and associated comment. 100 means that the task and associated comment are completed. If you change the completion from 100 to a lower value, the associated task and comment are reactivated. Only present when the type property is setPercentComplete. Nullable.
            @percent_complete
            ## 
            # An integer value from 0 to 10 that represents the priority of the task. A lower value indicates a higher priority. 5 indicates the default priority if not set. Only present when the type property is setPriority. Nullable.
            @priority
            ## 
            # The start date and time for the task. Only present when the type property is setSchedule. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @start_date_time
            ## 
            # The title of the task. Only present when the type property is setTitle. Nullable.
            @title
            ## 
            # The type of the change history. Possible values are: create, assign, unassign, unassignAll, setPriority, setTitle, setPercentComplete, setSchedule, remove, restore, undo.
            @type
            ## 
            # The ID of the workbookDocumentTaskChange that was undone for the undo change action. Only exists on an undo change history. Nullable.
            @undo_change_id
            ## 
            ## Gets the assignee property value. The user identity the task is assigned to. Only present when the type property is assign. Nullable.
            ## @return a workbook_email_identity
            ## 
            def assignee
                return @assignee
            end
            ## 
            ## Sets the assignee property value. The user identity the task is assigned to. Only present when the type property is assign. Nullable.
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
            ## Gets the commentId property value. The identifier of the associated comment.
            ## @return a string
            ## 
            def comment_id
                return @comment_id
            end
            ## 
            ## Sets the commentId property value. The identifier of the associated comment.
            ## @param value Value to set for the commentId property.
            ## @return a void
            ## 
            def comment_id=(value)
                @comment_id = value
            end
            ## 
            ## Instantiates a new WorkbookDocumentTaskChange and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the task was changed. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the task was changed. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
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
            ## Gets the dueDateTime property value. The due date and time for the task. Only present when the type property is setSchedule. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def due_date_time
                return @due_date_time
            end
            ## 
            ## Sets the dueDateTime property value. The due date and time for the task. Only present when the type property is setSchedule. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
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
            ## Gets the percentComplete property value. An integer value from 0 to 100 that represents the percentage of the completion of the task and associated comment. 100 means that the task and associated comment are completed. If you change the completion from 100 to a lower value, the associated task and comment are reactivated. Only present when the type property is setPercentComplete. Nullable.
            ## @return a integer
            ## 
            def percent_complete
                return @percent_complete
            end
            ## 
            ## Sets the percentComplete property value. An integer value from 0 to 100 that represents the percentage of the completion of the task and associated comment. 100 means that the task and associated comment are completed. If you change the completion from 100 to a lower value, the associated task and comment are reactivated. Only present when the type property is setPercentComplete. Nullable.
            ## @param value Value to set for the percentComplete property.
            ## @return a void
            ## 
            def percent_complete=(value)
                @percent_complete = value
            end
            ## 
            ## Gets the priority property value. An integer value from 0 to 10 that represents the priority of the task. A lower value indicates a higher priority. 5 indicates the default priority if not set. Only present when the type property is setPriority. Nullable.
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. An integer value from 0 to 10 that represents the priority of the task. A lower value indicates a higher priority. 5 indicates the default priority if not set. Only present when the type property is setPriority. Nullable.
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
            ## Gets the startDateTime property value. The start date and time for the task. Only present when the type property is setSchedule. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The start date and time for the task. Only present when the type property is setSchedule. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the title property value. The title of the task. Only present when the type property is setTitle. Nullable.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of the task. Only present when the type property is setTitle. Nullable.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the type property value. The type of the change history. Possible values are: create, assign, unassign, unassignAll, setPriority, setTitle, setPercentComplete, setSchedule, remove, restore, undo.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type of the change history. Possible values are: create, assign, unassign, unassignAll, setPriority, setTitle, setPercentComplete, setSchedule, remove, restore, undo.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the undoChangeId property value. The ID of the workbookDocumentTaskChange that was undone for the undo change action. Only exists on an undo change history. Nullable.
            ## @return a string
            ## 
            def undo_change_id
                return @undo_change_id
            end
            ## 
            ## Sets the undoChangeId property value. The ID of the workbookDocumentTaskChange that was undone for the undo change action. Only exists on an undo change history. Nullable.
            ## @param value Value to set for the undoChangeId property.
            ## @return a void
            ## 
            def undo_change_id=(value)
                @undo_change_id = value
            end
        end
    end
end
