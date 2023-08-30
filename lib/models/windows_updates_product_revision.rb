require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesProductRevision < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The displayName property
            @display_name
            ## 
            # The knowledgeBaseArticle property
            @knowledge_base_article
            ## 
            # The osBuild property
            @os_build
            ## 
            # The product property
            @product
            ## 
            # The releaseDateTime property
            @release_date_time
            ## 
            # The version property
            @version
            ## 
            ## Instantiates a new windowsUpdatesProductRevision and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_product_revision
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesProductRevision.new
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
                    "knowledgeBaseArticle" => lambda {|n| @knowledge_base_article = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesKnowledgeBaseArticle.create_from_discriminator_value(pn) }) },
                    "osBuild" => lambda {|n| @os_build = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesBuildVersionDetails.create_from_discriminator_value(pn) }) },
                    "product" => lambda {|n| @product = n.get_string_value() },
                    "releaseDateTime" => lambda {|n| @release_date_time = n.get_date_time_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the knowledgeBaseArticle property value. The knowledgeBaseArticle property
            ## @return a windows_updates_knowledge_base_article
            ## 
            def knowledge_base_article
                return @knowledge_base_article
            end
            ## 
            ## Sets the knowledgeBaseArticle property value. The knowledgeBaseArticle property
            ## @param value Value to set for the knowledgeBaseArticle property.
            ## @return a void
            ## 
            def knowledge_base_article=(value)
                @knowledge_base_article = value
            end
            ## 
            ## Gets the osBuild property value. The osBuild property
            ## @return a windows_updates_build_version_details
            ## 
            def os_build
                return @os_build
            end
            ## 
            ## Sets the osBuild property value. The osBuild property
            ## @param value Value to set for the osBuild property.
            ## @return a void
            ## 
            def os_build=(value)
                @os_build = value
            end
            ## 
            ## Gets the product property value. The product property
            ## @return a string
            ## 
            def product
                return @product
            end
            ## 
            ## Sets the product property value. The product property
            ## @param value Value to set for the product property.
            ## @return a void
            ## 
            def product=(value)
                @product = value
            end
            ## 
            ## Gets the releaseDateTime property value. The releaseDateTime property
            ## @return a date_time
            ## 
            def release_date_time
                return @release_date_time
            end
            ## 
            ## Sets the releaseDateTime property value. The releaseDateTime property
            ## @param value Value to set for the releaseDateTime property.
            ## @return a void
            ## 
            def release_date_time=(value)
                @release_date_time = value
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
                writer.write_object_value("knowledgeBaseArticle", @knowledge_base_article)
                writer.write_object_value("osBuild", @os_build)
                writer.write_string_value("product", @product)
                writer.write_date_time_value("releaseDateTime", @release_date_time)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. The version property
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version property
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
