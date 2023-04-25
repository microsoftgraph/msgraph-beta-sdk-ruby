require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # VPN Traffic Rule definition.
        class VpnTrafficRule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # App identifier, if this traffic rule is triggered by an app.
            @app_id
            ## 
            # Indicates the type of app that a VPN traffic rule is associated with.
            @app_type
            ## 
            # Claims associated with this traffic rule.
            @claims
            ## 
            # Local address range. This collection can contain a maximum of 500 elements.
            @local_address_ranges
            ## 
            # Local port range can be set only when protocol is either TCP or UDP (6 or 17). This collection can contain a maximum of 500 elements.
            @local_port_ranges
            ## 
            # Name.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Protocols (0-255). Valid values 0 to 255
            @protocols
            ## 
            # Remote address range. This collection can contain a maximum of 500 elements.
            @remote_address_ranges
            ## 
            # Remote port range can be set only when protocol is either TCP or UDP (6 or 17). This collection can contain a maximum of 500 elements.
            @remote_port_ranges
            ## 
            # Specifies the routing policy for a VPN traffic rule.
            @routing_policy_type
            ## 
            # Specify whether the rule applies to inbound traffic or outbound traffic.
            @vpn_traffic_direction
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
            ## Gets the appId property value. App identifier, if this traffic rule is triggered by an app.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. App identifier, if this traffic rule is triggered by an app.
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appType property value. Indicates the type of app that a VPN traffic rule is associated with.
            ## @return a vpn_traffic_rule_app_type
            ## 
            def app_type
                return @app_type
            end
            ## 
            ## Sets the appType property value. Indicates the type of app that a VPN traffic rule is associated with.
            ## @param value Value to set for the app_type property.
            ## @return a void
            ## 
            def app_type=(value)
                @app_type = value
            end
            ## 
            ## Gets the claims property value. Claims associated with this traffic rule.
            ## @return a string
            ## 
            def claims
                return @claims
            end
            ## 
            ## Sets the claims property value. Claims associated with this traffic rule.
            ## @param value Value to set for the claims property.
            ## @return a void
            ## 
            def claims=(value)
                @claims = value
            end
            ## 
            ## Instantiates a new vpnTrafficRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a vpn_traffic_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VpnTrafficRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appType" => lambda {|n| @app_type = n.get_enum_value(MicrosoftGraphBeta::Models::VpnTrafficRuleAppType) },
                    "claims" => lambda {|n| @claims = n.get_string_value() },
                    "localAddressRanges" => lambda {|n| @local_address_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IPv4Range.create_from_discriminator_value(pn) }) },
                    "localPortRanges" => lambda {|n| @local_port_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NumberRange.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "protocols" => lambda {|n| @protocols = n.get_number_value() },
                    "remoteAddressRanges" => lambda {|n| @remote_address_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IPv4Range.create_from_discriminator_value(pn) }) },
                    "remotePortRanges" => lambda {|n| @remote_port_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NumberRange.create_from_discriminator_value(pn) }) },
                    "routingPolicyType" => lambda {|n| @routing_policy_type = n.get_enum_value(MicrosoftGraphBeta::Models::VpnTrafficRuleRoutingPolicyType) },
                    "vpnTrafficDirection" => lambda {|n| @vpn_traffic_direction = n.get_enum_value(MicrosoftGraphBeta::Models::VpnTrafficDirection) },
                }
            end
            ## 
            ## Gets the localAddressRanges property value. Local address range. This collection can contain a maximum of 500 elements.
            ## @return a i_pv4_range
            ## 
            def local_address_ranges
                return @local_address_ranges
            end
            ## 
            ## Sets the localAddressRanges property value. Local address range. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the local_address_ranges property.
            ## @return a void
            ## 
            def local_address_ranges=(value)
                @local_address_ranges = value
            end
            ## 
            ## Gets the localPortRanges property value. Local port range can be set only when protocol is either TCP or UDP (6 or 17). This collection can contain a maximum of 500 elements.
            ## @return a number_range
            ## 
            def local_port_ranges
                return @local_port_ranges
            end
            ## 
            ## Sets the localPortRanges property value. Local port range can be set only when protocol is either TCP or UDP (6 or 17). This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the local_port_ranges property.
            ## @return a void
            ## 
            def local_port_ranges=(value)
                @local_port_ranges = value
            end
            ## 
            ## Gets the name property value. Name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the protocols property value. Protocols (0-255). Valid values 0 to 255
            ## @return a integer
            ## 
            def protocols
                return @protocols
            end
            ## 
            ## Sets the protocols property value. Protocols (0-255). Valid values 0 to 255
            ## @param value Value to set for the protocols property.
            ## @return a void
            ## 
            def protocols=(value)
                @protocols = value
            end
            ## 
            ## Gets the remoteAddressRanges property value. Remote address range. This collection can contain a maximum of 500 elements.
            ## @return a i_pv4_range
            ## 
            def remote_address_ranges
                return @remote_address_ranges
            end
            ## 
            ## Sets the remoteAddressRanges property value. Remote address range. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the remote_address_ranges property.
            ## @return a void
            ## 
            def remote_address_ranges=(value)
                @remote_address_ranges = value
            end
            ## 
            ## Gets the remotePortRanges property value. Remote port range can be set only when protocol is either TCP or UDP (6 or 17). This collection can contain a maximum of 500 elements.
            ## @return a number_range
            ## 
            def remote_port_ranges
                return @remote_port_ranges
            end
            ## 
            ## Sets the remotePortRanges property value. Remote port range can be set only when protocol is either TCP or UDP (6 or 17). This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the remote_port_ranges property.
            ## @return a void
            ## 
            def remote_port_ranges=(value)
                @remote_port_ranges = value
            end
            ## 
            ## Gets the routingPolicyType property value. Specifies the routing policy for a VPN traffic rule.
            ## @return a vpn_traffic_rule_routing_policy_type
            ## 
            def routing_policy_type
                return @routing_policy_type
            end
            ## 
            ## Sets the routingPolicyType property value. Specifies the routing policy for a VPN traffic rule.
            ## @param value Value to set for the routing_policy_type property.
            ## @return a void
            ## 
            def routing_policy_type=(value)
                @routing_policy_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("appId", @app_id)
                writer.write_enum_value("appType", @app_type)
                writer.write_string_value("claims", @claims)
                writer.write_collection_of_object_values("localAddressRanges", @local_address_ranges)
                writer.write_collection_of_object_values("localPortRanges", @local_port_ranges)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("protocols", @protocols)
                writer.write_collection_of_object_values("remoteAddressRanges", @remote_address_ranges)
                writer.write_collection_of_object_values("remotePortRanges", @remote_port_ranges)
                writer.write_enum_value("routingPolicyType", @routing_policy_type)
                writer.write_enum_value("vpnTrafficDirection", @vpn_traffic_direction)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the vpnTrafficDirection property value. Specify whether the rule applies to inbound traffic or outbound traffic.
            ## @return a vpn_traffic_direction
            ## 
            def vpn_traffic_direction
                return @vpn_traffic_direction
            end
            ## 
            ## Sets the vpnTrafficDirection property value. Specify whether the rule applies to inbound traffic or outbound traffic.
            ## @param value Value to set for the vpn_traffic_direction property.
            ## @return a void
            ## 
            def vpn_traffic_direction=(value)
                @vpn_traffic_direction = value
            end
        end
    end
end
