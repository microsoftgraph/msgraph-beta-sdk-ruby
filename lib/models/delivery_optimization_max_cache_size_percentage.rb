require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeliveryOptimizationMaxCacheSizePercentage < MicrosoftGraphBeta::Models::DeliveryOptimizationMaxCacheSize
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100). Valid values 1 to 100
        @maximum_cache_size_percentage
        ## 
        ## Instantiates a new DeliveryOptimizationMaxCacheSizePercentage and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deliveryOptimizationMaxCacheSizePercentage"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a delivery_optimization_max_cache_size_percentage
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeliveryOptimizationMaxCacheSizePercentage.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "maximumCacheSizePercentage" => lambda {|n| @maximum_cache_size_percentage = n.get_number_value() },
            })
        end
        ## 
        ## Gets the maximumCacheSizePercentage property value. Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100). Valid values 1 to 100
        ## @return a integer
        ## 
        def maximum_cache_size_percentage
            return @maximum_cache_size_percentage
        end
        ## 
        ## Sets the maximumCacheSizePercentage property value. Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100). Valid values 1 to 100
        ## @param value Value to set for the maximumCacheSizePercentage property.
        ## @return a void
        ## 
        def maximum_cache_size_percentage=(value)
            @maximum_cache_size_percentage = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("maximumCacheSizePercentage", @maximum_cache_size_percentage)
        end
    end
end
