require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PrivilegedRoleAssignmentRequest < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The state of the assignment. The value can be Eligible for eligible assignment Active - if it is directly assigned Active by administrators, or activated on an eligible assignment by the users.
        @assignment_state
        ## 
        # The duration of a role assignment.
        @duration
        ## 
        # The reason for the role assignment.
        @reason
        ## 
        # Read-only. The request create time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        @requested_date_time
        ## 
        # The id of the role.
        @role_id
        ## 
        # The roleInfo object of the role assignment request.
        @role_info
        ## 
        # The schedule object of the role assignment request.
        @schedule
        ## 
        # Read-only.The status of the role assignment request. The value can be NotStarted,Completed,RequestedApproval,Scheduled,Approved,ApprovalDenied,ApprovalAborted,Cancelling,Cancelled,Revoked,RequestExpired.
        @status
        ## 
        # The ticketNumber for the role assignment.
        @ticket_number
        ## 
        # The ticketSystem for the role assignment.
        @ticket_system
        ## 
        # Representing the type of the operation on the role assignment. The value can be AdminAdd: Administrators add users to roles;UserAdd: Users add role assignments.
        @type
        ## 
        # The id of the user.
        @user_id
        ## 
        ## Gets the assignmentState property value. The state of the assignment. The value can be Eligible for eligible assignment Active - if it is directly assigned Active by administrators, or activated on an eligible assignment by the users.
        ## @return a string
        ## 
        def assignment_state
            return @assignment_state
        end
        ## 
        ## Sets the assignmentState property value. The state of the assignment. The value can be Eligible for eligible assignment Active - if it is directly assigned Active by administrators, or activated on an eligible assignment by the users.
        ## @param value Value to set for the assignmentState property.
        ## @return a void
        ## 
        def assignment_state=(value)
            @assignment_state = value
        end
        ## 
        ## Instantiates a new privilegedRoleAssignmentRequest and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a privileged_role_assignment_request
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PrivilegedRoleAssignmentRequest.new
        end
        ## 
        ## Gets the duration property value. The duration of a role assignment.
        ## @return a string
        ## 
        def duration
            return @duration
        end
        ## 
        ## Sets the duration property value. The duration of a role assignment.
        ## @param value Value to set for the duration property.
        ## @return a void
        ## 
        def duration=(value)
            @duration = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "assignmentState" => lambda {|n| @assignment_state = n.get_string_value() },
                "duration" => lambda {|n| @duration = n.get_string_value() },
                "reason" => lambda {|n| @reason = n.get_string_value() },
                "requestedDateTime" => lambda {|n| @requested_date_time = n.get_date_time_value() },
                "roleId" => lambda {|n| @role_id = n.get_string_value() },
                "roleInfo" => lambda {|n| @role_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedRole.create_from_discriminator_value(pn) }) },
                "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceSchedule.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_string_value() },
                "ticketNumber" => lambda {|n| @ticket_number = n.get_string_value() },
                "ticketSystem" => lambda {|n| @ticket_system = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_string_value() },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the reason property value. The reason for the role assignment.
        ## @return a string
        ## 
        def reason
            return @reason
        end
        ## 
        ## Sets the reason property value. The reason for the role assignment.
        ## @param value Value to set for the reason property.
        ## @return a void
        ## 
        def reason=(value)
            @reason = value
        end
        ## 
        ## Gets the requestedDateTime property value. Read-only. The request create time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        ## @return a date_time
        ## 
        def requested_date_time
            return @requested_date_time
        end
        ## 
        ## Sets the requestedDateTime property value. Read-only. The request create time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        ## @param value Value to set for the requestedDateTime property.
        ## @return a void
        ## 
        def requested_date_time=(value)
            @requested_date_time = value
        end
        ## 
        ## Gets the roleId property value. The id of the role.
        ## @return a string
        ## 
        def role_id
            return @role_id
        end
        ## 
        ## Sets the roleId property value. The id of the role.
        ## @param value Value to set for the roleId property.
        ## @return a void
        ## 
        def role_id=(value)
            @role_id = value
        end
        ## 
        ## Gets the roleInfo property value. The roleInfo object of the role assignment request.
        ## @return a privileged_role
        ## 
        def role_info
            return @role_info
        end
        ## 
        ## Sets the roleInfo property value. The roleInfo object of the role assignment request.
        ## @param value Value to set for the roleInfo property.
        ## @return a void
        ## 
        def role_info=(value)
            @role_info = value
        end
        ## 
        ## Gets the schedule property value. The schedule object of the role assignment request.
        ## @return a governance_schedule
        ## 
        def schedule
            return @schedule
        end
        ## 
        ## Sets the schedule property value. The schedule object of the role assignment request.
        ## @param value Value to set for the schedule property.
        ## @return a void
        ## 
        def schedule=(value)
            @schedule = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("assignmentState", @assignment_state)
            writer.write_string_value("duration", @duration)
            writer.write_string_value("reason", @reason)
            writer.write_date_time_value("requestedDateTime", @requested_date_time)
            writer.write_string_value("roleId", @role_id)
            writer.write_object_value("roleInfo", @role_info)
            writer.write_object_value("schedule", @schedule)
            writer.write_string_value("status", @status)
            writer.write_string_value("ticketNumber", @ticket_number)
            writer.write_string_value("ticketSystem", @ticket_system)
            writer.write_string_value("type", @type)
            writer.write_string_value("userId", @user_id)
        end
        ## 
        ## Gets the status property value. Read-only.The status of the role assignment request. The value can be NotStarted,Completed,RequestedApproval,Scheduled,Approved,ApprovalDenied,ApprovalAborted,Cancelling,Cancelled,Revoked,RequestExpired.
        ## @return a string
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Read-only.The status of the role assignment request. The value can be NotStarted,Completed,RequestedApproval,Scheduled,Approved,ApprovalDenied,ApprovalAborted,Cancelling,Cancelled,Revoked,RequestExpired.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
        ## 
        ## Gets the ticketNumber property value. The ticketNumber for the role assignment.
        ## @return a string
        ## 
        def ticket_number
            return @ticket_number
        end
        ## 
        ## Sets the ticketNumber property value. The ticketNumber for the role assignment.
        ## @param value Value to set for the ticketNumber property.
        ## @return a void
        ## 
        def ticket_number=(value)
            @ticket_number = value
        end
        ## 
        ## Gets the ticketSystem property value. The ticketSystem for the role assignment.
        ## @return a string
        ## 
        def ticket_system
            return @ticket_system
        end
        ## 
        ## Sets the ticketSystem property value. The ticketSystem for the role assignment.
        ## @param value Value to set for the ticketSystem property.
        ## @return a void
        ## 
        def ticket_system=(value)
            @ticket_system = value
        end
        ## 
        ## Gets the type property value. Representing the type of the operation on the role assignment. The value can be AdminAdd: Administrators add users to roles;UserAdd: Users add role assignments.
        ## @return a string
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. Representing the type of the operation on the role assignment. The value can be AdminAdd: Administrators add users to roles;UserAdd: Users add role assignments.
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
        ## 
        ## Gets the userId property value. The id of the user.
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. The id of the user.
        ## @param value Value to set for the userId property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
    end
end
