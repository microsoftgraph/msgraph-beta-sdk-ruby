require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Roadmap < MicrosoftGraphBeta::Models::ChangeItemBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the category with which this item is associated. Supports $filter (eq, ne, in) and $orderby.
            @category
            ## 
            # The changeItemState property
            @change_item_state
            ## 
            # The deliveryStage property
            @delivery_stage
            ## 
            # Link to the feature page in the Microsoft Entra admin center. Supports $filter (eq, ne, in) and $orderby.
            @goto_link
            ## 
            # Feature planned release date. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            @published_date_time
            ## 
            ## Gets the category property value. Indicates the category with which this item is associated. Supports $filter (eq, ne, in) and $orderby.
            ## @return a string
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. Indicates the category with which this item is associated. Supports $filter (eq, ne, in) and $orderby.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Gets the changeItemState property value. The changeItemState property
            ## @return a change_item_state
            ## 
            def change_item_state
                return @change_item_state
            end
            ## 
            ## Sets the changeItemState property value. The changeItemState property
            ## @param value Value to set for the changeItemState property.
            ## @return a void
            ## 
            def change_item_state=(value)
                @change_item_state = value
            end
            ## 
            ## Instantiates a new Roadmap and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.roadmap"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a roadmap
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Roadmap.new
            end
            ## 
            ## Gets the deliveryStage property value. The deliveryStage property
            ## @return a roadmap_item_delivery_stage
            ## 
            def delivery_stage
                return @delivery_stage
            end
            ## 
            ## Sets the deliveryStage property value. The deliveryStage property
            ## @param value Value to set for the deliveryStage property.
            ## @return a void
            ## 
            def delivery_stage=(value)
                @delivery_stage = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "category" => lambda {|n| @category = n.get_string_value() },
                    "changeItemState" => lambda {|n| @change_item_state = n.get_enum_value(MicrosoftGraphBeta::Models::ChangeItemState) },
                    "deliveryStage" => lambda {|n| @delivery_stage = n.get_enum_value(MicrosoftGraphBeta::Models::RoadmapItemDeliveryStage) },
                    "gotoLink" => lambda {|n| @goto_link = n.get_string_value() },
                    "publishedDateTime" => lambda {|n| @published_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the gotoLink property value. Link to the feature page in the Microsoft Entra admin center. Supports $filter (eq, ne, in) and $orderby.
            ## @return a string
            ## 
            def goto_link
                return @goto_link
            end
            ## 
            ## Sets the gotoLink property value. Link to the feature page in the Microsoft Entra admin center. Supports $filter (eq, ne, in) and $orderby.
            ## @param value Value to set for the gotoLink property.
            ## @return a void
            ## 
            def goto_link=(value)
                @goto_link = value
            end
            ## 
            ## Gets the publishedDateTime property value. Feature planned release date. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            ## @return a date_time
            ## 
            def published_date_time
                return @published_date_time
            end
            ## 
            ## Sets the publishedDateTime property value. Feature planned release date. Supports $filter (eq, ne, gt, lt, le and ge on year(), month(), day(), hour(), minute(), and second() built in functions) and $orderby.
            ## @param value Value to set for the publishedDateTime property.
            ## @return a void
            ## 
            def published_date_time=(value)
                @published_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("category", @category)
                writer.write_enum_value("changeItemState", @change_item_state)
                writer.write_enum_value("deliveryStage", @delivery_stage)
                writer.write_string_value("gotoLink", @goto_link)
                writer.write_date_time_value("publishedDateTime", @published_date_time)
            end
        end
    end
end
