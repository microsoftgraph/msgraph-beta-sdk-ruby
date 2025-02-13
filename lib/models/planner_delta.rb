require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerDelta < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            ## Instantiates a new PlannerDelta and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_delta
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.businessScenarioTask"
                            return BusinessScenarioTask.new
                        when "#microsoft.graph.plannerAssignedToTaskBoardTaskFormat"
                            return PlannerAssignedToTaskBoardTaskFormat.new
                        when "#microsoft.graph.plannerBucket"
                            return PlannerBucket.new
                        when "#microsoft.graph.plannerBucketTaskBoardTaskFormat"
                            return PlannerBucketTaskBoardTaskFormat.new
                        when "#microsoft.graph.plannerPlan"
                            return PlannerPlan.new
                        when "#microsoft.graph.plannerPlanDetails"
                            return PlannerPlanDetails.new
                        when "#microsoft.graph.plannerProgressTaskBoardTaskFormat"
                            return PlannerProgressTaskBoardTaskFormat.new
                        when "#microsoft.graph.plannerTask"
                            return PlannerTask.new
                        when "#microsoft.graph.plannerTaskDetails"
                            return PlannerTaskDetails.new
                        when "#microsoft.graph.plannerUser"
                            return PlannerUser.new
                    end
                end
                return PlannerDelta.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
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
            end
        end
    end
end
