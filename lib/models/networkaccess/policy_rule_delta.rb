require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class PolicyRuleDelta
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # The action property
                @action
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The identifier of the policy rule to update.
                @rule_id
                ## 
                ## Gets the action property value. The action property
                ## @return a forwarding_rule_action
                ## 
                def action
                    return @action
                end
                ## 
                ## Sets the action property value. The action property
                ## @param value Value to set for the action property.
                ## @return a void
                ## 
                def action=(value)
                    @action = value
                end
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the additionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new policyRuleDelta and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a policy_rule_delta
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return PolicyRuleDelta.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::ForwardingRuleAction) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "ruleId" => lambda {|n| @rule_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the @odata.type property value. The OdataType property
                ## @return a string
                ## 
                def odata_type
                    return @odata_type
                end
                ## 
                ## Sets the @odata.type property value. The OdataType property
                ## @param value Value to set for the @odata.type property.
                ## @return a void
                ## 
                def odata_type=(value)
                    @odata_type = value
                end
                ## 
                ## Gets the ruleId property value. The identifier of the policy rule to update.
                ## @return a string
                ## 
                def rule_id
                    return @rule_id
                end
                ## 
                ## Sets the ruleId property value. The identifier of the policy rule to update.
                ## @param value Value to set for the ruleId property.
                ## @return a void
                ## 
                def rule_id=(value)
                    @rule_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("action", @action)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_string_value("ruleId", @rule_id)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
