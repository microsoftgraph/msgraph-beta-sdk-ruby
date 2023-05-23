require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GovernanceRoleAssignmentRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Required. The state of the assignment. The possible values are: Eligible (for eligible assignment),  Active (if it is directly assigned), Active (by administrators, or activated on an eligible assignment by the users).
            @assignment_state
            ## 
            # If this is a request for role activation, it represents the id of the eligible assignment being referred; Otherwise, the value is null.
            @linked_eligible_role_assignment_id
            ## 
            # A message provided by users and administrators when create the request about why it is needed.
            @reason
            ## 
            # Read-only. The request create time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @requested_date_time
            ## 
            # Read-only. The resource that the request aims to.
            @resource
            ## 
            # Required. The unique identifier of the Azure resource that is associated with the role assignment request. Azure resources can include subscriptions, resource groups, virtual machines, and SQL databases.
            @resource_id
            ## 
            # Read-only. The role definition that the request aims to.
            @role_definition
            ## 
            # Required. The identifier of the Azure role definition that the role assignment request is associated with.
            @role_definition_id
            ## 
            # The schedule object of the role assignment request.
            @schedule
            ## 
            # The status of the role assignment request.
            @status
            ## 
            # Read-only. The user/group principal.
            @subject
            ## 
            # Required. The unique identifier of the principal or subject that the role assignment request is associated with. Principals can be users, groups, or service principals.
            @subject_id
            ## 
            # Required. Representing the type of the operation on the role assignment. The possible values are: AdminAdd , UserAdd , AdminUpdate , AdminRemove , UserRemove , UserExtend , AdminExtend , UserRenew , AdminRenew.
            @type
            ## 
            ## Gets the assignmentState property value. Required. The state of the assignment. The possible values are: Eligible (for eligible assignment),  Active (if it is directly assigned), Active (by administrators, or activated on an eligible assignment by the users).
            ## @return a string
            ## 
            def assignment_state
                return @assignment_state
            end
            ## 
            ## Sets the assignmentState property value. Required. The state of the assignment. The possible values are: Eligible (for eligible assignment),  Active (if it is directly assigned), Active (by administrators, or activated on an eligible assignment by the users).
            ## @param value Value to set for the assignment_state property.
            ## @return a void
            ## 
            def assignment_state=(value)
                @assignment_state = value
            end
            ## 
            ## Instantiates a new governanceRoleAssignmentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a governance_role_assignment_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GovernanceRoleAssignmentRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignmentState" => lambda {|n| @assignment_state = n.get_string_value() },
                    "linkedEligibleRoleAssignmentId" => lambda {|n| @linked_eligible_role_assignment_id = n.get_string_value() },
                    "reason" => lambda {|n| @reason = n.get_string_value() },
                    "requestedDateTime" => lambda {|n| @requested_date_time = n.get_date_time_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceResource.create_from_discriminator_value(pn) }) },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "roleDefinition" => lambda {|n| @role_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleDefinition.create_from_discriminator_value(pn) }) },
                    "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceSchedule.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleAssignmentRequestStatus.create_from_discriminator_value(pn) }) },
                    "subject" => lambda {|n| @subject = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceSubject.create_from_discriminator_value(pn) }) },
                    "subjectId" => lambda {|n| @subject_id = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the linkedEligibleRoleAssignmentId property value. If this is a request for role activation, it represents the id of the eligible assignment being referred; Otherwise, the value is null.
            ## @return a string
            ## 
            def linked_eligible_role_assignment_id
                return @linked_eligible_role_assignment_id
            end
            ## 
            ## Sets the linkedEligibleRoleAssignmentId property value. If this is a request for role activation, it represents the id of the eligible assignment being referred; Otherwise, the value is null.
            ## @param value Value to set for the linked_eligible_role_assignment_id property.
            ## @return a void
            ## 
            def linked_eligible_role_assignment_id=(value)
                @linked_eligible_role_assignment_id = value
            end
            ## 
            ## Gets the reason property value. A message provided by users and administrators when create the request about why it is needed.
            ## @return a string
            ## 
            def reason
                return @reason
            end
            ## 
            ## Sets the reason property value. A message provided by users and administrators when create the request about why it is needed.
            ## @param value Value to set for the reason property.
            ## @return a void
            ## 
            def reason=(value)
                @reason = value
            end
            ## 
            ## Gets the requestedDateTime property value. Read-only. The request create time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def requested_date_time
                return @requested_date_time
            end
            ## 
            ## Sets the requestedDateTime property value. Read-only. The request create time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the requested_date_time property.
            ## @return a void
            ## 
            def requested_date_time=(value)
                @requested_date_time = value
            end
            ## 
            ## Gets the resource property value. Read-only. The resource that the request aims to.
            ## @return a governance_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Read-only. The resource that the request aims to.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resourceId property value. Required. The unique identifier of the Azure resource that is associated with the role assignment request. Azure resources can include subscriptions, resource groups, virtual machines, and SQL databases.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. Required. The unique identifier of the Azure resource that is associated with the role assignment request. Azure resources can include subscriptions, resource groups, virtual machines, and SQL databases.
            ## @param value Value to set for the resource_id property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Gets the roleDefinition property value. Read-only. The role definition that the request aims to.
            ## @return a governance_role_definition
            ## 
            def role_definition
                return @role_definition
            end
            ## 
            ## Sets the roleDefinition property value. Read-only. The role definition that the request aims to.
            ## @param value Value to set for the role_definition property.
            ## @return a void
            ## 
            def role_definition=(value)
                @role_definition = value
            end
            ## 
            ## Gets the roleDefinitionId property value. Required. The identifier of the Azure role definition that the role assignment request is associated with.
            ## @return a string
            ## 
            def role_definition_id
                return @role_definition_id
            end
            ## 
            ## Sets the roleDefinitionId property value. Required. The identifier of the Azure role definition that the role assignment request is associated with.
            ## @param value Value to set for the role_definition_id property.
            ## @return a void
            ## 
            def role_definition_id=(value)
                @role_definition_id = value
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
                writer.write_string_value("linkedEligibleRoleAssignmentId", @linked_eligible_role_assignment_id)
                writer.write_string_value("reason", @reason)
                writer.write_date_time_value("requestedDateTime", @requested_date_time)
                writer.write_object_value("resource", @resource)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_object_value("roleDefinition", @role_definition)
                writer.write_string_value("roleDefinitionId", @role_definition_id)
                writer.write_object_value("schedule", @schedule)
                writer.write_object_value("status", @status)
                writer.write_object_value("subject", @subject)
                writer.write_string_value("subjectId", @subject_id)
                writer.write_string_value("type", @type)
            end
            ## 
            ## Gets the status property value. The status of the role assignment request.
            ## @return a governance_role_assignment_request_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the role assignment request.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the subject property value. Read-only. The user/group principal.
            ## @return a governance_subject
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. Read-only. The user/group principal.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the subjectId property value. Required. The unique identifier of the principal or subject that the role assignment request is associated with. Principals can be users, groups, or service principals.
            ## @return a string
            ## 
            def subject_id
                return @subject_id
            end
            ## 
            ## Sets the subjectId property value. Required. The unique identifier of the principal or subject that the role assignment request is associated with. Principals can be users, groups, or service principals.
            ## @param value Value to set for the subject_id property.
            ## @return a void
            ## 
            def subject_id=(value)
                @subject_id = value
            end
            ## 
            ## Gets the type property value. Required. Representing the type of the operation on the role assignment. The possible values are: AdminAdd , UserAdd , AdminUpdate , AdminRemove , UserRemove , UserExtend , AdminExtend , UserRenew , AdminRenew.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Required. Representing the type of the operation on the role assignment. The possible values are: AdminAdd , UserAdd , AdminUpdate , AdminRemove , UserRemove , UserExtend , AdminExtend , UserRenew , AdminRenew.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
