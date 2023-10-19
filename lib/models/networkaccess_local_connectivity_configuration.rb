require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessLocalConnectivityConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The asn property
            @asn
            ## 
            # The bgpAddress property
            @bgp_address
            ## 
            # The endpoint property
            @endpoint
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The region property
            @region
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
            ## Gets the asn property value. The asn property
            ## @return a integer
            ## 
            def asn
                return @asn
            end
            ## 
            ## Sets the asn property value. The asn property
            ## @param value Value to set for the asn property.
            ## @return a void
            ## 
            def asn=(value)
                @asn = value
            end
            ## 
            ## Gets the bgpAddress property value. The bgpAddress property
            ## @return a string
            ## 
            def bgp_address
                return @bgp_address
            end
            ## 
            ## Sets the bgpAddress property value. The bgpAddress property
            ## @param value Value to set for the bgpAddress property.
            ## @return a void
            ## 
            def bgp_address=(value)
                @bgp_address = value
            end
            ## 
            ## Instantiates a new networkaccessLocalConnectivityConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_local_connectivity_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessLocalConnectivityConfiguration.new
            end
            ## 
            ## Gets the endpoint property value. The endpoint property
            ## @return a string
            ## 
            def endpoint
                return @endpoint
            end
            ## 
            ## Sets the endpoint property value. The endpoint property
            ## @param value Value to set for the endpoint property.
            ## @return a void
            ## 
            def endpoint=(value)
                @endpoint = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "asn" => lambda {|n| @asn = n.get_number_value() },
                    "bgpAddress" => lambda {|n| @bgp_address = n.get_string_value() },
                    "endpoint" => lambda {|n| @endpoint = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "region" => lambda {|n| @region = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessRegion) },
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
            ## Gets the region property value. The region property
            ## @return a networkaccess_region
            ## 
            def region
                return @region
            end
            ## 
            ## Sets the region property value. The region property
            ## @param value Value to set for the region property.
            ## @return a void
            ## 
            def region=(value)
                @region = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("asn", @asn)
                writer.write_string_value("bgpAddress", @bgp_address)
                writer.write_string_value("endpoint", @endpoint)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("region", @region)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
