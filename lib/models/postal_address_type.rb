require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PostalAddressType
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The city property
            @city
            ## 
            # The countryLetterCode property
            @country_letter_code
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The postalCode property
            @postal_code
            ## 
            # The state property
            @state
            ## 
            # The street property
            @street
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
            ## Gets the city property value. The city property
            ## @return a string
            ## 
            def city
                return @city
            end
            ## 
            ## Sets the city property value. The city property
            ## @param value Value to set for the city property.
            ## @return a void
            ## 
            def city=(value)
                @city = value
            end
            ## 
            ## Instantiates a new postalAddressType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the countryLetterCode property value. The countryLetterCode property
            ## @return a string
            ## 
            def country_letter_code
                return @country_letter_code
            end
            ## 
            ## Sets the countryLetterCode property value. The countryLetterCode property
            ## @param value Value to set for the country_letter_code property.
            ## @return a void
            ## 
            def country_letter_code=(value)
                @country_letter_code = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a postal_address_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PostalAddressType.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "city" => lambda {|n| @city = n.get_string_value() },
                    "countryLetterCode" => lambda {|n| @country_letter_code = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "postalCode" => lambda {|n| @postal_code = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_string_value() },
                    "street" => lambda {|n| @street = n.get_string_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the postalCode property value. The postalCode property
            ## @return a string
            ## 
            def postal_code
                return @postal_code
            end
            ## 
            ## Sets the postalCode property value. The postalCode property
            ## @param value Value to set for the postal_code property.
            ## @return a void
            ## 
            def postal_code=(value)
                @postal_code = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("city", @city)
                writer.write_string_value("countryLetterCode", @country_letter_code)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("postalCode", @postal_code)
                writer.write_string_value("state", @state)
                writer.write_string_value("street", @street)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the street property value. The street property
            ## @return a string
            ## 
            def street
                return @street
            end
            ## 
            ## Sets the street property value. The street property
            ## @param value Value to set for the street property.
            ## @return a void
            ## 
            def street=(value)
                @street = value
            end
        end
    end
end
