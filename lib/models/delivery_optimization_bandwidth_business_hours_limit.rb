require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Bandwidth business hours and percentages type
    class DeliveryOptimizationBandwidthBusinessHoursLimit
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Specifies the beginning of business hours using a 24-hour clock (0-23). Valid values 0 to 23
        @bandwidth_begin_business_hours
        ## 
        # Specifies the end of business hours using a 24-hour clock (0-23). Valid values 0 to 23
        @bandwidth_end_business_hours
        ## 
        # Specifies the percentage of bandwidth to limit during business hours (0-100). Valid values 0 to 100
        @bandwidth_percentage_during_business_hours
        ## 
        # Specifies the percentage of bandwidth to limit outsidse business hours (0-100). Valid values 0 to 100
        @bandwidth_percentage_outside_business_hours
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
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the bandwidthBeginBusinessHours property value. Specifies the beginning of business hours using a 24-hour clock (0-23). Valid values 0 to 23
        ## @return a integer
        ## 
        def bandwidth_begin_business_hours
            return @bandwidth_begin_business_hours
        end
        ## 
        ## Sets the bandwidthBeginBusinessHours property value. Specifies the beginning of business hours using a 24-hour clock (0-23). Valid values 0 to 23
        ## @param value Value to set for the bandwidthBeginBusinessHours property.
        ## @return a void
        ## 
        def bandwidth_begin_business_hours=(value)
            @bandwidth_begin_business_hours = value
        end
        ## 
        ## Gets the bandwidthEndBusinessHours property value. Specifies the end of business hours using a 24-hour clock (0-23). Valid values 0 to 23
        ## @return a integer
        ## 
        def bandwidth_end_business_hours
            return @bandwidth_end_business_hours
        end
        ## 
        ## Sets the bandwidthEndBusinessHours property value. Specifies the end of business hours using a 24-hour clock (0-23). Valid values 0 to 23
        ## @param value Value to set for the bandwidthEndBusinessHours property.
        ## @return a void
        ## 
        def bandwidth_end_business_hours=(value)
            @bandwidth_end_business_hours = value
        end
        ## 
        ## Gets the bandwidthPercentageDuringBusinessHours property value. Specifies the percentage of bandwidth to limit during business hours (0-100). Valid values 0 to 100
        ## @return a integer
        ## 
        def bandwidth_percentage_during_business_hours
            return @bandwidth_percentage_during_business_hours
        end
        ## 
        ## Sets the bandwidthPercentageDuringBusinessHours property value. Specifies the percentage of bandwidth to limit during business hours (0-100). Valid values 0 to 100
        ## @param value Value to set for the bandwidthPercentageDuringBusinessHours property.
        ## @return a void
        ## 
        def bandwidth_percentage_during_business_hours=(value)
            @bandwidth_percentage_during_business_hours = value
        end
        ## 
        ## Gets the bandwidthPercentageOutsideBusinessHours property value. Specifies the percentage of bandwidth to limit outsidse business hours (0-100). Valid values 0 to 100
        ## @return a integer
        ## 
        def bandwidth_percentage_outside_business_hours
            return @bandwidth_percentage_outside_business_hours
        end
        ## 
        ## Sets the bandwidthPercentageOutsideBusinessHours property value. Specifies the percentage of bandwidth to limit outsidse business hours (0-100). Valid values 0 to 100
        ## @param value Value to set for the bandwidthPercentageOutsideBusinessHours property.
        ## @return a void
        ## 
        def bandwidth_percentage_outside_business_hours=(value)
            @bandwidth_percentage_outside_business_hours = value
        end
        ## 
        ## Instantiates a new deliveryOptimizationBandwidthBusinessHoursLimit and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a delivery_optimization_bandwidth_business_hours_limit
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeliveryOptimizationBandwidthBusinessHoursLimit.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "bandwidthBeginBusinessHours" => lambda {|n| @bandwidth_begin_business_hours = n.get_number_value() },
                "bandwidthEndBusinessHours" => lambda {|n| @bandwidth_end_business_hours = n.get_number_value() },
                "bandwidthPercentageDuringBusinessHours" => lambda {|n| @bandwidth_percentage_during_business_hours = n.get_number_value() },
                "bandwidthPercentageOutsideBusinessHours" => lambda {|n| @bandwidth_percentage_outside_business_hours = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_number_value("bandwidthBeginBusinessHours", @bandwidth_begin_business_hours)
            writer.write_number_value("bandwidthEndBusinessHours", @bandwidth_end_business_hours)
            writer.write_number_value("bandwidthPercentageDuringBusinessHours", @bandwidth_percentage_during_business_hours)
            writer.write_number_value("bandwidthPercentageOutsideBusinessHours", @bandwidth_percentage_outside_business_hours)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
