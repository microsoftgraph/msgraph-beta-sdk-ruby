require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OidcAddressInboundClaims
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Country name.
            @country
            ## 
            # City or locality.
            @locality
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Zip code or postal code.
            @postal_code
            ## 
            # Country name.
            @region
            ## 
            # Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair ('/r/n') or as a single line feed character ('/n').
            @street_address
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
            ## Instantiates a new OidcAddressInboundClaims and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the country property value. Country name.
            ## @return a string
            ## 
            def country
                return @country
            end
            ## 
            ## Sets the country property value. Country name.
            ## @param value Value to set for the country property.
            ## @return a void
            ## 
            def country=(value)
                @country = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a oidc_address_inbound_claims
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OidcAddressInboundClaims.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "country" => lambda {|n| @country = n.get_string_value() },
                    "locality" => lambda {|n| @locality = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "postal_code" => lambda {|n| @postal_code = n.get_string_value() },
                    "region" => lambda {|n| @region = n.get_string_value() },
                    "street_address" => lambda {|n| @street_address = n.get_string_value() },
                }
            end
            ## 
            ## Gets the locality property value. City or locality.
            ## @return a string
            ## 
            def locality
                return @locality
            end
            ## 
            ## Sets the locality property value. City or locality.
            ## @param value Value to set for the locality property.
            ## @return a void
            ## 
            def locality=(value)
                @locality = value
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
            ## Gets the postal_code property value. Zip code or postal code.
            ## @return a string
            ## 
            def postal_code
                return @postal_code
            end
            ## 
            ## Sets the postal_code property value. Zip code or postal code.
            ## @param value Value to set for the postal_code property.
            ## @return a void
            ## 
            def postal_code=(value)
                @postal_code = value
            end
            ## 
            ## Gets the region property value. Country name.
            ## @return a string
            ## 
            def region
                return @region
            end
            ## 
            ## Sets the region property value. Country name.
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
                writer.write_string_value("country", @country)
                writer.write_string_value("locality", @locality)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("postal_code", @postal_code)
                writer.write_string_value("region", @region)
                writer.write_string_value("street_address", @street_address)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the street_address property value. Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair ('/r/n') or as a single line feed character ('/n').
            ## @return a string
            ## 
            def street_address
                return @street_address
            end
            ## 
            ## Sets the street_address property value. Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair ('/r/n') or as a single line feed character ('/n').
            ## @param value Value to set for the street_address property.
            ## @return a void
            ## 
            def street_address=(value)
                @street_address = value
            end
        end
    end
end
