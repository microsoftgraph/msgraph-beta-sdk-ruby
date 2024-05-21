require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ConditionalAccessWhatIfPolicy < MicrosoftGraphBeta::Models::ConditionalAccessPolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The policyApplies property
            @policy_applies
            ## 
            # The reasons property
            @reasons
            ## 
            ## Instantiates a new ConditionalAccessWhatIfPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_what_if_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessWhatIfPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "policyApplies" => lambda {|n| @policy_applies = n.get_boolean_value() },
                    "reasons" => lambda {|n| @reasons = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessWhatIfReasons.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policyApplies property value. The policyApplies property
            ## @return a boolean
            ## 
            def policy_applies
                return @policy_applies
            end
            ## 
            ## Sets the policyApplies property value. The policyApplies property
            ## @param value Value to set for the policyApplies property.
            ## @return a void
            ## 
            def policy_applies=(value)
                @policy_applies = value
            end
            ## 
            ## Gets the reasons property value. The reasons property
            ## @return a conditional_access_what_if_reasons
            ## 
            def reasons
                return @reasons
            end
            ## 
            ## Sets the reasons property value. The reasons property
            ## @param value Value to set for the reasons property.
            ## @return a void
            ## 
            def reasons=(value)
                @reasons = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("policyApplies", @policy_applies)
                writer.write_collection_of_object_values("reasons", @reasons)
            end
        end
    end
end
