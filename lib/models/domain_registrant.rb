require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DomainRegistrant
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The countryOrRegionCode property
            @country_or_region_code
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The organization property
            @organization
            ## 
            # The url property
            @url
            ## 
            # The vendor property
            @vendor
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
            ## Instantiates a new DomainRegistrant and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countryOrRegionCode property value. The countryOrRegionCode property
            ## @return a string
            ## 
            def country_or_region_code
                return @country_or_region_code
            end
            ## 
            ## Sets the countryOrRegionCode property value. The countryOrRegionCode property
            ## @param value Value to set for the countryOrRegionCode property.
            ## @return a void
            ## 
            def country_or_region_code=(value)
                @country_or_region_code = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a domain_registrant
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DomainRegistrant.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "countryOrRegionCode" => lambda {|n| @country_or_region_code = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organization" => lambda {|n| @organization = n.get_string_value() },
                    "url" => lambda {|n| @url = n.get_string_value() },
                    "vendor" => lambda {|n| @vendor = n.get_string_value() },
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
            ## Gets the organization property value. The organization property
            ## @return a string
            ## 
            def organization
                return @organization
            end
            ## 
            ## Sets the organization property value. The organization property
            ## @param value Value to set for the organization property.
            ## @return a void
            ## 
            def organization=(value)
                @organization = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("countryOrRegionCode", @country_or_region_code)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("organization", @organization)
                writer.write_string_value("url", @url)
                writer.write_string_value("vendor", @vendor)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the url property value. The url property
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. The url property
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
            ## 
            ## Gets the vendor property value. The vendor property
            ## @return a string
            ## 
            def vendor
                return @vendor
            end
            ## 
            ## Sets the vendor property value. The vendor property
            ## @param value Value to set for the vendor property.
            ## @return a void
            ## 
            def vendor=(value)
                @vendor = value
            end
        end
    end
end
