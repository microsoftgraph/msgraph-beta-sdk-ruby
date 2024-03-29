require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ItemEmail < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The email address itself.
            @address
            ## 
            # The name or label a user has associated with a particular email address.
            @display_name
            ## 
            # The type property
            @type
            ## 
            ## Gets the address property value. The email address itself.
            ## @return a string
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The email address itself.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Instantiates a new itemEmail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.itemEmail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a item_email
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemEmail.new
            end
            ## 
            ## Gets the displayName property value. The name or label a user has associated with a particular email address.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name or label a user has associated with a particular email address.
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
                    "address" => lambda {|n| @address = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::EmailType) },
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
                writer.write_string_value("address", @address)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("type", @type)
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a email_type
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
