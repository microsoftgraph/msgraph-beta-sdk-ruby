require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents a knowledge base (KB) article.
        class WindowsQualityUpdateProductKnowledgeBaseArticle
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier for the knowledge base article. Read-only
            @article_id
            ## 
            # The URL of the knowledge base article. Read-only
            @article_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the articleId property value. The unique identifier for the knowledge base article. Read-only
            ## @return a string
            ## 
            def article_id
                return @article_id
            end
            ## 
            ## Sets the articleId property value. The unique identifier for the knowledge base article. Read-only
            ## @param value Value to set for the articleId property.
            ## @return a void
            ## 
            def article_id=(value)
                @article_id = value
            end
            ## 
            ## Gets the articleUrl property value. The URL of the knowledge base article. Read-only
            ## @return a string
            ## 
            def article_url
                return @article_url
            end
            ## 
            ## Sets the articleUrl property value. The URL of the knowledge base article. Read-only
            ## @param value Value to set for the articleUrl property.
            ## @return a void
            ## 
            def article_url=(value)
                @article_url = value
            end
            ## 
            ## Instantiates a new WindowsQualityUpdateProductKnowledgeBaseArticle and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_quality_update_product_knowledge_base_article
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsQualityUpdateProductKnowledgeBaseArticle.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "articleId" => lambda {|n| @article_id = n.get_string_value() },
                    "articleUrl" => lambda {|n| @article_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("articleId", @article_id)
                writer.write_string_value("articleUrl", @article_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
