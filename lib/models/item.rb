require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Item < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The baseUnitOfMeasureId property
            @base_unit_of_measure_id
            ## 
            # The blocked property
            @blocked
            ## 
            # The displayName property
            @display_name
            ## 
            # The gtin property
            @gtin
            ## 
            # The inventory property
            @inventory
            ## 
            # The itemCategory property
            @item_category
            ## 
            # The itemCategoryCode property
            @item_category_code
            ## 
            # The itemCategoryId property
            @item_category_id
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The number property
            @number
            ## 
            # The picture property
            @picture
            ## 
            # The priceIncludesTax property
            @price_includes_tax
            ## 
            # The taxGroupCode property
            @tax_group_code
            ## 
            # The taxGroupId property
            @tax_group_id
            ## 
            # The type property
            @type
            ## 
            # The unitCost property
            @unit_cost
            ## 
            # The unitPrice property
            @unit_price
            ## 
            ## Gets the baseUnitOfMeasureId property value. The baseUnitOfMeasureId property
            ## @return a guid
            ## 
            def base_unit_of_measure_id
                return @base_unit_of_measure_id
            end
            ## 
            ## Sets the baseUnitOfMeasureId property value. The baseUnitOfMeasureId property
            ## @param value Value to set for the base_unit_of_measure_id property.
            ## @return a void
            ## 
            def base_unit_of_measure_id=(value)
                @base_unit_of_measure_id = value
            end
            ## 
            ## Gets the blocked property value. The blocked property
            ## @return a boolean
            ## 
            def blocked
                return @blocked
            end
            ## 
            ## Sets the blocked property value. The blocked property
            ## @param value Value to set for the blocked property.
            ## @return a void
            ## 
            def blocked=(value)
                @blocked = value
            end
            ## 
            ## Instantiates a new item and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Item.new
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
                    "baseUnitOfMeasureId" => lambda {|n| @base_unit_of_measure_id = n.get_guid_value() },
                    "blocked" => lambda {|n| @blocked = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "gtin" => lambda {|n| @gtin = n.get_string_value() },
                    "inventory" => lambda {|n| @inventory = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "itemCategory" => lambda {|n| @item_category = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemCategory.create_from_discriminator_value(pn) }) },
                    "itemCategoryCode" => lambda {|n| @item_category_code = n.get_string_value() },
                    "itemCategoryId" => lambda {|n| @item_category_id = n.get_guid_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "number" => lambda {|n| @number = n.get_string_value() },
                    "picture" => lambda {|n| @picture = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Picture.create_from_discriminator_value(pn) }) },
                    "priceIncludesTax" => lambda {|n| @price_includes_tax = n.get_boolean_value() },
                    "taxGroupCode" => lambda {|n| @tax_group_code = n.get_string_value() },
                    "taxGroupId" => lambda {|n| @tax_group_id = n.get_guid_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "unitCost" => lambda {|n| @unit_cost = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                    "unitPrice" => lambda {|n| @unit_price = n.get_object_value(lambda {|pn| Decimal.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the gtin property value. The gtin property
            ## @return a string
            ## 
            def gtin
                return @gtin
            end
            ## 
            ## Sets the gtin property value. The gtin property
            ## @param value Value to set for the gtin property.
            ## @return a void
            ## 
            def gtin=(value)
                @gtin = value
            end
            ## 
            ## Gets the inventory property value. The inventory property
            ## @return a decimal
            ## 
            def inventory
                return @inventory
            end
            ## 
            ## Sets the inventory property value. The inventory property
            ## @param value Value to set for the inventory property.
            ## @return a void
            ## 
            def inventory=(value)
                @inventory = value
            end
            ## 
            ## Gets the itemCategory property value. The itemCategory property
            ## @return a item_category
            ## 
            def item_category
                return @item_category
            end
            ## 
            ## Sets the itemCategory property value. The itemCategory property
            ## @param value Value to set for the item_category property.
            ## @return a void
            ## 
            def item_category=(value)
                @item_category = value
            end
            ## 
            ## Gets the itemCategoryCode property value. The itemCategoryCode property
            ## @return a string
            ## 
            def item_category_code
                return @item_category_code
            end
            ## 
            ## Sets the itemCategoryCode property value. The itemCategoryCode property
            ## @param value Value to set for the item_category_code property.
            ## @return a void
            ## 
            def item_category_code=(value)
                @item_category_code = value
            end
            ## 
            ## Gets the itemCategoryId property value. The itemCategoryId property
            ## @return a guid
            ## 
            def item_category_id
                return @item_category_id
            end
            ## 
            ## Sets the itemCategoryId property value. The itemCategoryId property
            ## @param value Value to set for the item_category_id property.
            ## @return a void
            ## 
            def item_category_id=(value)
                @item_category_id = value
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
            ## Gets the number property value. The number property
            ## @return a string
            ## 
            def number
                return @number
            end
            ## 
            ## Sets the number property value. The number property
            ## @param value Value to set for the number property.
            ## @return a void
            ## 
            def number=(value)
                @number = value
            end
            ## 
            ## Gets the picture property value. The picture property
            ## @return a picture
            ## 
            def picture
                return @picture
            end
            ## 
            ## Sets the picture property value. The picture property
            ## @param value Value to set for the picture property.
            ## @return a void
            ## 
            def picture=(value)
                @picture = value
            end
            ## 
            ## Gets the priceIncludesTax property value. The priceIncludesTax property
            ## @return a boolean
            ## 
            def price_includes_tax
                return @price_includes_tax
            end
            ## 
            ## Sets the priceIncludesTax property value. The priceIncludesTax property
            ## @param value Value to set for the price_includes_tax property.
            ## @return a void
            ## 
            def price_includes_tax=(value)
                @price_includes_tax = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_guid_value("baseUnitOfMeasureId", @base_unit_of_measure_id)
                writer.write_boolean_value("blocked", @blocked)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("gtin", @gtin)
                writer.write_object_value("inventory", @inventory)
                writer.write_object_value("itemCategory", @item_category)
                writer.write_string_value("itemCategoryCode", @item_category_code)
                writer.write_guid_value("itemCategoryId", @item_category_id)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("number", @number)
                writer.write_collection_of_object_values("picture", @picture)
                writer.write_boolean_value("priceIncludesTax", @price_includes_tax)
                writer.write_string_value("taxGroupCode", @tax_group_code)
                writer.write_guid_value("taxGroupId", @tax_group_id)
                writer.write_string_value("type", @type)
                writer.write_object_value("unitCost", @unit_cost)
                writer.write_object_value("unitPrice", @unit_price)
            end
            ## 
            ## Gets the taxGroupCode property value. The taxGroupCode property
            ## @return a string
            ## 
            def tax_group_code
                return @tax_group_code
            end
            ## 
            ## Sets the taxGroupCode property value. The taxGroupCode property
            ## @param value Value to set for the tax_group_code property.
            ## @return a void
            ## 
            def tax_group_code=(value)
                @tax_group_code = value
            end
            ## 
            ## Gets the taxGroupId property value. The taxGroupId property
            ## @return a guid
            ## 
            def tax_group_id
                return @tax_group_id
            end
            ## 
            ## Sets the taxGroupId property value. The taxGroupId property
            ## @param value Value to set for the tax_group_id property.
            ## @return a void
            ## 
            def tax_group_id=(value)
                @tax_group_id = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a string
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
            ## 
            ## Gets the unitCost property value. The unitCost property
            ## @return a decimal
            ## 
            def unit_cost
                return @unit_cost
            end
            ## 
            ## Sets the unitCost property value. The unitCost property
            ## @param value Value to set for the unit_cost property.
            ## @return a void
            ## 
            def unit_cost=(value)
                @unit_cost = value
            end
            ## 
            ## Gets the unitPrice property value. The unitPrice property
            ## @return a decimal
            ## 
            def unit_price
                return @unit_price
            end
            ## 
            ## Sets the unitPrice property value. The unitPrice property
            ## @param value Value to set for the unit_price property.
            ## @return a void
            ## 
            def unit_price=(value)
                @unit_price = value
            end
        end
    end
end
