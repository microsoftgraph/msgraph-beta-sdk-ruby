require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkInterface
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Description of the NIC (e.g. Ethernet adapter, Wireless LAN adapter Local Area Connection, and so on).
            @description
            ## 
            # Last IPv4 address associated with this NIC.
            @ip_v4_address
            ## 
            # Last Public (aka global) IPv6 address associated with this NIC.
            @ip_v6_address
            ## 
            # Last local (link-local or site-local) IPv6 address associated with this NIC.
            @local_ip_v6_address
            ## 
            # MAC address of the NIC on this host.
            @mac_address
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
            ## Instantiates a new NetworkInterface and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a network_interface
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkInterface.new
            end
            ## 
            ## Gets the description property value. Description of the NIC (e.g. Ethernet adapter, Wireless LAN adapter Local Area Connection, and so on).
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the NIC (e.g. Ethernet adapter, Wireless LAN adapter Local Area Connection, and so on).
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "ipV4Address" => lambda {|n| @ip_v4_address = n.get_string_value() },
                    "ipV6Address" => lambda {|n| @ip_v6_address = n.get_string_value() },
                    "localIpV6Address" => lambda {|n| @local_ip_v6_address = n.get_string_value() },
                    "macAddress" => lambda {|n| @mac_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the ipV4Address property value. Last IPv4 address associated with this NIC.
            ## @return a string
            ## 
            def ip_v4_address
                return @ip_v4_address
            end
            ## 
            ## Sets the ipV4Address property value. Last IPv4 address associated with this NIC.
            ## @param value Value to set for the ip_v4_address property.
            ## @return a void
            ## 
            def ip_v4_address=(value)
                @ip_v4_address = value
            end
            ## 
            ## Gets the ipV6Address property value. Last Public (aka global) IPv6 address associated with this NIC.
            ## @return a string
            ## 
            def ip_v6_address
                return @ip_v6_address
            end
            ## 
            ## Sets the ipV6Address property value. Last Public (aka global) IPv6 address associated with this NIC.
            ## @param value Value to set for the ip_v6_address property.
            ## @return a void
            ## 
            def ip_v6_address=(value)
                @ip_v6_address = value
            end
            ## 
            ## Gets the localIpV6Address property value. Last local (link-local or site-local) IPv6 address associated with this NIC.
            ## @return a string
            ## 
            def local_ip_v6_address
                return @local_ip_v6_address
            end
            ## 
            ## Sets the localIpV6Address property value. Last local (link-local or site-local) IPv6 address associated with this NIC.
            ## @param value Value to set for the local_ip_v6_address property.
            ## @return a void
            ## 
            def local_ip_v6_address=(value)
                @local_ip_v6_address = value
            end
            ## 
            ## Gets the macAddress property value. MAC address of the NIC on this host.
            ## @return a string
            ## 
            def mac_address
                return @mac_address
            end
            ## 
            ## Sets the macAddress property value. MAC address of the NIC on this host.
            ## @param value Value to set for the mac_address property.
            ## @return a void
            ## 
            def mac_address=(value)
                @mac_address = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_string_value("description", @description)
                writer.write_string_value("ipV4Address", @ip_v4_address)
                writer.write_string_value("ipV6Address", @ip_v6_address)
                writer.write_string_value("localIpV6Address", @local_ip_v6_address)
                writer.write_string_value("macAddress", @mac_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
