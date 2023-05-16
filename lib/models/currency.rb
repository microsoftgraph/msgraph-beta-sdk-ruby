require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Currency < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The amountDecimalPlaces property
            @amount_decimal_places
            ## 
            # The amountRoundingPrecision property
            @amount_rounding_precision
            ## 
            # The code property
            @code
            ## 
            # The displayName property
            @display_name
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The symbol property
            @symbol
            ## 
            ## Gets the amountDecimalPlaces property value. The amountDecimalPlaces property
            ## @return a string
            ## 
            def amount_decimal_places
                return @amount_decimal_places
            end
            ## 
            ## Sets the amountDecimalPlaces property value. The amountDecimalPlaces property
            ## @param value Value to set for the amount_decimal_places property.
            ## @return a void
            ## 
            def amount_decimal_places=(value)
                @amount_decimal_places = value
            end
            ## 
            ## Gets the amountRoundingPrecision property value. The amountRoundingPrecision property
            ## @return a decimal
            ## 
            def amount_rounding_precision
                return @amount_rounding_precision
            end
            ## 
            ## Sets the amountRoundingPrecision property value. The amountRoundingPrecision property
            ## @param value Value to set for the amount_rounding_precision property.
            ## @return a void
            ## 
            def amount_rounding_precision=(value)
                @amount_rounding_precision = value
            end
            ## 
            ## Gets the code property value. The code property
            ## @return a string
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. The code property
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new currency and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a currency
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Currency.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "amountDecimalPlaces" => lambda {|n| @amount_decimal_places = n.get_string_value() },
                    "amountRoundingPrecision" => lambda {|n| @amount_rounding_precision = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "code" => lambda {|n| @code = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "symbol" => lambda {|n| @symbol = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("amountDecimalPlaces", @amount_decimal_places)
                writer.write_object_value("amountRoundingPrecision", @amount_rounding_precision)
                writer.write_string_value("code", @code)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("symbol", @symbol)
            end
            ## 
            ## Gets the symbol property value. The symbol property
            ## @return a string
            ## 
            def symbol
                return @symbol
            end
            ## 
            ## Sets the symbol property value. The symbol property
            ## @param value Value to set for the symbol property.
            ## @return a void
            ## 
            def symbol=(value)
                @symbol = value
            end
        end
    end
end
