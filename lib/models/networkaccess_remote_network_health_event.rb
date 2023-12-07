require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRemoteNetworkHealthEvent < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of BGP routes advertised through tunnel.
            @bgp_routes_advertised_count
            ## 
            # The time of the original event generation in UTC. Supports $filter (ge, le) and $orderby.
            @created_date_time
            ## 
            # The description of the event.
            @description
            ## 
            # The IP address of the destination.
            @destination_ip
            ## 
            # The number of bytes sent from the destination to the source.
            @received_bytes
            ## 
            # A unique identifier for each remoteNetwork site. Supports $filter (eq).
            @remote_network_id
            ## 
            # The number of bytes sent from the source to the destination for the connection or session.
            @sent_bytes
            ## 
            # The public IP address.
            @source_ip
            ## 
            # The status property
            @status
            ## 
            ## Gets the bgpRoutesAdvertisedCount property value. The number of BGP routes advertised through tunnel.
            ## @return a integer
            ## 
            def bgp_routes_advertised_count
                return @bgp_routes_advertised_count
            end
            ## 
            ## Sets the bgpRoutesAdvertisedCount property value. The number of BGP routes advertised through tunnel.
            ## @param value Value to set for the bgpRoutesAdvertisedCount property.
            ## @return a void
            ## 
            def bgp_routes_advertised_count=(value)
                @bgp_routes_advertised_count = value
            end
            ## 
            ## Instantiates a new networkaccessRemoteNetworkHealthEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The time of the original event generation in UTC. Supports $filter (ge, le) and $orderby.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time of the original event generation in UTC. Supports $filter (ge, le) and $orderby.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_remote_network_health_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRemoteNetworkHealthEvent.new
            end
            ## 
            ## Gets the description property value. The description of the event.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the event.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the destinationIp property value. The IP address of the destination.
            ## @return a string
            ## 
            def destination_ip
                return @destination_ip
            end
            ## 
            ## Sets the destinationIp property value. The IP address of the destination.
            ## @param value Value to set for the destinationIp property.
            ## @return a void
            ## 
            def destination_ip=(value)
                @destination_ip = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bgpRoutesAdvertisedCount" => lambda {|n| @bgp_routes_advertised_count = n.get_number_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "destinationIp" => lambda {|n| @destination_ip = n.get_string_value() },
                    "receivedBytes" => lambda {|n| @received_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "remoteNetworkId" => lambda {|n| @remote_network_id = n.get_string_value() },
                    "sentBytes" => lambda {|n| @sent_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sourceIp" => lambda {|n| @source_ip = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessRemoteNetworkStatus) },
                })
            end
            ## 
            ## Gets the receivedBytes property value. The number of bytes sent from the destination to the source.
            ## @return a int64
            ## 
            def received_bytes
                return @received_bytes
            end
            ## 
            ## Sets the receivedBytes property value. The number of bytes sent from the destination to the source.
            ## @param value Value to set for the receivedBytes property.
            ## @return a void
            ## 
            def received_bytes=(value)
                @received_bytes = value
            end
            ## 
            ## Gets the remoteNetworkId property value. A unique identifier for each remoteNetwork site. Supports $filter (eq).
            ## @return a string
            ## 
            def remote_network_id
                return @remote_network_id
            end
            ## 
            ## Sets the remoteNetworkId property value. A unique identifier for each remoteNetwork site. Supports $filter (eq).
            ## @param value Value to set for the remoteNetworkId property.
            ## @return a void
            ## 
            def remote_network_id=(value)
                @remote_network_id = value
            end
            ## 
            ## Gets the sentBytes property value. The number of bytes sent from the source to the destination for the connection or session.
            ## @return a int64
            ## 
            def sent_bytes
                return @sent_bytes
            end
            ## 
            ## Sets the sentBytes property value. The number of bytes sent from the source to the destination for the connection or session.
            ## @param value Value to set for the sentBytes property.
            ## @return a void
            ## 
            def sent_bytes=(value)
                @sent_bytes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("bgpRoutesAdvertisedCount", @bgp_routes_advertised_count)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("destinationIp", @destination_ip)
                writer.write_object_value("receivedBytes", @received_bytes)
                writer.write_string_value("remoteNetworkId", @remote_network_id)
                writer.write_object_value("sentBytes", @sent_bytes)
                writer.write_string_value("sourceIp", @source_ip)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the sourceIp property value. The public IP address.
            ## @return a string
            ## 
            def source_ip
                return @source_ip
            end
            ## 
            ## Sets the sourceIp property value. The public IP address.
            ## @param value Value to set for the sourceIp property.
            ## @return a void
            ## 
            def source_ip=(value)
                @source_ip = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a networkaccess_remote_network_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
