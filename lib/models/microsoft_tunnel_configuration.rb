require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that represents a collection of Microsoft Tunnel settings
        class MicrosoftTunnelConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional settings that may be applied to the server
            @advanced_settings
            ## 
            # The Default Domain appendix that will be used by the clients
            @default_domain_suffix
            ## 
            # The configuration's description (optional)
            @description
            ## 
            # When DisableUdpConnections is set, the clients and VPN server will not use DTLS connections to transfer data.
            @disable_udp_connections
            ## 
            # The display name for the server configuration. This property is required when a server is created.
            @display_name
            ## 
            # The DNS servers that will be used by the clients
            @dns_servers
            ## 
            # When the configuration was last updated
            @last_update_date_time
            ## 
            # The port that both TCP and UPD will listen over on the server
            @listen_port
            ## 
            # The IPv4 subnet that will be used to allocate virtual address for the clients
            @network
            ## 
            # List of Scope Tags for this Entity instance
            @role_scope_tag_ids
            ## 
            # Subsets of the routes that will not be routed by the server
            @route_excludes
            ## 
            # The routes that will be routed by the server
            @route_includes
            ## 
            # Subsets of the routes that will not be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteExcludes'.
            @routes_exclude
            ## 
            # The routes that will be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteIncludes'.
            @routes_include
            ## 
            # The domains that will be resolved using the provided dns servers
            @split_d_n_s
            ## 
            ## Gets the advancedSettings property value. Additional settings that may be applied to the server
            ## @return a key_value_pair
            ## 
            def advanced_settings
                return @advanced_settings
            end
            ## 
            ## Sets the advancedSettings property value. Additional settings that may be applied to the server
            ## @param value Value to set for the advancedSettings property.
            ## @return a void
            ## 
            def advanced_settings=(value)
                @advanced_settings = value
            end
            ## 
            ## Instantiates a new MicrosoftTunnelConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_tunnel_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftTunnelConfiguration.new
            end
            ## 
            ## Gets the defaultDomainSuffix property value. The Default Domain appendix that will be used by the clients
            ## @return a string
            ## 
            def default_domain_suffix
                return @default_domain_suffix
            end
            ## 
            ## Sets the defaultDomainSuffix property value. The Default Domain appendix that will be used by the clients
            ## @param value Value to set for the defaultDomainSuffix property.
            ## @return a void
            ## 
            def default_domain_suffix=(value)
                @default_domain_suffix = value
            end
            ## 
            ## Gets the description property value. The configuration's description (optional)
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The configuration's description (optional)
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the disableUdpConnections property value. When DisableUdpConnections is set, the clients and VPN server will not use DTLS connections to transfer data.
            ## @return a boolean
            ## 
            def disable_udp_connections
                return @disable_udp_connections
            end
            ## 
            ## Sets the disableUdpConnections property value. When DisableUdpConnections is set, the clients and VPN server will not use DTLS connections to transfer data.
            ## @param value Value to set for the disableUdpConnections property.
            ## @return a void
            ## 
            def disable_udp_connections=(value)
                @disable_udp_connections = value
            end
            ## 
            ## Gets the displayName property value. The display name for the server configuration. This property is required when a server is created.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the server configuration. This property is required when a server is created.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the dnsServers property value. The DNS servers that will be used by the clients
            ## @return a string
            ## 
            def dns_servers
                return @dns_servers
            end
            ## 
            ## Sets the dnsServers property value. The DNS servers that will be used by the clients
            ## @param value Value to set for the dnsServers property.
            ## @return a void
            ## 
            def dns_servers=(value)
                @dns_servers = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "advancedSettings" => lambda {|n| @advanced_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "defaultDomainSuffix" => lambda {|n| @default_domain_suffix = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "disableUdpConnections" => lambda {|n| @disable_udp_connections = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "dnsServers" => lambda {|n| @dns_servers = n.get_collection_of_primitive_values(String) },
                    "lastUpdateDateTime" => lambda {|n| @last_update_date_time = n.get_date_time_value() },
                    "listenPort" => lambda {|n| @listen_port = n.get_number_value() },
                    "network" => lambda {|n| @network = n.get_string_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "routeExcludes" => lambda {|n| @route_excludes = n.get_collection_of_primitive_values(String) },
                    "routeIncludes" => lambda {|n| @route_includes = n.get_collection_of_primitive_values(String) },
                    "routesExclude" => lambda {|n| @routes_exclude = n.get_collection_of_primitive_values(String) },
                    "routesInclude" => lambda {|n| @routes_include = n.get_collection_of_primitive_values(String) },
                    "splitDNS" => lambda {|n| @split_d_n_s = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the lastUpdateDateTime property value. When the configuration was last updated
            ## @return a date_time
            ## 
            def last_update_date_time
                return @last_update_date_time
            end
            ## 
            ## Sets the lastUpdateDateTime property value. When the configuration was last updated
            ## @param value Value to set for the lastUpdateDateTime property.
            ## @return a void
            ## 
            def last_update_date_time=(value)
                @last_update_date_time = value
            end
            ## 
            ## Gets the listenPort property value. The port that both TCP and UPD will listen over on the server
            ## @return a integer
            ## 
            def listen_port
                return @listen_port
            end
            ## 
            ## Sets the listenPort property value. The port that both TCP and UPD will listen over on the server
            ## @param value Value to set for the listenPort property.
            ## @return a void
            ## 
            def listen_port=(value)
                @listen_port = value
            end
            ## 
            ## Gets the network property value. The IPv4 subnet that will be used to allocate virtual address for the clients
            ## @return a string
            ## 
            def network
                return @network
            end
            ## 
            ## Sets the network property value. The IPv4 subnet that will be used to allocate virtual address for the clients
            ## @param value Value to set for the network property.
            ## @return a void
            ## 
            def network=(value)
                @network = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for this Entity instance
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for this Entity instance
            ## @param value Value to set for the roleScopeTagIds property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Gets the routeExcludes property value. Subsets of the routes that will not be routed by the server
            ## @return a string
            ## 
            def route_excludes
                return @route_excludes
            end
            ## 
            ## Sets the routeExcludes property value. Subsets of the routes that will not be routed by the server
            ## @param value Value to set for the routeExcludes property.
            ## @return a void
            ## 
            def route_excludes=(value)
                @route_excludes = value
            end
            ## 
            ## Gets the routeIncludes property value. The routes that will be routed by the server
            ## @return a string
            ## 
            def route_includes
                return @route_includes
            end
            ## 
            ## Sets the routeIncludes property value. The routes that will be routed by the server
            ## @param value Value to set for the routeIncludes property.
            ## @return a void
            ## 
            def route_includes=(value)
                @route_includes = value
            end
            ## 
            ## Gets the routesExclude property value. Subsets of the routes that will not be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteExcludes'.
            ## @return a string
            ## 
            def routes_exclude
                return @routes_exclude
            end
            ## 
            ## Sets the routesExclude property value. Subsets of the routes that will not be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteExcludes'.
            ## @param value Value to set for the routesExclude property.
            ## @return a void
            ## 
            def routes_exclude=(value)
                @routes_exclude = value
            end
            ## 
            ## Gets the routesInclude property value. The routes that will be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteIncludes'.
            ## @return a string
            ## 
            def routes_include
                return @routes_include
            end
            ## 
            ## Sets the routesInclude property value. The routes that will be routed by the server. This property is going to be deprecated with the option of using the new property, 'RouteIncludes'.
            ## @param value Value to set for the routesInclude property.
            ## @return a void
            ## 
            def routes_include=(value)
                @routes_include = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("advancedSettings", @advanced_settings)
                writer.write_string_value("defaultDomainSuffix", @default_domain_suffix)
                writer.write_string_value("description", @description)
                writer.write_boolean_value("disableUdpConnections", @disable_udp_connections)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_primitive_values("dnsServers", @dns_servers)
                writer.write_date_time_value("lastUpdateDateTime", @last_update_date_time)
                writer.write_number_value("listenPort", @listen_port)
                writer.write_string_value("network", @network)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_collection_of_primitive_values("routeExcludes", @route_excludes)
                writer.write_collection_of_primitive_values("routeIncludes", @route_includes)
                writer.write_collection_of_primitive_values("routesExclude", @routes_exclude)
                writer.write_collection_of_primitive_values("routesInclude", @routes_include)
                writer.write_collection_of_primitive_values("splitDNS", @split_d_n_s)
            end
            ## 
            ## Gets the splitDNS property value. The domains that will be resolved using the provided dns servers
            ## @return a string
            ## 
            def split_d_n_s
                return @split_d_n_s
            end
            ## 
            ## Sets the splitDNS property value. The domains that will be resolved using the provided dns servers
            ## @param value Value to set for the splitDNS property.
            ## @return a void
            ## 
            def split_d_n_s=(value)
                @split_d_n_s = value
            end
        end
    end
end
