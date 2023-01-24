require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Entity that represents a Microsoft Tunnel site
    class MicrosoftTunnelSite < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The site's description (optional)
        @description
        ## 
        # The display name for the site. This property is required when a site is created.
        @display_name
        ## 
        # The site's Internal Network Access Probe URL
        @internal_network_probe_url
        ## 
        # The MicrosoftTunnelConfiguration that has been applied to this MicrosoftTunnelSite
        @microsoft_tunnel_configuration
        ## 
        # A list of MicrosoftTunnelServers that are registered to this MicrosoftTunnelSite
        @microsoft_tunnel_servers
        ## 
        # The site's public domain name or IP address
        @public_address
        ## 
        # List of Scope Tags for this Entity instance
        @role_scope_tag_ids
        ## 
        # The site's automatic upgrade setting. True for automatic upgrades, false for manual control
        @upgrade_automatically
        ## 
        # The site provides the state of when an upgrade is available
        @upgrade_available
        ## 
        # The site's upgrade window end time of day
        @upgrade_window_end_time
        ## 
        # The site's upgrade window start time of day
        @upgrade_window_start_time
        ## 
        # The site's timezone represented as a minute offset from UTC
        @upgrade_window_utc_offset_in_minutes
        ## 
        ## Instantiates a new microsoftTunnelSite and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a microsoft_tunnel_site
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MicrosoftTunnelSite.new
        end
        ## 
        ## Gets the description property value. The site's description (optional)
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The site's description (optional)
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The display name for the site. This property is required when a site is created.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name for the site. This property is required when a site is created.
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
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "internalNetworkProbeUrl" => lambda {|n| @internal_network_probe_url = n.get_string_value() },
                "microsoftTunnelConfiguration" => lambda {|n| @microsoft_tunnel_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MicrosoftTunnelConfiguration.create_from_discriminator_value(pn) }) },
                "microsoftTunnelServers" => lambda {|n| @microsoft_tunnel_servers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MicrosoftTunnelServer.create_from_discriminator_value(pn) }) },
                "publicAddress" => lambda {|n| @public_address = n.get_string_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                "upgradeAutomatically" => lambda {|n| @upgrade_automatically = n.get_boolean_value() },
                "upgradeAvailable" => lambda {|n| @upgrade_available = n.get_boolean_value() },
                "upgradeWindowEndTime" => lambda {|n| @upgrade_window_end_time = n.get_time_value() },
                "upgradeWindowStartTime" => lambda {|n| @upgrade_window_start_time = n.get_time_value() },
                "upgradeWindowUtcOffsetInMinutes" => lambda {|n| @upgrade_window_utc_offset_in_minutes = n.get_number_value() },
            })
        end
        ## 
        ## Gets the internalNetworkProbeUrl property value. The site's Internal Network Access Probe URL
        ## @return a string
        ## 
        def internal_network_probe_url
            return @internal_network_probe_url
        end
        ## 
        ## Sets the internalNetworkProbeUrl property value. The site's Internal Network Access Probe URL
        ## @param value Value to set for the internalNetworkProbeUrl property.
        ## @return a void
        ## 
        def internal_network_probe_url=(value)
            @internal_network_probe_url = value
        end
        ## 
        ## Gets the microsoftTunnelConfiguration property value. The MicrosoftTunnelConfiguration that has been applied to this MicrosoftTunnelSite
        ## @return a microsoft_tunnel_configuration
        ## 
        def microsoft_tunnel_configuration
            return @microsoft_tunnel_configuration
        end
        ## 
        ## Sets the microsoftTunnelConfiguration property value. The MicrosoftTunnelConfiguration that has been applied to this MicrosoftTunnelSite
        ## @param value Value to set for the microsoftTunnelConfiguration property.
        ## @return a void
        ## 
        def microsoft_tunnel_configuration=(value)
            @microsoft_tunnel_configuration = value
        end
        ## 
        ## Gets the microsoftTunnelServers property value. A list of MicrosoftTunnelServers that are registered to this MicrosoftTunnelSite
        ## @return a microsoft_tunnel_server
        ## 
        def microsoft_tunnel_servers
            return @microsoft_tunnel_servers
        end
        ## 
        ## Sets the microsoftTunnelServers property value. A list of MicrosoftTunnelServers that are registered to this MicrosoftTunnelSite
        ## @param value Value to set for the microsoftTunnelServers property.
        ## @return a void
        ## 
        def microsoft_tunnel_servers=(value)
            @microsoft_tunnel_servers = value
        end
        ## 
        ## Gets the publicAddress property value. The site's public domain name or IP address
        ## @return a string
        ## 
        def public_address
            return @public_address
        end
        ## 
        ## Sets the publicAddress property value. The site's public domain name or IP address
        ## @param value Value to set for the publicAddress property.
        ## @return a void
        ## 
        def public_address=(value)
            @public_address = value
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("internalNetworkProbeUrl", @internal_network_probe_url)
            writer.write_object_value("microsoftTunnelConfiguration", @microsoft_tunnel_configuration)
            writer.write_collection_of_object_values("microsoftTunnelServers", @microsoft_tunnel_servers)
            writer.write_string_value("publicAddress", @public_address)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            writer.write_boolean_value("upgradeAutomatically", @upgrade_automatically)
            writer.write_boolean_value("upgradeAvailable", @upgrade_available)
            writer.write_time_value("upgradeWindowEndTime", @upgrade_window_end_time)
            writer.write_time_value("upgradeWindowStartTime", @upgrade_window_start_time)
            writer.write_number_value("upgradeWindowUtcOffsetInMinutes", @upgrade_window_utc_offset_in_minutes)
        end
        ## 
        ## Gets the upgradeAutomatically property value. The site's automatic upgrade setting. True for automatic upgrades, false for manual control
        ## @return a boolean
        ## 
        def upgrade_automatically
            return @upgrade_automatically
        end
        ## 
        ## Sets the upgradeAutomatically property value. The site's automatic upgrade setting. True for automatic upgrades, false for manual control
        ## @param value Value to set for the upgradeAutomatically property.
        ## @return a void
        ## 
        def upgrade_automatically=(value)
            @upgrade_automatically = value
        end
        ## 
        ## Gets the upgradeAvailable property value. The site provides the state of when an upgrade is available
        ## @return a boolean
        ## 
        def upgrade_available
            return @upgrade_available
        end
        ## 
        ## Sets the upgradeAvailable property value. The site provides the state of when an upgrade is available
        ## @param value Value to set for the upgradeAvailable property.
        ## @return a void
        ## 
        def upgrade_available=(value)
            @upgrade_available = value
        end
        ## 
        ## Gets the upgradeWindowEndTime property value. The site's upgrade window end time of day
        ## @return a time
        ## 
        def upgrade_window_end_time
            return @upgrade_window_end_time
        end
        ## 
        ## Sets the upgradeWindowEndTime property value. The site's upgrade window end time of day
        ## @param value Value to set for the upgradeWindowEndTime property.
        ## @return a void
        ## 
        def upgrade_window_end_time=(value)
            @upgrade_window_end_time = value
        end
        ## 
        ## Gets the upgradeWindowStartTime property value. The site's upgrade window start time of day
        ## @return a time
        ## 
        def upgrade_window_start_time
            return @upgrade_window_start_time
        end
        ## 
        ## Sets the upgradeWindowStartTime property value. The site's upgrade window start time of day
        ## @param value Value to set for the upgradeWindowStartTime property.
        ## @return a void
        ## 
        def upgrade_window_start_time=(value)
            @upgrade_window_start_time = value
        end
        ## 
        ## Gets the upgradeWindowUtcOffsetInMinutes property value. The site's timezone represented as a minute offset from UTC
        ## @return a integer
        ## 
        def upgrade_window_utc_offset_in_minutes
            return @upgrade_window_utc_offset_in_minutes
        end
        ## 
        ## Sets the upgradeWindowUtcOffsetInMinutes property value. The site's timezone represented as a minute offset from UTC
        ## @param value Value to set for the upgradeWindowUtcOffsetInMinutes property.
        ## @return a void
        ## 
        def upgrade_window_utc_offset_in_minutes=(value)
            @upgrade_window_utc_offset_in_minutes = value
        end
    end
end
