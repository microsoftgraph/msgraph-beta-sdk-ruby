require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The operating system product revisions that are released as part of this quality update.
        class WindowsQualityUpdateCatalogProductRevision
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The display name of the windows quality update catalog product revision. For example, 'Windows 11, version 22H2, build 22621.4112'. Read-only
            @display_name
            ## 
            # Represents a knowledge base (KB) article.
            @knowledge_base_article
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents the build version details of a product revision that is associated with a quality update.
            @os_build
            ## 
            # The product name of the windows quality update catalog product revision. For example, 'Windows 11'. Read-only
            @product_name
            ## 
            # The date and time when the windows quality update catalog product revision was released. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
            @release_date_time
            ## 
            # The version name of the windows quality update catalog product revision. For example, '22H2'. Read-only
            @version_name
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
            ## Instantiates a new WindowsQualityUpdateCatalogProductRevision and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_quality_update_catalog_product_revision
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsQualityUpdateCatalogProductRevision.new
            end
            ## 
            ## Gets the displayName property value. The display name of the windows quality update catalog product revision. For example, 'Windows 11, version 22H2, build 22621.4112'. Read-only
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the windows quality update catalog product revision. For example, 'Windows 11, version 22H2, build 22621.4112'. Read-only
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
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "knowledgeBaseArticle" => lambda {|n| @knowledge_base_article = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsQualityUpdateProductKnowledgeBaseArticle.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "osBuild" => lambda {|n| @os_build = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsQualityUpdateProductBuildVersionDetail.create_from_discriminator_value(pn) }) },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "releaseDateTime" => lambda {|n| @release_date_time = n.get_date_time_value() },
                    "versionName" => lambda {|n| @version_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the knowledgeBaseArticle property value. Represents a knowledge base (KB) article.
            ## @return a windows_quality_update_product_knowledge_base_article
            ## 
            def knowledge_base_article
                return @knowledge_base_article
            end
            ## 
            ## Sets the knowledgeBaseArticle property value. Represents a knowledge base (KB) article.
            ## @param value Value to set for the knowledgeBaseArticle property.
            ## @return a void
            ## 
            def knowledge_base_article=(value)
                @knowledge_base_article = value
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
            ## Gets the osBuild property value. Represents the build version details of a product revision that is associated with a quality update.
            ## @return a windows_quality_update_product_build_version_detail
            ## 
            def os_build
                return @os_build
            end
            ## 
            ## Sets the osBuild property value. Represents the build version details of a product revision that is associated with a quality update.
            ## @param value Value to set for the osBuild property.
            ## @return a void
            ## 
            def os_build=(value)
                @os_build = value
            end
            ## 
            ## Gets the productName property value. The product name of the windows quality update catalog product revision. For example, 'Windows 11'. Read-only
            ## @return a string
            ## 
            def product_name
                return @product_name
            end
            ## 
            ## Sets the productName property value. The product name of the windows quality update catalog product revision. For example, 'Windows 11'. Read-only
            ## @param value Value to set for the productName property.
            ## @return a void
            ## 
            def product_name=(value)
                @product_name = value
            end
            ## 
            ## Gets the releaseDateTime property value. The date and time when the windows quality update catalog product revision was released. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
            ## @return a date_time
            ## 
            def release_date_time
                return @release_date_time
            end
            ## 
            ## Sets the releaseDateTime property value. The date and time when the windows quality update catalog product revision was released. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
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
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("knowledgeBaseArticle", @knowledge_base_article)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("osBuild", @os_build)
                writer.write_string_value("productName", @product_name)
                writer.write_date_time_value("releaseDateTime", @release_date_time)
                writer.write_string_value("versionName", @version_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the versionName property value. The version name of the windows quality update catalog product revision. For example, '22H2'. Read-only
            ## @return a string
            ## 
            def version_name
                return @version_name
            end
            ## 
            ## Sets the versionName property value. The version name of the windows quality update catalog product revision. For example, '22H2'. Read-only
            ## @param value Value to set for the versionName property.
            ## @return a void
            ## 
            def version_name=(value)
                @version_name = value
            end
        end
    end
end
