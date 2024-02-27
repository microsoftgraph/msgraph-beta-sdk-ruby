require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The operationApprovalRequestEntityStatus complex type is used to provide the basic infortmation relating to the status of a request without revealing too much information to the calling user as it may be an object out of scope.
        class OperationApprovalRequestEntityStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The status of the Entity connected to the OperationApprovalRequest in regard to changes, whether further requests are allowed or if the Entity is locked. When `true`, a lock is present on the Entity and no approval requests can be currently made for it. When `false`, the Entity is not locked and approval requests are allowed. Default value is `false`. Read-only. This property is read-only.
            @entity_locked
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the DateTime when any action on the OperationApprovalRequest is no longer permitted. The value cannot be modified and is automatically populated when the request is created using expiration offset values defined in the service controllers. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            @request_expiration_date_time
            ## 
            # The unique identifier of the OperationApprovalRequest. This property cannot be modified and is required when the entity status is created. Read-only. This property is read-only.
            @request_id
            ## 
            # Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`.
            @request_status
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new OperationApprovalRequestEntityStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a operation_approval_request_entity_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OperationApprovalRequestEntityStatus.new
            end
            ## 
            ## Gets the entityLocked property value. The status of the Entity connected to the OperationApprovalRequest in regard to changes, whether further requests are allowed or if the Entity is locked. When `true`, a lock is present on the Entity and no approval requests can be currently made for it. When `false`, the Entity is not locked and approval requests are allowed. Default value is `false`. Read-only. This property is read-only.
            ## @return a boolean
            ## 
            def entity_locked
                return @entity_locked
            end
            ## 
            ## Sets the entityLocked property value. The status of the Entity connected to the OperationApprovalRequest in regard to changes, whether further requests are allowed or if the Entity is locked. When `true`, a lock is present on the Entity and no approval requests can be currently made for it. When `false`, the Entity is not locked and approval requests are allowed. Default value is `false`. Read-only. This property is read-only.
            ## @param value Value to set for the entityLocked property.
            ## @return a void
            ## 
            def entity_locked=(value)
                @entity_locked = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "entityLocked" => lambda {|n| @entity_locked = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "requestExpirationDateTime" => lambda {|n| @request_expiration_date_time = n.get_date_time_value() },
                    "requestId" => lambda {|n| @request_id = n.get_string_value() },
                    "requestStatus" => lambda {|n| @request_status = n.get_enum_value(MicrosoftGraphBeta::Models::OperationApprovalRequestStatus) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the requestExpirationDateTime property value. Indicates the DateTime when any action on the OperationApprovalRequest is no longer permitted. The value cannot be modified and is automatically populated when the request is created using expiration offset values defined in the service controllers. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @return a date_time
            ## 
            def request_expiration_date_time
                return @request_expiration_date_time
            end
            ## 
            ## Sets the requestExpirationDateTime property value. Indicates the DateTime when any action on the OperationApprovalRequest is no longer permitted. The value cannot be modified and is automatically populated when the request is created using expiration offset values defined in the service controllers. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @param value Value to set for the requestExpirationDateTime property.
            ## @return a void
            ## 
            def request_expiration_date_time=(value)
                @request_expiration_date_time = value
            end
            ## 
            ## Gets the requestId property value. The unique identifier of the OperationApprovalRequest. This property cannot be modified and is required when the entity status is created. Read-only. This property is read-only.
            ## @return a string
            ## 
            def request_id
                return @request_id
            end
            ## 
            ## Sets the requestId property value. The unique identifier of the OperationApprovalRequest. This property cannot be modified and is required when the entity status is created. Read-only. This property is read-only.
            ## @param value Value to set for the requestId property.
            ## @return a void
            ## 
            def request_id=(value)
                @request_id = value
            end
            ## 
            ## Gets the requestStatus property value. Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`.
            ## @return a operation_approval_request_status
            ## 
            def request_status
                return @request_status
            end
            ## 
            ## Sets the requestStatus property value. Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`.
            ## @param value Value to set for the requestStatus property.
            ## @return a void
            ## 
            def request_status=(value)
                @request_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("requestStatus", @request_status)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
