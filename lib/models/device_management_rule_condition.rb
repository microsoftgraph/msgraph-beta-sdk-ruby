require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementRuleCondition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The built-in aggregation method for the rule condition. The possible values are: count, percentage, affectedCloudPcCount, affectedCloudPcPercentage, unknownFutureValue.
            @aggregation
            ## 
            # The property that the rule condition monitors. Possible values are:  provisionFailures, imageUploadFailures, azureNetworkConnectionCheckFailures, cloudPcInGracePeriod, frontlineInsufficientLicenses, cloudPcConnectionErrors, cloudPcHostHealthCheckFailures, cloudPcZoneOutage, unknownFutureValue.
            @condition_category
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The built-in operator for the rule condition. The possible values are: greaterOrEqual, equal, greater, less, lessOrEqual, notEqual, unknownFutureValue.
            @operator
            ## 
            # The relationship type.  Possible values are: and, or.
            @relationship_type
            ## 
            # The threshold value of the alert condition. The threshold value can be a number in string form or string like 'WestUS'.
            @threshold_value
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
            ## Gets the aggregation property value. The built-in aggregation method for the rule condition. The possible values are: count, percentage, affectedCloudPcCount, affectedCloudPcPercentage, unknownFutureValue.
            ## @return a device_management_aggregation_type
            ## 
            def aggregation
                return @aggregation
            end
            ## 
            ## Sets the aggregation property value. The built-in aggregation method for the rule condition. The possible values are: count, percentage, affectedCloudPcCount, affectedCloudPcPercentage, unknownFutureValue.
            ## @param value Value to set for the aggregation property.
            ## @return a void
            ## 
            def aggregation=(value)
                @aggregation = value
            end
            ## 
            ## Gets the conditionCategory property value. The property that the rule condition monitors. Possible values are:  provisionFailures, imageUploadFailures, azureNetworkConnectionCheckFailures, cloudPcInGracePeriod, frontlineInsufficientLicenses, cloudPcConnectionErrors, cloudPcHostHealthCheckFailures, cloudPcZoneOutage, unknownFutureValue.
            ## @return a device_management_condition_category
            ## 
            def condition_category
                return @condition_category
            end
            ## 
            ## Sets the conditionCategory property value. The property that the rule condition monitors. Possible values are:  provisionFailures, imageUploadFailures, azureNetworkConnectionCheckFailures, cloudPcInGracePeriod, frontlineInsufficientLicenses, cloudPcConnectionErrors, cloudPcHostHealthCheckFailures, cloudPcZoneOutage, unknownFutureValue.
            ## @param value Value to set for the conditionCategory property.
            ## @return a void
            ## 
            def condition_category=(value)
                @condition_category = value
            end
            ## 
            ## Instantiates a new deviceManagementRuleCondition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_rule_condition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementRuleCondition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "aggregation" => lambda {|n| @aggregation = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementAggregationType) },
                    "conditionCategory" => lambda {|n| @condition_category = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConditionCategory) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementOperatorType) },
                    "relationshipType" => lambda {|n| @relationship_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementRelationshipType) },
                    "thresholdValue" => lambda {|n| @threshold_value = n.get_string_value() },
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
            ## Gets the operator property value. The built-in operator for the rule condition. The possible values are: greaterOrEqual, equal, greater, less, lessOrEqual, notEqual, unknownFutureValue.
            ## @return a device_management_operator_type
            ## 
            def operator
                return @operator
            end
            ## 
            ## Sets the operator property value. The built-in operator for the rule condition. The possible values are: greaterOrEqual, equal, greater, less, lessOrEqual, notEqual, unknownFutureValue.
            ## @param value Value to set for the operator property.
            ## @return a void
            ## 
            def operator=(value)
                @operator = value
            end
            ## 
            ## Gets the relationshipType property value. The relationship type.  Possible values are: and, or.
            ## @return a device_management_relationship_type
            ## 
            def relationship_type
                return @relationship_type
            end
            ## 
            ## Sets the relationshipType property value. The relationship type.  Possible values are: and, or.
            ## @param value Value to set for the relationshipType property.
            ## @return a void
            ## 
            def relationship_type=(value)
                @relationship_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("aggregation", @aggregation)
                writer.write_enum_value("conditionCategory", @condition_category)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("operator", @operator)
                writer.write_enum_value("relationshipType", @relationship_type)
                writer.write_string_value("thresholdValue", @threshold_value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the thresholdValue property value. The threshold value of the alert condition. The threshold value can be a number in string form or string like 'WestUS'.
            ## @return a string
            ## 
            def threshold_value
                return @threshold_value
            end
            ## 
            ## Sets the thresholdValue property value. The threshold value of the alert condition. The threshold value can be a number in string form or string like 'WestUS'.
            ## @param value Value to set for the thresholdValue property.
            ## @return a void
            ## 
            def threshold_value=(value)
                @threshold_value = value
            end
        end
    end
end
