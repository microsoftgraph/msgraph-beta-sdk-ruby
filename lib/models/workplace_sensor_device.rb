require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkplaceSensorDevice < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description of the device.
            @description
            ## 
            # The user-defined unique identifier of the device provided at the time of creation.
            @device_id
            ## 
            # The display name of the device.
            @display_name
            ## 
            # The IPv4 address of the device.
            @ip_v4_address
            ## 
            # The IPv6 address of the device.
            @ip_v6_address
            ## 
            # The MAC address of the device.
            @mac_address
            ## 
            # The manufacturer of the device.
            @manufacturer
            ## 
            # The unique identifier of the place where the device is located. If the device is installed in a room equipped with a mailbox, this property should match the ExternalDirectoryObjectId or Microsoft Entra object ID of the room mailbox.
            @place_id
            ## 
            # A list of sensors associated with the device that collect and report data about physical or environmental conditions, such as occupancy, people count, inferred occupancy, temperature, and more.
            @sensors
            ## 
            # A list of custom tags associated with the device.
            @tags
            ## 
            ## Instantiates a new WorkplaceSensorDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a workplace_sensor_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkplaceSensorDevice.new
            end
            ## 
            ## Gets the description property value. The description of the device.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the device.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceId property value. The user-defined unique identifier of the device provided at the time of creation.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The user-defined unique identifier of the device provided at the time of creation.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the displayName property value. The display name of the device.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the device.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "ipV4Address" => lambda {|n| @ip_v4_address = n.get_string_value() },
                    "ipV6Address" => lambda {|n| @ip_v6_address = n.get_string_value() },
                    "macAddress" => lambda {|n| @mac_address = n.get_string_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "placeId" => lambda {|n| @place_id = n.get_string_value() },
                    "sensors" => lambda {|n| @sensors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WorkplaceSensor.create_from_discriminator_value(pn) }) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the ipV4Address property value. The IPv4 address of the device.
            ## @return a string
            ## 
            def ip_v4_address
                return @ip_v4_address
            end
            ## 
            ## Sets the ipV4Address property value. The IPv4 address of the device.
            ## @param value Value to set for the ipV4Address property.
            ## @return a void
            ## 
            def ip_v4_address=(value)
                @ip_v4_address = value
            end
            ## 
            ## Gets the ipV6Address property value. The IPv6 address of the device.
            ## @return a string
            ## 
            def ip_v6_address
                return @ip_v6_address
            end
            ## 
            ## Sets the ipV6Address property value. The IPv6 address of the device.
            ## @param value Value to set for the ipV6Address property.
            ## @return a void
            ## 
            def ip_v6_address=(value)
                @ip_v6_address = value
            end
            ## 
            ## Gets the macAddress property value. The MAC address of the device.
            ## @return a string
            ## 
            def mac_address
                return @mac_address
            end
            ## 
            ## Sets the macAddress property value. The MAC address of the device.
            ## @param value Value to set for the macAddress property.
            ## @return a void
            ## 
            def mac_address=(value)
                @mac_address = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer of the device.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer of the device.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the placeId property value. The unique identifier of the place where the device is located. If the device is installed in a room equipped with a mailbox, this property should match the ExternalDirectoryObjectId or Microsoft Entra object ID of the room mailbox.
            ## @return a string
            ## 
            def place_id
                return @place_id
            end
            ## 
            ## Sets the placeId property value. The unique identifier of the place where the device is located. If the device is installed in a room equipped with a mailbox, this property should match the ExternalDirectoryObjectId or Microsoft Entra object ID of the room mailbox.
            ## @param value Value to set for the placeId property.
            ## @return a void
            ## 
            def place_id=(value)
                @place_id = value
            end
            ## 
            ## Gets the sensors property value. A list of sensors associated with the device that collect and report data about physical or environmental conditions, such as occupancy, people count, inferred occupancy, temperature, and more.
            ## @return a workplace_sensor
            ## 
            def sensors
                return @sensors
            end
            ## 
            ## Sets the sensors property value. A list of sensors associated with the device that collect and report data about physical or environmental conditions, such as occupancy, people count, inferred occupancy, temperature, and more.
            ## @param value Value to set for the sensors property.
            ## @return a void
            ## 
            def sensors=(value)
                @sensors = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("ipV4Address", @ip_v4_address)
                writer.write_string_value("ipV6Address", @ip_v6_address)
                writer.write_string_value("macAddress", @mac_address)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("placeId", @place_id)
                writer.write_collection_of_object_values("sensors", @sensors)
                writer.write_collection_of_primitive_values("tags", @tags)
            end
            ## 
            ## Gets the tags property value. A list of custom tags associated with the device.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. A list of custom tags associated with the device.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
        end
    end
end
