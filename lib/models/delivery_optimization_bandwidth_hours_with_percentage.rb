require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeliveryOptimizationBandwidthHoursWithPercentage < MicrosoftGraphBeta::Models::DeliveryOptimizationBandwidth
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Background download percentage hours.
            @bandwidth_background_percentage_hours
            ## 
            # Foreground download percentage hours.
            @bandwidth_foreground_percentage_hours
            ## 
            ## Gets the bandwidthBackgroundPercentageHours property value. Background download percentage hours.
            ## @return a delivery_optimization_bandwidth_business_hours_limit
            ## 
            def bandwidth_background_percentage_hours
                return @bandwidth_background_percentage_hours
            end
            ## 
            ## Sets the bandwidthBackgroundPercentageHours property value. Background download percentage hours.
            ## @param value Value to set for the bandwidth_background_percentage_hours property.
            ## @return a void
            ## 
            def bandwidth_background_percentage_hours=(value)
                @bandwidth_background_percentage_hours = value
            end
            ## 
            ## Gets the bandwidthForegroundPercentageHours property value. Foreground download percentage hours.
            ## @return a delivery_optimization_bandwidth_business_hours_limit
            ## 
            def bandwidth_foreground_percentage_hours
                return @bandwidth_foreground_percentage_hours
            end
            ## 
            ## Sets the bandwidthForegroundPercentageHours property value. Foreground download percentage hours.
            ## @param value Value to set for the bandwidth_foreground_percentage_hours property.
            ## @return a void
            ## 
            def bandwidth_foreground_percentage_hours=(value)
                @bandwidth_foreground_percentage_hours = value
            end
            ## 
            ## Instantiates a new DeliveryOptimizationBandwidthHoursWithPercentage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deliveryOptimizationBandwidthHoursWithPercentage"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a delivery_optimization_bandwidth_hours_with_percentage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeliveryOptimizationBandwidthHoursWithPercentage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bandwidthBackgroundPercentageHours" => lambda {|n| @bandwidth_background_percentage_hours = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeliveryOptimizationBandwidthBusinessHoursLimit.create_from_discriminator_value(pn) }) },
                    "bandwidthForegroundPercentageHours" => lambda {|n| @bandwidth_foreground_percentage_hours = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeliveryOptimizationBandwidthBusinessHoursLimit.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("bandwidthBackgroundPercentageHours", @bandwidth_background_percentage_hours)
                writer.write_object_value("bandwidthForegroundPercentageHours", @bandwidth_foreground_percentage_hours)
            end
        end
    end
end
