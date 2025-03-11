require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ChangeItemBase < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the Microsoft Entra service name to which this item belongs. Supports $filter (eq, ne, in) and $orderby.
            @change_item_service
            ## 
            # Description of the new feature or change announcement. Supports $filter (eq, ne, in, startswith) and $orderby.
            @description
            ## 
            # Link to the feature or change documentation. Supports $filter (any with eq).
            @documentation_urls
            ## 
            # A short description of the feature or change. Supports $filter (eq, ne, in, startswith) and $orderby.
            @short_description
            ## 
            # Microsoft Entra-specific tags. Example values: Top announcement - entraroadmaphighlightproductnews, New release highlight - entraroadmaphighlightnewfeature. Supports $filter (any with eq).
            @system_tags
            ## 
            # Identity and Access Management (IAM) related tags. Example values: External Identities, Reliability and Resilience. Supports $filter (any with eq).
            @tags
            ## 
            # Title of the feature or change. Supports $filter (eq, ne, in, startswith) and $orderby.
            @title
            ## 
            ## Gets the changeItemService property value. Specifies the Microsoft Entra service name to which this item belongs. Supports $filter (eq, ne, in) and $orderby.
            ## @return a string
            ## 
            def change_item_service
                return @change_item_service
            end
            ## 
            ## Sets the changeItemService property value. Specifies the Microsoft Entra service name to which this item belongs. Supports $filter (eq, ne, in) and $orderby.
            ## @param value Value to set for the changeItemService property.
            ## @return a void
            ## 
            def change_item_service=(value)
                @change_item_service = value
            end
            ## 
            ## Instantiates a new ChangeItemBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a change_item_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.announcement"
                            return Announcement.new
                        when "#microsoft.graph.roadmap"
                            return Roadmap.new
                    end
                end
                return ChangeItemBase.new
            end
            ## 
            ## Gets the description property value. Description of the new feature or change announcement. Supports $filter (eq, ne, in, startswith) and $orderby.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the new feature or change announcement. Supports $filter (eq, ne, in, startswith) and $orderby.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the documentationUrls property value. Link to the feature or change documentation. Supports $filter (any with eq).
            ## @return a string
            ## 
            def documentation_urls
                return @documentation_urls
            end
            ## 
            ## Sets the documentationUrls property value. Link to the feature or change documentation. Supports $filter (any with eq).
            ## @param value Value to set for the documentationUrls property.
            ## @return a void
            ## 
            def documentation_urls=(value)
                @documentation_urls = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "changeItemService" => lambda {|n| @change_item_service = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "documentationUrls" => lambda {|n| @documentation_urls = n.get_collection_of_primitive_values(String) },
                    "shortDescription" => lambda {|n| @short_description = n.get_string_value() },
                    "systemTags" => lambda {|n| @system_tags = n.get_collection_of_primitive_values(String) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "title" => lambda {|n| @title = n.get_string_value() },
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
                writer.write_string_value("changeItemService", @change_item_service)
                writer.write_string_value("description", @description)
                writer.write_collection_of_primitive_values("documentationUrls", @documentation_urls)
                writer.write_string_value("shortDescription", @short_description)
                writer.write_collection_of_primitive_values("systemTags", @system_tags)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_string_value("title", @title)
            end
            ## 
            ## Gets the shortDescription property value. A short description of the feature or change. Supports $filter (eq, ne, in, startswith) and $orderby.
            ## @return a string
            ## 
            def short_description
                return @short_description
            end
            ## 
            ## Sets the shortDescription property value. A short description of the feature or change. Supports $filter (eq, ne, in, startswith) and $orderby.
            ## @param value Value to set for the shortDescription property.
            ## @return a void
            ## 
            def short_description=(value)
                @short_description = value
            end
            ## 
            ## Gets the systemTags property value. Microsoft Entra-specific tags. Example values: Top announcement - entraroadmaphighlightproductnews, New release highlight - entraroadmaphighlightnewfeature. Supports $filter (any with eq).
            ## @return a string
            ## 
            def system_tags
                return @system_tags
            end
            ## 
            ## Sets the systemTags property value. Microsoft Entra-specific tags. Example values: Top announcement - entraroadmaphighlightproductnews, New release highlight - entraroadmaphighlightnewfeature. Supports $filter (any with eq).
            ## @param value Value to set for the systemTags property.
            ## @return a void
            ## 
            def system_tags=(value)
                @system_tags = value
            end
            ## 
            ## Gets the tags property value. Identity and Access Management (IAM) related tags. Example values: External Identities, Reliability and Resilience. Supports $filter (any with eq).
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. Identity and Access Management (IAM) related tags. Example values: External Identities, Reliability and Resilience. Supports $filter (any with eq).
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the title property value. Title of the feature or change. Supports $filter (eq, ne, in, startswith) and $orderby.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Title of the feature or change. Supports $filter (eq, ne, in, startswith) and $orderby.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
