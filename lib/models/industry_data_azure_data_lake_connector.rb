require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataAzureDataLakeConnector < MicrosoftGraphBeta::Models::IndustryDataFileDataConnector
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The file format that external systems can upload using this connector.
            @file_format
            ## 
            ## Instantiates a new IndustryDataAzureDataLakeConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.azureDataLakeConnector"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_azure_data_lake_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataAzureDataLakeConnector.new
            end
            ## 
            ## Gets the fileFormat property value. The file format that external systems can upload using this connector.
            ## @return a industry_data_file_format_reference_value
            ## 
            def file_format
                return @file_format
            end
            ## 
            ## Sets the fileFormat property value. The file format that external systems can upload using this connector.
            ## @param value Value to set for the fileFormat property.
            ## @return a void
            ## 
            def file_format=(value)
                @file_format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fileFormat" => lambda {|n| @file_format = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataFileFormatReferenceValue.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("fileFormat", @file_format)
            end
        end
    end
end
