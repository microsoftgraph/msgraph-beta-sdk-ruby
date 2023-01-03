require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class EdiscoveryExportOperation < MicrosoftGraphBeta::Models::Security::CaseOperation
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The name of the Azure storage location where the export will be stored. This only applies to exports stored in your own Azure storage location.
        @azure_blob_container
        ## 
        # The SAS token for the Azure storage location.  This only applies to exports stored in your own Azure storage location.
        @azure_blob_token
        ## 
        # The description provided for the export.
        @description
        ## 
        # The options provided for the export. For more details, see reviewSet: export. Possible values are: originalFiles, text, pdfReplacement, fileInfo, tags.
        @export_options
        ## 
        # The options provided that specify the structure of the export. For more details, see reviewSet: export. Possible values are: none, directory, pst.
        @export_structure
        ## 
        # The outputFolderId property
        @output_folder_id
        ## 
        # The name provided for the export.
        @output_name
        ## 
        # Review set from where documents are exported.
        @review_set
        ## 
        # The review set query which is used to filter the documents for export.
        @review_set_query
        ## 
        ## Gets the azureBlobContainer property value. The name of the Azure storage location where the export will be stored. This only applies to exports stored in your own Azure storage location.
        ## @return a string
        ## 
        def azure_blob_container
            return @azure_blob_container
        end
        ## 
        ## Sets the azureBlobContainer property value. The name of the Azure storage location where the export will be stored. This only applies to exports stored in your own Azure storage location.
        ## @param value Value to set for the azureBlobContainer property.
        ## @return a void
        ## 
        def azure_blob_container=(value)
            @azure_blob_container = value
        end
        ## 
        ## Gets the azureBlobToken property value. The SAS token for the Azure storage location.  This only applies to exports stored in your own Azure storage location.
        ## @return a string
        ## 
        def azure_blob_token
            return @azure_blob_token
        end
        ## 
        ## Sets the azureBlobToken property value. The SAS token for the Azure storage location.  This only applies to exports stored in your own Azure storage location.
        ## @param value Value to set for the azureBlobToken property.
        ## @return a void
        ## 
        def azure_blob_token=(value)
            @azure_blob_token = value
        end
        ## 
        ## Instantiates a new EdiscoveryExportOperation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ediscovery_export_operation
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EdiscoveryExportOperation.new
        end
        ## 
        ## Gets the description property value. The description provided for the export.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description provided for the export.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the exportOptions property value. The options provided for the export. For more details, see reviewSet: export. Possible values are: originalFiles, text, pdfReplacement, fileInfo, tags.
        ## @return a export_options
        ## 
        def export_options
            return @export_options
        end
        ## 
        ## Sets the exportOptions property value. The options provided for the export. For more details, see reviewSet: export. Possible values are: originalFiles, text, pdfReplacement, fileInfo, tags.
        ## @param value Value to set for the exportOptions property.
        ## @return a void
        ## 
        def export_options=(value)
            @export_options = value
        end
        ## 
        ## Gets the exportStructure property value. The options provided that specify the structure of the export. For more details, see reviewSet: export. Possible values are: none, directory, pst.
        ## @return a export_file_structure
        ## 
        def export_structure
            return @export_structure
        end
        ## 
        ## Sets the exportStructure property value. The options provided that specify the structure of the export. For more details, see reviewSet: export. Possible values are: none, directory, pst.
        ## @param value Value to set for the exportStructure property.
        ## @return a void
        ## 
        def export_structure=(value)
            @export_structure = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "azureBlobContainer" => lambda {|n| @azure_blob_container = n.get_string_value() },
                "azureBlobToken" => lambda {|n| @azure_blob_token = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "exportOptions" => lambda {|n| @export_options = n.get_enum_value(MicrosoftGraphBeta::Models::Security::ExportOptions) },
                "exportStructure" => lambda {|n| @export_structure = n.get_enum_value(MicrosoftGraphBeta::Models::Security::ExportFileStructure) },
                "outputFolderId" => lambda {|n| @output_folder_id = n.get_string_value() },
                "outputName" => lambda {|n| @output_name = n.get_string_value() },
                "reviewSet" => lambda {|n| @review_set = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::EdiscoveryReviewSet.create_from_discriminator_value(pn) }) },
                "reviewSetQuery" => lambda {|n| @review_set_query = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::EdiscoveryReviewSetQuery.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the outputFolderId property value. The outputFolderId property
        ## @return a string
        ## 
        def output_folder_id
            return @output_folder_id
        end
        ## 
        ## Sets the outputFolderId property value. The outputFolderId property
        ## @param value Value to set for the outputFolderId property.
        ## @return a void
        ## 
        def output_folder_id=(value)
            @output_folder_id = value
        end
        ## 
        ## Gets the outputName property value. The name provided for the export.
        ## @return a string
        ## 
        def output_name
            return @output_name
        end
        ## 
        ## Sets the outputName property value. The name provided for the export.
        ## @param value Value to set for the outputName property.
        ## @return a void
        ## 
        def output_name=(value)
            @output_name = value
        end
        ## 
        ## Gets the reviewSet property value. Review set from where documents are exported.
        ## @return a ediscovery_review_set
        ## 
        def review_set
            return @review_set
        end
        ## 
        ## Sets the reviewSet property value. Review set from where documents are exported.
        ## @param value Value to set for the reviewSet property.
        ## @return a void
        ## 
        def review_set=(value)
            @review_set = value
        end
        ## 
        ## Gets the reviewSetQuery property value. The review set query which is used to filter the documents for export.
        ## @return a ediscovery_review_set_query
        ## 
        def review_set_query
            return @review_set_query
        end
        ## 
        ## Sets the reviewSetQuery property value. The review set query which is used to filter the documents for export.
        ## @param value Value to set for the reviewSetQuery property.
        ## @return a void
        ## 
        def review_set_query=(value)
            @review_set_query = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("azureBlobContainer", @azure_blob_container)
            writer.write_string_value("azureBlobToken", @azure_blob_token)
            writer.write_string_value("description", @description)
            writer.write_enum_value("exportOptions", @export_options)
            writer.write_enum_value("exportStructure", @export_structure)
            writer.write_string_value("outputFolderId", @output_folder_id)
            writer.write_string_value("outputName", @output_name)
            writer.write_object_value("reviewSet", @review_set)
            writer.write_object_value("reviewSetQuery", @review_set_query)
        end
    end
end
