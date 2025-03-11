require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IpApplicationSegment < MicrosoftGraphBeta::Models::ApplicationSegment
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The on-premises nonweb application published through Microsoft Entra application proxy. Expanded by default and supports $expand.
            @application
            ## 
            # Either the IP address, IP range, or FQDN of the applicationSegment, with or without wildcards.
            @destination_host
            ## 
            # The possible values are: ipAddress, ipRange, ipRangeCidr, fqdn, dnsSuffix, unknownFutureValue.
            @destination_type
            ## 
            # Port supported for the application segment. DO NOT USE.
            @port
            ## 
            # List of ports supported for the application segment.
            @ports
            ## 
            # Indicates the protocol of the network traffic acquired for the application segment. The possible values are: tcp, udp, unknownFutureValue.
            @protocol
            ## 
            ## Gets the application property value. The on-premises nonweb application published through Microsoft Entra application proxy. Expanded by default and supports $expand.
            ## @return a application
            ## 
            def application
                return @application
            end
            ## 
            ## Sets the application property value. The on-premises nonweb application published through Microsoft Entra application proxy. Expanded by default and supports $expand.
            ## @param value Value to set for the application property.
            ## @return a void
            ## 
            def application=(value)
                @application = value
            end
            ## 
            ## Instantiates a new IpApplicationSegment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.ipApplicationSegment"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ip_application_segment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IpApplicationSegment.new
            end
            ## 
            ## Gets the destinationHost property value. Either the IP address, IP range, or FQDN of the applicationSegment, with or without wildcards.
            ## @return a string
            ## 
            def destination_host
                return @destination_host
            end
            ## 
            ## Sets the destinationHost property value. Either the IP address, IP range, or FQDN of the applicationSegment, with or without wildcards.
            ## @param value Value to set for the destinationHost property.
            ## @return a void
            ## 
            def destination_host=(value)
                @destination_host = value
            end
            ## 
            ## Gets the destinationType property value. The possible values are: ipAddress, ipRange, ipRangeCidr, fqdn, dnsSuffix, unknownFutureValue.
            ## @return a private_network_destination_type
            ## 
            def destination_type
                return @destination_type
            end
            ## 
            ## Sets the destinationType property value. The possible values are: ipAddress, ipRange, ipRangeCidr, fqdn, dnsSuffix, unknownFutureValue.
            ## @param value Value to set for the destinationType property.
            ## @return a void
            ## 
            def destination_type=(value)
                @destination_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "application" => lambda {|n| @application = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Application.create_from_discriminator_value(pn) }) },
                    "destinationHost" => lambda {|n| @destination_host = n.get_string_value() },
                    "destinationType" => lambda {|n| @destination_type = n.get_enum_value(MicrosoftGraphBeta::Models::PrivateNetworkDestinationType) },
                    "port" => lambda {|n| @port = n.get_number_value() },
                    "ports" => lambda {|n| @ports = n.get_collection_of_primitive_values(String) },
                    "protocol" => lambda {|n| @protocol = n.get_enum_values(MicrosoftGraphBeta::Models::PrivateNetworkProtocol) },
                })
            end
            ## 
            ## Gets the port property value. Port supported for the application segment. DO NOT USE.
            ## @return a integer
            ## 
            def port
                return @port
            end
            ## 
            ## Sets the port property value. Port supported for the application segment. DO NOT USE.
            ## @param value Value to set for the port property.
            ## @return a void
            ## 
            def port=(value)
                @port = value
            end
            ## 
            ## Gets the ports property value. List of ports supported for the application segment.
            ## @return a string
            ## 
            def ports
                return @ports
            end
            ## 
            ## Sets the ports property value. List of ports supported for the application segment.
            ## @param value Value to set for the ports property.
            ## @return a void
            ## 
            def ports=(value)
                @ports = value
            end
            ## 
            ## Gets the protocol property value. Indicates the protocol of the network traffic acquired for the application segment. The possible values are: tcp, udp, unknownFutureValue.
            ## @return a private_network_protocol
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. Indicates the protocol of the network traffic acquired for the application segment. The possible values are: tcp, udp, unknownFutureValue.
            ## @param value Value to set for the protocol property.
            ## @return a void
            ## 
            def protocol=(value)
                @protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("application", @application)
                writer.write_string_value("destinationHost", @destination_host)
                writer.write_enum_value("destinationType", @destination_type)
                writer.write_number_value("port", @port)
                writer.write_collection_of_primitive_values("ports", @ports)
                writer.write_enum_value("protocol", @protocol)
            end
        end
    end
end
