require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRemoteNetworkConnectivityConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The links property
            @links
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The remoteNetworkId property
            @remote_network_id
            ## 
            # The remoteNetworkName property
            @remote_network_name
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new networkaccessRemoteNetworkConnectivityConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_remote_network_connectivity_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRemoteNetworkConnectivityConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "links" => lambda {|n| @links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessConnectivityConfigurationLink.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "remoteNetworkId" => lambda {|n| @remote_network_id = n.get_string_value() },
                    "remoteNetworkName" => lambda {|n| @remote_network_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the links property value. The links property
            ## @return a networkaccess_connectivity_configuration_link
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. The links property
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
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
            ## Gets the remoteNetworkId property value. The remoteNetworkId property
            ## @return a string
            ## 
            def remote_network_id
                return @remote_network_id
            end
            ## 
            ## Sets the remoteNetworkId property value. The remoteNetworkId property
            ## @param value Value to set for the remoteNetworkId property.
            ## @return a void
            ## 
            def remote_network_id=(value)
                @remote_network_id = value
            end
            ## 
            ## Gets the remoteNetworkName property value. The remoteNetworkName property
            ## @return a string
            ## 
            def remote_network_name
                return @remote_network_name
            end
            ## 
            ## Sets the remoteNetworkName property value. The remoteNetworkName property
            ## @param value Value to set for the remoteNetworkName property.
            ## @return a void
            ## 
            def remote_network_name=(value)
                @remote_network_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("links", @links)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("remoteNetworkId", @remote_network_id)
                writer.write_string_value("remoteNetworkName", @remote_network_name)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
