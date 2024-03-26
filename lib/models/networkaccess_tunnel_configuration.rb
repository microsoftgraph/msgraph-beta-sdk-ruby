require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessTunnelConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A key to establish secure connection between the link and VPN tunnel on the edge.
            @pre_shared_key
            ## 
            # The zoneRedundancyPreSharedKey property
            @zone_redundancy_pre_shared_key
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
            ## Instantiates a new NetworkaccessTunnelConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_tunnel_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Custom"
                            return NetworkaccessTunnelConfigurationIKEv2Custom.new
                        when "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default"
                            return NetworkaccessTunnelConfigurationIKEv2Default.new
                    end
                end
                return NetworkaccessTunnelConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "preSharedKey" => lambda {|n| @pre_shared_key = n.get_string_value() },
                    "zoneRedundancyPreSharedKey" => lambda {|n| @zone_redundancy_pre_shared_key = n.get_string_value() },
                }
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
            ## Gets the preSharedKey property value. A key to establish secure connection between the link and VPN tunnel on the edge.
            ## @return a string
            ## 
            def pre_shared_key
                return @pre_shared_key
            end
            ## 
            ## Sets the preSharedKey property value. A key to establish secure connection between the link and VPN tunnel on the edge.
            ## @param value Value to set for the preSharedKey property.
            ## @return a void
            ## 
            def pre_shared_key=(value)
                @pre_shared_key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("preSharedKey", @pre_shared_key)
                writer.write_string_value("zoneRedundancyPreSharedKey", @zone_redundancy_pre_shared_key)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the zoneRedundancyPreSharedKey property value. The zoneRedundancyPreSharedKey property
            ## @return a string
            ## 
            def zone_redundancy_pre_shared_key
                return @zone_redundancy_pre_shared_key
            end
            ## 
            ## Sets the zoneRedundancyPreSharedKey property value. The zoneRedundancyPreSharedKey property
            ## @param value Value to set for the zoneRedundancyPreSharedKey property.
            ## @return a void
            ## 
            def zone_redundancy_pre_shared_key=(value)
                @zone_redundancy_pre_shared_key = value
            end
        end
    end
end
