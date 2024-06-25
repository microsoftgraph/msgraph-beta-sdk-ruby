require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The OperationApprovalRequest entity encompasses the operation an admin wishes to perform and is requesting approval to complete. It contains the detail of the operation one wishes to perform, user metadata of the requestor, and a justification for the change. It allows for several operations for both the requestor and the potential approver to either approve, deny, or cancel the request and a response justification to provide information for the decision.
        class OperationApprovalRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the justification for approving or rejecting the request. Maximum length of justification is 1024 characters. For example: 'Approved per Change 23423 - needed for Feb 2023 application baseline updates.' Read-only. This property is read-only.
            @approval_justification
            ## 
            # The identity of the approver as an Identity Set. Optionally contains the application ID, the device ID and the User ID. See information about this type here: https://learn.microsoft.com/graph/api/resources/identityset?view=graph-rest-1.0. Read-only. This property is read-only.
            @approver
            ## 
            # Indicates the DateTime when any action on the approval request is no longer permitted. The value cannot be modified and is automatically populated when the request is created using expiration offset values defined in the service controllers. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            @expiration_date_time
            ## 
            # Indicates the last DateTime that the request was modified. The value cannot be modified and is automatically populated whenever values in the request are updated. For example, when the 'status' property changes from needsApproval to approved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            @last_modified_date_time
            ## 
            # Indicates the DateTime that the request was made. The value cannot be modified and is automatically populated when the request is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            @request_date_time
            ## 
            # Indicates the justification for creating the request. Maximum length of justification is 1024 characters. For example: 'Needed for Feb 2023 application baseline updates.' Read-only. This property is read-only.
            @request_justification
            ## 
            # The identity of the requestor as an Identity Set. Optionally contains the application ID, the device ID and the User ID. See information about this type here: https://learn.microsoft.com/graph/api/resources/identityset?view=graph-rest-1.0. Read-only. This property is read-only.
            @requestor
            ## 
            # Indicates the approval policy types required by the request in order for the request to be approved or rejected. Read-only. This property is read-only.
            @required_operation_approval_policy_types
            ## 
            # Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`.
            @status
            ## 
            ## Gets the approvalJustification property value. Indicates the justification for approving or rejecting the request. Maximum length of justification is 1024 characters. For example: 'Approved per Change 23423 - needed for Feb 2023 application baseline updates.' Read-only. This property is read-only.
            ## @return a string
            ## 
            def approval_justification
                return @approval_justification
            end
            ## 
            ## Sets the approvalJustification property value. Indicates the justification for approving or rejecting the request. Maximum length of justification is 1024 characters. For example: 'Approved per Change 23423 - needed for Feb 2023 application baseline updates.' Read-only. This property is read-only.
            ## @param value Value to set for the approvalJustification property.
            ## @return a void
            ## 
            def approval_justification=(value)
                @approval_justification = value
            end
            ## 
            ## Gets the approver property value. The identity of the approver as an Identity Set. Optionally contains the application ID, the device ID and the User ID. See information about this type here: https://learn.microsoft.com/graph/api/resources/identityset?view=graph-rest-1.0. Read-only. This property is read-only.
            ## @return a identity_set
            ## 
            def approver
                return @approver
            end
            ## 
            ## Sets the approver property value. The identity of the approver as an Identity Set. Optionally contains the application ID, the device ID and the User ID. See information about this type here: https://learn.microsoft.com/graph/api/resources/identityset?view=graph-rest-1.0. Read-only. This property is read-only.
            ## @param value Value to set for the approver property.
            ## @return a void
            ## 
            def approver=(value)
                @approver = value
            end
            ## 
            ## Instantiates a new OperationApprovalRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a operation_approval_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OperationApprovalRequest.new
            end
            ## 
            ## Gets the expirationDateTime property value. Indicates the DateTime when any action on the approval request is no longer permitted. The value cannot be modified and is automatically populated when the request is created using expiration offset values defined in the service controllers. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Indicates the DateTime when any action on the approval request is no longer permitted. The value cannot be modified and is automatically populated when the request is created using expiration offset values defined in the service controllers. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approvalJustification" => lambda {|n| @approval_justification = n.get_string_value() },
                    "approver" => lambda {|n| @approver = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "requestDateTime" => lambda {|n| @request_date_time = n.get_date_time_value() },
                    "requestJustification" => lambda {|n| @request_justification = n.get_string_value() },
                    "requestor" => lambda {|n| @requestor = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "requiredOperationApprovalPolicyTypes" => lambda {|n| @required_operation_approval_policy_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OperationApprovalPolicyType.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::OperationApprovalRequestStatus) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Indicates the last DateTime that the request was modified. The value cannot be modified and is automatically populated whenever values in the request are updated. For example, when the 'status' property changes from needsApproval to approved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Indicates the last DateTime that the request was modified. The value cannot be modified and is automatically populated whenever values in the request are updated. For example, when the 'status' property changes from needsApproval to approved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the requestDateTime property value. Indicates the DateTime that the request was made. The value cannot be modified and is automatically populated when the request is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @return a date_time
            ## 
            def request_date_time
                return @request_date_time
            end
            ## 
            ## Sets the requestDateTime property value. Indicates the DateTime that the request was made. The value cannot be modified and is automatically populated when the request is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @param value Value to set for the requestDateTime property.
            ## @return a void
            ## 
            def request_date_time=(value)
                @request_date_time = value
            end
            ## 
            ## Gets the requestJustification property value. Indicates the justification for creating the request. Maximum length of justification is 1024 characters. For example: 'Needed for Feb 2023 application baseline updates.' Read-only. This property is read-only.
            ## @return a string
            ## 
            def request_justification
                return @request_justification
            end
            ## 
            ## Sets the requestJustification property value. Indicates the justification for creating the request. Maximum length of justification is 1024 characters. For example: 'Needed for Feb 2023 application baseline updates.' Read-only. This property is read-only.
            ## @param value Value to set for the requestJustification property.
            ## @return a void
            ## 
            def request_justification=(value)
                @request_justification = value
            end
            ## 
            ## Gets the requestor property value. The identity of the requestor as an Identity Set. Optionally contains the application ID, the device ID and the User ID. See information about this type here: https://learn.microsoft.com/graph/api/resources/identityset?view=graph-rest-1.0. Read-only. This property is read-only.
            ## @return a identity_set
            ## 
            def requestor
                return @requestor
            end
            ## 
            ## Sets the requestor property value. The identity of the requestor as an Identity Set. Optionally contains the application ID, the device ID and the User ID. See information about this type here: https://learn.microsoft.com/graph/api/resources/identityset?view=graph-rest-1.0. Read-only. This property is read-only.
            ## @param value Value to set for the requestor property.
            ## @return a void
            ## 
            def requestor=(value)
                @requestor = value
            end
            ## 
            ## Gets the requiredOperationApprovalPolicyTypes property value. Indicates the approval policy types required by the request in order for the request to be approved or rejected. Read-only. This property is read-only.
            ## @return a operation_approval_policy_type
            ## 
            def required_operation_approval_policy_types
                return @required_operation_approval_policy_types
            end
            ## 
            ## Sets the requiredOperationApprovalPolicyTypes property value. Indicates the approval policy types required by the request in order for the request to be approved or rejected. Read-only. This property is read-only.
            ## @param value Value to set for the requiredOperationApprovalPolicyTypes property.
            ## @return a void
            ## 
            def required_operation_approval_policy_types=(value)
                @required_operation_approval_policy_types = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`.
            ## @return a operation_approval_request_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
