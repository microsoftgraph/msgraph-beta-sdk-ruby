require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/networkaccess_policy_rule_delta'
require_relative '../../../network_access'
require_relative '../../forwarding_policies'
require_relative '../item'
require_relative './microsoft_graph_networkaccess_update_policy_rules'

module MicrosoftGraphBeta
    module NetworkAccess
        module ForwardingPolicies
            module Item
                module MicrosoftGraphNetworkaccessUpdatePolicyRules
                    class UpdatePolicyRulesPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The rules property
                        @rules
                        ## 
                        ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new UpdatePolicyRulesPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a update_policy_rules_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UpdatePolicyRulesPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "rules" => lambda {|n| @rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessPolicyRuleDelta.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the rules property value. The rules property
                        ## @return a networkaccess_policy_rule_delta
                        ## 
                        def rules
                            return @rules
                        end
                        ## 
                        ## Sets the rules property value. The rules property
                        ## @param value Value to set for the rules property.
                        ## @return a void
                        ## 
                        def rules=(value)
                            @rules = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("rules", @rules)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
