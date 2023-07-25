require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class RedundancyConfiguration
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The redundancyTier property
                @redundancy_tier
                ## 
                # Indicate the specific IP address used for establishing the Border Gateway Protocol (BGP) connection with Microsoft's network.
                @zone_local_ip_address
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
                ## Instantiates a new redundancyConfiguration and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a redundancy_configuration
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return RedundancyConfiguration.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "redundancyTier" => lambda {|n| @redundancy_tier = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::RedundancyTier) },
                        "zoneLocalIpAddress" => lambda {|n| @zone_local_ip_address = n.get_string_value() },
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
                ## Gets the redundancyTier property value. The redundancyTier property
                ## @return a redundancy_tier
                ## 
                def redundancy_tier
                    return @redundancy_tier
                end
                ## 
                ## Sets the redundancyTier property value. The redundancyTier property
                ## @param value Value to set for the redundancyTier property.
                ## @return a void
                ## 
                def redundancy_tier=(value)
                    @redundancy_tier = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("redundancyTier", @redundancy_tier)
                    writer.write_string_value("zoneLocalIpAddress", @zone_local_ip_address)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the zoneLocalIpAddress property value. Indicate the specific IP address used for establishing the Border Gateway Protocol (BGP) connection with Microsoft's network.
                ## @return a string
                ## 
                def zone_local_ip_address
                    return @zone_local_ip_address
                end
                ## 
                ## Sets the zoneLocalIpAddress property value. Indicate the specific IP address used for establishing the Border Gateway Protocol (BGP) connection with Microsoft's network.
                ## @param value Value to set for the zoneLocalIpAddress property.
                ## @return a void
                ## 
                def zone_local_ip_address=(value)
                    @zone_local_ip_address = value
                end
            end
        end
    end
end
