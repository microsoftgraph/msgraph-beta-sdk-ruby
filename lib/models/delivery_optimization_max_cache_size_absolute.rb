require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeliveryOptimizationMaxCacheSizeAbsolute < MicrosoftGraphBeta::Models::DeliveryOptimizationMaxCacheSize
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the maximum size in GB of Delivery Optimization cache. Valid values 0 to 4294967295
            @maximum_cache_size_in_gigabytes
            ## 
            ## Instantiates a new DeliveryOptimizationMaxCacheSizeAbsolute and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deliveryOptimizationMaxCacheSizeAbsolute"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a delivery_optimization_max_cache_size_absolute
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeliveryOptimizationMaxCacheSizeAbsolute.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "maximumCacheSizeInGigabytes" => lambda {|n| @maximum_cache_size_in_gigabytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the maximumCacheSizeInGigabytes property value. Specifies the maximum size in GB of Delivery Optimization cache. Valid values 0 to 4294967295
            ## @return a int64
            ## 
            def maximum_cache_size_in_gigabytes
                return @maximum_cache_size_in_gigabytes
            end
            ## 
            ## Sets the maximumCacheSizeInGigabytes property value. Specifies the maximum size in GB of Delivery Optimization cache. Valid values 0 to 4294967295
            ## @param value Value to set for the maximum_cache_size_in_gigabytes property.
            ## @return a void
            ## 
            def maximum_cache_size_in_gigabytes=(value)
                @maximum_cache_size_in_gigabytes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("maximumCacheSizeInGigabytes", @maximum_cache_size_in_gigabytes)
            end
        end
    end
end
