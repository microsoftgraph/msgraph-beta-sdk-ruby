require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraphBeta
    module Models
        module IdentityGovernance
            class LifecycleManagementSettings < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The interval in hours at which all workflows running in the tenant should be scheduled for execution. This interval has a minimum value of 1 and a maximum value of 24. The default value is 3 hours.
                @workflow_schedule_interval_in_hours
                ## 
                ## Instantiates a new lifecycleManagementSettings and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a lifecycle_management_settings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LifecycleManagementSettings.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "workflowScheduleIntervalInHours" => lambda {|n| @workflow_schedule_interval_in_hours = n.get_number_value() },
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
                    writer.write_number_value("workflowScheduleIntervalInHours", @workflow_schedule_interval_in_hours)
                end
                ## 
                ## Gets the workflowScheduleIntervalInHours property value. The interval in hours at which all workflows running in the tenant should be scheduled for execution. This interval has a minimum value of 1 and a maximum value of 24. The default value is 3 hours.
                ## @return a integer
                ## 
                def workflow_schedule_interval_in_hours
                    return @workflow_schedule_interval_in_hours
                end
                ## 
                ## Sets the workflowScheduleIntervalInHours property value. The interval in hours at which all workflows running in the tenant should be scheduled for execution. This interval has a minimum value of 1 and a maximum value of 24. The default value is 3 hours.
                ## @param value Value to set for the workflow_schedule_interval_in_hours property.
                ## @return a void
                ## 
                def workflow_schedule_interval_in_hours=(value)
                    @workflow_schedule_interval_in_hours = value
                end
            end
        end
    end
end
