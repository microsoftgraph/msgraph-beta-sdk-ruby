require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './networkaccess/networkaccess'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessBgpConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies the ASN of the BGP.
            @asn
            ## 
            # The ipAddress property
            @ip_address
            ## 
            # Specifies the BGP IP address of peer (Microsoft, in this case).
            @local_ip_address
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies the BGP IP address of customer's on-premise VPN router configuration.
            @peer_ip_address
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
            ## Gets the asn property value. Specifies the ASN of the BGP.
            ## @return a integer
            ## 
            def asn
                return @asn
            end
            ## 
            ## Sets the asn property value. Specifies the ASN of the BGP.
            ## @param value Value to set for the asn property.
            ## @return a void
            ## 
            def asn=(value)
                @asn = value
            end
            ## 
            ## Instantiates a new bgpConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_bgp_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessBgpConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "asn" => lambda {|n| @asn = n.get_number_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "localIpAddress" => lambda {|n| @local_ip_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "peerIpAddress" => lambda {|n| @peer_ip_address = n.get_string_value() },
                }
            end
            ## 
            ## Gets the ipAddress property value. The ipAddress property
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The ipAddress property
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the localIpAddress property value. Specifies the BGP IP address of peer (Microsoft, in this case).
            ## @return a string
            ## 
            def local_ip_address
                return @local_ip_address
            end
            ## 
            ## Sets the localIpAddress property value. Specifies the BGP IP address of peer (Microsoft, in this case).
            ## @param value Value to set for the localIpAddress property.
            ## @return a void
            ## 
            def local_ip_address=(value)
                @local_ip_address = value
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
            ## Gets the peerIpAddress property value. Specifies the BGP IP address of customer's on-premise VPN router configuration.
            ## @return a string
            ## 
            def peer_ip_address
                return @peer_ip_address
            end
            ## 
            ## Sets the peerIpAddress property value. Specifies the BGP IP address of customer's on-premise VPN router configuration.
            ## @param value Value to set for the peerIpAddress property.
            ## @return a void
            ## 
            def peer_ip_address=(value)
                @peer_ip_address = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("asn", @asn)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("localIpAddress", @local_ip_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("peerIpAddress", @peer_ip_address)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
