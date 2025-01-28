require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows update catalog item entity
        class WindowsQualityUpdateCatalogItem < MicrosoftGraphBeta::Models::WindowsUpdateCatalogItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Windows quality update category
            @classification
            ## 
            # Flag indicating if update qualifies for expedite
            @is_expeditable
            ## 
            # Knowledge base article id
            @kb_article_id
            ## 
            # The operating system product revisions that are released as part of this quality update. Read-only.
            @product_revisions
            ## 
            # The publishing cadence of the quality update. Possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created.
            @quality_update_cadence
            ## 
            ## Gets the classification property value. Windows quality update category
            ## @return a windows_quality_update_category
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. Windows quality update category
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new WindowsQualityUpdateCatalogItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsQualityUpdateCatalogItem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_quality_update_catalog_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsQualityUpdateCatalogItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsQualityUpdateCategory) },
                    "isExpeditable" => lambda {|n| @is_expeditable = n.get_boolean_value() },
                    "kbArticleId" => lambda {|n| @kb_article_id = n.get_string_value() },
                    "productRevisions" => lambda {|n| @product_revisions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsQualityUpdateCatalogProductRevision.create_from_discriminator_value(pn) }) },
                    "qualityUpdateCadence" => lambda {|n| @quality_update_cadence = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsQualityUpdateCadence) },
                })
            end
            ## 
            ## Gets the isExpeditable property value. Flag indicating if update qualifies for expedite
            ## @return a boolean
            ## 
            def is_expeditable
                return @is_expeditable
            end
            ## 
            ## Sets the isExpeditable property value. Flag indicating if update qualifies for expedite
            ## @param value Value to set for the isExpeditable property.
            ## @return a void
            ## 
            def is_expeditable=(value)
                @is_expeditable = value
            end
            ## 
            ## Gets the kbArticleId property value. Knowledge base article id
            ## @return a string
            ## 
            def kb_article_id
                return @kb_article_id
            end
            ## 
            ## Sets the kbArticleId property value. Knowledge base article id
            ## @param value Value to set for the kbArticleId property.
            ## @return a void
            ## 
            def kb_article_id=(value)
                @kb_article_id = value
            end
            ## 
            ## Gets the productRevisions property value. The operating system product revisions that are released as part of this quality update. Read-only.
            ## @return a windows_quality_update_catalog_product_revision
            ## 
            def product_revisions
                return @product_revisions
            end
            ## 
            ## Sets the productRevisions property value. The operating system product revisions that are released as part of this quality update. Read-only.
            ## @param value Value to set for the productRevisions property.
            ## @return a void
            ## 
            def product_revisions=(value)
                @product_revisions = value
            end
            ## 
            ## Gets the qualityUpdateCadence property value. The publishing cadence of the quality update. Possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created.
            ## @return a windows_quality_update_cadence
            ## 
            def quality_update_cadence
                return @quality_update_cadence
            end
            ## 
            ## Sets the qualityUpdateCadence property value. The publishing cadence of the quality update. Possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created.
            ## @param value Value to set for the qualityUpdateCadence property.
            ## @return a void
            ## 
            def quality_update_cadence=(value)
                @quality_update_cadence = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("classification", @classification)
                writer.write_boolean_value("isExpeditable", @is_expeditable)
                writer.write_string_value("kbArticleId", @kb_article_id)
                writer.write_collection_of_object_values("productRevisions", @product_revisions)
                writer.write_enum_value("qualityUpdateCadence", @quality_update_cadence)
            end
        end
    end
end
