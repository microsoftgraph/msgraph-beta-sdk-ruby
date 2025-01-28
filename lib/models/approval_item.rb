require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ApprovalItem < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the approval item can be canceled.
            @allow_cancel
            ## 
            # Indicates whether email notification is enabled.
            @allow_email_notification
            ## 
            # The workflow type of the approval item. The possible values are: basic, basicAwaitAll, custom, customAwaitAll. Required.
            @approval_type
            ## 
            # The identity of the principals to whom the approval item was initially assigned. Required.
            @approvers
            ## 
            # Approval request completion date and time. Read-only.
            @completed_date_time
            ## 
            # Creation date and time of the approval request. Read-only.
            @created_date_time
            ## 
            # The description of the approval request.
            @description
            ## 
            # The displayName of the approval request. Required.
            @display_name
            ## 
            # The identity set of the principal who owns the approval item. Only provide a value for this property when creating an approval item on behalf of the principal. If the owner field isn't provided, the user information from the user context is used.
            @owner
            ## 
            # A collection of requests created for each approver on the approval item.
            @requests
            ## 
            # Approval response prompts. Only provide a value for this property when creating a custom approval item. For custom approval items, supply two response prompt strings. The default response prompts are 'Approve' and 'Reject'.
            @response_prompts
            ## 
            # A collection of responses created for the approval item.
            @responses
            ## 
            # The result field is only populated once the approval item is in its final state. The result of the approval item is based on the approvalType. For basic approval items, the result is either 'Approved' or 'Rejected'. For custom approval items, the result could either be a single response or multiple responses separated by a semi-colon. Read-only.
            @result
            ## 
            # The approval item state. The possible values are: canceled, created, pending, completed. Read-only.
            @state
            ## 
            # Represents user viewpoints data on the ApprovalItem. The data includes the users roles regarding the approval item. Read-only.
            @view_point
            ## 
            ## Gets the allowCancel property value. Indicates whether the approval item can be canceled.
            ## @return a boolean
            ## 
            def allow_cancel
                return @allow_cancel
            end
            ## 
            ## Sets the allowCancel property value. Indicates whether the approval item can be canceled.
            ## @param value Value to set for the allowCancel property.
            ## @return a void
            ## 
            def allow_cancel=(value)
                @allow_cancel = value
            end
            ## 
            ## Gets the allowEmailNotification property value. Indicates whether email notification is enabled.
            ## @return a boolean
            ## 
            def allow_email_notification
                return @allow_email_notification
            end
            ## 
            ## Sets the allowEmailNotification property value. Indicates whether email notification is enabled.
            ## @param value Value to set for the allowEmailNotification property.
            ## @return a void
            ## 
            def allow_email_notification=(value)
                @allow_email_notification = value
            end
            ## 
            ## Gets the approvalType property value. The workflow type of the approval item. The possible values are: basic, basicAwaitAll, custom, customAwaitAll. Required.
            ## @return a approval_item_type
            ## 
            def approval_type
                return @approval_type
            end
            ## 
            ## Sets the approvalType property value. The workflow type of the approval item. The possible values are: basic, basicAwaitAll, custom, customAwaitAll. Required.
            ## @param value Value to set for the approvalType property.
            ## @return a void
            ## 
            def approval_type=(value)
                @approval_type = value
            end
            ## 
            ## Gets the approvers property value. The identity of the principals to whom the approval item was initially assigned. Required.
            ## @return a approval_identity_set
            ## 
            def approvers
                return @approvers
            end
            ## 
            ## Sets the approvers property value. The identity of the principals to whom the approval item was initially assigned. Required.
            ## @param value Value to set for the approvers property.
            ## @return a void
            ## 
            def approvers=(value)
                @approvers = value
            end
            ## 
            ## Gets the completedDateTime property value. Approval request completion date and time. Read-only.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. Approval request completion date and time. Read-only.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new ApprovalItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Creation date and time of the approval request. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Creation date and time of the approval request. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a approval_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalItem.new
            end
            ## 
            ## Gets the description property value. The description of the approval request.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the approval request.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The displayName of the approval request. Required.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName of the approval request. Required.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowCancel" => lambda {|n| @allow_cancel = n.get_boolean_value() },
                    "allowEmailNotification" => lambda {|n| @allow_email_notification = n.get_boolean_value() },
                    "approvalType" => lambda {|n| @approval_type = n.get_enum_value(MicrosoftGraphBeta::Models::ApprovalItemType) },
                    "approvers" => lambda {|n| @approvers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalIdentitySet.create_from_discriminator_value(pn) }) },
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "owner" => lambda {|n| @owner = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalIdentitySet.create_from_discriminator_value(pn) }) },
                    "requests" => lambda {|n| @requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalItemRequest.create_from_discriminator_value(pn) }) },
                    "responsePrompts" => lambda {|n| @response_prompts = n.get_collection_of_primitive_values(String) },
                    "responses" => lambda {|n| @responses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalItemResponse.create_from_discriminator_value(pn) }) },
                    "result" => lambda {|n| @result = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::ApprovalItemState) },
                    "viewPoint" => lambda {|n| @view_point = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalItemViewPoint.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the owner property value. The identity set of the principal who owns the approval item. Only provide a value for this property when creating an approval item on behalf of the principal. If the owner field isn't provided, the user information from the user context is used.
            ## @return a approval_identity_set
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. The identity set of the principal who owns the approval item. Only provide a value for this property when creating an approval item on behalf of the principal. If the owner field isn't provided, the user information from the user context is used.
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Gets the requests property value. A collection of requests created for each approver on the approval item.
            ## @return a approval_item_request
            ## 
            def requests
                return @requests
            end
            ## 
            ## Sets the requests property value. A collection of requests created for each approver on the approval item.
            ## @param value Value to set for the requests property.
            ## @return a void
            ## 
            def requests=(value)
                @requests = value
            end
            ## 
            ## Gets the responsePrompts property value. Approval response prompts. Only provide a value for this property when creating a custom approval item. For custom approval items, supply two response prompt strings. The default response prompts are 'Approve' and 'Reject'.
            ## @return a string
            ## 
            def response_prompts
                return @response_prompts
            end
            ## 
            ## Sets the responsePrompts property value. Approval response prompts. Only provide a value for this property when creating a custom approval item. For custom approval items, supply two response prompt strings. The default response prompts are 'Approve' and 'Reject'.
            ## @param value Value to set for the responsePrompts property.
            ## @return a void
            ## 
            def response_prompts=(value)
                @response_prompts = value
            end
            ## 
            ## Gets the responses property value. A collection of responses created for the approval item.
            ## @return a approval_item_response
            ## 
            def responses
                return @responses
            end
            ## 
            ## Sets the responses property value. A collection of responses created for the approval item.
            ## @param value Value to set for the responses property.
            ## @return a void
            ## 
            def responses=(value)
                @responses = value
            end
            ## 
            ## Gets the result property value. The result field is only populated once the approval item is in its final state. The result of the approval item is based on the approvalType. For basic approval items, the result is either 'Approved' or 'Rejected'. For custom approval items, the result could either be a single response or multiple responses separated by a semi-colon. Read-only.
            ## @return a string
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. The result field is only populated once the approval item is in its final state. The result of the approval item is based on the approvalType. For basic approval items, the result is either 'Approved' or 'Rejected'. For custom approval items, the result could either be a single response or multiple responses separated by a semi-colon. Read-only.
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowEmailNotification", @allow_email_notification)
                writer.write_enum_value("approvalType", @approval_type)
                writer.write_collection_of_object_values("approvers", @approvers)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("requests", @requests)
                writer.write_collection_of_primitive_values("responsePrompts", @response_prompts)
                writer.write_collection_of_object_values("responses", @responses)
            end
            ## 
            ## Gets the state property value. The approval item state. The possible values are: canceled, created, pending, completed. Read-only.
            ## @return a approval_item_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The approval item state. The possible values are: canceled, created, pending, completed. Read-only.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the viewPoint property value. Represents user viewpoints data on the ApprovalItem. The data includes the users roles regarding the approval item. Read-only.
            ## @return a approval_item_view_point
            ## 
            def view_point
                return @view_point
            end
            ## 
            ## Sets the viewPoint property value. Represents user viewpoints data on the ApprovalItem. The data includes the users roles regarding the approval item. Read-only.
            ## @param value Value to set for the viewPoint property.
            ## @return a void
            ## 
            def view_point=(value)
                @view_point = value
            end
        end
    end
end
