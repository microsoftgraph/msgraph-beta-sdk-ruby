require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MatchingDlpRule
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # The actions property
        @actions
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The isMostRestrictive property
        @is_most_restrictive
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The policyId property
        @policy_id
        ## 
        # The policyName property
        @policy_name
        ## 
        # The priority property
        @priority
        ## 
        # The ruleId property
        @rule_id
        ## 
        # The ruleMode property
        @rule_mode
        ## 
        # The ruleName property
        @rule_name
        ## 
        ## Gets the actions property value. The actions property
        ## @return a dlp_action_info
        ## 
        def actions
            return @actions
        end
        ## 
        ## Sets the actions property value. The actions property
        ## @param value Value to set for the actions property.
        ## @return a void
        ## 
        def actions=(value)
            @actions = value
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
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new matchingDlpRule and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a matching_dlp_rule
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MatchingDlpRule.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "actions" => lambda {|n| @actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DlpActionInfo.create_from_discriminator_value(pn) }) },
                "isMostRestrictive" => lambda {|n| @is_most_restrictive = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "policyId" => lambda {|n| @policy_id = n.get_string_value() },
                "policyName" => lambda {|n| @policy_name = n.get_string_value() },
                "priority" => lambda {|n| @priority = n.get_number_value() },
                "ruleId" => lambda {|n| @rule_id = n.get_string_value() },
                "ruleMode" => lambda {|n| @rule_mode = n.get_enum_value(MicrosoftGraphBeta::Models::RuleMode) },
                "ruleName" => lambda {|n| @rule_name = n.get_string_value() },
            }
        end
        ## 
        ## Gets the isMostRestrictive property value. The isMostRestrictive property
        ## @return a boolean
        ## 
        def is_most_restrictive
            return @is_most_restrictive
        end
        ## 
        ## Sets the isMostRestrictive property value. The isMostRestrictive property
        ## @param value Value to set for the isMostRestrictive property.
        ## @return a void
        ## 
        def is_most_restrictive=(value)
            @is_most_restrictive = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the policyId property value. The policyId property
        ## @return a string
        ## 
        def policy_id
            return @policy_id
        end
        ## 
        ## Sets the policyId property value. The policyId property
        ## @param value Value to set for the policyId property.
        ## @return a void
        ## 
        def policy_id=(value)
            @policy_id = value
        end
        ## 
        ## Gets the policyName property value. The policyName property
        ## @return a string
        ## 
        def policy_name
            return @policy_name
        end
        ## 
        ## Sets the policyName property value. The policyName property
        ## @param value Value to set for the policyName property.
        ## @return a void
        ## 
        def policy_name=(value)
            @policy_name = value
        end
        ## 
        ## Gets the priority property value. The priority property
        ## @return a integer
        ## 
        def priority
            return @priority
        end
        ## 
        ## Sets the priority property value. The priority property
        ## @param value Value to set for the priority property.
        ## @return a void
        ## 
        def priority=(value)
            @priority = value
        end
        ## 
        ## Gets the ruleId property value. The ruleId property
        ## @return a string
        ## 
        def rule_id
            return @rule_id
        end
        ## 
        ## Sets the ruleId property value. The ruleId property
        ## @param value Value to set for the ruleId property.
        ## @return a void
        ## 
        def rule_id=(value)
            @rule_id = value
        end
        ## 
        ## Gets the ruleMode property value. The ruleMode property
        ## @return a rule_mode
        ## 
        def rule_mode
            return @rule_mode
        end
        ## 
        ## Sets the ruleMode property value. The ruleMode property
        ## @param value Value to set for the ruleMode property.
        ## @return a void
        ## 
        def rule_mode=(value)
            @rule_mode = value
        end
        ## 
        ## Gets the ruleName property value. The ruleName property
        ## @return a string
        ## 
        def rule_name
            return @rule_name
        end
        ## 
        ## Sets the ruleName property value. The ruleName property
        ## @param value Value to set for the ruleName property.
        ## @return a void
        ## 
        def rule_name=(value)
            @rule_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("actions", @actions)
            writer.write_boolean_value("isMostRestrictive", @is_most_restrictive)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("policyId", @policy_id)
            writer.write_string_value("policyName", @policy_name)
            writer.write_number_value("priority", @priority)
            writer.write_string_value("ruleId", @rule_id)
            writer.write_enum_value("ruleMode", @rule_mode)
            writer.write_string_value("ruleName", @rule_name)
            writer.write_additional_data(@additional_data)
        end
    end
end
