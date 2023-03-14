require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The entity represents an group policy operation.
        class GroupPolicyOperation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time the entity was last modified.
            @last_modified_date_time
            ## 
            # Type of Group Policy operation status.
            @operation_status
            ## 
            # Type of Group Policy operation.
            @operation_type
            ## 
            # The group policy operation status detail.
            @status_details
            ## 
            ## Instantiates a new groupPolicyOperation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_operation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyOperation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "operationStatus" => lambda {|n| @operation_status = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyOperationStatus) },
                    "operationType" => lambda {|n| @operation_type = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyOperationType) },
                    "statusDetails" => lambda {|n| @status_details = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time the entity was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time the entity was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the operationStatus property value. Type of Group Policy operation status.
            ## @return a group_policy_operation_status
            ## 
            def operation_status
                return @operation_status
            end
            ## 
            ## Sets the operationStatus property value. Type of Group Policy operation status.
            ## @param value Value to set for the operation_status property.
            ## @return a void
            ## 
            def operation_status=(value)
                @operation_status = value
            end
            ## 
            ## Gets the operationType property value. Type of Group Policy operation.
            ## @return a group_policy_operation_type
            ## 
            def operation_type
                return @operation_type
            end
            ## 
            ## Sets the operationType property value. Type of Group Policy operation.
            ## @param value Value to set for the operation_type property.
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
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("operationStatus", @operation_status)
                writer.write_enum_value("operationType", @operation_type)
                writer.write_string_value("statusDetails", @status_details)
            end
            ## 
            ## Gets the statusDetails property value. The group policy operation status detail.
            ## @return a string
            ## 
            def status_details
                return @status_details
            end
            ## 
            ## Sets the statusDetails property value. The group policy operation status detail.
            ## @param value Value to set for the status_details property.
            ## @return a void
            ## 
            def status_details=(value)
                @status_details = value
            end
        end
    end
end
