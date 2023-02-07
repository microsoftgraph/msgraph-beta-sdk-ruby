require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeliveryOptimizationBandwidthAbsolute < MicrosoftGraphBeta::Models::DeliveryOptimizationBandwidth
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies the maximum download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization. Valid values 0 to 4294967295
        @maximum_download_bandwidth_in_kilobytes_per_second
        ## 
        # Specifies the maximum upload bandwidth in KiloBytes/second that a device will use across all concurrent upload activity using Delivery Optimization (0-4000000). Valid values 0 to 4000000
        @maximum_upload_bandwidth_in_kilobytes_per_second
        ## 
        ## Instantiates a new DeliveryOptimizationBandwidthAbsolute and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deliveryOptimizationBandwidthAbsolute"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a delivery_optimization_bandwidth_absolute
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeliveryOptimizationBandwidthAbsolute.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "maximumDownloadBandwidthInKilobytesPerSecond" => lambda {|n| @maximum_download_bandwidth_in_kilobytes_per_second = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "maximumUploadBandwidthInKilobytesPerSecond" => lambda {|n| @maximum_upload_bandwidth_in_kilobytes_per_second = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the maximumDownloadBandwidthInKilobytesPerSecond property value. Specifies the maximum download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization. Valid values 0 to 4294967295
        ## @return a int64
        ## 
        def maximum_download_bandwidth_in_kilobytes_per_second
            return @maximum_download_bandwidth_in_kilobytes_per_second
        end
        ## 
        ## Sets the maximumDownloadBandwidthInKilobytesPerSecond property value. Specifies the maximum download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization. Valid values 0 to 4294967295
        ## @param value Value to set for the maximum_download_bandwidth_in_kilobytes_per_second property.
        ## @return a void
        ## 
        def maximum_download_bandwidth_in_kilobytes_per_second=(value)
            @maximum_download_bandwidth_in_kilobytes_per_second = value
        end
        ## 
        ## Gets the maximumUploadBandwidthInKilobytesPerSecond property value. Specifies the maximum upload bandwidth in KiloBytes/second that a device will use across all concurrent upload activity using Delivery Optimization (0-4000000). Valid values 0 to 4000000
        ## @return a int64
        ## 
        def maximum_upload_bandwidth_in_kilobytes_per_second
            return @maximum_upload_bandwidth_in_kilobytes_per_second
        end
        ## 
        ## Sets the maximumUploadBandwidthInKilobytesPerSecond property value. Specifies the maximum upload bandwidth in KiloBytes/second that a device will use across all concurrent upload activity using Delivery Optimization (0-4000000). Valid values 0 to 4000000
        ## @param value Value to set for the maximum_upload_bandwidth_in_kilobytes_per_second property.
        ## @return a void
        ## 
        def maximum_upload_bandwidth_in_kilobytes_per_second=(value)
            @maximum_upload_bandwidth_in_kilobytes_per_second = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("maximumDownloadBandwidthInKilobytesPerSecond", @maximum_download_bandwidth_in_kilobytes_per_second)
            writer.write_object_value("maximumUploadBandwidthInKilobytesPerSecond", @maximum_upload_bandwidth_in_kilobytes_per_second)
        end
    end
end
