require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class RbacApplication < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The resourceNamespaces property
        @resource_namespaces
        ## 
        # The roleAssignmentApprovals property
        @role_assignment_approvals
        ## 
        # The roleAssignments property
        @role_assignments
        ## 
        # The roleAssignmentScheduleInstances property
        @role_assignment_schedule_instances
        ## 
        # The roleAssignmentScheduleRequests property
        @role_assignment_schedule_requests
        ## 
        # The roleAssignmentSchedules property
        @role_assignment_schedules
        ## 
        # The roleDefinitions property
        @role_definitions
        ## 
        # The roleEligibilityScheduleInstances property
        @role_eligibility_schedule_instances
        ## 
        # The roleEligibilityScheduleRequests property
        @role_eligibility_schedule_requests
        ## 
        # The roleEligibilitySchedules property
        @role_eligibility_schedules
        ## 
        # The transitiveRoleAssignments property
        @transitive_role_assignments
        ## 
        ## Instantiates a new RbacApplication and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a rbac_application
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RbacApplication.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "resourceNamespaces" => lambda {|n| @resource_namespaces = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRbacResourceNamespace.create_from_discriminator_value(pn) }) },
                "roleAssignmentApprovals" => lambda {|n| @role_assignment_approvals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Approval.create_from_discriminator_value(pn) }) },
                "roleAssignments" => lambda {|n| @role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleAssignment.create_from_discriminator_value(pn) }) },
                "roleAssignmentScheduleInstances" => lambda {|n| @role_assignment_schedule_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleAssignmentScheduleInstance.create_from_discriminator_value(pn) }) },
                "roleAssignmentScheduleRequests" => lambda {|n| @role_assignment_schedule_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleAssignmentScheduleRequest.create_from_discriminator_value(pn) }) },
                "roleAssignmentSchedules" => lambda {|n| @role_assignment_schedules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleAssignmentSchedule.create_from_discriminator_value(pn) }) },
                "roleDefinitions" => lambda {|n| @role_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleDefinition.create_from_discriminator_value(pn) }) },
                "roleEligibilityScheduleInstances" => lambda {|n| @role_eligibility_schedule_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleEligibilityScheduleInstance.create_from_discriminator_value(pn) }) },
                "roleEligibilityScheduleRequests" => lambda {|n| @role_eligibility_schedule_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleEligibilityScheduleRequest.create_from_discriminator_value(pn) }) },
                "roleEligibilitySchedules" => lambda {|n| @role_eligibility_schedules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleEligibilitySchedule.create_from_discriminator_value(pn) }) },
                "transitiveRoleAssignments" => lambda {|n| @transitive_role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleAssignment.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the resourceNamespaces property value. The resourceNamespaces property
        ## @return a unified_rbac_resource_namespace
        ## 
        def resource_namespaces
            return @resource_namespaces
        end
        ## 
        ## Sets the resourceNamespaces property value. The resourceNamespaces property
        ## @param value Value to set for the resourceNamespaces property.
        ## @return a void
        ## 
        def resource_namespaces=(value)
            @resource_namespaces = value
        end
        ## 
        ## Gets the roleAssignmentApprovals property value. The roleAssignmentApprovals property
        ## @return a approval
        ## 
        def role_assignment_approvals
            return @role_assignment_approvals
        end
        ## 
        ## Sets the roleAssignmentApprovals property value. The roleAssignmentApprovals property
        ## @param value Value to set for the roleAssignmentApprovals property.
        ## @return a void
        ## 
        def role_assignment_approvals=(value)
            @role_assignment_approvals = value
        end
        ## 
        ## Gets the roleAssignments property value. The roleAssignments property
        ## @return a unified_role_assignment
        ## 
        def role_assignments
            return @role_assignments
        end
        ## 
        ## Sets the roleAssignments property value. The roleAssignments property
        ## @param value Value to set for the roleAssignments property.
        ## @return a void
        ## 
        def role_assignments=(value)
            @role_assignments = value
        end
        ## 
        ## Gets the roleAssignmentScheduleInstances property value. The roleAssignmentScheduleInstances property
        ## @return a unified_role_assignment_schedule_instance
        ## 
        def role_assignment_schedule_instances
            return @role_assignment_schedule_instances
        end
        ## 
        ## Sets the roleAssignmentScheduleInstances property value. The roleAssignmentScheduleInstances property
        ## @param value Value to set for the roleAssignmentScheduleInstances property.
        ## @return a void
        ## 
        def role_assignment_schedule_instances=(value)
            @role_assignment_schedule_instances = value
        end
        ## 
        ## Gets the roleAssignmentScheduleRequests property value. The roleAssignmentScheduleRequests property
        ## @return a unified_role_assignment_schedule_request
        ## 
        def role_assignment_schedule_requests
            return @role_assignment_schedule_requests
        end
        ## 
        ## Sets the roleAssignmentScheduleRequests property value. The roleAssignmentScheduleRequests property
        ## @param value Value to set for the roleAssignmentScheduleRequests property.
        ## @return a void
        ## 
        def role_assignment_schedule_requests=(value)
            @role_assignment_schedule_requests = value
        end
        ## 
        ## Gets the roleAssignmentSchedules property value. The roleAssignmentSchedules property
        ## @return a unified_role_assignment_schedule
        ## 
        def role_assignment_schedules
            return @role_assignment_schedules
        end
        ## 
        ## Sets the roleAssignmentSchedules property value. The roleAssignmentSchedules property
        ## @param value Value to set for the roleAssignmentSchedules property.
        ## @return a void
        ## 
        def role_assignment_schedules=(value)
            @role_assignment_schedules = value
        end
        ## 
        ## Gets the roleDefinitions property value. The roleDefinitions property
        ## @return a unified_role_definition
        ## 
        def role_definitions
            return @role_definitions
        end
        ## 
        ## Sets the roleDefinitions property value. The roleDefinitions property
        ## @param value Value to set for the roleDefinitions property.
        ## @return a void
        ## 
        def role_definitions=(value)
            @role_definitions = value
        end
        ## 
        ## Gets the roleEligibilityScheduleInstances property value. The roleEligibilityScheduleInstances property
        ## @return a unified_role_eligibility_schedule_instance
        ## 
        def role_eligibility_schedule_instances
            return @role_eligibility_schedule_instances
        end
        ## 
        ## Sets the roleEligibilityScheduleInstances property value. The roleEligibilityScheduleInstances property
        ## @param value Value to set for the roleEligibilityScheduleInstances property.
        ## @return a void
        ## 
        def role_eligibility_schedule_instances=(value)
            @role_eligibility_schedule_instances = value
        end
        ## 
        ## Gets the roleEligibilityScheduleRequests property value. The roleEligibilityScheduleRequests property
        ## @return a unified_role_eligibility_schedule_request
        ## 
        def role_eligibility_schedule_requests
            return @role_eligibility_schedule_requests
        end
        ## 
        ## Sets the roleEligibilityScheduleRequests property value. The roleEligibilityScheduleRequests property
        ## @param value Value to set for the roleEligibilityScheduleRequests property.
        ## @return a void
        ## 
        def role_eligibility_schedule_requests=(value)
            @role_eligibility_schedule_requests = value
        end
        ## 
        ## Gets the roleEligibilitySchedules property value. The roleEligibilitySchedules property
        ## @return a unified_role_eligibility_schedule
        ## 
        def role_eligibility_schedules
            return @role_eligibility_schedules
        end
        ## 
        ## Sets the roleEligibilitySchedules property value. The roleEligibilitySchedules property
        ## @param value Value to set for the roleEligibilitySchedules property.
        ## @return a void
        ## 
        def role_eligibility_schedules=(value)
            @role_eligibility_schedules = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("resourceNamespaces", @resource_namespaces)
            writer.write_collection_of_object_values("roleAssignmentApprovals", @role_assignment_approvals)
            writer.write_collection_of_object_values("roleAssignments", @role_assignments)
            writer.write_collection_of_object_values("roleAssignmentScheduleInstances", @role_assignment_schedule_instances)
            writer.write_collection_of_object_values("roleAssignmentScheduleRequests", @role_assignment_schedule_requests)
            writer.write_collection_of_object_values("roleAssignmentSchedules", @role_assignment_schedules)
            writer.write_collection_of_object_values("roleDefinitions", @role_definitions)
            writer.write_collection_of_object_values("roleEligibilityScheduleInstances", @role_eligibility_schedule_instances)
            writer.write_collection_of_object_values("roleEligibilityScheduleRequests", @role_eligibility_schedule_requests)
            writer.write_collection_of_object_values("roleEligibilitySchedules", @role_eligibility_schedules)
            writer.write_collection_of_object_values("transitiveRoleAssignments", @transitive_role_assignments)
        end
        ## 
        ## Gets the transitiveRoleAssignments property value. The transitiveRoleAssignments property
        ## @return a unified_role_assignment
        ## 
        def transitive_role_assignments
            return @transitive_role_assignments
        end
        ## 
        ## Sets the transitiveRoleAssignments property value. The transitiveRoleAssignments property
        ## @param value Value to set for the transitiveRoleAssignments property.
        ## @return a void
        ## 
        def transitive_role_assignments=(value)
            @transitive_role_assignments = value
        end
    end
end
