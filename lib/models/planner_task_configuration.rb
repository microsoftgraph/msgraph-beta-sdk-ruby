require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerTaskConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Policy configuration for tasks created for the businessScenario when they are being changed outside of the scenario.
            @edit_policy
            ## 
            ## Instantiates a new plannerTaskConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_task_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerTaskConfiguration.new
            end
            ## 
            ## Gets the editPolicy property value. Policy configuration for tasks created for the businessScenario when they are being changed outside of the scenario.
            ## @return a planner_task_policy
            ## 
            def edit_policy
                return @edit_policy
            end
            ## 
            ## Sets the editPolicy property value. Policy configuration for tasks created for the businessScenario when they are being changed outside of the scenario.
            ## @param value Value to set for the edit_policy property.
            ## @return a void
            ## 
            def edit_policy=(value)
                @edit_policy = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "editPolicy" => lambda {|n| @edit_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerTaskPolicy.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("editPolicy", @edit_policy)
            end
        end
    end
end
