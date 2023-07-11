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
            # Windows quality update classification
            @classification
            ## 
            # Flag indicating if update qualifies for expedite
            @is_expeditable
            ## 
            # Knowledge base article id
            @kb_article_id
            ## 
            ## Gets the classification property value. Windows quality update classification
            ## @return a windows_quality_update_classification
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. Windows quality update classification
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new windowsQualityUpdateCatalogItem and sets the default values.
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
                    "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsQualityUpdateClassification) },
                    "isExpeditable" => lambda {|n| @is_expeditable = n.get_boolean_value() },
                    "kbArticleId" => lambda {|n| @kb_article_id = n.get_string_value() },
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
            ## @param value Value to set for the is_expeditable property.
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
            ## @param value Value to set for the kb_article_id property.
            ## @return a void
            ## 
            def kb_article_id=(value)
                @kb_article_id = value
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
            end
        end
    end
end
