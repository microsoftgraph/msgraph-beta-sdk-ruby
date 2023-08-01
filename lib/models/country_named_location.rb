require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CountryNamedLocation < MicrosoftGraphBeta::Models::NamedLocation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of countries and/or regions in two-letter format specified by ISO 3166-2.
            @countries_and_regions
            ## 
            # Determines what method is used to decide which country the user is located in. Possible values are clientIpAddress (default) and authenticatorAppGps.
            @country_lookup_method
            ## 
            # true if IP addresses that don't map to a country or region should be included in the named location. Optional. Default value is false.
            @include_unknown_countries_and_regions
            ## 
            ## Instantiates a new countryNamedLocation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the countriesAndRegions property value. List of countries and/or regions in two-letter format specified by ISO 3166-2.
            ## @return a string
            ## 
            def countries_and_regions
                return @countries_and_regions
            end
            ## 
            ## Sets the countriesAndRegions property value. List of countries and/or regions in two-letter format specified by ISO 3166-2.
            ## @param value Value to set for the countriesAndRegions property.
            ## @return a void
            ## 
            def countries_and_regions=(value)
                @countries_and_regions = value
            end
            ## 
            ## Gets the countryLookupMethod property value. Determines what method is used to decide which country the user is located in. Possible values are clientIpAddress (default) and authenticatorAppGps.
            ## @return a country_lookup_method_type
            ## 
            def country_lookup_method
                return @country_lookup_method
            end
            ## 
            ## Sets the countryLookupMethod property value. Determines what method is used to decide which country the user is located in. Possible values are clientIpAddress (default) and authenticatorAppGps.
            ## @param value Value to set for the countryLookupMethod property.
            ## @return a void
            ## 
            def country_lookup_method=(value)
                @country_lookup_method = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a country_named_location
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CountryNamedLocation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "countriesAndRegions" => lambda {|n| @countries_and_regions = n.get_collection_of_primitive_values(String) },
                    "countryLookupMethod" => lambda {|n| @country_lookup_method = n.get_enum_value(MicrosoftGraphBeta::Models::CountryLookupMethodType) },
                    "includeUnknownCountriesAndRegions" => lambda {|n| @include_unknown_countries_and_regions = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the includeUnknownCountriesAndRegions property value. true if IP addresses that don't map to a country or region should be included in the named location. Optional. Default value is false.
            ## @return a boolean
            ## 
            def include_unknown_countries_and_regions
                return @include_unknown_countries_and_regions
            end
            ## 
            ## Sets the includeUnknownCountriesAndRegions property value. true if IP addresses that don't map to a country or region should be included in the named location. Optional. Default value is false.
            ## @param value Value to set for the includeUnknownCountriesAndRegions property.
            ## @return a void
            ## 
            def include_unknown_countries_and_regions=(value)
                @include_unknown_countries_and_regions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("countriesAndRegions", @countries_and_regions)
                writer.write_enum_value("countryLookupMethod", @country_lookup_method)
                writer.write_boolean_value("includeUnknownCountriesAndRegions", @include_unknown_countries_and_regions)
            end
        end
    end
end
