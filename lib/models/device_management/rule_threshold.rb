require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './device_management'

module MicrosoftGraphBeta::Models::DeviceManagement
    class RuleThreshold
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Indicates the built-in aggregation methods. The possible values are: count, percentage, affectedCloudPcCount, affectedCloudPcPercentage, unknownFutureValue.
        @aggregation
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Indicates the built-in operator. The possible values are: greaterOrEqual, equal, greater, less, lessOrEqual, notEqual, unknownFutureValue.
        @operator
        ## 
        # The target threshold value.
        @target
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
        ## Gets the aggregation property value. Indicates the built-in aggregation methods. The possible values are: count, percentage, affectedCloudPcCount, affectedCloudPcPercentage, unknownFutureValue.
        ## @return a aggregation_type
        ## 
        def aggregation
            return @aggregation
        end
        ## 
        ## Sets the aggregation property value. Indicates the built-in aggregation methods. The possible values are: count, percentage, affectedCloudPcCount, affectedCloudPcPercentage, unknownFutureValue.
        ## @param value Value to set for the aggregation property.
        ## @return a void
        ## 
        def aggregation=(value)
            @aggregation = value
        end
        ## 
        ## Instantiates a new ruleThreshold and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a rule_threshold
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RuleThreshold.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "aggregation" => lambda {|n| @aggregation = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagement::AggregationType) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagement::OperatorType) },
                "target" => lambda {|n| @target = n.get_number_value() },
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
        ## Gets the operator property value. Indicates the built-in operator. The possible values are: greaterOrEqual, equal, greater, less, lessOrEqual, notEqual, unknownFutureValue.
        ## @return a operator_type
        ## 
        def operator
            return @operator
        end
        ## 
        ## Sets the operator property value. Indicates the built-in operator. The possible values are: greaterOrEqual, equal, greater, less, lessOrEqual, notEqual, unknownFutureValue.
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
            writer.write_enum_value("aggregation", @aggregation)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("operator", @operator)
            writer.write_number_value("target", @target)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the target property value. The target threshold value.
        ## @return a integer
        ## 
        def target
            return @target
        end
        ## 
        ## Sets the target property value. The target threshold value.
        ## @param value Value to set for the target property.
        ## @return a void
        ## 
        def target=(value)
            @target = value
        end
    end
end
