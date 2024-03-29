require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceComplianceScriptValidationResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Errors in json for the script for rules.
            @rule_errors
            ## 
            # Parsed rules from json.
            @rules
            ## 
            # Errors in json for the script.
            @script_errors
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
            ## Instantiates a new deviceComplianceScriptValidationResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_script_validation_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceComplianceScriptValidationResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "ruleErrors" => lambda {|n| @rule_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceComplianceScriptRuleError.create_from_discriminator_value(pn) }) },
                    "rules" => lambda {|n| @rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceComplianceScriptRule.create_from_discriminator_value(pn) }) },
                    "scriptErrors" => lambda {|n| @script_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceComplianceScriptError.create_from_discriminator_value(pn) }) },
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
            ## Gets the ruleErrors property value. Errors in json for the script for rules.
            ## @return a device_compliance_script_rule_error
            ## 
            def rule_errors
                return @rule_errors
            end
            ## 
            ## Sets the ruleErrors property value. Errors in json for the script for rules.
            ## @param value Value to set for the ruleErrors property.
            ## @return a void
            ## 
            def rule_errors=(value)
                @rule_errors = value
            end
            ## 
            ## Gets the rules property value. Parsed rules from json.
            ## @return a device_compliance_script_rule
            ## 
            def rules
                return @rules
            end
            ## 
            ## Sets the rules property value. Parsed rules from json.
            ## @param value Value to set for the rules property.
            ## @return a void
            ## 
            def rules=(value)
                @rules = value
            end
            ## 
            ## Gets the scriptErrors property value. Errors in json for the script.
            ## @return a device_compliance_script_error
            ## 
            def script_errors
                return @script_errors
            end
            ## 
            ## Sets the scriptErrors property value. Errors in json for the script.
            ## @param value Value to set for the scriptErrors property.
            ## @return a void
            ## 
            def script_errors=(value)
                @script_errors = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("ruleErrors", @rule_errors)
                writer.write_collection_of_object_values("rules", @rules)
                writer.write_collection_of_object_values("scriptErrors", @script_errors)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
