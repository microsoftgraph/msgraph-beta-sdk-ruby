require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeliveryOptimizationBandwidthPercentage < MicrosoftGraphBeta::Models::DeliveryOptimizationBandwidth
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth (0-100). Valid values 0 to 100
            @maximum_background_bandwidth_percentage
            ## 
            # Specifies the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth (0-100). Valid values 0 to 100
            @maximum_foreground_bandwidth_percentage
            ## 
            ## Instantiates a new DeliveryOptimizationBandwidthPercentage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deliveryOptimizationBandwidthPercentage"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a delivery_optimization_bandwidth_percentage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeliveryOptimizationBandwidthPercentage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "maximumBackgroundBandwidthPercentage" => lambda {|n| @maximum_background_bandwidth_percentage = n.get_number_value() },
                    "maximumForegroundBandwidthPercentage" => lambda {|n| @maximum_foreground_bandwidth_percentage = n.get_number_value() },
                })
            end
            ## 
            ## Gets the maximumBackgroundBandwidthPercentage property value. Specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth (0-100). Valid values 0 to 100
            ## @return a integer
            ## 
            def maximum_background_bandwidth_percentage
                return @maximum_background_bandwidth_percentage
            end
            ## 
            ## Sets the maximumBackgroundBandwidthPercentage property value. Specifies the maximum background download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth (0-100). Valid values 0 to 100
            ## @param value Value to set for the maximum_background_bandwidth_percentage property.
            ## @return a void
            ## 
            def maximum_background_bandwidth_percentage=(value)
                @maximum_background_bandwidth_percentage = value
            end
            ## 
            ## Gets the maximumForegroundBandwidthPercentage property value. Specifies the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth (0-100). Valid values 0 to 100
            ## @return a integer
            ## 
            def maximum_foreground_bandwidth_percentage
                return @maximum_foreground_bandwidth_percentage
            end
            ## 
            ## Sets the maximumForegroundBandwidthPercentage property value. Specifies the maximum foreground download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth (0-100). Valid values 0 to 100
            ## @param value Value to set for the maximum_foreground_bandwidth_percentage property.
            ## @return a void
            ## 
            def maximum_foreground_bandwidth_percentage=(value)
                @maximum_foreground_bandwidth_percentage = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("maximumBackgroundBandwidthPercentage", @maximum_background_bandwidth_percentage)
                writer.write_number_value("maximumForegroundBandwidthPercentage", @maximum_foreground_bandwidth_percentage)
            end
        end
    end
end
