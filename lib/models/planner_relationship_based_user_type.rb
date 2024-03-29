require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerRelationshipBasedUserType < MicrosoftGraphBeta::Models::PlannerTaskConfigurationRoleBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The role property
            @role
            ## 
            ## Instantiates a new plannerRelationshipBasedUserType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerRelationshipBasedUserType"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_relationship_based_user_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerRelationshipBasedUserType.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraphBeta::Models::PlannerRelationshipUserRoles) },
                })
            end
            ## 
            ## Gets the role property value. The role property
            ## @return a planner_relationship_user_roles
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The role property
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("role", @role)
            end
        end
    end
end
