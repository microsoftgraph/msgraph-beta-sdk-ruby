require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GovernancePolicyTemplate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The displayName property
            @display_name
            ## 
            # The policy property
            @policy
            ## 
            # The settings property
            @settings
            ## 
            ## Instantiates a new governancePolicyTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a governance_policy_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GovernancePolicyTemplate.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "policy" => lambda {|n| @policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernancePolicy.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BusinessFlowSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policy property value. The policy property
            ## @return a governance_policy
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
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("policy", @policy)
                writer.write_object_value("settings", @settings)
            end
            ## 
            ## Gets the settings property value. The settings property
            ## @return a business_flow_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. The settings property
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
        end
    end
end
