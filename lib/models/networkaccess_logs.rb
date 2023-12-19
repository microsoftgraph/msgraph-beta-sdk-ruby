require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessLogs < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of remote network health events.
            @remote_networks
            ## 
            # A network access traffic log entry that contains comprehensive information about network traffic events.
            @traffic
            ## 
            ## Instantiates a new networkaccessLogs and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_logs
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessLogs.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "remoteNetworks" => lambda {|n| @remote_networks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessRemoteNetworkHealthEvent.create_from_discriminator_value(pn) }) },
                    "traffic" => lambda {|n| @traffic = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessNetworkAccessTraffic.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the remoteNetworks property value. A collection of remote network health events.
            ## @return a networkaccess_remote_network_health_event
            ## 
            def remote_networks
                return @remote_networks
            end
            ## 
            ## Sets the remoteNetworks property value. A collection of remote network health events.
            ## @param value Value to set for the remoteNetworks property.
            ## @return a void
            ## 
            def remote_networks=(value)
                @remote_networks = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("remoteNetworks", @remote_networks)
                writer.write_collection_of_object_values("traffic", @traffic)
            end
            ## 
            ## Gets the traffic property value. A network access traffic log entry that contains comprehensive information about network traffic events.
            ## @return a networkaccess_network_access_traffic
            ## 
            def traffic
                return @traffic
            end
            ## 
            ## Sets the traffic property value. A network access traffic log entry that contains comprehensive information about network traffic events.
            ## @param value Value to set for the traffic property.
            ## @return a void
            ## 
            def traffic=(value)
                @traffic = value
            end
        end
    end
end
