require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsStatement
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The AWS actions.
            @actions
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The AWS conditions associated with the statement.
            @condition
            ## 
            # The effect property
            @effect
            ## 
            # AWS Not Actions
            @not_actions
            ## 
            # AWS Not Resources
            @not_resources
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The AWS resources associated with the statement.
            @resources
            ## 
            # The ID of the AWS statement.
            @statement_id
            ## 
            ## Gets the actions property value. The AWS actions.
            ## @return a string
            ## 
            def actions
                return @actions
            end
            ## 
            ## Sets the actions property value. The AWS actions.
            ## @param value Value to set for the actions property.
            ## @return a void
            ## 
            def actions=(value)
                @actions = value
            end
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
            ## Gets the condition property value. The AWS conditions associated with the statement.
            ## @return a aws_condition
            ## 
            def condition
                return @condition
            end
            ## 
            ## Sets the condition property value. The AWS conditions associated with the statement.
            ## @param value Value to set for the condition property.
            ## @return a void
            ## 
            def condition=(value)
                @condition = value
            end
            ## 
            ## Instantiates a new AwsStatement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_statement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsStatement.new
            end
            ## 
            ## Gets the effect property value. The effect property
            ## @return a aws_statement_effect
            ## 
            def effect
                return @effect
            end
            ## 
            ## Sets the effect property value. The effect property
            ## @param value Value to set for the effect property.
            ## @return a void
            ## 
            def effect=(value)
                @effect = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actions" => lambda {|n| @actions = n.get_collection_of_primitive_values(String) },
                    "condition" => lambda {|n| @condition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AwsCondition.create_from_discriminator_value(pn) }) },
                    "effect" => lambda {|n| @effect = n.get_enum_value(MicrosoftGraphBeta::Models::AwsStatementEffect) },
                    "notActions" => lambda {|n| @not_actions = n.get_collection_of_primitive_values(String) },
                    "notResources" => lambda {|n| @not_resources = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resources" => lambda {|n| @resources = n.get_collection_of_primitive_values(String) },
                    "statementId" => lambda {|n| @statement_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the notActions property value. AWS Not Actions
            ## @return a string
            ## 
            def not_actions
                return @not_actions
            end
            ## 
            ## Sets the notActions property value. AWS Not Actions
            ## @param value Value to set for the notActions property.
            ## @return a void
            ## 
            def not_actions=(value)
                @not_actions = value
            end
            ## 
            ## Gets the notResources property value. AWS Not Resources
            ## @return a string
            ## 
            def not_resources
                return @not_resources
            end
            ## 
            ## Sets the notResources property value. AWS Not Resources
            ## @param value Value to set for the notResources property.
            ## @return a void
            ## 
            def not_resources=(value)
                @not_resources = value
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
            ## Gets the resources property value. The AWS resources associated with the statement.
            ## @return a string
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. The AWS resources associated with the statement.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("actions", @actions)
                writer.write_object_value("condition", @condition)
                writer.write_enum_value("effect", @effect)
                writer.write_collection_of_primitive_values("notActions", @not_actions)
                writer.write_collection_of_primitive_values("notResources", @not_resources)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("resources", @resources)
                writer.write_string_value("statementId", @statement_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the statementId property value. The ID of the AWS statement.
            ## @return a string
            ## 
            def statement_id
                return @statement_id
            end
            ## 
            ## Sets the statementId property value. The ID of the AWS statement.
            ## @param value Value to set for the statementId property.
            ## @return a void
            ## 
            def statement_id=(value)
                @statement_id = value
            end
        end
    end
end
