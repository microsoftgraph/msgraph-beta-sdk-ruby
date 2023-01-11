require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PhysicalAddress
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The city.
        @city
        ## 
        # The country or region. It's a free-format string value, for example, 'United States'.
        @country_or_region
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The postal code.
        @postal_code
        ## 
        # The post office box number.
        @post_office_box
        ## 
        # The state.
        @state
        ## 
        # The street.
        @street
        ## 
        # The type of address. Possible values are: unknown, home, business, other.
        @type
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the city property value. The city.
        ## @return a string
        ## 
        def city
            return @city
        end
        ## 
        ## Sets the city property value. The city.
        ## @param value Value to set for the city property.
        ## @return a void
        ## 
        def city=(value)
            @city = value
        end
        ## 
        ## Instantiates a new physicalAddress and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Gets the countryOrRegion property value. The country or region. It's a free-format string value, for example, 'United States'.
        ## @return a string
        ## 
        def country_or_region
            return @country_or_region
        end
        ## 
        ## Sets the countryOrRegion property value. The country or region. It's a free-format string value, for example, 'United States'.
        ## @param value Value to set for the countryOrRegion property.
        ## @return a void
        ## 
        def country_or_region=(value)
            @country_or_region = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a physical_address
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PhysicalAddress.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "city" => lambda {|n| @city = n.get_string_value() },
                "countryOrRegion" => lambda {|n| @country_or_region = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "postalCode" => lambda {|n| @postal_code = n.get_string_value() },
                "postOfficeBox" => lambda {|n| @post_office_box = n.get_string_value() },
                "state" => lambda {|n| @state = n.get_string_value() },
                "street" => lambda {|n| @street = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::PhysicalAddressType) },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the postalCode property value. The postal code.
        ## @return a string
        ## 
        def postal_code
            return @postal_code
        end
        ## 
        ## Sets the postalCode property value. The postal code.
        ## @param value Value to set for the postalCode property.
        ## @return a void
        ## 
        def postal_code=(value)
            @postal_code = value
        end
        ## 
        ## Gets the postOfficeBox property value. The post office box number.
        ## @return a string
        ## 
        def post_office_box
            return @post_office_box
        end
        ## 
        ## Sets the postOfficeBox property value. The post office box number.
        ## @param value Value to set for the postOfficeBox property.
        ## @return a void
        ## 
        def post_office_box=(value)
            @post_office_box = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("city", @city)
            writer.write_string_value("countryOrRegion", @country_or_region)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("postalCode", @postal_code)
            writer.write_string_value("postOfficeBox", @post_office_box)
            writer.write_string_value("state", @state)
            writer.write_string_value("street", @street)
            writer.write_enum_value("type", @type)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the state property value. The state.
        ## @return a string
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. The state.
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
        end
        ## 
        ## Gets the street property value. The street.
        ## @return a string
        ## 
        def street
            return @street
        end
        ## 
        ## Sets the street property value. The street.
        ## @param value Value to set for the street property.
        ## @return a void
        ## 
        def street=(value)
            @street = value
        end
        ## 
        ## Gets the type property value. The type of address. Possible values are: unknown, home, business, other.
        ## @return a physical_address_type
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. The type of address. Possible values are: unknown, home, business, other.
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
    end
end
