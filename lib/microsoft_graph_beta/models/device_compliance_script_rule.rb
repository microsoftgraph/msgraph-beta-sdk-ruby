require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceComplianceScriptRule
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Data types for rules.
        @data_type
        ## 
        # Data types for rules.
        @device_compliance_script_rule_data_type
        ## 
        # Operator for rules.
        @device_compliance_script_rul_operator
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Operand specified in the rule.
        @operand
        ## 
        # Operator for rules.
        @operator
        ## 
        # Setting name specified in the rule.
        @setting_name
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
        ## Instantiates a new deviceComplianceScriptRule and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_compliance_script_rule
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceComplianceScriptRule.new
        end
        ## 
        ## Gets the dataType property value. Data types for rules.
        ## @return a data_type
        ## 
        def data_type
            return @data_type
        end
        ## 
        ## Sets the dataType property value. Data types for rules.
        ## @param value Value to set for the dataType property.
        ## @return a void
        ## 
        def data_type=(value)
            @data_type = value
        end
        ## 
        ## Gets the deviceComplianceScriptRuleDataType property value. Data types for rules.
        ## @return a device_compliance_script_rule_data_type
        ## 
        def device_compliance_script_rule_data_type
            return @device_compliance_script_rule_data_type
        end
        ## 
        ## Sets the deviceComplianceScriptRuleDataType property value. Data types for rules.
        ## @param value Value to set for the deviceComplianceScriptRuleDataType property.
        ## @return a void
        ## 
        def device_compliance_script_rule_data_type=(value)
            @device_compliance_script_rule_data_type = value
        end
        ## 
        ## Gets the deviceComplianceScriptRulOperator property value. Operator for rules.
        ## @return a device_compliance_script_rul_operator
        ## 
        def device_compliance_script_rul_operator
            return @device_compliance_script_rul_operator
        end
        ## 
        ## Sets the deviceComplianceScriptRulOperator property value. Operator for rules.
        ## @param value Value to set for the deviceComplianceScriptRulOperator property.
        ## @return a void
        ## 
        def device_compliance_script_rul_operator=(value)
            @device_compliance_script_rul_operator = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "dataType" => lambda {|n| @data_type = n.get_enum_value(MicrosoftGraphBeta::Models::DataType) },
                "deviceComplianceScriptRuleDataType" => lambda {|n| @device_compliance_script_rule_data_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceComplianceScriptRuleDataType) },
                "deviceComplianceScriptRulOperator" => lambda {|n| @device_compliance_script_rul_operator = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceComplianceScriptRulOperator) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "operand" => lambda {|n| @operand = n.get_string_value() },
                "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraphBeta::Models::Operator) },
                "settingName" => lambda {|n| @setting_name = n.get_string_value() },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the operand property value. Operand specified in the rule.
        ## @return a string
        ## 
        def operand
            return @operand
        end
        ## 
        ## Sets the operand property value. Operand specified in the rule.
        ## @param value Value to set for the operand property.
        ## @return a void
        ## 
        def operand=(value)
            @operand = value
        end
        ## 
        ## Gets the operator property value. Operator for rules.
        ## @return a operator
        ## 
        def operator
            return @operator
        end
        ## 
        ## Sets the operator property value. Operator for rules.
        ## @param value Value to set for the operator property.
        ## @return a void
        ## 
        def operator=(value)
            @operator = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("dataType", @data_type)
            writer.write_enum_value("deviceComplianceScriptRuleDataType", @device_compliance_script_rule_data_type)
            writer.write_enum_value("deviceComplianceScriptRulOperator", @device_compliance_script_rul_operator)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("operand", @operand)
            writer.write_enum_value("operator", @operator)
            writer.write_string_value("settingName", @setting_name)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the settingName property value. Setting name specified in the rule.
        ## @return a string
        ## 
        def setting_name
            return @setting_name
        end
        ## 
        ## Sets the settingName property value. Setting name specified in the rule.
        ## @param value Value to set for the settingName property.
        ## @return a void
        ## 
        def setting_name=(value)
            @setting_name = value
        end
    end
end
