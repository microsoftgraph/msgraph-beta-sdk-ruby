require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EvaluateDynamicMembershipResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If a group ID is provided, the value is the membership rule for the group. If a group ID isn't provided, the value is the membership rule that was provided as a parameter. For more information, see Dynamic membership rules for groups in Microsoft Entra ID.
            @membership_rule
            ## 
            # Provides a detailed analysis of the membership evaluation result.
            @membership_rule_evaluation_details
            ## 
            # The value is true if the user or device is a member of the group. The value can also be true if a membership rule was provided and the user or device passes the rule evaluation; otherwise false.
            @membership_rule_evaluation_result
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new EvaluateDynamicMembershipResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a evaluate_dynamic_membership_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EvaluateDynamicMembershipResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "membershipRule" => lambda {|n| @membership_rule = n.get_string_value() },
                    "membershipRuleEvaluationDetails" => lambda {|n| @membership_rule_evaluation_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ExpressionEvaluationDetails.create_from_discriminator_value(pn) }) },
                    "membershipRuleEvaluationResult" => lambda {|n| @membership_rule_evaluation_result = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the membershipRule property value. If a group ID is provided, the value is the membership rule for the group. If a group ID isn't provided, the value is the membership rule that was provided as a parameter. For more information, see Dynamic membership rules for groups in Microsoft Entra ID.
            ## @return a string
            ## 
            def membership_rule
                return @membership_rule
            end
            ## 
            ## Sets the membershipRule property value. If a group ID is provided, the value is the membership rule for the group. If a group ID isn't provided, the value is the membership rule that was provided as a parameter. For more information, see Dynamic membership rules for groups in Microsoft Entra ID.
            ## @param value Value to set for the membershipRule property.
            ## @return a void
            ## 
            def membership_rule=(value)
                @membership_rule = value
            end
            ## 
            ## Gets the membershipRuleEvaluationDetails property value. Provides a detailed analysis of the membership evaluation result.
            ## @return a expression_evaluation_details
            ## 
            def membership_rule_evaluation_details
                return @membership_rule_evaluation_details
            end
            ## 
            ## Sets the membershipRuleEvaluationDetails property value. Provides a detailed analysis of the membership evaluation result.
            ## @param value Value to set for the membershipRuleEvaluationDetails property.
            ## @return a void
            ## 
            def membership_rule_evaluation_details=(value)
                @membership_rule_evaluation_details = value
            end
            ## 
            ## Gets the membershipRuleEvaluationResult property value. The value is true if the user or device is a member of the group. The value can also be true if a membership rule was provided and the user or device passes the rule evaluation; otherwise false.
            ## @return a boolean
            ## 
            def membership_rule_evaluation_result
                return @membership_rule_evaluation_result
            end
            ## 
            ## Sets the membershipRuleEvaluationResult property value. The value is true if the user or device is a member of the group. The value can also be true if a membership rule was provided and the user or device passes the rule evaluation; otherwise false.
            ## @param value Value to set for the membershipRuleEvaluationResult property.
            ## @return a void
            ## 
            def membership_rule_evaluation_result=(value)
                @membership_rule_evaluation_result = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("membershipRule", @membership_rule)
                writer.write_object_value("membershipRuleEvaluationDetails", @membership_rule_evaluation_details)
                writer.write_boolean_value("membershipRuleEvaluationResult", @membership_rule_evaluation_result)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
