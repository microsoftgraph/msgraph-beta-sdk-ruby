require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServerProcessedContent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A key-value map where keys are string identifiers and values are component ids. SharePoint servers might decide to use this hint to preload the script for corresponding components for performance boost.
            @component_dependencies
            ## 
            # A key-value map where keys are string identifier and values are object of custom key-value pair.
            @custom_metadata
            ## 
            # A key-value map where keys are string identifiers and values are rich text with HTML format. SharePoint servers treat the values as HTML content and run services like safety checks, search index and link fixup on them.
            @html_strings
            ## 
            # A key-value map where keys are string identifiers and values are image sources. SharePoint servers treat the values as image sources and run services like search index and link fixup on them.
            @image_sources
            ## 
            # A key-value map where keys are string identifiers and values are links. SharePoint servers treat the values as links and run services like link fixup on them.
            @links
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A key-value map where keys are string identifiers and values are strings that should be search indexed.
            @searchable_plain_texts
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the componentDependencies property value. A key-value map where keys are string identifiers and values are component ids. SharePoint servers might decide to use this hint to preload the script for corresponding components for performance boost.
            ## @return a meta_data_key_string_pair
            ## 
            def component_dependencies
                return @component_dependencies
            end
            ## 
            ## Sets the componentDependencies property value. A key-value map where keys are string identifiers and values are component ids. SharePoint servers might decide to use this hint to preload the script for corresponding components for performance boost.
            ## @param value Value to set for the component_dependencies property.
            ## @return a void
            ## 
            def component_dependencies=(value)
                @component_dependencies = value
            end
            ## 
            ## Instantiates a new serverProcessedContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a server_processed_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServerProcessedContent.new
            end
            ## 
            ## Gets the customMetadata property value. A key-value map where keys are string identifier and values are object of custom key-value pair.
            ## @return a meta_data_key_value_pair
            ## 
            def custom_metadata
                return @custom_metadata
            end
            ## 
            ## Sets the customMetadata property value. A key-value map where keys are string identifier and values are object of custom key-value pair.
            ## @param value Value to set for the custom_metadata property.
            ## @return a void
            ## 
            def custom_metadata=(value)
                @custom_metadata = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "componentDependencies" => lambda {|n| @component_dependencies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                    "customMetadata" => lambda {|n| @custom_metadata = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MetaDataKeyValuePair.create_from_discriminator_value(pn) }) },
                    "htmlStrings" => lambda {|n| @html_strings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                    "imageSources" => lambda {|n| @image_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                    "links" => lambda {|n| @links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "searchablePlainTexts" => lambda {|n| @searchable_plain_texts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MetaDataKeyStringPair.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the htmlStrings property value. A key-value map where keys are string identifiers and values are rich text with HTML format. SharePoint servers treat the values as HTML content and run services like safety checks, search index and link fixup on them.
            ## @return a meta_data_key_string_pair
            ## 
            def html_strings
                return @html_strings
            end
            ## 
            ## Sets the htmlStrings property value. A key-value map where keys are string identifiers and values are rich text with HTML format. SharePoint servers treat the values as HTML content and run services like safety checks, search index and link fixup on them.
            ## @param value Value to set for the html_strings property.
            ## @return a void
            ## 
            def html_strings=(value)
                @html_strings = value
            end
            ## 
            ## Gets the imageSources property value. A key-value map where keys are string identifiers and values are image sources. SharePoint servers treat the values as image sources and run services like search index and link fixup on them.
            ## @return a meta_data_key_string_pair
            ## 
            def image_sources
                return @image_sources
            end
            ## 
            ## Sets the imageSources property value. A key-value map where keys are string identifiers and values are image sources. SharePoint servers treat the values as image sources and run services like search index and link fixup on them.
            ## @param value Value to set for the image_sources property.
            ## @return a void
            ## 
            def image_sources=(value)
                @image_sources = value
            end
            ## 
            ## Gets the links property value. A key-value map where keys are string identifiers and values are links. SharePoint servers treat the values as links and run services like link fixup on them.
            ## @return a meta_data_key_string_pair
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. A key-value map where keys are string identifiers and values are links. SharePoint servers treat the values as links and run services like link fixup on them.
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the searchablePlainTexts property value. A key-value map where keys are string identifiers and values are strings that should be search indexed.
            ## @return a meta_data_key_string_pair
            ## 
            def searchable_plain_texts
                return @searchable_plain_texts
            end
            ## 
            ## Sets the searchablePlainTexts property value. A key-value map where keys are string identifiers and values are strings that should be search indexed.
            ## @param value Value to set for the searchable_plain_texts property.
            ## @return a void
            ## 
            def searchable_plain_texts=(value)
                @searchable_plain_texts = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("componentDependencies", @component_dependencies)
                writer.write_collection_of_object_values("customMetadata", @custom_metadata)
                writer.write_collection_of_object_values("htmlStrings", @html_strings)
                writer.write_collection_of_object_values("imageSources", @image_sources)
                writer.write_collection_of_object_values("links", @links)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("searchablePlainTexts", @searchable_plain_texts)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
