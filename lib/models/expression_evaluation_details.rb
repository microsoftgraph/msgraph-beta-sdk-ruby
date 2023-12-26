require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExpressionEvaluationDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents expression which has been evaluated.
            @expression
            ## 
            # Represents the details of the evaluation of the expression.
            @expression_evaluation_details
            ## 
            # Represents the value of the result of the current expression.
            @expression_result
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Defines the name of the property and the value of that property.
            @property_to_evaluate
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
            ## Instantiates a new expressionEvaluationDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a expression_evaluation_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExpressionEvaluationDetails.new
            end
            ## 
            ## Gets the expression property value. Represents expression which has been evaluated.
            ## @return a string
            ## 
            def expression
                return @expression
            end
            ## 
            ## Sets the expression property value. Represents expression which has been evaluated.
            ## @param value Value to set for the expression property.
            ## @return a void
            ## 
            def expression=(value)
                @expression = value
            end
            ## 
            ## Gets the expressionEvaluationDetails property value. Represents the details of the evaluation of the expression.
            ## @return a expression_evaluation_details
            ## 
            def expression_evaluation_details
                return @expression_evaluation_details
            end
            ## 
            ## Sets the expressionEvaluationDetails property value. Represents the details of the evaluation of the expression.
            ## @param value Value to set for the expressionEvaluationDetails property.
            ## @return a void
            ## 
            def expression_evaluation_details=(value)
                @expression_evaluation_details = value
            end
            ## 
            ## Gets the expressionResult property value. Represents the value of the result of the current expression.
            ## @return a boolean
            ## 
            def expression_result
                return @expression_result
            end
            ## 
            ## Sets the expressionResult property value. Represents the value of the result of the current expression.
            ## @param value Value to set for the expressionResult property.
            ## @return a void
            ## 
            def expression_result=(value)
                @expression_result = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "expression" => lambda {|n| @expression = n.get_string_value() },
                    "expressionEvaluationDetails" => lambda {|n| @expression_evaluation_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExpressionEvaluationDetails.create_from_discriminator_value(pn) }) },
                    "expressionResult" => lambda {|n| @expression_result = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "propertyToEvaluate" => lambda {|n| @property_to_evaluate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PropertyToEvaluate.create_from_discriminator_value(pn) }) },
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
            ## Gets the propertyToEvaluate property value. Defines the name of the property and the value of that property.
            ## @return a property_to_evaluate
            ## 
            def property_to_evaluate
                return @property_to_evaluate
            end
            ## 
            ## Sets the propertyToEvaluate property value. Defines the name of the property and the value of that property.
            ## @param value Value to set for the propertyToEvaluate property.
            ## @return a void
            ## 
            def property_to_evaluate=(value)
                @property_to_evaluate = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("expression", @expression)
                writer.write_collection_of_object_values("expressionEvaluationDetails", @expression_evaluation_details)
                writer.write_boolean_value("expressionResult", @expression_result)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("propertyToEvaluate", @property_to_evaluate)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
