require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ItemAddress < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The detail property
            @detail
            ## 
            # Friendly name the user has assigned to this address.
            @display_name
            ## 
            # The geocoordinates of the address.
            @geo_coordinates
            ## 
            ## Instantiates a new ItemAddress and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.itemAddress"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_address
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemAddress.new
            end
            ## 
            ## Gets the detail property value. The detail property
            ## @return a physical_address
            ## 
            def detail
                return @detail
            end
            ## 
            ## Sets the detail property value. The detail property
            ## @param value Value to set for the detail property.
            ## @return a void
            ## 
            def detail=(value)
                @detail = value
            end
            ## 
            ## Gets the displayName property value. Friendly name the user has assigned to this address.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Friendly name the user has assigned to this address.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the geoCoordinates property value. The geocoordinates of the address.
            ## @return a geo_coordinates
            ## 
            def geo_coordinates
                return @geo_coordinates
            end
            ## 
            ## Sets the geoCoordinates property value. The geocoordinates of the address.
            ## @param value Value to set for the geo_coordinates property.
            ## @return a void
            ## 
            def geo_coordinates=(value)
                @geo_coordinates = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "detail" => lambda {|n| @detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "geoCoordinates" => lambda {|n| @geo_coordinates = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GeoCoordinates.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("detail", @detail)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("geoCoordinates", @geo_coordinates)
            end
        end
    end
end
