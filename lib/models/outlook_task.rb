require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OutlookTask < MicrosoftGraphBeta::Models::OutlookItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the person who has been assigned the task in Outlook. Read-only.
            @assigned_to
            ## 
            # The collection of fileAttachment, itemAttachment, and referenceAttachment attachments for the task.  Read-only. Nullable.
            @attachments
            ## 
            # The task body that typically contains information about the task. Note that only HTML type is supported.
            @body
            ## 
            # The date in the specified time zone that the task was finished.
            @completed_date_time
            ## 
            # The date in the specified time zone that the task is to be finished.
            @due_date_time
            ## 
            # Set to true if the task has attachments.
            @has_attachments
            ## 
            # The importance property
            @importance
            ## 
            # The isReminderOn property
            @is_reminder_on
            ## 
            # The collection of multi-value extended properties defined for the task. Read-only. Nullable.
            @multi_value_extended_properties
            ## 
            # The owner property
            @owner
            ## 
            # The parentFolderId property
            @parent_folder_id
            ## 
            # The recurrence property
            @recurrence
            ## 
            # The reminderDateTime property
            @reminder_date_time
            ## 
            # The sensitivity property
            @sensitivity
            ## 
            # The collection of single-value extended properties defined for the task. Read-only. Nullable.
            @single_value_extended_properties
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            # The status property
            @status
            ## 
            # The subject property
            @subject
            ## 
            ## Gets the assignedTo property value. The name of the person who has been assigned the task in Outlook. Read-only.
            ## @return a string
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. The name of the person who has been assigned the task in Outlook. Read-only.
            ## @param value Value to set for the assignedTo property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Gets the attachments property value. The collection of fileAttachment, itemAttachment, and referenceAttachment attachments for the task.  Read-only. Nullable.
            ## @return a attachment
            ## 
            def attachments
                return @attachments
            end
            ## 
            ## Sets the attachments property value. The collection of fileAttachment, itemAttachment, and referenceAttachment attachments for the task.  Read-only. Nullable.
            ## @param value Value to set for the attachments property.
            ## @return a void
            ## 
            def attachments=(value)
                @attachments = value
            end
            ## 
            ## Gets the body property value. The task body that typically contains information about the task. Note that only HTML type is supported.
            ## @return a item_body
            ## 
            def body
                return @body
            end
            ## 
            ## Sets the body property value. The task body that typically contains information about the task. Note that only HTML type is supported.
            ## @param value Value to set for the body property.
            ## @return a void
            ## 
            def body=(value)
                @body = value
            end
            ## 
            ## Gets the completedDateTime property value. The date in the specified time zone that the task was finished.
            ## @return a date_time_time_zone
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. The date in the specified time zone that the task was finished.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new OutlookTask and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.outlookTask"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a outlook_task
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OutlookTask.new
            end
            ## 
            ## Gets the dueDateTime property value. The date in the specified time zone that the task is to be finished.
            ## @return a date_time_time_zone
            ## 
            def due_date_time
                return @due_date_time
            end
            ## 
            ## Sets the dueDateTime property value. The date in the specified time zone that the task is to be finished.
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
                    "assignedTo" => lambda {|n| @assigned_to = n.get_string_value() },
                    "attachments" => lambda {|n| @attachments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Attachment.create_from_discriminator_value(pn) }) },
                    "body" => lambda {|n| @body = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "dueDateTime" => lambda {|n| @due_date_time = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "hasAttachments" => lambda {|n| @has_attachments = n.get_boolean_value() },
                    "importance" => lambda {|n| @importance = n.get_enum_value(MicrosoftGraphBeta::Models::Importance) },
                    "isReminderOn" => lambda {|n| @is_reminder_on = n.get_boolean_value() },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "owner" => lambda {|n| @owner = n.get_string_value() },
                    "parentFolderId" => lambda {|n| @parent_folder_id = n.get_string_value() },
                    "recurrence" => lambda {|n| @recurrence = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PatternedRecurrence.create_from_discriminator_value(pn) }) },
                    "reminderDateTime" => lambda {|n| @reminder_date_time = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "sensitivity" => lambda {|n| @sensitivity = n.get_enum_value(MicrosoftGraphBeta::Models::Sensitivity) },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::TaskStatus) },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hasAttachments property value. Set to true if the task has attachments.
            ## @return a boolean
            ## 
            def has_attachments
                return @has_attachments
            end
            ## 
            ## Sets the hasAttachments property value. Set to true if the task has attachments.
            ## @param value Value to set for the hasAttachments property.
            ## @return a void
            ## 
            def has_attachments=(value)
                @has_attachments = value
            end
            ## 
            ## Gets the importance property value. The importance property
            ## @return a importance
            ## 
            def importance
                return @importance
            end
            ## 
            ## Sets the importance property value. The importance property
            ## @param value Value to set for the importance property.
            ## @return a void
            ## 
            def importance=(value)
                @importance = value
            end
            ## 
            ## Gets the isReminderOn property value. The isReminderOn property
            ## @return a boolean
            ## 
            def is_reminder_on
                return @is_reminder_on
            end
            ## 
            ## Sets the isReminderOn property value. The isReminderOn property
            ## @param value Value to set for the isReminderOn property.
            ## @return a void
            ## 
            def is_reminder_on=(value)
                @is_reminder_on = value
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the task. Read-only. Nullable.
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the task. Read-only. Nullable.
            ## @param value Value to set for the multiValueExtendedProperties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Gets the owner property value. The owner property
            ## @return a string
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. The owner property
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Gets the parentFolderId property value. The parentFolderId property
            ## @return a string
            ## 
            def parent_folder_id
                return @parent_folder_id
            end
            ## 
            ## Sets the parentFolderId property value. The parentFolderId property
            ## @param value Value to set for the parentFolderId property.
            ## @return a void
            ## 
            def parent_folder_id=(value)
                @parent_folder_id = value
            end
            ## 
            ## Gets the recurrence property value. The recurrence property
            ## @return a patterned_recurrence
            ## 
            def recurrence
                return @recurrence
            end
            ## 
            ## Sets the recurrence property value. The recurrence property
            ## @param value Value to set for the recurrence property.
            ## @return a void
            ## 
            def recurrence=(value)
                @recurrence = value
            end
            ## 
            ## Gets the reminderDateTime property value. The reminderDateTime property
            ## @return a date_time_time_zone
            ## 
            def reminder_date_time
                return @reminder_date_time
            end
            ## 
            ## Sets the reminderDateTime property value. The reminderDateTime property
            ## @param value Value to set for the reminderDateTime property.
            ## @return a void
            ## 
            def reminder_date_time=(value)
                @reminder_date_time = value
            end
            ## 
            ## Gets the sensitivity property value. The sensitivity property
            ## @return a sensitivity
            ## 
            def sensitivity
                return @sensitivity
            end
            ## 
            ## Sets the sensitivity property value. The sensitivity property
            ## @param value Value to set for the sensitivity property.
            ## @return a void
            ## 
            def sensitivity=(value)
                @sensitivity = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assignedTo", @assigned_to)
                writer.write_collection_of_object_values("attachments", @attachments)
                writer.write_object_value("body", @body)
                writer.write_object_value("completedDateTime", @completed_date_time)
                writer.write_object_value("dueDateTime", @due_date_time)
                writer.write_boolean_value("hasAttachments", @has_attachments)
                writer.write_enum_value("importance", @importance)
                writer.write_boolean_value("isReminderOn", @is_reminder_on)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_string_value("owner", @owner)
                writer.write_string_value("parentFolderId", @parent_folder_id)
                writer.write_object_value("recurrence", @recurrence)
                writer.write_object_value("reminderDateTime", @reminder_date_time)
                writer.write_enum_value("sensitivity", @sensitivity)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
                writer.write_object_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
                writer.write_string_value("subject", @subject)
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the task. Read-only. Nullable.
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the task. Read-only. Nullable.
            ## @param value Value to set for the singleValueExtendedProperties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
            ## 
            ## Gets the startDateTime property value. The startDateTime property
            ## @return a date_time_time_zone
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
            ## Gets the status property value. The status property
            ## @return a task_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the subject property value. The subject property
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject property
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
        end
    end
end
