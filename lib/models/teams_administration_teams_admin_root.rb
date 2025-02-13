require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamsAdministrationTeamsAdminRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The policy property
            @policy
            ## 
            ## Instantiates a new TeamsAdministrationTeamsAdminRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_administration_teams_admin_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAdministrationTeamsAdminRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "policy" => lambda {|n| @policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamsAdministrationTeamsPolicyAssignment.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policy property value. The policy property
            ## @return a teams_administration_teams_policy_assignment
            ## 
            def policy
                return @policy
            end
            ## 
            ## Sets the policy property value. The policy property
            ## @param value Value to set for the policy property.
            ## @return a void
            ## 
            def policy=(value)
                @policy = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("policy", @policy)
            end
        end
    end
end
