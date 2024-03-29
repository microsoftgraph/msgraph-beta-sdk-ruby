require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows Firewall Profile Policies.
        class WindowsFirewallNetworkProfile
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Configures the firewall to merge authorized application rules from group policy with those from local store instead of ignoring the local store rules. When AuthorizedApplicationRulesFromGroupPolicyNotMerged and AuthorizedApplicationRulesFromGroupPolicyMerged are both true, AuthorizedApplicationRulesFromGroupPolicyMerged takes priority.
            @authorized_application_rules_from_group_policy_merged
            ## 
            # Configures the firewall to prevent merging authorized application rules from group policy with those from local store instead of ignoring the local store rules. When AuthorizedApplicationRulesFromGroupPolicyNotMerged and AuthorizedApplicationRulesFromGroupPolicyMerged are both true, AuthorizedApplicationRulesFromGroupPolicyMerged takes priority.
            @authorized_application_rules_from_group_policy_not_merged
            ## 
            # Configures the firewall to merge connection security rules from group policy with those from local store instead of ignoring the local store rules. When ConnectionSecurityRulesFromGroupPolicyNotMerged and ConnectionSecurityRulesFromGroupPolicyMerged are both true, ConnectionSecurityRulesFromGroupPolicyMerged takes priority.
            @connection_security_rules_from_group_policy_merged
            ## 
            # Configures the firewall to prevent merging connection security rules from group policy with those from local store instead of ignoring the local store rules. When ConnectionSecurityRulesFromGroupPolicyNotMerged and ConnectionSecurityRulesFromGroupPolicyMerged are both true, ConnectionSecurityRulesFromGroupPolicyMerged takes priority.
            @connection_security_rules_from_group_policy_not_merged
            ## 
            # State Management Setting.
            @firewall_enabled
            ## 
            # Configures the firewall to merge global port rules from group policy with those from local store instead of ignoring the local store rules. When GlobalPortRulesFromGroupPolicyNotMerged and GlobalPortRulesFromGroupPolicyMerged are both true, GlobalPortRulesFromGroupPolicyMerged takes priority.
            @global_port_rules_from_group_policy_merged
            ## 
            # Configures the firewall to prevent merging global port rules from group policy with those from local store instead of ignoring the local store rules. When GlobalPortRulesFromGroupPolicyNotMerged and GlobalPortRulesFromGroupPolicyMerged are both true, GlobalPortRulesFromGroupPolicyMerged takes priority.
            @global_port_rules_from_group_policy_not_merged
            ## 
            # Configures the firewall to block all incoming connections by default. When InboundConnectionsRequired and InboundConnectionsBlocked are both true, InboundConnectionsBlocked takes priority.
            @inbound_connections_blocked
            ## 
            # Configures the firewall to allow all incoming connections by default. When InboundConnectionsRequired and InboundConnectionsBlocked are both true, InboundConnectionsBlocked takes priority.
            @inbound_connections_required
            ## 
            # Prevents the firewall from displaying notifications when an application is blocked from listening on a port. When InboundNotificationsRequired and InboundNotificationsBlocked are both true, InboundNotificationsBlocked takes priority.
            @inbound_notifications_blocked
            ## 
            # Allows the firewall to display notifications when an application is blocked from listening on a port. When InboundNotificationsRequired and InboundNotificationsBlocked are both true, InboundNotificationsBlocked takes priority.
            @inbound_notifications_required
            ## 
            # Configures the firewall to block all incoming traffic regardless of other policy settings. When IncomingTrafficRequired and IncomingTrafficBlocked are both true, IncomingTrafficBlocked takes priority.
            @incoming_traffic_blocked
            ## 
            # Configures the firewall to allow incoming traffic pursuant to other policy settings. When IncomingTrafficRequired and IncomingTrafficBlocked are both true, IncomingTrafficBlocked takes priority.
            @incoming_traffic_required
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Configures the firewall to block all outgoing connections by default. When OutboundConnectionsRequired and OutboundConnectionsBlocked are both true, OutboundConnectionsBlocked takes priority. This setting will get applied to Windows releases version 1809 and above.
            @outbound_connections_blocked
            ## 
            # Configures the firewall to allow all outgoing connections by default. When OutboundConnectionsRequired and OutboundConnectionsBlocked are both true, OutboundConnectionsBlocked takes priority. This setting will get applied to Windows releases version 1809 and above.
            @outbound_connections_required
            ## 
            # Configures the firewall to merge Firewall Rule policies from group policy with those from local store instead of ignoring the local store rules. When PolicyRulesFromGroupPolicyNotMerged and PolicyRulesFromGroupPolicyMerged are both true, PolicyRulesFromGroupPolicyMerged takes priority.
            @policy_rules_from_group_policy_merged
            ## 
            # Configures the firewall to prevent merging Firewall Rule policies from group policy with those from local store instead of ignoring the local store rules. When PolicyRulesFromGroupPolicyNotMerged and PolicyRulesFromGroupPolicyMerged are both true, PolicyRulesFromGroupPolicyMerged takes priority.
            @policy_rules_from_group_policy_not_merged
            ## 
            # Configures the firewall to allow the host computer to respond to unsolicited network traffic of that traffic is secured by IPSec even when stealthModeBlocked is set to true. When SecuredPacketExemptionBlocked and SecuredPacketExemptionAllowed are both true, SecuredPacketExemptionAllowed takes priority.
            @secured_packet_exemption_allowed
            ## 
            # Configures the firewall to block the host computer to respond to unsolicited network traffic of that traffic is secured by IPSec even when stealthModeBlocked is set to true. When SecuredPacketExemptionBlocked and SecuredPacketExemptionAllowed are both true, SecuredPacketExemptionAllowed takes priority.
            @secured_packet_exemption_blocked
            ## 
            # Prevent the server from operating in stealth mode. When StealthModeRequired and StealthModeBlocked are both true, StealthModeBlocked takes priority.
            @stealth_mode_blocked
            ## 
            # Allow the server to operate in stealth mode. When StealthModeRequired and StealthModeBlocked are both true, StealthModeBlocked takes priority.
            @stealth_mode_required
            ## 
            # Configures the firewall to block unicast responses to multicast broadcast traffic. When UnicastResponsesToMulticastBroadcastsRequired and UnicastResponsesToMulticastBroadcastsBlocked are both true, UnicastResponsesToMulticastBroadcastsBlocked takes priority.
            @unicast_responses_to_multicast_broadcasts_blocked
            ## 
            # Configures the firewall to allow unicast responses to multicast broadcast traffic. When UnicastResponsesToMulticastBroadcastsRequired and UnicastResponsesToMulticastBroadcastsBlocked are both true, UnicastResponsesToMulticastBroadcastsBlocked takes priority.
            @unicast_responses_to_multicast_broadcasts_required
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
            ## Gets the authorizedApplicationRulesFromGroupPolicyMerged property value. Configures the firewall to merge authorized application rules from group policy with those from local store instead of ignoring the local store rules. When AuthorizedApplicationRulesFromGroupPolicyNotMerged and AuthorizedApplicationRulesFromGroupPolicyMerged are both true, AuthorizedApplicationRulesFromGroupPolicyMerged takes priority.
            ## @return a boolean
            ## 
            def authorized_application_rules_from_group_policy_merged
                return @authorized_application_rules_from_group_policy_merged
            end
            ## 
            ## Sets the authorizedApplicationRulesFromGroupPolicyMerged property value. Configures the firewall to merge authorized application rules from group policy with those from local store instead of ignoring the local store rules. When AuthorizedApplicationRulesFromGroupPolicyNotMerged and AuthorizedApplicationRulesFromGroupPolicyMerged are both true, AuthorizedApplicationRulesFromGroupPolicyMerged takes priority.
            ## @param value Value to set for the authorizedApplicationRulesFromGroupPolicyMerged property.
            ## @return a void
            ## 
            def authorized_application_rules_from_group_policy_merged=(value)
                @authorized_application_rules_from_group_policy_merged = value
            end
            ## 
            ## Gets the authorizedApplicationRulesFromGroupPolicyNotMerged property value. Configures the firewall to prevent merging authorized application rules from group policy with those from local store instead of ignoring the local store rules. When AuthorizedApplicationRulesFromGroupPolicyNotMerged and AuthorizedApplicationRulesFromGroupPolicyMerged are both true, AuthorizedApplicationRulesFromGroupPolicyMerged takes priority.
            ## @return a boolean
            ## 
            def authorized_application_rules_from_group_policy_not_merged
                return @authorized_application_rules_from_group_policy_not_merged
            end
            ## 
            ## Sets the authorizedApplicationRulesFromGroupPolicyNotMerged property value. Configures the firewall to prevent merging authorized application rules from group policy with those from local store instead of ignoring the local store rules. When AuthorizedApplicationRulesFromGroupPolicyNotMerged and AuthorizedApplicationRulesFromGroupPolicyMerged are both true, AuthorizedApplicationRulesFromGroupPolicyMerged takes priority.
            ## @param value Value to set for the authorizedApplicationRulesFromGroupPolicyNotMerged property.
            ## @return a void
            ## 
            def authorized_application_rules_from_group_policy_not_merged=(value)
                @authorized_application_rules_from_group_policy_not_merged = value
            end
            ## 
            ## Gets the connectionSecurityRulesFromGroupPolicyMerged property value. Configures the firewall to merge connection security rules from group policy with those from local store instead of ignoring the local store rules. When ConnectionSecurityRulesFromGroupPolicyNotMerged and ConnectionSecurityRulesFromGroupPolicyMerged are both true, ConnectionSecurityRulesFromGroupPolicyMerged takes priority.
            ## @return a boolean
            ## 
            def connection_security_rules_from_group_policy_merged
                return @connection_security_rules_from_group_policy_merged
            end
            ## 
            ## Sets the connectionSecurityRulesFromGroupPolicyMerged property value. Configures the firewall to merge connection security rules from group policy with those from local store instead of ignoring the local store rules. When ConnectionSecurityRulesFromGroupPolicyNotMerged and ConnectionSecurityRulesFromGroupPolicyMerged are both true, ConnectionSecurityRulesFromGroupPolicyMerged takes priority.
            ## @param value Value to set for the connectionSecurityRulesFromGroupPolicyMerged property.
            ## @return a void
            ## 
            def connection_security_rules_from_group_policy_merged=(value)
                @connection_security_rules_from_group_policy_merged = value
            end
            ## 
            ## Gets the connectionSecurityRulesFromGroupPolicyNotMerged property value. Configures the firewall to prevent merging connection security rules from group policy with those from local store instead of ignoring the local store rules. When ConnectionSecurityRulesFromGroupPolicyNotMerged and ConnectionSecurityRulesFromGroupPolicyMerged are both true, ConnectionSecurityRulesFromGroupPolicyMerged takes priority.
            ## @return a boolean
            ## 
            def connection_security_rules_from_group_policy_not_merged
                return @connection_security_rules_from_group_policy_not_merged
            end
            ## 
            ## Sets the connectionSecurityRulesFromGroupPolicyNotMerged property value. Configures the firewall to prevent merging connection security rules from group policy with those from local store instead of ignoring the local store rules. When ConnectionSecurityRulesFromGroupPolicyNotMerged and ConnectionSecurityRulesFromGroupPolicyMerged are both true, ConnectionSecurityRulesFromGroupPolicyMerged takes priority.
            ## @param value Value to set for the connectionSecurityRulesFromGroupPolicyNotMerged property.
            ## @return a void
            ## 
            def connection_security_rules_from_group_policy_not_merged=(value)
                @connection_security_rules_from_group_policy_not_merged = value
            end
            ## 
            ## Instantiates a new windowsFirewallNetworkProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_firewall_network_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsFirewallNetworkProfile.new
            end
            ## 
            ## Gets the firewallEnabled property value. State Management Setting.
            ## @return a state_management_setting
            ## 
            def firewall_enabled
                return @firewall_enabled
            end
            ## 
            ## Sets the firewallEnabled property value. State Management Setting.
            ## @param value Value to set for the firewallEnabled property.
            ## @return a void
            ## 
            def firewall_enabled=(value)
                @firewall_enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authorizedApplicationRulesFromGroupPolicyMerged" => lambda {|n| @authorized_application_rules_from_group_policy_merged = n.get_boolean_value() },
                    "authorizedApplicationRulesFromGroupPolicyNotMerged" => lambda {|n| @authorized_application_rules_from_group_policy_not_merged = n.get_boolean_value() },
                    "connectionSecurityRulesFromGroupPolicyMerged" => lambda {|n| @connection_security_rules_from_group_policy_merged = n.get_boolean_value() },
                    "connectionSecurityRulesFromGroupPolicyNotMerged" => lambda {|n| @connection_security_rules_from_group_policy_not_merged = n.get_boolean_value() },
                    "firewallEnabled" => lambda {|n| @firewall_enabled = n.get_enum_value(MicrosoftGraphBeta::Models::StateManagementSetting) },
                    "globalPortRulesFromGroupPolicyMerged" => lambda {|n| @global_port_rules_from_group_policy_merged = n.get_boolean_value() },
                    "globalPortRulesFromGroupPolicyNotMerged" => lambda {|n| @global_port_rules_from_group_policy_not_merged = n.get_boolean_value() },
                    "inboundConnectionsBlocked" => lambda {|n| @inbound_connections_blocked = n.get_boolean_value() },
                    "inboundConnectionsRequired" => lambda {|n| @inbound_connections_required = n.get_boolean_value() },
                    "inboundNotificationsBlocked" => lambda {|n| @inbound_notifications_blocked = n.get_boolean_value() },
                    "inboundNotificationsRequired" => lambda {|n| @inbound_notifications_required = n.get_boolean_value() },
                    "incomingTrafficBlocked" => lambda {|n| @incoming_traffic_blocked = n.get_boolean_value() },
                    "incomingTrafficRequired" => lambda {|n| @incoming_traffic_required = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "outboundConnectionsBlocked" => lambda {|n| @outbound_connections_blocked = n.get_boolean_value() },
                    "outboundConnectionsRequired" => lambda {|n| @outbound_connections_required = n.get_boolean_value() },
                    "policyRulesFromGroupPolicyMerged" => lambda {|n| @policy_rules_from_group_policy_merged = n.get_boolean_value() },
                    "policyRulesFromGroupPolicyNotMerged" => lambda {|n| @policy_rules_from_group_policy_not_merged = n.get_boolean_value() },
                    "securedPacketExemptionAllowed" => lambda {|n| @secured_packet_exemption_allowed = n.get_boolean_value() },
                    "securedPacketExemptionBlocked" => lambda {|n| @secured_packet_exemption_blocked = n.get_boolean_value() },
                    "stealthModeBlocked" => lambda {|n| @stealth_mode_blocked = n.get_boolean_value() },
                    "stealthModeRequired" => lambda {|n| @stealth_mode_required = n.get_boolean_value() },
                    "unicastResponsesToMulticastBroadcastsBlocked" => lambda {|n| @unicast_responses_to_multicast_broadcasts_blocked = n.get_boolean_value() },
                    "unicastResponsesToMulticastBroadcastsRequired" => lambda {|n| @unicast_responses_to_multicast_broadcasts_required = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the globalPortRulesFromGroupPolicyMerged property value. Configures the firewall to merge global port rules from group policy with those from local store instead of ignoring the local store rules. When GlobalPortRulesFromGroupPolicyNotMerged and GlobalPortRulesFromGroupPolicyMerged are both true, GlobalPortRulesFromGroupPolicyMerged takes priority.
            ## @return a boolean
            ## 
            def global_port_rules_from_group_policy_merged
                return @global_port_rules_from_group_policy_merged
            end
            ## 
            ## Sets the globalPortRulesFromGroupPolicyMerged property value. Configures the firewall to merge global port rules from group policy with those from local store instead of ignoring the local store rules. When GlobalPortRulesFromGroupPolicyNotMerged and GlobalPortRulesFromGroupPolicyMerged are both true, GlobalPortRulesFromGroupPolicyMerged takes priority.
            ## @param value Value to set for the globalPortRulesFromGroupPolicyMerged property.
            ## @return a void
            ## 
            def global_port_rules_from_group_policy_merged=(value)
                @global_port_rules_from_group_policy_merged = value
            end
            ## 
            ## Gets the globalPortRulesFromGroupPolicyNotMerged property value. Configures the firewall to prevent merging global port rules from group policy with those from local store instead of ignoring the local store rules. When GlobalPortRulesFromGroupPolicyNotMerged and GlobalPortRulesFromGroupPolicyMerged are both true, GlobalPortRulesFromGroupPolicyMerged takes priority.
            ## @return a boolean
            ## 
            def global_port_rules_from_group_policy_not_merged
                return @global_port_rules_from_group_policy_not_merged
            end
            ## 
            ## Sets the globalPortRulesFromGroupPolicyNotMerged property value. Configures the firewall to prevent merging global port rules from group policy with those from local store instead of ignoring the local store rules. When GlobalPortRulesFromGroupPolicyNotMerged and GlobalPortRulesFromGroupPolicyMerged are both true, GlobalPortRulesFromGroupPolicyMerged takes priority.
            ## @param value Value to set for the globalPortRulesFromGroupPolicyNotMerged property.
            ## @return a void
            ## 
            def global_port_rules_from_group_policy_not_merged=(value)
                @global_port_rules_from_group_policy_not_merged = value
            end
            ## 
            ## Gets the inboundConnectionsBlocked property value. Configures the firewall to block all incoming connections by default. When InboundConnectionsRequired and InboundConnectionsBlocked are both true, InboundConnectionsBlocked takes priority.
            ## @return a boolean
            ## 
            def inbound_connections_blocked
                return @inbound_connections_blocked
            end
            ## 
            ## Sets the inboundConnectionsBlocked property value. Configures the firewall to block all incoming connections by default. When InboundConnectionsRequired and InboundConnectionsBlocked are both true, InboundConnectionsBlocked takes priority.
            ## @param value Value to set for the inboundConnectionsBlocked property.
            ## @return a void
            ## 
            def inbound_connections_blocked=(value)
                @inbound_connections_blocked = value
            end
            ## 
            ## Gets the inboundConnectionsRequired property value. Configures the firewall to allow all incoming connections by default. When InboundConnectionsRequired and InboundConnectionsBlocked are both true, InboundConnectionsBlocked takes priority.
            ## @return a boolean
            ## 
            def inbound_connections_required
                return @inbound_connections_required
            end
            ## 
            ## Sets the inboundConnectionsRequired property value. Configures the firewall to allow all incoming connections by default. When InboundConnectionsRequired and InboundConnectionsBlocked are both true, InboundConnectionsBlocked takes priority.
            ## @param value Value to set for the inboundConnectionsRequired property.
            ## @return a void
            ## 
            def inbound_connections_required=(value)
                @inbound_connections_required = value
            end
            ## 
            ## Gets the inboundNotificationsBlocked property value. Prevents the firewall from displaying notifications when an application is blocked from listening on a port. When InboundNotificationsRequired and InboundNotificationsBlocked are both true, InboundNotificationsBlocked takes priority.
            ## @return a boolean
            ## 
            def inbound_notifications_blocked
                return @inbound_notifications_blocked
            end
            ## 
            ## Sets the inboundNotificationsBlocked property value. Prevents the firewall from displaying notifications when an application is blocked from listening on a port. When InboundNotificationsRequired and InboundNotificationsBlocked are both true, InboundNotificationsBlocked takes priority.
            ## @param value Value to set for the inboundNotificationsBlocked property.
            ## @return a void
            ## 
            def inbound_notifications_blocked=(value)
                @inbound_notifications_blocked = value
            end
            ## 
            ## Gets the inboundNotificationsRequired property value. Allows the firewall to display notifications when an application is blocked from listening on a port. When InboundNotificationsRequired and InboundNotificationsBlocked are both true, InboundNotificationsBlocked takes priority.
            ## @return a boolean
            ## 
            def inbound_notifications_required
                return @inbound_notifications_required
            end
            ## 
            ## Sets the inboundNotificationsRequired property value. Allows the firewall to display notifications when an application is blocked from listening on a port. When InboundNotificationsRequired and InboundNotificationsBlocked are both true, InboundNotificationsBlocked takes priority.
            ## @param value Value to set for the inboundNotificationsRequired property.
            ## @return a void
            ## 
            def inbound_notifications_required=(value)
                @inbound_notifications_required = value
            end
            ## 
            ## Gets the incomingTrafficBlocked property value. Configures the firewall to block all incoming traffic regardless of other policy settings. When IncomingTrafficRequired and IncomingTrafficBlocked are both true, IncomingTrafficBlocked takes priority.
            ## @return a boolean
            ## 
            def incoming_traffic_blocked
                return @incoming_traffic_blocked
            end
            ## 
            ## Sets the incomingTrafficBlocked property value. Configures the firewall to block all incoming traffic regardless of other policy settings. When IncomingTrafficRequired and IncomingTrafficBlocked are both true, IncomingTrafficBlocked takes priority.
            ## @param value Value to set for the incomingTrafficBlocked property.
            ## @return a void
            ## 
            def incoming_traffic_blocked=(value)
                @incoming_traffic_blocked = value
            end
            ## 
            ## Gets the incomingTrafficRequired property value. Configures the firewall to allow incoming traffic pursuant to other policy settings. When IncomingTrafficRequired and IncomingTrafficBlocked are both true, IncomingTrafficBlocked takes priority.
            ## @return a boolean
            ## 
            def incoming_traffic_required
                return @incoming_traffic_required
            end
            ## 
            ## Sets the incomingTrafficRequired property value. Configures the firewall to allow incoming traffic pursuant to other policy settings. When IncomingTrafficRequired and IncomingTrafficBlocked are both true, IncomingTrafficBlocked takes priority.
            ## @param value Value to set for the incomingTrafficRequired property.
            ## @return a void
            ## 
            def incoming_traffic_required=(value)
                @incoming_traffic_required = value
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
            ## Gets the outboundConnectionsBlocked property value. Configures the firewall to block all outgoing connections by default. When OutboundConnectionsRequired and OutboundConnectionsBlocked are both true, OutboundConnectionsBlocked takes priority. This setting will get applied to Windows releases version 1809 and above.
            ## @return a boolean
            ## 
            def outbound_connections_blocked
                return @outbound_connections_blocked
            end
            ## 
            ## Sets the outboundConnectionsBlocked property value. Configures the firewall to block all outgoing connections by default. When OutboundConnectionsRequired and OutboundConnectionsBlocked are both true, OutboundConnectionsBlocked takes priority. This setting will get applied to Windows releases version 1809 and above.
            ## @param value Value to set for the outboundConnectionsBlocked property.
            ## @return a void
            ## 
            def outbound_connections_blocked=(value)
                @outbound_connections_blocked = value
            end
            ## 
            ## Gets the outboundConnectionsRequired property value. Configures the firewall to allow all outgoing connections by default. When OutboundConnectionsRequired and OutboundConnectionsBlocked are both true, OutboundConnectionsBlocked takes priority. This setting will get applied to Windows releases version 1809 and above.
            ## @return a boolean
            ## 
            def outbound_connections_required
                return @outbound_connections_required
            end
            ## 
            ## Sets the outboundConnectionsRequired property value. Configures the firewall to allow all outgoing connections by default. When OutboundConnectionsRequired and OutboundConnectionsBlocked are both true, OutboundConnectionsBlocked takes priority. This setting will get applied to Windows releases version 1809 and above.
            ## @param value Value to set for the outboundConnectionsRequired property.
            ## @return a void
            ## 
            def outbound_connections_required=(value)
                @outbound_connections_required = value
            end
            ## 
            ## Gets the policyRulesFromGroupPolicyMerged property value. Configures the firewall to merge Firewall Rule policies from group policy with those from local store instead of ignoring the local store rules. When PolicyRulesFromGroupPolicyNotMerged and PolicyRulesFromGroupPolicyMerged are both true, PolicyRulesFromGroupPolicyMerged takes priority.
            ## @return a boolean
            ## 
            def policy_rules_from_group_policy_merged
                return @policy_rules_from_group_policy_merged
            end
            ## 
            ## Sets the policyRulesFromGroupPolicyMerged property value. Configures the firewall to merge Firewall Rule policies from group policy with those from local store instead of ignoring the local store rules. When PolicyRulesFromGroupPolicyNotMerged and PolicyRulesFromGroupPolicyMerged are both true, PolicyRulesFromGroupPolicyMerged takes priority.
            ## @param value Value to set for the policyRulesFromGroupPolicyMerged property.
            ## @return a void
            ## 
            def policy_rules_from_group_policy_merged=(value)
                @policy_rules_from_group_policy_merged = value
            end
            ## 
            ## Gets the policyRulesFromGroupPolicyNotMerged property value. Configures the firewall to prevent merging Firewall Rule policies from group policy with those from local store instead of ignoring the local store rules. When PolicyRulesFromGroupPolicyNotMerged and PolicyRulesFromGroupPolicyMerged are both true, PolicyRulesFromGroupPolicyMerged takes priority.
            ## @return a boolean
            ## 
            def policy_rules_from_group_policy_not_merged
                return @policy_rules_from_group_policy_not_merged
            end
            ## 
            ## Sets the policyRulesFromGroupPolicyNotMerged property value. Configures the firewall to prevent merging Firewall Rule policies from group policy with those from local store instead of ignoring the local store rules. When PolicyRulesFromGroupPolicyNotMerged and PolicyRulesFromGroupPolicyMerged are both true, PolicyRulesFromGroupPolicyMerged takes priority.
            ## @param value Value to set for the policyRulesFromGroupPolicyNotMerged property.
            ## @return a void
            ## 
            def policy_rules_from_group_policy_not_merged=(value)
                @policy_rules_from_group_policy_not_merged = value
            end
            ## 
            ## Gets the securedPacketExemptionAllowed property value. Configures the firewall to allow the host computer to respond to unsolicited network traffic of that traffic is secured by IPSec even when stealthModeBlocked is set to true. When SecuredPacketExemptionBlocked and SecuredPacketExemptionAllowed are both true, SecuredPacketExemptionAllowed takes priority.
            ## @return a boolean
            ## 
            def secured_packet_exemption_allowed
                return @secured_packet_exemption_allowed
            end
            ## 
            ## Sets the securedPacketExemptionAllowed property value. Configures the firewall to allow the host computer to respond to unsolicited network traffic of that traffic is secured by IPSec even when stealthModeBlocked is set to true. When SecuredPacketExemptionBlocked and SecuredPacketExemptionAllowed are both true, SecuredPacketExemptionAllowed takes priority.
            ## @param value Value to set for the securedPacketExemptionAllowed property.
            ## @return a void
            ## 
            def secured_packet_exemption_allowed=(value)
                @secured_packet_exemption_allowed = value
            end
            ## 
            ## Gets the securedPacketExemptionBlocked property value. Configures the firewall to block the host computer to respond to unsolicited network traffic of that traffic is secured by IPSec even when stealthModeBlocked is set to true. When SecuredPacketExemptionBlocked and SecuredPacketExemptionAllowed are both true, SecuredPacketExemptionAllowed takes priority.
            ## @return a boolean
            ## 
            def secured_packet_exemption_blocked
                return @secured_packet_exemption_blocked
            end
            ## 
            ## Sets the securedPacketExemptionBlocked property value. Configures the firewall to block the host computer to respond to unsolicited network traffic of that traffic is secured by IPSec even when stealthModeBlocked is set to true. When SecuredPacketExemptionBlocked and SecuredPacketExemptionAllowed are both true, SecuredPacketExemptionAllowed takes priority.
            ## @param value Value to set for the securedPacketExemptionBlocked property.
            ## @return a void
            ## 
            def secured_packet_exemption_blocked=(value)
                @secured_packet_exemption_blocked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("authorizedApplicationRulesFromGroupPolicyMerged", @authorized_application_rules_from_group_policy_merged)
                writer.write_boolean_value("authorizedApplicationRulesFromGroupPolicyNotMerged", @authorized_application_rules_from_group_policy_not_merged)
                writer.write_boolean_value("connectionSecurityRulesFromGroupPolicyMerged", @connection_security_rules_from_group_policy_merged)
                writer.write_boolean_value("connectionSecurityRulesFromGroupPolicyNotMerged", @connection_security_rules_from_group_policy_not_merged)
                writer.write_enum_value("firewallEnabled", @firewall_enabled)
                writer.write_boolean_value("globalPortRulesFromGroupPolicyMerged", @global_port_rules_from_group_policy_merged)
                writer.write_boolean_value("globalPortRulesFromGroupPolicyNotMerged", @global_port_rules_from_group_policy_not_merged)
                writer.write_boolean_value("inboundConnectionsBlocked", @inbound_connections_blocked)
                writer.write_boolean_value("inboundConnectionsRequired", @inbound_connections_required)
                writer.write_boolean_value("inboundNotificationsBlocked", @inbound_notifications_blocked)
                writer.write_boolean_value("inboundNotificationsRequired", @inbound_notifications_required)
                writer.write_boolean_value("incomingTrafficBlocked", @incoming_traffic_blocked)
                writer.write_boolean_value("incomingTrafficRequired", @incoming_traffic_required)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("outboundConnectionsBlocked", @outbound_connections_blocked)
                writer.write_boolean_value("outboundConnectionsRequired", @outbound_connections_required)
                writer.write_boolean_value("policyRulesFromGroupPolicyMerged", @policy_rules_from_group_policy_merged)
                writer.write_boolean_value("policyRulesFromGroupPolicyNotMerged", @policy_rules_from_group_policy_not_merged)
                writer.write_boolean_value("securedPacketExemptionAllowed", @secured_packet_exemption_allowed)
                writer.write_boolean_value("securedPacketExemptionBlocked", @secured_packet_exemption_blocked)
                writer.write_boolean_value("stealthModeBlocked", @stealth_mode_blocked)
                writer.write_boolean_value("stealthModeRequired", @stealth_mode_required)
                writer.write_boolean_value("unicastResponsesToMulticastBroadcastsBlocked", @unicast_responses_to_multicast_broadcasts_blocked)
                writer.write_boolean_value("unicastResponsesToMulticastBroadcastsRequired", @unicast_responses_to_multicast_broadcasts_required)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the stealthModeBlocked property value. Prevent the server from operating in stealth mode. When StealthModeRequired and StealthModeBlocked are both true, StealthModeBlocked takes priority.
            ## @return a boolean
            ## 
            def stealth_mode_blocked
                return @stealth_mode_blocked
            end
            ## 
            ## Sets the stealthModeBlocked property value. Prevent the server from operating in stealth mode. When StealthModeRequired and StealthModeBlocked are both true, StealthModeBlocked takes priority.
            ## @param value Value to set for the stealthModeBlocked property.
            ## @return a void
            ## 
            def stealth_mode_blocked=(value)
                @stealth_mode_blocked = value
            end
            ## 
            ## Gets the stealthModeRequired property value. Allow the server to operate in stealth mode. When StealthModeRequired and StealthModeBlocked are both true, StealthModeBlocked takes priority.
            ## @return a boolean
            ## 
            def stealth_mode_required
                return @stealth_mode_required
            end
            ## 
            ## Sets the stealthModeRequired property value. Allow the server to operate in stealth mode. When StealthModeRequired and StealthModeBlocked are both true, StealthModeBlocked takes priority.
            ## @param value Value to set for the stealthModeRequired property.
            ## @return a void
            ## 
            def stealth_mode_required=(value)
                @stealth_mode_required = value
            end
            ## 
            ## Gets the unicastResponsesToMulticastBroadcastsBlocked property value. Configures the firewall to block unicast responses to multicast broadcast traffic. When UnicastResponsesToMulticastBroadcastsRequired and UnicastResponsesToMulticastBroadcastsBlocked are both true, UnicastResponsesToMulticastBroadcastsBlocked takes priority.
            ## @return a boolean
            ## 
            def unicast_responses_to_multicast_broadcasts_blocked
                return @unicast_responses_to_multicast_broadcasts_blocked
            end
            ## 
            ## Sets the unicastResponsesToMulticastBroadcastsBlocked property value. Configures the firewall to block unicast responses to multicast broadcast traffic. When UnicastResponsesToMulticastBroadcastsRequired and UnicastResponsesToMulticastBroadcastsBlocked are both true, UnicastResponsesToMulticastBroadcastsBlocked takes priority.
            ## @param value Value to set for the unicastResponsesToMulticastBroadcastsBlocked property.
            ## @return a void
            ## 
            def unicast_responses_to_multicast_broadcasts_blocked=(value)
                @unicast_responses_to_multicast_broadcasts_blocked = value
            end
            ## 
            ## Gets the unicastResponsesToMulticastBroadcastsRequired property value. Configures the firewall to allow unicast responses to multicast broadcast traffic. When UnicastResponsesToMulticastBroadcastsRequired and UnicastResponsesToMulticastBroadcastsBlocked are both true, UnicastResponsesToMulticastBroadcastsBlocked takes priority.
            ## @return a boolean
            ## 
            def unicast_responses_to_multicast_broadcasts_required
                return @unicast_responses_to_multicast_broadcasts_required
            end
            ## 
            ## Sets the unicastResponsesToMulticastBroadcastsRequired property value. Configures the firewall to allow unicast responses to multicast broadcast traffic. When UnicastResponsesToMulticastBroadcastsRequired and UnicastResponsesToMulticastBroadcastsBlocked are both true, UnicastResponsesToMulticastBroadcastsBlocked takes priority.
            ## @param value Value to set for the unicastResponsesToMulticastBroadcastsRequired property.
            ## @return a void
            ## 
            def unicast_responses_to_multicast_broadcasts_required=(value)
                @unicast_responses_to_multicast_broadcasts_required = value
            end
        end
    end
end
