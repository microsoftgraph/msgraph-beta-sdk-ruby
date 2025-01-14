require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityEndpointDiscoveredCloudAppDetail < MicrosoftGraphBeta::Models::SecurityDiscoveredCloudAppDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of devices that accessed the discovered app.
            @device_count
            ## 
            # Represents the devices that access the discovered apps.
            @devices
            ## 
            ## Instantiates a new SecurityEndpointDiscoveredCloudAppDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_endpoint_discovered_cloud_app_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityEndpointDiscoveredCloudAppDetail.new
            end
            ## 
            ## Gets the deviceCount property value. The number of devices that accessed the discovered app.
            ## @return a int64
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. The number of devices that accessed the discovered app.
            ## @param value Value to set for the deviceCount property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## Gets the devices property value. Represents the devices that access the discovered apps.
            ## @return a security_discovered_cloud_app_device
            ## 
            def devices
                return @devices
            end
            ## 
            ## Sets the devices property value. Represents the devices that access the discovered apps.
            ## @param value Value to set for the devices property.
            ## @return a void
            ## 
            def devices=(value)
                @devices = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "devices" => lambda {|n| @devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDiscoveredCloudAppDevice.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("deviceCount", @device_count)
                writer.write_collection_of_object_values("devices", @devices)
            end
        end
    end
end
