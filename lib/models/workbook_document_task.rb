require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkbookDocumentTask < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of user identities the task is assigned to.
            @assignees
            ## 
            # A collection of task change histories.
            @changes
            ## 
            # The comment that the task is associated with.
            @comment
            ## 
            # The identity of the user who completed the task. Nullable.
            @completed_by
            ## 
            # Date and time when the task was completed. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @completed_date_time
            ## 
            # A user identity that creates the task. Nullable.
            @created_by
            ## 
            # Date and time when the task was created. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # An integer value from 0 to 100 that represents the percentage of the completion of the task. 100 means that the task is completed. Nullable.
            @percent_complete
            ## 
            # An integer value from 0 to 10 that represents the priority of the task. A lower value indicates a higher priority. Nullable.
            @priority
            ## 
            # Start and due date of the task. Nullable.
            @start_and_due_date_time
            ## 
            # The title of the task.
            @title
            ## 
            ## Gets the assignees property value. A collection of user identities the task is assigned to.
            ## @return a workbook_email_identity
            ## 
            def assignees
                return @assignees
            end
            ## 
            ## Sets the assignees property value. A collection of user identities the task is assigned to.
            ## @param value Value to set for the assignees property.
            ## @return a void
            ## 
            def assignees=(value)
                @assignees = value
            end
            ## 
            ## Gets the changes property value. A collection of task change histories.
            ## @return a workbook_document_task_change
            ## 
            def changes
                return @changes
            end
            ## 
            ## Sets the changes property value. A collection of task change histories.
            ## @param value Value to set for the changes property.
            ## @return a void
            ## 
            def changes=(value)
                @changes = value
            end
            ## 
            ## Gets the comment property value. The comment that the task is associated with.
            ## @return a workbook_comment
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. The comment that the task is associated with.
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Gets the completedBy property value. The identity of the user who completed the task. Nullable.
            ## @return a workbook_email_identity
            ## 
            def completed_by
                return @completed_by
            end
            ## 
            ## Sets the completedBy property value. The identity of the user who completed the task. Nullable.
            ## @param value Value to set for the completedBy property.
            ## @return a void
            ## 
            def completed_by=(value)
                @completed_by = value
            end
            ## 
            ## Gets the completedDateTime property value. Date and time when the task was completed. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. Date and time when the task was completed. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new WorkbookDocumentTask and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. A user identity that creates the task. Nullable.
            ## @return a workbook_email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. A user identity that creates the task. Nullable.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the task was created. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the task was created. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workbook_document_task
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkbookDocumentTask.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignees" => lambda {|n| @assignees = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookEmailIdentity.create_from_discriminator_value(pn) }) },
                    "changes" => lambda {|n| @changes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookDocumentTaskChange.create_from_discriminator_value(pn) }) },
                    "comment" => lambda {|n| @comment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookComment.create_from_discriminator_value(pn) }) },
                    "completedBy" => lambda {|n| @completed_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookEmailIdentity.create_from_discriminator_value(pn) }) },
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookEmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "percentComplete" => lambda {|n| @percent_complete = n.get_number_value() },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "startAndDueDateTime" => lambda {|n| @start_and_due_date_time = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WorkbookDocumentTaskSchedule.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                })
            end
            ## 
            ## Gets the percentComplete property value. An integer value from 0 to 100 that represents the percentage of the completion of the task. 100 means that the task is completed. Nullable.
            ## @return a integer
            ## 
            def percent_complete
                return @percent_complete
            end
            ## 
            ## Sets the percentComplete property value. An integer value from 0 to 100 that represents the percentage of the completion of the task. 100 means that the task is completed. Nullable.
            ## @param value Value to set for the percentComplete property.
            ## @return a void
            ## 
            def percent_complete=(value)
                @percent_complete = value
            end
            ## 
            ## Gets the priority property value. An integer value from 0 to 10 that represents the priority of the task. A lower value indicates a higher priority. Nullable.
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. An integer value from 0 to 10 that represents the priority of the task. A lower value indicates a higher priority. Nullable.
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
                writer.write_collection_of_object_values("assignees", @assignees)
                writer.write_collection_of_object_values("changes", @changes)
                writer.write_object_value("comment", @comment)
                writer.write_object_value("completedBy", @completed_by)
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_number_value("percentComplete", @percent_complete)
                writer.write_number_value("priority", @priority)
                writer.write_object_value("startAndDueDateTime", @start_and_due_date_time)
                writer.write_string_value("title", @title)
            end
            ## 
            ## Gets the startAndDueDateTime property value. Start and due date of the task. Nullable.
            ## @return a workbook_document_task_schedule
            ## 
            def start_and_due_date_time
                return @start_and_due_date_time
            end
            ## 
            ## Sets the startAndDueDateTime property value. Start and due date of the task. Nullable.
            ## @param value Value to set for the startAndDueDateTime property.
            ## @return a void
            ## 
            def start_and_due_date_time=(value)
                @start_and_due_date_time = value
            end
            ## 
            ## Gets the title property value. The title of the task.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of the task.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
