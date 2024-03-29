require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceComplianceScriptError
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Error code for rule validation.
            @code
            ## 
            # Error code for rule validation.
            @device_compliance_script_rules_validation_error
            ## 
            # Error message.
            @message
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the code property value. Error code for rule validation.
            ## @return a code
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. Error code for rule validation.
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new deviceComplianceScriptError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_script_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceComplianceScriptRuleError"
                            return DeviceComplianceScriptRuleError.new
                    end
                end
                return DeviceComplianceScriptError.new
            end
            ## 
            ## Gets the deviceComplianceScriptRulesValidationError property value. Error code for rule validation.
            ## @return a device_compliance_script_rules_validation_error
            ## 
            def device_compliance_script_rules_validation_error
                return @device_compliance_script_rules_validation_error
            end
            ## 
            ## Sets the deviceComplianceScriptRulesValidationError property value. Error code for rule validation.
            ## @param value Value to set for the deviceComplianceScriptRulesValidationError property.
            ## @return a void
            ## 
            def device_compliance_script_rules_validation_error=(value)
                @device_compliance_script_rules_validation_error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "code" => lambda {|n| @code = n.get_enum_value(MicrosoftGraphBeta::Models::Code) },
                    "deviceComplianceScriptRulesValidationError" => lambda {|n| @device_compliance_script_rules_validation_error = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceComplianceScriptRulesValidationError) },
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the message property value. Error message.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. Error message.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
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
                writer.write_enum_value("code", @code)
                writer.write_enum_value("deviceComplianceScriptRulesValidationError", @device_compliance_script_rules_validation_error)
                writer.write_string_value("message", @message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
