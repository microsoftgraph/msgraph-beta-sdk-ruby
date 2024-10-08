require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ApprovalOperation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the operation was created.
            @created_date_time
            ## 
            # The error if the operation failed.
            @error
            ## 
            # The date and time when this operation was most recently updated.
            @last_action_date_time
            ## 
            # The URL for the resource that was newly created or acted upon.
            @resource_location
            ## 
            # The status of the operation. The possible values are: scheduled, inProgress, succeeded, failed, timeout, unknownFutureValue.
            @status
            ## 
            ## Instantiates a new ApprovalOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the operation was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the operation was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a approval_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalOperation.new
            end
            ## 
            ## Gets the error property value. The error if the operation failed.
            ## @return a public_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. The error if the operation failed.
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
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PublicError.create_from_discriminator_value(pn) }) },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "resourceLocation" => lambda {|n| @resource_location = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ApprovalOperationStatus) },
                })
            end
            ## 
            ## Gets the lastActionDateTime property value. The date and time when this operation was most recently updated.
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. The date and time when this operation was most recently updated.
            ## @param value Value to set for the lastActionDateTime property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
            end
            ## 
            ## Gets the resourceLocation property value. The URL for the resource that was newly created or acted upon.
            ## @return a string
            ## 
            def resource_location
                return @resource_location
            end
            ## 
            ## Sets the resourceLocation property value. The URL for the resource that was newly created or acted upon.
            ## @param value Value to set for the resourceLocation property.
            ## @return a void
            ## 
            def resource_location=(value)
                @resource_location = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("error", @error)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_string_value("resourceLocation", @resource_location)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the operation. The possible values are: scheduled, inProgress, succeeded, failed, timeout, unknownFutureValue.
            ## @return a approval_operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the operation. The possible values are: scheduled, inProgress, succeeded, failed, timeout, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
