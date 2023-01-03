require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class BusinessScenarioPlanner < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The planConfiguration property
        @plan_configuration
        ## 
        # The taskConfiguration property
        @task_configuration
        ## 
        # The tasks property
        @tasks
        ## 
        ## Instantiates a new businessScenarioPlanner and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a business_scenario_planner
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return BusinessScenarioPlanner.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "planConfiguration" => lambda {|n| @plan_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlanConfiguration.create_from_discriminator_value(pn) }) },
                "taskConfiguration" => lambda {|n| @task_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerTaskConfiguration.create_from_discriminator_value(pn) }) },
                "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BusinessScenarioTask.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the planConfiguration property value. The planConfiguration property
        ## @return a planner_plan_configuration
        ## 
        def plan_configuration
            return @plan_configuration
        end
        ## 
        ## Sets the planConfiguration property value. The planConfiguration property
        ## @param value Value to set for the planConfiguration property.
        ## @return a void
        ## 
        def plan_configuration=(value)
            @plan_configuration = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("planConfiguration", @plan_configuration)
            writer.write_object_value("taskConfiguration", @task_configuration)
            writer.write_collection_of_object_values("tasks", @tasks)
        end
        ## 
        ## Gets the taskConfiguration property value. The taskConfiguration property
        ## @return a planner_task_configuration
        ## 
        def task_configuration
            return @task_configuration
        end
        ## 
        ## Sets the taskConfiguration property value. The taskConfiguration property
        ## @param value Value to set for the taskConfiguration property.
        ## @return a void
        ## 
        def task_configuration=(value)
            @task_configuration = value
        end
        ## 
        ## Gets the tasks property value. The tasks property
        ## @return a business_scenario_task
        ## 
        def tasks
            return @tasks
        end
        ## 
        ## Sets the tasks property value. The tasks property
        ## @param value Value to set for the tasks property.
        ## @return a void
        ## 
        def tasks=(value)
            @tasks = value
        end
    end
end
