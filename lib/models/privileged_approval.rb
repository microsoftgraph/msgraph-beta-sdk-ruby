require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegedApproval < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The approvalDuration property
            @approval_duration
            ## 
            # The approvalState property
            @approval_state
            ## 
            # The approvalType property
            @approval_type
            ## 
            # The approverReason property
            @approver_reason
            ## 
            # The endDateTime property
            @end_date_time
            ## 
            # The request property
            @request
            ## 
            # The requestorReason property
            @requestor_reason
            ## 
            # The roleId property
            @role_id
            ## 
            # The roleInfo property
            @role_info
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            # The userId property
            @user_id
            ## 
            ## Gets the approvalDuration property value. The approvalDuration property
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def approval_duration
                return @approval_duration
            end
            ## 
            ## Sets the approvalDuration property value. The approvalDuration property
            ## @param value Value to set for the approvalDuration property.
            ## @return a void
            ## 
            def approval_duration=(value)
                @approval_duration = value
            end
            ## 
            ## Gets the approvalState property value. The approvalState property
            ## @return a privileged_approval_approval_state
            ## 
            def approval_state
                return @approval_state
            end
            ## 
            ## Sets the approvalState property value. The approvalState property
            ## @param value Value to set for the approvalState property.
            ## @return a void
            ## 
            def approval_state=(value)
                @approval_state = value
            end
            ## 
            ## Gets the approvalType property value. The approvalType property
            ## @return a string
            ## 
            def approval_type
                return @approval_type
            end
            ## 
            ## Sets the approvalType property value. The approvalType property
            ## @param value Value to set for the approvalType property.
            ## @return a void
            ## 
            def approval_type=(value)
                @approval_type = value
            end
            ## 
            ## Gets the approverReason property value. The approverReason property
            ## @return a string
            ## 
            def approver_reason
                return @approver_reason
            end
            ## 
            ## Sets the approverReason property value. The approverReason property
            ## @param value Value to set for the approverReason property.
            ## @return a void
            ## 
            def approver_reason=(value)
                @approver_reason = value
            end
            ## 
            ## Instantiates a new privilegedApproval and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_approval
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedApproval.new
            end
            ## 
            ## Gets the endDateTime property value. The endDateTime property
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The endDateTime property
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approvalDuration" => lambda {|n| @approval_duration = n.get_duration_value() },
                    "approvalState" => lambda {|n| @approval_state = n.get_enum_value(MicrosoftGraphBeta::Models::PrivilegedApprovalApprovalState) },
                    "approvalType" => lambda {|n| @approval_type = n.get_string_value() },
                    "approverReason" => lambda {|n| @approver_reason = n.get_string_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "request" => lambda {|n| @request = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedRoleAssignmentRequest.create_from_discriminator_value(pn) }) },
                    "requestorReason" => lambda {|n| @requestor_reason = n.get_string_value() },
                    "roleId" => lambda {|n| @role_id = n.get_string_value() },
                    "roleInfo" => lambda {|n| @role_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedRole.create_from_discriminator_value(pn) }) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the request property value. The request property
            ## @return a privileged_role_assignment_request
            ## 
            def request
                return @request
            end
            ## 
            ## Sets the request property value. The request property
            ## @param value Value to set for the request property.
            ## @return a void
            ## 
            def request=(value)
                @request = value
            end
            ## 
            ## Gets the requestorReason property value. The requestorReason property
            ## @return a string
            ## 
            def requestor_reason
                return @requestor_reason
            end
            ## 
            ## Sets the requestorReason property value. The requestorReason property
            ## @param value Value to set for the requestorReason property.
            ## @return a void
            ## 
            def requestor_reason=(value)
                @requestor_reason = value
            end
            ## 
            ## Gets the roleId property value. The roleId property
            ## @return a string
            ## 
            def role_id
                return @role_id
            end
            ## 
            ## Sets the roleId property value. The roleId property
            ## @param value Value to set for the roleId property.
            ## @return a void
            ## 
            def role_id=(value)
                @role_id = value
            end
            ## 
            ## Gets the roleInfo property value. The roleInfo property
            ## @return a privileged_role
            ## 
            def role_info
                return @role_info
            end
            ## 
            ## Sets the roleInfo property value. The roleInfo property
            ## @param value Value to set for the roleInfo property.
            ## @return a void
            ## 
            def role_info=(value)
                @role_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_duration_value("approvalDuration", @approval_duration)
                writer.write_enum_value("approvalState", @approval_state)
                writer.write_string_value("approvalType", @approval_type)
                writer.write_string_value("approverReason", @approver_reason)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_object_value("request", @request)
                writer.write_string_value("requestorReason", @requestor_reason)
                writer.write_string_value("roleId", @role_id)
                writer.write_object_value("roleInfo", @role_info)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("userId", @user_id)
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
            ## Gets the userId property value. The userId property
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The userId property
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
