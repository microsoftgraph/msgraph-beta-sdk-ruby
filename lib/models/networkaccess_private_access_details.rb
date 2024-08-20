require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessPrivateAccessDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessType property
            @access_type
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The connectionStatus property
            @connection_status
            ## 
            # The connectorId property
            @connector_id
            ## 
            # The connectorIp property
            @connector_ip
            ## 
            # The connectorName property
            @connector_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The processingRegion property
            @processing_region
            ## 
            # The thirdPartyTokenDetails property
            @third_party_token_details
            ## 
            ## Gets the accessType property value. The accessType property
            ## @return a networkaccess_access_type
            ## 
            def access_type
                return @access_type
            end
            ## 
            ## Sets the accessType property value. The accessType property
            ## @param value Value to set for the accessType property.
            ## @return a void
            ## 
            def access_type=(value)
                @access_type = value
            end
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
            ## Gets the connectionStatus property value. The connectionStatus property
            ## @return a networkaccess_connection_status
            ## 
            def connection_status
                return @connection_status
            end
            ## 
            ## Sets the connectionStatus property value. The connectionStatus property
            ## @param value Value to set for the connectionStatus property.
            ## @return a void
            ## 
            def connection_status=(value)
                @connection_status = value
            end
            ## 
            ## Gets the connectorId property value. The connectorId property
            ## @return a string
            ## 
            def connector_id
                return @connector_id
            end
            ## 
            ## Sets the connectorId property value. The connectorId property
            ## @param value Value to set for the connectorId property.
            ## @return a void
            ## 
            def connector_id=(value)
                @connector_id = value
            end
            ## 
            ## Gets the connectorIp property value. The connectorIp property
            ## @return a string
            ## 
            def connector_ip
                return @connector_ip
            end
            ## 
            ## Sets the connectorIp property value. The connectorIp property
            ## @param value Value to set for the connectorIp property.
            ## @return a void
            ## 
            def connector_ip=(value)
                @connector_ip = value
            end
            ## 
            ## Gets the connectorName property value. The connectorName property
            ## @return a string
            ## 
            def connector_name
                return @connector_name
            end
            ## 
            ## Sets the connectorName property value. The connectorName property
            ## @param value Value to set for the connectorName property.
            ## @return a void
            ## 
            def connector_name=(value)
                @connector_name = value
            end
            ## 
            ## Instantiates a new NetworkaccessPrivateAccessDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_private_access_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessPrivateAccessDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accessType" => lambda {|n| @access_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessAccessType) },
                    "connectionStatus" => lambda {|n| @connection_status = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessConnectionStatus) },
                    "connectorId" => lambda {|n| @connector_id = n.get_string_value() },
                    "connectorIp" => lambda {|n| @connector_ip = n.get_string_value() },
                    "connectorName" => lambda {|n| @connector_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "processingRegion" => lambda {|n| @processing_region = n.get_string_value() },
                    "thirdPartyTokenDetails" => lambda {|n| @third_party_token_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessThirdPartyTokenDetails.create_from_discriminator_value(pn) }) },
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
            ## Gets the processingRegion property value. The processingRegion property
            ## @return a string
            ## 
            def processing_region
                return @processing_region
            end
            ## 
            ## Sets the processingRegion property value. The processingRegion property
            ## @param value Value to set for the processingRegion property.
            ## @return a void
            ## 
            def processing_region=(value)
                @processing_region = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("accessType", @access_type)
                writer.write_enum_value("connectionStatus", @connection_status)
                writer.write_string_value("connectorId", @connector_id)
                writer.write_string_value("connectorIp", @connector_ip)
                writer.write_string_value("connectorName", @connector_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("processingRegion", @processing_region)
                writer.write_object_value("thirdPartyTokenDetails", @third_party_token_details)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the thirdPartyTokenDetails property value. The thirdPartyTokenDetails property
            ## @return a networkaccess_third_party_token_details
            ## 
            def third_party_token_details
                return @third_party_token_details
            end
            ## 
            ## Sets the thirdPartyTokenDetails property value. The thirdPartyTokenDetails property
            ## @param value Value to set for the thirdPartyTokenDetails property.
            ## @return a void
            ## 
            def third_party_token_details=(value)
                @third_party_token_details = value
            end
        end
    end
end
