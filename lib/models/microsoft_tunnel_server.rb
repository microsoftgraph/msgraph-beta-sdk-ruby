require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that represents a single Microsoft Tunnel server
        class MicrosoftTunnelServer < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The digest of the current agent image running on this server. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.
            @agent_image_digest
            ## 
            # Microsoft Tunnel server deployment mode. The value is set when the server is registered. Possible values are standaloneRootful, standaloneRootless, podRootful, podRootless. Default value: standaloneRootful. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only. Possible values are: standaloneRootful, standaloneRootless, podRootful, podRootless, unknownFutureValue.
            @deployment_mode
            ## 
            # The display name of the server. It is the same as the host name during registration and can be changed later. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Max allowed length is 200 chars.
            @display_name
            ## 
            # Indicates when the server last checked in. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported Read-only.
            @last_checkin_date_time
            ## 
            # The digest of the current server image running on this server. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.
            @server_image_digest
            ## 
            # Enum of possible MicrosoftTunnelServer health status types
            @tunnel_server_health_status
            ## 
            ## Gets the agentImageDigest property value. The digest of the current agent image running on this server. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.
            ## @return a string
            ## 
            def agent_image_digest
                return @agent_image_digest
            end
            ## 
            ## Sets the agentImageDigest property value. The digest of the current agent image running on this server. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.
            ## @param value Value to set for the agentImageDigest property.
            ## @return a void
            ## 
            def agent_image_digest=(value)
                @agent_image_digest = value
            end
            ## 
            ## Instantiates a new MicrosoftTunnelServer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_tunnel_server
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftTunnelServer.new
            end
            ## 
            ## Gets the deploymentMode property value. Microsoft Tunnel server deployment mode. The value is set when the server is registered. Possible values are standaloneRootful, standaloneRootless, podRootful, podRootless. Default value: standaloneRootful. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only. Possible values are: standaloneRootful, standaloneRootless, podRootful, podRootless, unknownFutureValue.
            ## @return a microsoft_tunnel_deployment_mode
            ## 
            def deployment_mode
                return @deployment_mode
            end
            ## 
            ## Sets the deploymentMode property value. Microsoft Tunnel server deployment mode. The value is set when the server is registered. Possible values are standaloneRootful, standaloneRootless, podRootful, podRootless. Default value: standaloneRootful. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only. Possible values are: standaloneRootful, standaloneRootless, podRootful, podRootless, unknownFutureValue.
            ## @param value Value to set for the deploymentMode property.
            ## @return a void
            ## 
            def deployment_mode=(value)
                @deployment_mode = value
            end
            ## 
            ## Gets the displayName property value. The display name of the server. It is the same as the host name during registration and can be changed later. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Max allowed length is 200 chars.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the server. It is the same as the host name during registration and can be changed later. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Max allowed length is 200 chars.
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
                    "agentImageDigest" => lambda {|n| @agent_image_digest = n.get_string_value() },
                    "deploymentMode" => lambda {|n| @deployment_mode = n.get_enum_value(MicrosoftGraphBeta::Models::MicrosoftTunnelDeploymentMode) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastCheckinDateTime" => lambda {|n| @last_checkin_date_time = n.get_date_time_value() },
                    "serverImageDigest" => lambda {|n| @server_image_digest = n.get_string_value() },
                    "tunnelServerHealthStatus" => lambda {|n| @tunnel_server_health_status = n.get_enum_value(MicrosoftGraphBeta::Models::MicrosoftTunnelServerHealthStatus) },
                })
            end
            ## 
            ## Gets the lastCheckinDateTime property value. Indicates when the server last checked in. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported Read-only.
            ## @return a date_time
            ## 
            def last_checkin_date_time
                return @last_checkin_date_time
            end
            ## 
            ## Sets the lastCheckinDateTime property value. Indicates when the server last checked in. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported Read-only.
            ## @param value Value to set for the lastCheckinDateTime property.
            ## @return a void
            ## 
            def last_checkin_date_time=(value)
                @last_checkin_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("agentImageDigest", @agent_image_digest)
                writer.write_enum_value("deploymentMode", @deployment_mode)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastCheckinDateTime", @last_checkin_date_time)
                writer.write_string_value("serverImageDigest", @server_image_digest)
                writer.write_enum_value("tunnelServerHealthStatus", @tunnel_server_health_status)
            end
            ## 
            ## Gets the serverImageDigest property value. The digest of the current server image running on this server. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.
            ## @return a string
            ## 
            def server_image_digest
                return @server_image_digest
            end
            ## 
            ## Sets the serverImageDigest property value. The digest of the current server image running on this server. Supports: $filter, $select, $top, $skip, $orderby. $search is not supported. Read-only.
            ## @param value Value to set for the serverImageDigest property.
            ## @return a void
            ## 
            def server_image_digest=(value)
                @server_image_digest = value
            end
            ## 
            ## Gets the tunnelServerHealthStatus property value. Enum of possible MicrosoftTunnelServer health status types
            ## @return a microsoft_tunnel_server_health_status
            ## 
            def tunnel_server_health_status
                return @tunnel_server_health_status
            end
            ## 
            ## Sets the tunnelServerHealthStatus property value. Enum of possible MicrosoftTunnelServer health status types
            ## @param value Value to set for the tunnelServerHealthStatus property.
            ## @return a void
            ## 
            def tunnel_server_health_status=(value)
                @tunnel_server_health_status = value
            end
        end
    end
end
