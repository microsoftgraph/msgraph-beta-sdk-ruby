require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ItemPhone < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Friendly name the user has assigned this phone number.
            @display_name
            ## 
            # Phone number provided by the user.
            @number
            ## 
            # The type property
            @type
            ## 
            ## Instantiates a new itemPhone and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.itemPhone"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a item_phone
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemPhone.new
            end
            ## 
            ## Gets the displayName property value. Friendly name the user has assigned this phone number.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Friendly name the user has assigned this phone number.
            ## @param value Value to set for the displayName property.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "number" => lambda {|n| @number = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::PhoneType) },
                })
            end
            ## 
            ## Gets the number property value. Phone number provided by the user.
            ## @return a string
            ## 
            def number
                return @number
            end
            ## 
            ## Sets the number property value. Phone number provided by the user.
            ## @param value Value to set for the number property.
            ## @return a void
            ## 
            def number=(value)
                @number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("number", @number)
                writer.write_enum_value("type", @type)
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a phone_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
