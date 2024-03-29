require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegedAccessGroup < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignmentApprovals property
            @assignment_approvals
            ## 
            # The instances of assignment schedules to activate a just-in-time access.
            @assignment_schedule_instances
            ## 
            # The schedule requests for operations to create, update, delete, extend, and renew an assignment.
            @assignment_schedule_requests
            ## 
            # The assignment schedules to activate a just-in-time access.
            @assignment_schedules
            ## 
            # The instances of eligibility schedules to activate a just-in-time access.
            @eligibility_schedule_instances
            ## 
            # The schedule requests for operations to create, update, delete, extend, and renew an eligibility.
            @eligibility_schedule_requests
            ## 
            # The eligibility schedules to activate a just-in-time access.
            @eligibility_schedules
            ## 
            ## Gets the assignmentApprovals property value. The assignmentApprovals property
            ## @return a approval
            ## 
            def assignment_approvals
                return @assignment_approvals
            end
            ## 
            ## Sets the assignmentApprovals property value. The assignmentApprovals property
            ## @param value Value to set for the assignmentApprovals property.
            ## @return a void
            ## 
            def assignment_approvals=(value)
                @assignment_approvals = value
            end
            ## 
            ## Gets the assignmentScheduleInstances property value. The instances of assignment schedules to activate a just-in-time access.
            ## @return a privileged_access_group_assignment_schedule_instance
            ## 
            def assignment_schedule_instances
                return @assignment_schedule_instances
            end
            ## 
            ## Sets the assignmentScheduleInstances property value. The instances of assignment schedules to activate a just-in-time access.
            ## @param value Value to set for the assignmentScheduleInstances property.
            ## @return a void
            ## 
            def assignment_schedule_instances=(value)
                @assignment_schedule_instances = value
            end
            ## 
            ## Gets the assignmentScheduleRequests property value. The schedule requests for operations to create, update, delete, extend, and renew an assignment.
            ## @return a privileged_access_group_assignment_schedule_request
            ## 
            def assignment_schedule_requests
                return @assignment_schedule_requests
            end
            ## 
            ## Sets the assignmentScheduleRequests property value. The schedule requests for operations to create, update, delete, extend, and renew an assignment.
            ## @param value Value to set for the assignmentScheduleRequests property.
            ## @return a void
            ## 
            def assignment_schedule_requests=(value)
                @assignment_schedule_requests = value
            end
            ## 
            ## Gets the assignmentSchedules property value. The assignment schedules to activate a just-in-time access.
            ## @return a privileged_access_group_assignment_schedule
            ## 
            def assignment_schedules
                return @assignment_schedules
            end
            ## 
            ## Sets the assignmentSchedules property value. The assignment schedules to activate a just-in-time access.
            ## @param value Value to set for the assignmentSchedules property.
            ## @return a void
            ## 
            def assignment_schedules=(value)
                @assignment_schedules = value
            end
            ## 
            ## Instantiates a new privilegedAccessGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedAccessGroup.new
            end
            ## 
            ## Gets the eligibilityScheduleInstances property value. The instances of eligibility schedules to activate a just-in-time access.
            ## @return a privileged_access_group_eligibility_schedule_instance
            ## 
            def eligibility_schedule_instances
                return @eligibility_schedule_instances
            end
            ## 
            ## Sets the eligibilityScheduleInstances property value. The instances of eligibility schedules to activate a just-in-time access.
            ## @param value Value to set for the eligibilityScheduleInstances property.
            ## @return a void
            ## 
            def eligibility_schedule_instances=(value)
                @eligibility_schedule_instances = value
            end
            ## 
            ## Gets the eligibilityScheduleRequests property value. The schedule requests for operations to create, update, delete, extend, and renew an eligibility.
            ## @return a privileged_access_group_eligibility_schedule_request
            ## 
            def eligibility_schedule_requests
                return @eligibility_schedule_requests
            end
            ## 
            ## Sets the eligibilityScheduleRequests property value. The schedule requests for operations to create, update, delete, extend, and renew an eligibility.
            ## @param value Value to set for the eligibilityScheduleRequests property.
            ## @return a void
            ## 
            def eligibility_schedule_requests=(value)
                @eligibility_schedule_requests = value
            end
            ## 
            ## Gets the eligibilitySchedules property value. The eligibility schedules to activate a just-in-time access.
            ## @return a privileged_access_group_eligibility_schedule
            ## 
            def eligibility_schedules
                return @eligibility_schedules
            end
            ## 
            ## Sets the eligibilitySchedules property value. The eligibility schedules to activate a just-in-time access.
            ## @param value Value to set for the eligibilitySchedules property.
            ## @return a void
            ## 
            def eligibility_schedules=(value)
                @eligibility_schedules = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignmentApprovals" => lambda {|n| @assignment_approvals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Approval.create_from_discriminator_value(pn) }) },
                    "assignmentScheduleInstances" => lambda {|n| @assignment_schedule_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedAccessGroupAssignmentScheduleInstance.create_from_discriminator_value(pn) }) },
                    "assignmentScheduleRequests" => lambda {|n| @assignment_schedule_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedAccessGroupAssignmentScheduleRequest.create_from_discriminator_value(pn) }) },
                    "assignmentSchedules" => lambda {|n| @assignment_schedules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedAccessGroupAssignmentSchedule.create_from_discriminator_value(pn) }) },
                    "eligibilityScheduleInstances" => lambda {|n| @eligibility_schedule_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedAccessGroupEligibilityScheduleInstance.create_from_discriminator_value(pn) }) },
                    "eligibilityScheduleRequests" => lambda {|n| @eligibility_schedule_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedAccessGroupEligibilityScheduleRequest.create_from_discriminator_value(pn) }) },
                    "eligibilitySchedules" => lambda {|n| @eligibility_schedules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedAccessGroupEligibilitySchedule.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignmentApprovals", @assignment_approvals)
                writer.write_collection_of_object_values("assignmentScheduleInstances", @assignment_schedule_instances)
                writer.write_collection_of_object_values("assignmentScheduleRequests", @assignment_schedule_requests)
                writer.write_collection_of_object_values("assignmentSchedules", @assignment_schedules)
                writer.write_collection_of_object_values("eligibilityScheduleInstances", @eligibility_schedule_instances)
                writer.write_collection_of_object_values("eligibilityScheduleRequests", @eligibility_schedule_requests)
                writer.write_collection_of_object_values("eligibilitySchedules", @eligibility_schedules)
            end
        end
    end
end
