require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class BusinessScenarioTask < MicrosoftGraphBeta::Models::PlannerTask
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Scenario-specific properties of the task. externalObjectId and externalBucketId properties must be specified when creating a task.
        @business_scenario_properties
        ## 
        # Target of the task that specifies where the task should be placed. Must be specified when creating a task.
        @target
        ## 
        ## Gets the businessScenarioProperties property value. Scenario-specific properties of the task. externalObjectId and externalBucketId properties must be specified when creating a task.
        ## @return a business_scenario_properties
        ## 
        def business_scenario_properties
            return @business_scenario_properties
        end
        ## 
        ## Sets the businessScenarioProperties property value. Scenario-specific properties of the task. externalObjectId and externalBucketId properties must be specified when creating a task.
        ## @param value Value to set for the business_scenario_properties property.
        ## @return a void
        ## 
        def business_scenario_properties=(value)
            @business_scenario_properties = value
        end
        ## 
        ## Instantiates a new BusinessScenarioTask and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a business_scenario_task
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return BusinessScenarioTask.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "businessScenarioProperties" => lambda {|n| @business_scenario_properties = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BusinessScenarioProperties.create_from_discriminator_value(pn) }) },
                "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BusinessScenarioTaskTargetBase.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("businessScenarioProperties", @business_scenario_properties)
            writer.write_object_value("target", @target)
        end
        ## 
        ## Gets the target property value. Target of the task that specifies where the task should be placed. Must be specified when creating a task.
        ## @return a business_scenario_task_target_base
        ## 
        def target
            return @target
        end
        ## 
        ## Sets the target property value. Target of the task that specifies where the task should be placed. Must be specified when creating a task.
        ## @param value Value to set for the target property.
        ## @return a void
        ## 
        def target=(value)
            @target = value
        end
    end
end
