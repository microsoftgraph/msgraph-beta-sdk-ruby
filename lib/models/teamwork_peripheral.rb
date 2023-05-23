require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkPeripheral < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name for the peripheral.
            @display_name
            ## 
            # The product ID of the device. Each product from a vendor has its own ID.
            @product_id
            ## 
            # The unique identifier for the vendor of the device. Each vendor has a unique ID.
            @vendor_id
            ## 
            ## Instantiates a new teamworkPeripheral and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_peripheral
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkPeripheral.new
            end
            ## 
            ## Gets the displayName property value. Display name for the peripheral.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for the peripheral.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "productId" => lambda {|n| @product_id = n.get_string_value() },
                    "vendorId" => lambda {|n| @vendor_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the productId property value. The product ID of the device. Each product from a vendor has its own ID.
            ## @return a string
            ## 
            def product_id
                return @product_id
            end
            ## 
            ## Sets the productId property value. The product ID of the device. Each product from a vendor has its own ID.
            ## @param value Value to set for the product_id property.
            ## @return a void
            ## 
            def product_id=(value)
                @product_id = value
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
                writer.write_string_value("productId", @product_id)
                writer.write_string_value("vendorId", @vendor_id)
            end
            ## 
            ## Gets the vendorId property value. The unique identifier for the vendor of the device. Each vendor has a unique ID.
            ## @return a string
            ## 
            def vendor_id
                return @vendor_id
            end
            ## 
            ## Sets the vendorId property value. The unique identifier for the vendor of the device. Each vendor has a unique ID.
            ## @param value Value to set for the vendor_id property.
            ## @return a void
            ## 
            def vendor_id=(value)
                @vendor_id = value
            end
        end
    end
end
