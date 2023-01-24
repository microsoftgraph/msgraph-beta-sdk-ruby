require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ValidationResult
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The string containing the reason for why the rule passed or not. Read-only. Not nullable.
        @message
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The string containing the name of the password validation rule that the action was validated against. Read-only. Not nullable.
        @rule_name
        ## 
        # Whether the password passed or failed the validation rule. Read-only. Not nullable.
        @validation_passed
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
        ## Instantiates a new validationResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a validation_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ValidationResult.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "message" => lambda {|n| @message = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "ruleName" => lambda {|n| @rule_name = n.get_string_value() },
                "validationPassed" => lambda {|n| @validation_passed = n.get_boolean_value() },
            }
        end
        ## 
        ## Gets the message property value. The string containing the reason for why the rule passed or not. Read-only. Not nullable.
        ## @return a string
        ## 
        def message
            return @message
        end
        ## 
        ## Sets the message property value. The string containing the reason for why the rule passed or not. Read-only. Not nullable.
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the ruleName property value. The string containing the name of the password validation rule that the action was validated against. Read-only. Not nullable.
        ## @return a string
        ## 
        def rule_name
            return @rule_name
        end
        ## 
        ## Sets the ruleName property value. The string containing the name of the password validation rule that the action was validated against. Read-only. Not nullable.
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
            writer.write_string_value("message", @message)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("ruleName", @rule_name)
            writer.write_boolean_value("validationPassed", @validation_passed)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the validationPassed property value. Whether the password passed or failed the validation rule. Read-only. Not nullable.
        ## @return a boolean
        ## 
        def validation_passed
            return @validation_passed
        end
        ## 
        ## Sets the validationPassed property value. Whether the password passed or failed the validation rule. Read-only. Not nullable.
        ## @param value Value to set for the validationPassed property.
        ## @return a void
        ## 
        def validation_passed=(value)
            @validation_passed = value
        end
    end
end
