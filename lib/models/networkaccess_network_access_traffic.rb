require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessNetworkAccessTraffic
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents the version of the Global Secure Access client agent software. Supports $filter (eq) and $orderby.
            @agent_version
            ## 
            # Represents a unique identifier assigned to a connection. Supports $filter (eq) and $orderby.
            @connection_id
            ## 
            # Represents the date and time when a network access traffic log entry was created. Supports $filter (eq) and $orderby.
            @created_date_time
            ## 
            # Represents the Fully Qualified Domain Name (FQDN) of the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            @destination_f_q_d_n
            ## 
            # Represents the IP address of the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            @destination_ip
            ## 
            # Represents the network port number on the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            @destination_port
            ## 
            # Represents the category classification of a device within a network infrastructure. The possible values are: client, branch, unknownFutureValue. Supports $filter (eq) and $orderby.
            @device_category
            ## 
            # Represents a unique identifier assigned to a device within a network infrastructure. Supports $filter (eq) and $orderby.
            @device_id
            ## 
            # Represents the operating system installed on a device within a network infrastructure. Supports $filter (eq) and $orderby.
            @device_operating_system
            ## 
            # Represents the version or release number of the operating system installed on a device within a network infrastructure. Supports $filter (eq) and $orderby.
            @device_operating_system_version
            ## 
            # Represents the headers included in a network request or response. Supports $filter (eq) and $orderby.
            @headers
            ## 
            # Represents the networking protocol used for communication.The possible values are: ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII, unknownFutureValue. Supports $filter (eq) and $orderby.
            @network_protocol
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents a unique identifier assigned to a policy. Supports $filter (eq) and $orderby.
            @policy_id
            ## 
            # Represents a unique identifier assigned to a policy rule. Supports $filter (eq) and $orderby.
            @policy_rule_id
            ## 
            # Represents the total number of bytes received in a network communication or data transfer. Supports $filter (eq) and $orderby.
            @received_bytes
            ## 
            # Represents the total number of bytes sent in a network communication or data transfer. Supports $filter (eq) and $orderby.
            @sent_bytes
            ## 
            # Represents a unique identifier assigned to a session or connection within a network infrastructure. Supports $filter (eq) and $orderby.
            @session_id
            ## 
            # Represents the source IP address in a network communication. Supports $filter (eq) and $orderby.
            @source_ip
            ## 
            # Represents the network port number on the source host or device in a network communication. Supports $filter (eq) and $orderby.
            @source_port
            ## 
            # Represents a unique identifier assigned to a tenant within a network infrastructure. Supports $filter (eq) and $orderby.
            @tenant_id
            ## 
            # The trafficType property
            @traffic_type
            ## 
            # Represents a unique identifier assigned to a specific transaction or operation. Key. Supports $filter (eq) and $orderby.
            @transaction_id
            ## 
            # Represents the transport protocol used for communication.The possible values are: ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII, unknownFutureValue. Supports $filter (eq) and $orderby.
            @transport_protocol
            ## 
            # Represents a unique identifier assigned to a user. Supports $filter (eq) and $orderby.
            @user_id
            ## 
            # Represents the user principal name (UPN) associated with a user. Supports $filter (eq) and $orderby.
            @user_principal_name
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the agentVersion property value. Represents the version of the Global Secure Access client agent software. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def agent_version
                return @agent_version
            end
            ## 
            ## Sets the agentVersion property value. Represents the version of the Global Secure Access client agent software. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the agentVersion property.
            ## @return a void
            ## 
            def agent_version=(value)
                @agent_version = value
            end
            ## 
            ## Gets the connectionId property value. Represents a unique identifier assigned to a connection. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def connection_id
                return @connection_id
            end
            ## 
            ## Sets the connectionId property value. Represents a unique identifier assigned to a connection. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the connectionId property.
            ## @return a void
            ## 
            def connection_id=(value)
                @connection_id = value
            end
            ## 
            ## Instantiates a new networkaccessNetworkAccessTraffic and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. Represents the date and time when a network access traffic log entry was created. Supports $filter (eq) and $orderby.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Represents the date and time when a network access traffic log entry was created. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_network_access_traffic
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessNetworkAccessTraffic.new
            end
            ## 
            ## Gets the destinationFQDN property value. Represents the Fully Qualified Domain Name (FQDN) of the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def destination_f_q_d_n
                return @destination_f_q_d_n
            end
            ## 
            ## Sets the destinationFQDN property value. Represents the Fully Qualified Domain Name (FQDN) of the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the destinationFQDN property.
            ## @return a void
            ## 
            def destination_f_q_d_n=(value)
                @destination_f_q_d_n = value
            end
            ## 
            ## Gets the destinationIp property value. Represents the IP address of the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def destination_ip
                return @destination_ip
            end
            ## 
            ## Sets the destinationIp property value. Represents the IP address of the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the destinationIp property.
            ## @return a void
            ## 
            def destination_ip=(value)
                @destination_ip = value
            end
            ## 
            ## Gets the destinationPort property value. Represents the network port number on the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            ## @return a integer
            ## 
            def destination_port
                return @destination_port
            end
            ## 
            ## Sets the destinationPort property value. Represents the network port number on the destination host or server in a network communication. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the destinationPort property.
            ## @return a void
            ## 
            def destination_port=(value)
                @destination_port = value
            end
            ## 
            ## Gets the deviceCategory property value. Represents the category classification of a device within a network infrastructure. The possible values are: client, branch, unknownFutureValue. Supports $filter (eq) and $orderby.
            ## @return a networkaccess_device_category
            ## 
            def device_category
                return @device_category
            end
            ## 
            ## Sets the deviceCategory property value. Represents the category classification of a device within a network infrastructure. The possible values are: client, branch, unknownFutureValue. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the deviceCategory property.
            ## @return a void
            ## 
            def device_category=(value)
                @device_category = value
            end
            ## 
            ## Gets the deviceId property value. Represents a unique identifier assigned to a device within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. Represents a unique identifier assigned to a device within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceOperatingSystem property value. Represents the operating system installed on a device within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def device_operating_system
                return @device_operating_system
            end
            ## 
            ## Sets the deviceOperatingSystem property value. Represents the operating system installed on a device within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the deviceOperatingSystem property.
            ## @return a void
            ## 
            def device_operating_system=(value)
                @device_operating_system = value
            end
            ## 
            ## Gets the deviceOperatingSystemVersion property value. Represents the version or release number of the operating system installed on a device within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def device_operating_system_version
                return @device_operating_system_version
            end
            ## 
            ## Sets the deviceOperatingSystemVersion property value. Represents the version or release number of the operating system installed on a device within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the deviceOperatingSystemVersion property.
            ## @return a void
            ## 
            def device_operating_system_version=(value)
                @device_operating_system_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "agentVersion" => lambda {|n| @agent_version = n.get_string_value() },
                    "connectionId" => lambda {|n| @connection_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "destinationFQDN" => lambda {|n| @destination_f_q_d_n = n.get_string_value() },
                    "destinationIp" => lambda {|n| @destination_ip = n.get_string_value() },
                    "destinationPort" => lambda {|n| @destination_port = n.get_number_value() },
                    "deviceCategory" => lambda {|n| @device_category = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessDeviceCategory) },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceOperatingSystem" => lambda {|n| @device_operating_system = n.get_string_value() },
                    "deviceOperatingSystemVersion" => lambda {|n| @device_operating_system_version = n.get_string_value() },
                    "headers" => lambda {|n| @headers = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessHeaders.create_from_discriminator_value(pn) }) },
                    "networkProtocol" => lambda {|n| @network_protocol = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessNetworkingProtocol) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyId" => lambda {|n| @policy_id = n.get_string_value() },
                    "policyRuleId" => lambda {|n| @policy_rule_id = n.get_string_value() },
                    "receivedBytes" => lambda {|n| @received_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sentBytes" => lambda {|n| @sent_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sessionId" => lambda {|n| @session_id = n.get_string_value() },
                    "sourceIp" => lambda {|n| @source_ip = n.get_string_value() },
                    "sourcePort" => lambda {|n| @source_port = n.get_number_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "trafficType" => lambda {|n| @traffic_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessTrafficType) },
                    "transactionId" => lambda {|n| @transaction_id = n.get_string_value() },
                    "transportProtocol" => lambda {|n| @transport_protocol = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessNetworkingProtocol) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the headers property value. Represents the headers included in a network request or response. Supports $filter (eq) and $orderby.
            ## @return a networkaccess_headers
            ## 
            def headers
                return @headers
            end
            ## 
            ## Sets the headers property value. Represents the headers included in a network request or response. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the headers property.
            ## @return a void
            ## 
            def headers=(value)
                @headers = value
            end
            ## 
            ## Gets the networkProtocol property value. Represents the networking protocol used for communication.The possible values are: ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII, unknownFutureValue. Supports $filter (eq) and $orderby.
            ## @return a networkaccess_networking_protocol
            ## 
            def network_protocol
                return @network_protocol
            end
            ## 
            ## Sets the networkProtocol property value. Represents the networking protocol used for communication.The possible values are: ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII, unknownFutureValue. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the networkProtocol property.
            ## @return a void
            ## 
            def network_protocol=(value)
                @network_protocol = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the policyId property value. Represents a unique identifier assigned to a policy. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def policy_id
                return @policy_id
            end
            ## 
            ## Sets the policyId property value. Represents a unique identifier assigned to a policy. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the policyId property.
            ## @return a void
            ## 
            def policy_id=(value)
                @policy_id = value
            end
            ## 
            ## Gets the policyRuleId property value. Represents a unique identifier assigned to a policy rule. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def policy_rule_id
                return @policy_rule_id
            end
            ## 
            ## Sets the policyRuleId property value. Represents a unique identifier assigned to a policy rule. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the policyRuleId property.
            ## @return a void
            ## 
            def policy_rule_id=(value)
                @policy_rule_id = value
            end
            ## 
            ## Gets the receivedBytes property value. Represents the total number of bytes received in a network communication or data transfer. Supports $filter (eq) and $orderby.
            ## @return a int64
            ## 
            def received_bytes
                return @received_bytes
            end
            ## 
            ## Sets the receivedBytes property value. Represents the total number of bytes received in a network communication or data transfer. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the receivedBytes property.
            ## @return a void
            ## 
            def received_bytes=(value)
                @received_bytes = value
            end
            ## 
            ## Gets the sentBytes property value. Represents the total number of bytes sent in a network communication or data transfer. Supports $filter (eq) and $orderby.
            ## @return a int64
            ## 
            def sent_bytes
                return @sent_bytes
            end
            ## 
            ## Sets the sentBytes property value. Represents the total number of bytes sent in a network communication or data transfer. Supports $filter (eq) and $orderby.
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
                writer.write_string_value("agentVersion", @agent_version)
                writer.write_string_value("connectionId", @connection_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("destinationFQDN", @destination_f_q_d_n)
                writer.write_string_value("destinationIp", @destination_ip)
                writer.write_number_value("destinationPort", @destination_port)
                writer.write_enum_value("deviceCategory", @device_category)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceOperatingSystem", @device_operating_system)
                writer.write_string_value("deviceOperatingSystemVersion", @device_operating_system_version)
                writer.write_object_value("headers", @headers)
                writer.write_enum_value("networkProtocol", @network_protocol)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("policyId", @policy_id)
                writer.write_string_value("policyRuleId", @policy_rule_id)
                writer.write_object_value("receivedBytes", @received_bytes)
                writer.write_object_value("sentBytes", @sent_bytes)
                writer.write_string_value("sessionId", @session_id)
                writer.write_string_value("sourceIp", @source_ip)
                writer.write_number_value("sourcePort", @source_port)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_enum_value("trafficType", @traffic_type)
                writer.write_string_value("transactionId", @transaction_id)
                writer.write_enum_value("transportProtocol", @transport_protocol)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sessionId property value. Represents a unique identifier assigned to a session or connection within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def session_id
                return @session_id
            end
            ## 
            ## Sets the sessionId property value. Represents a unique identifier assigned to a session or connection within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the sessionId property.
            ## @return a void
            ## 
            def session_id=(value)
                @session_id = value
            end
            ## 
            ## Gets the sourceIp property value. Represents the source IP address in a network communication. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def source_ip
                return @source_ip
            end
            ## 
            ## Sets the sourceIp property value. Represents the source IP address in a network communication. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the sourceIp property.
            ## @return a void
            ## 
            def source_ip=(value)
                @source_ip = value
            end
            ## 
            ## Gets the sourcePort property value. Represents the network port number on the source host or device in a network communication. Supports $filter (eq) and $orderby.
            ## @return a integer
            ## 
            def source_port
                return @source_port
            end
            ## 
            ## Sets the sourcePort property value. Represents the network port number on the source host or device in a network communication. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the sourcePort property.
            ## @return a void
            ## 
            def source_port=(value)
                @source_port = value
            end
            ## 
            ## Gets the tenantId property value. Represents a unique identifier assigned to a tenant within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. Represents a unique identifier assigned to a tenant within a network infrastructure. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the trafficType property value. The trafficType property
            ## @return a networkaccess_traffic_type
            ## 
            def traffic_type
                return @traffic_type
            end
            ## 
            ## Sets the trafficType property value. The trafficType property
            ## @param value Value to set for the trafficType property.
            ## @return a void
            ## 
            def traffic_type=(value)
                @traffic_type = value
            end
            ## 
            ## Gets the transactionId property value. Represents a unique identifier assigned to a specific transaction or operation. Key. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def transaction_id
                return @transaction_id
            end
            ## 
            ## Sets the transactionId property value. Represents a unique identifier assigned to a specific transaction or operation. Key. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the transactionId property.
            ## @return a void
            ## 
            def transaction_id=(value)
                @transaction_id = value
            end
            ## 
            ## Gets the transportProtocol property value. Represents the transport protocol used for communication.The possible values are: ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII, unknownFutureValue. Supports $filter (eq) and $orderby.
            ## @return a networkaccess_networking_protocol
            ## 
            def transport_protocol
                return @transport_protocol
            end
            ## 
            ## Sets the transportProtocol property value. Represents the transport protocol used for communication.The possible values are: ip, icmp, igmp, ggp, ipv4, tcp, pup, udp, idp, ipv6, ipv6RoutingHeader, ipv6FragmentHeader, ipSecEncapsulatingSecurityPayload, ipSecAuthenticationHeader, icmpV6, ipv6NoNextHeader, ipv6DestinationOptions, nd, raw, ipx, spx, spxII, unknownFutureValue. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the transportProtocol property.
            ## @return a void
            ## 
            def transport_protocol=(value)
                @transport_protocol = value
            end
            ## 
            ## Gets the userId property value. Represents a unique identifier assigned to a user. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. Represents a unique identifier assigned to a user. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. Represents the user principal name (UPN) associated with a user. Supports $filter (eq) and $orderby.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. Represents the user principal name (UPN) associated with a user. Supports $filter (eq) and $orderby.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
