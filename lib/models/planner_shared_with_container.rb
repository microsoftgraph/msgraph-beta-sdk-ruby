require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerSharedWithContainer < MicrosoftGraphBeta::Models::PlannerPlanContainer
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessLevel property
            @access_level
            ## 
            ## Gets the accessLevel property value. The accessLevel property
            ## @return a planner_plan_access_level
            ## 
            def access_level
                return @access_level
            end
            ## 
            ## Sets the accessLevel property value. The accessLevel property
            ## @param value Value to set for the accessLevel property.
            ## @return a void
            ## 
            def access_level=(value)
                @access_level = value
            end
            ## 
            ## Instantiates a new plannerSharedWithContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerSharedWithContainer"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_shared_with_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerSharedWithContainer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessLevel" => lambda {|n| @access_level = n.get_enum_value(MicrosoftGraphBeta::Models::PlannerPlanAccessLevel) },
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
                writer.write_enum_value("accessLevel", @access_level)
            end
        end
    end
end
