require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessConnectivityConfigurationLink < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the name of the link.
            @display_name
            ## 
            # Specifies Microsoft's end of the tunnel configuration for a device link.
            @local_configurations
            ## 
            # The peerConfiguration property
            @peer_configuration
            ## 
            ## Instantiates a new NetworkaccessConnectivityConfigurationLink and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_connectivity_configuration_link
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessConnectivityConfigurationLink.new
            end
            ## 
            ## Gets the displayName property value. Specifies the name of the link.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Specifies the name of the link.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "localConfigurations" => lambda {|n| @local_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessLocalConnectivityConfiguration.create_from_discriminator_value(pn) }) },
                    "peerConfiguration" => lambda {|n| @peer_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessPeerConnectivityConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the localConfigurations property value. Specifies Microsoft's end of the tunnel configuration for a device link.
            ## @return a networkaccess_local_connectivity_configuration
            ## 
            def local_configurations
                return @local_configurations
            end
            ## 
            ## Sets the localConfigurations property value. Specifies Microsoft's end of the tunnel configuration for a device link.
            ## @param value Value to set for the localConfigurations property.
            ## @return a void
            ## 
            def local_configurations=(value)
                @local_configurations = value
            end
            ## 
            ## Gets the peerConfiguration property value. The peerConfiguration property
            ## @return a networkaccess_peer_connectivity_configuration
            ## 
            def peer_configuration
                return @peer_configuration
            end
            ## 
            ## Sets the peerConfiguration property value. The peerConfiguration property
            ## @param value Value to set for the peerConfiguration property.
            ## @return a void
            ## 
            def peer_configuration=(value)
                @peer_configuration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("localConfigurations", @local_configurations)
                writer.write_object_value("peerConfiguration", @peer_configuration)
            end
        end
    end
end
