require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class NetworkAccessTraffic
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The agentVersion property
                @agent_version
                ## 
                # The connectionId property
                @connection_id
                ## 
                # The createdDateTime property
                @created_date_time
                ## 
                # The destinationFQDN property
                @destination_f_q_d_n
                ## 
                # The destinationIp property
                @destination_ip
                ## 
                # The destinationPort property
                @destination_port
                ## 
                # The deviceCategory property
                @device_category
                ## 
                # The deviceId property
                @device_id
                ## 
                # The deviceOperatingSystem property
                @device_operating_system
                ## 
                # The deviceOperatingSystemVersion property
                @device_operating_system_version
                ## 
                # The headers property
                @headers
                ## 
                # The networkProtocol property
                @network_protocol
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The policyId property
                @policy_id
                ## 
                # The policyRuleId property
                @policy_rule_id
                ## 
                # The receivedBytes property
                @received_bytes
                ## 
                # The sentBytes property
                @sent_bytes
                ## 
                # The sessionId property
                @session_id
                ## 
                # The sourceIp property
                @source_ip
                ## 
                # The sourcePort property
                @source_port
                ## 
                # The tenantId property
                @tenant_id
                ## 
                # The trafficType property
                @traffic_type
                ## 
                # The transactionId property
                @transaction_id
                ## 
                # The transportProtocol property
                @transport_protocol
                ## 
                # The userId property
                @user_id
                ## 
                # The userPrincipalName property
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
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the agentVersion property value. The agentVersion property
                ## @return a string
                ## 
                def agent_version
                    return @agent_version
                end
                ## 
                ## Sets the agentVersion property value. The agentVersion property
                ## @param value Value to set for the agent_version property.
                ## @return a void
                ## 
                def agent_version=(value)
                    @agent_version = value
                end
                ## 
                ## Gets the connectionId property value. The connectionId property
                ## @return a string
                ## 
                def connection_id
                    return @connection_id
                end
                ## 
                ## Sets the connectionId property value. The connectionId property
                ## @param value Value to set for the connection_id property.
                ## @return a void
                ## 
                def connection_id=(value)
                    @connection_id = value
                end
                ## 
                ## Instantiates a new NetworkAccessTraffic and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the createdDateTime property value. The createdDateTime property
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The createdDateTime property
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a network_access_traffic
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return NetworkAccessTraffic.new
                end
                ## 
                ## Gets the destinationFQDN property value. The destinationFQDN property
                ## @return a string
                ## 
                def destination_f_q_d_n
                    return @destination_f_q_d_n
                end
                ## 
                ## Sets the destinationFQDN property value. The destinationFQDN property
                ## @param value Value to set for the destination_f_q_d_n property.
                ## @return a void
                ## 
                def destination_f_q_d_n=(value)
                    @destination_f_q_d_n = value
                end
                ## 
                ## Gets the destinationIp property value. The destinationIp property
                ## @return a string
                ## 
                def destination_ip
                    return @destination_ip
                end
                ## 
                ## Sets the destinationIp property value. The destinationIp property
                ## @param value Value to set for the destination_ip property.
                ## @return a void
                ## 
                def destination_ip=(value)
                    @destination_ip = value
                end
                ## 
                ## Gets the destinationPort property value. The destinationPort property
                ## @return a integer
                ## 
                def destination_port
                    return @destination_port
                end
                ## 
                ## Sets the destinationPort property value. The destinationPort property
                ## @param value Value to set for the destination_port property.
                ## @return a void
                ## 
                def destination_port=(value)
                    @destination_port = value
                end
                ## 
                ## Gets the deviceCategory property value. The deviceCategory property
                ## @return a device_category
                ## 
                def device_category
                    return @device_category
                end
                ## 
                ## Sets the deviceCategory property value. The deviceCategory property
                ## @param value Value to set for the device_category property.
                ## @return a void
                ## 
                def device_category=(value)
                    @device_category = value
                end
                ## 
                ## Gets the deviceId property value. The deviceId property
                ## @return a string
                ## 
                def device_id
                    return @device_id
                end
                ## 
                ## Sets the deviceId property value. The deviceId property
                ## @param value Value to set for the device_id property.
                ## @return a void
                ## 
                def device_id=(value)
                    @device_id = value
                end
                ## 
                ## Gets the deviceOperatingSystem property value. The deviceOperatingSystem property
                ## @return a string
                ## 
                def device_operating_system
                    return @device_operating_system
                end
                ## 
                ## Sets the deviceOperatingSystem property value. The deviceOperatingSystem property
                ## @param value Value to set for the device_operating_system property.
                ## @return a void
                ## 
                def device_operating_system=(value)
                    @device_operating_system = value
                end
                ## 
                ## Gets the deviceOperatingSystemVersion property value. The deviceOperatingSystemVersion property
                ## @return a string
                ## 
                def device_operating_system_version
                    return @device_operating_system_version
                end
                ## 
                ## Sets the deviceOperatingSystemVersion property value. The deviceOperatingSystemVersion property
                ## @param value Value to set for the device_operating_system_version property.
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
                        "deviceCategory" => lambda {|n| @device_category = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::DeviceCategory) },
                        "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                        "deviceOperatingSystem" => lambda {|n| @device_operating_system = n.get_string_value() },
                        "deviceOperatingSystemVersion" => lambda {|n| @device_operating_system_version = n.get_string_value() },
                        "headers" => lambda {|n| @headers = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::Headers.create_from_discriminator_value(pn) }) },
                        "networkProtocol" => lambda {|n| @network_protocol = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::NetworkingProtocol) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "policyId" => lambda {|n| @policy_id = n.get_string_value() },
                        "policyRuleId" => lambda {|n| @policy_rule_id = n.get_string_value() },
                        "receivedBytes" => lambda {|n| @received_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "sentBytes" => lambda {|n| @sent_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "sessionId" => lambda {|n| @session_id = n.get_string_value() },
                        "sourceIp" => lambda {|n| @source_ip = n.get_string_value() },
                        "sourcePort" => lambda {|n| @source_port = n.get_number_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                        "trafficType" => lambda {|n| @traffic_type = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::TrafficType) },
                        "transactionId" => lambda {|n| @transaction_id = n.get_string_value() },
                        "transportProtocol" => lambda {|n| @transport_protocol = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::NetworkingProtocol) },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                        "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the headers property value. The headers property
                ## @return a headers
                ## 
                def headers
                    return @headers
                end
                ## 
                ## Sets the headers property value. The headers property
                ## @param value Value to set for the headers property.
                ## @return a void
                ## 
                def headers=(value)
                    @headers = value
                end
                ## 
                ## Gets the networkProtocol property value. The networkProtocol property
                ## @return a networking_protocol
                ## 
                def network_protocol
                    return @network_protocol
                end
                ## 
                ## Sets the networkProtocol property value. The networkProtocol property
                ## @param value Value to set for the network_protocol property.
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
                ## @param value Value to set for the odata_type property.
                ## @return a void
                ## 
                def odata_type=(value)
                    @odata_type = value
                end
                ## 
                ## Gets the policyId property value. The policyId property
                ## @return a string
                ## 
                def policy_id
                    return @policy_id
                end
                ## 
                ## Sets the policyId property value. The policyId property
                ## @param value Value to set for the policy_id property.
                ## @return a void
                ## 
                def policy_id=(value)
                    @policy_id = value
                end
                ## 
                ## Gets the policyRuleId property value. The policyRuleId property
                ## @return a string
                ## 
                def policy_rule_id
                    return @policy_rule_id
                end
                ## 
                ## Sets the policyRuleId property value. The policyRuleId property
                ## @param value Value to set for the policy_rule_id property.
                ## @return a void
                ## 
                def policy_rule_id=(value)
                    @policy_rule_id = value
                end
                ## 
                ## Gets the receivedBytes property value. The receivedBytes property
                ## @return a int64
                ## 
                def received_bytes
                    return @received_bytes
                end
                ## 
                ## Sets the receivedBytes property value. The receivedBytes property
                ## @param value Value to set for the received_bytes property.
                ## @return a void
                ## 
                def received_bytes=(value)
                    @received_bytes = value
                end
                ## 
                ## Gets the sentBytes property value. The sentBytes property
                ## @return a int64
                ## 
                def sent_bytes
                    return @sent_bytes
                end
                ## 
                ## Sets the sentBytes property value. The sentBytes property
                ## @param value Value to set for the sent_bytes property.
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
                ## Gets the sessionId property value. The sessionId property
                ## @return a string
                ## 
                def session_id
                    return @session_id
                end
                ## 
                ## Sets the sessionId property value. The sessionId property
                ## @param value Value to set for the session_id property.
                ## @return a void
                ## 
                def session_id=(value)
                    @session_id = value
                end
                ## 
                ## Gets the sourceIp property value. The sourceIp property
                ## @return a string
                ## 
                def source_ip
                    return @source_ip
                end
                ## 
                ## Sets the sourceIp property value. The sourceIp property
                ## @param value Value to set for the source_ip property.
                ## @return a void
                ## 
                def source_ip=(value)
                    @source_ip = value
                end
                ## 
                ## Gets the sourcePort property value. The sourcePort property
                ## @return a integer
                ## 
                def source_port
                    return @source_port
                end
                ## 
                ## Sets the sourcePort property value. The sourcePort property
                ## @param value Value to set for the source_port property.
                ## @return a void
                ## 
                def source_port=(value)
                    @source_port = value
                end
                ## 
                ## Gets the tenantId property value. The tenantId property
                ## @return a string
                ## 
                def tenant_id
                    return @tenant_id
                end
                ## 
                ## Sets the tenantId property value. The tenantId property
                ## @param value Value to set for the tenant_id property.
                ## @return a void
                ## 
                def tenant_id=(value)
                    @tenant_id = value
                end
                ## 
                ## Gets the trafficType property value. The trafficType property
                ## @return a traffic_type
                ## 
                def traffic_type
                    return @traffic_type
                end
                ## 
                ## Sets the trafficType property value. The trafficType property
                ## @param value Value to set for the traffic_type property.
                ## @return a void
                ## 
                def traffic_type=(value)
                    @traffic_type = value
                end
                ## 
                ## Gets the transactionId property value. The transactionId property
                ## @return a string
                ## 
                def transaction_id
                    return @transaction_id
                end
                ## 
                ## Sets the transactionId property value. The transactionId property
                ## @param value Value to set for the transaction_id property.
                ## @return a void
                ## 
                def transaction_id=(value)
                    @transaction_id = value
                end
                ## 
                ## Gets the transportProtocol property value. The transportProtocol property
                ## @return a networking_protocol
                ## 
                def transport_protocol
                    return @transport_protocol
                end
                ## 
                ## Sets the transportProtocol property value. The transportProtocol property
                ## @param value Value to set for the transport_protocol property.
                ## @return a void
                ## 
                def transport_protocol=(value)
                    @transport_protocol = value
                end
                ## 
                ## Gets the userId property value. The userId property
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. The userId property
                ## @param value Value to set for the user_id property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
                ## 
                ## Gets the userPrincipalName property value. The userPrincipalName property
                ## @return a string
                ## 
                def user_principal_name
                    return @user_principal_name
                end
                ## 
                ## Sets the userPrincipalName property value. The userPrincipalName property
                ## @param value Value to set for the user_principal_name property.
                ## @return a void
                ## 
                def user_principal_name=(value)
                    @user_principal_name = value
                end
            end
        end
    end
end
