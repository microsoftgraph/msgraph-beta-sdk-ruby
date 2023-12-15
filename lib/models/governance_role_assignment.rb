require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GovernanceRoleAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The state of the assignment. The value can be Eligible for eligible assignment or Active if it is directly assigned Active by administrators, or activated on an eligible assignment by the users.
            @assignment_state
            ## 
            # For a non-permanent role assignment, this is the time when the role assignment will be expired. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @end_date_time
            ## 
            # The external ID the resource that is used to identify the role assignment in the provider.
            @external_id
            ## 
            # Read-only. If this is an active assignment and created due to activation on an eligible assignment, it represents the object of that eligible assignment; Otherwise, the value is null.
            @linked_eligible_role_assignment
            ## 
            # If this is an active assignment and created due to activation on an eligible assignment, it represents the ID of that eligible assignment; Otherwise, the value is null.
            @linked_eligible_role_assignment_id
            ## 
            # The type of member. The value can be: Inherited (if the role assignment is inherited from a parent resource scope), Group (if the role assignment is not inherited, but comes from the membership of a group assignment), or User (if the role assignment is neither inherited nor from a group assignment).
            @member_type
            ## 
            # Read-only. The resource associated with the role assignment.
            @resource
            ## 
            # Required. The ID of the resource which the role assignment is associated with.
            @resource_id
            ## 
            # Read-only. The role definition associated with the role assignment.
            @role_definition
            ## 
            # Required. The ID of the role definition which the role assignment is associated with.
            @role_definition_id
            ## 
            # The start time of the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @start_date_time
            ## 
            # The status property
            @status
            ## 
            # Read-only. The subject associated with the role assignment.
            @subject
            ## 
            # Required. The ID of the subject which the role assignment is associated with.
            @subject_id
            ## 
            ## Gets the assignmentState property value. The state of the assignment. The value can be Eligible for eligible assignment or Active if it is directly assigned Active by administrators, or activated on an eligible assignment by the users.
            ## @return a string
            ## 
            def assignment_state
                return @assignment_state
            end
            ## 
            ## Sets the assignmentState property value. The state of the assignment. The value can be Eligible for eligible assignment or Active if it is directly assigned Active by administrators, or activated on an eligible assignment by the users.
            ## @param value Value to set for the assignmentState property.
            ## @return a void
            ## 
            def assignment_state=(value)
                @assignment_state = value
            end
            ## 
            ## Instantiates a new governanceRoleAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a governance_role_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GovernanceRoleAssignment.new
            end
            ## 
            ## Gets the endDateTime property value. For a non-permanent role assignment, this is the time when the role assignment will be expired. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. For a non-permanent role assignment, this is the time when the role assignment will be expired. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the externalId property value. The external ID the resource that is used to identify the role assignment in the provider.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The external ID the resource that is used to identify the role assignment in the provider.
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignmentState" => lambda {|n| @assignment_state = n.get_string_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "linkedEligibleRoleAssignment" => lambda {|n| @linked_eligible_role_assignment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleAssignment.create_from_discriminator_value(pn) }) },
                    "linkedEligibleRoleAssignmentId" => lambda {|n| @linked_eligible_role_assignment_id = n.get_string_value() },
                    "memberType" => lambda {|n| @member_type = n.get_string_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceResource.create_from_discriminator_value(pn) }) },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "roleDefinition" => lambda {|n| @role_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleDefinition.create_from_discriminator_value(pn) }) },
                    "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "subject" => lambda {|n| @subject = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceSubject.create_from_discriminator_value(pn) }) },
                    "subjectId" => lambda {|n| @subject_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the linkedEligibleRoleAssignment property value. Read-only. If this is an active assignment and created due to activation on an eligible assignment, it represents the object of that eligible assignment; Otherwise, the value is null.
            ## @return a governance_role_assignment
            ## 
            def linked_eligible_role_assignment
                return @linked_eligible_role_assignment
            end
            ## 
            ## Sets the linkedEligibleRoleAssignment property value. Read-only. If this is an active assignment and created due to activation on an eligible assignment, it represents the object of that eligible assignment; Otherwise, the value is null.
            ## @param value Value to set for the linkedEligibleRoleAssignment property.
            ## @return a void
            ## 
            def linked_eligible_role_assignment=(value)
                @linked_eligible_role_assignment = value
            end
            ## 
            ## Gets the linkedEligibleRoleAssignmentId property value. If this is an active assignment and created due to activation on an eligible assignment, it represents the ID of that eligible assignment; Otherwise, the value is null.
            ## @return a string
            ## 
            def linked_eligible_role_assignment_id
                return @linked_eligible_role_assignment_id
            end
            ## 
            ## Sets the linkedEligibleRoleAssignmentId property value. If this is an active assignment and created due to activation on an eligible assignment, it represents the ID of that eligible assignment; Otherwise, the value is null.
            ## @param value Value to set for the linkedEligibleRoleAssignmentId property.
            ## @return a void
            ## 
            def linked_eligible_role_assignment_id=(value)
                @linked_eligible_role_assignment_id = value
            end
            ## 
            ## Gets the memberType property value. The type of member. The value can be: Inherited (if the role assignment is inherited from a parent resource scope), Group (if the role assignment is not inherited, but comes from the membership of a group assignment), or User (if the role assignment is neither inherited nor from a group assignment).
            ## @return a string
            ## 
            def member_type
                return @member_type
            end
            ## 
            ## Sets the memberType property value. The type of member. The value can be: Inherited (if the role assignment is inherited from a parent resource scope), Group (if the role assignment is not inherited, but comes from the membership of a group assignment), or User (if the role assignment is neither inherited nor from a group assignment).
            ## @param value Value to set for the memberType property.
            ## @return a void
            ## 
            def member_type=(value)
                @member_type = value
            end
            ## 
            ## Gets the resource property value. Read-only. The resource associated with the role assignment.
            ## @return a governance_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Read-only. The resource associated with the role assignment.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resourceId property value. Required. The ID of the resource which the role assignment is associated with.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. Required. The ID of the resource which the role assignment is associated with.
            ## @param value Value to set for the resourceId property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Gets the roleDefinition property value. Read-only. The role definition associated with the role assignment.
            ## @return a governance_role_definition
            ## 
            def role_definition
                return @role_definition
            end
            ## 
            ## Sets the roleDefinition property value. Read-only. The role definition associated with the role assignment.
            ## @param value Value to set for the roleDefinition property.
            ## @return a void
            ## 
            def role_definition=(value)
                @role_definition = value
            end
            ## 
            ## Gets the roleDefinitionId property value. Required. The ID of the role definition which the role assignment is associated with.
            ## @return a string
            ## 
            def role_definition_id
                return @role_definition_id
            end
            ## 
            ## Sets the roleDefinitionId property value. Required. The ID of the role definition which the role assignment is associated with.
            ## @param value Value to set for the roleDefinitionId property.
            ## @return a void
            ## 
            def role_definition_id=(value)
                @role_definition_id = value
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
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_string_value("externalId", @external_id)
                writer.write_object_value("linkedEligibleRoleAssignment", @linked_eligible_role_assignment)
                writer.write_string_value("linkedEligibleRoleAssignmentId", @linked_eligible_role_assignment_id)
                writer.write_string_value("memberType", @member_type)
                writer.write_object_value("resource", @resource)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_object_value("roleDefinition", @role_definition)
                writer.write_string_value("roleDefinitionId", @role_definition_id)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("status", @status)
                writer.write_object_value("subject", @subject)
                writer.write_string_value("subjectId", @subject_id)
            end
            ## 
            ## Gets the startDateTime property value. The start time of the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The start time of the role assignment. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a string
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
            ## Gets the subject property value. Read-only. The subject associated with the role assignment.
            ## @return a governance_subject
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. Read-only. The subject associated with the role assignment.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the subjectId property value. Required. The ID of the subject which the role assignment is associated with.
            ## @return a string
            ## 
            def subject_id
                return @subject_id
            end
            ## 
            ## Sets the subjectId property value. Required. The ID of the subject which the role assignment is associated with.
            ## @param value Value to set for the subjectId property.
            ## @return a void
            ## 
            def subject_id=(value)
                @subject_id = value
            end
        end
    end
end
