require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkDeviceOperation < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Time at which the operation reached a final state (for example, Successful, Failed, and Cancelled).
        @completed_date_time
        ## 
        # Identity of the user who created the device operation.
        @created_by
        ## 
        # The UTC date and time when the device operation was created.
        @created_date_time
        ## 
        # Error details are available only in case of a failed status.
        @error
        ## 
        # Identity of the user who last modified the device operation.
        @last_action_by
        ## 
        # The UTC date and time when the device operation was last modified.
        @last_action_date_time
        ## 
        # The operationType property
        @operation_type
        ## 
        # Time at which the operation was started.
        @started_date_time
        ## 
        # The current status of the async operation, for example, Queued, Scheduled, InProgress,  Successful, Cancelled, and Failed.
        @status
        ## 
        ## Gets the completedDateTime property value. Time at which the operation reached a final state (for example, Successful, Failed, and Cancelled).
        ## @return a date_time
        ## 
        def completed_date_time
            return @completed_date_time
        end
        ## 
        ## Sets the completedDateTime property value. Time at which the operation reached a final state (for example, Successful, Failed, and Cancelled).
        ## @param value Value to set for the completedDateTime property.
        ## @return a void
        ## 
        def completed_date_time=(value)
            @completed_date_time = value
        end
        ## 
        ## Instantiates a new teamworkDeviceOperation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdBy property value. Identity of the user who created the device operation.
        ## @return a identity_set
        ## 
        def created_by
            return @created_by
        end
        ## 
        ## Sets the createdBy property value. Identity of the user who created the device operation.
        ## @param value Value to set for the createdBy property.
        ## @return a void
        ## 
        def created_by=(value)
            @created_by = value
        end
        ## 
        ## Gets the createdDateTime property value. The UTC date and time when the device operation was created.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The UTC date and time when the device operation was created.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_device_operation
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkDeviceOperation.new
        end
        ## 
        ## Gets the error property value. Error details are available only in case of a failed status.
        ## @return a operation_error
        ## 
        def error
            return @error
        end
        ## 
        ## Sets the error property value. Error details are available only in case of a failed status.
        ## @param value Value to set for the error property.
        ## @return a void
        ## 
        def error=(value)
            @error = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OperationError.create_from_discriminator_value(pn) }) },
                "lastActionBy" => lambda {|n| @last_action_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                "operationType" => lambda {|n| @operation_type = n.get_enum_value(MicrosoftGraphBeta::Models::TeamworkDeviceOperationType) },
                "startedDateTime" => lambda {|n| @started_date_time = n.get_date_time_value() },
                "status" => lambda {|n| @status = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastActionBy property value. Identity of the user who last modified the device operation.
        ## @return a identity_set
        ## 
        def last_action_by
            return @last_action_by
        end
        ## 
        ## Sets the lastActionBy property value. Identity of the user who last modified the device operation.
        ## @param value Value to set for the lastActionBy property.
        ## @return a void
        ## 
        def last_action_by=(value)
            @last_action_by = value
        end
        ## 
        ## Gets the lastActionDateTime property value. The UTC date and time when the device operation was last modified.
        ## @return a date_time
        ## 
        def last_action_date_time
            return @last_action_date_time
        end
        ## 
        ## Sets the lastActionDateTime property value. The UTC date and time when the device operation was last modified.
        ## @param value Value to set for the lastActionDateTime property.
        ## @return a void
        ## 
        def last_action_date_time=(value)
            @last_action_date_time = value
        end
        ## 
        ## Gets the operationType property value. The operationType property
        ## @return a teamwork_device_operation_type
        ## 
        def operation_type
            return @operation_type
        end
        ## 
        ## Sets the operationType property value. The operationType property
        ## @param value Value to set for the operationType property.
        ## @return a void
        ## 
        def operation_type=(value)
            @operation_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("completedDateTime", @completed_date_time)
            writer.write_object_value("createdBy", @created_by)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_object_value("error", @error)
            writer.write_object_value("lastActionBy", @last_action_by)
            writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
            writer.write_enum_value("operationType", @operation_type)
            writer.write_date_time_value("startedDateTime", @started_date_time)
            writer.write_string_value("status", @status)
        end
        ## 
        ## Gets the startedDateTime property value. Time at which the operation was started.
        ## @return a date_time
        ## 
        def started_date_time
            return @started_date_time
        end
        ## 
        ## Sets the startedDateTime property value. Time at which the operation was started.
        ## @param value Value to set for the startedDateTime property.
        ## @return a void
        ## 
        def started_date_time=(value)
            @started_date_time = value
        end
        ## 
        ## Gets the status property value. The current status of the async operation, for example, Queued, Scheduled, InProgress,  Successful, Cancelled, and Failed.
        ## @return a string
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The current status of the async operation, for example, Queued, Scheduled, InProgress,  Successful, Cancelled, and Failed.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
