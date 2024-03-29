require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WebPartData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Audience information of the web part. By using this property, specific content will be prioritized to specific audiences.
            @audiences
            ## 
            # Data version of the web part. The value is defined by the web part developer. Different dataVersions usually refers to a different property structure.
            @data_version
            ## 
            # Description of the web part.
            @description
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Properties bag of the web part.
            @properties
            ## 
            # Contains collections of data that can be processed by server side services like search index and link fixup.
            @server_processed_content
            ## 
            # Title of the web part.
            @title
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the audiences property value. Audience information of the web part. By using this property, specific content will be prioritized to specific audiences.
            ## @return a string
            ## 
            def audiences
                return @audiences
            end
            ## 
            ## Sets the audiences property value. Audience information of the web part. By using this property, specific content will be prioritized to specific audiences.
            ## @param value Value to set for the audiences property.
            ## @return a void
            ## 
            def audiences=(value)
                @audiences = value
            end
            ## 
            ## Instantiates a new webPartData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a web_part_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebPartData.new
            end
            ## 
            ## Gets the dataVersion property value. Data version of the web part. The value is defined by the web part developer. Different dataVersions usually refers to a different property structure.
            ## @return a string
            ## 
            def data_version
                return @data_version
            end
            ## 
            ## Sets the dataVersion property value. Data version of the web part. The value is defined by the web part developer. Different dataVersions usually refers to a different property structure.
            ## @param value Value to set for the dataVersion property.
            ## @return a void
            ## 
            def data_version=(value)
                @data_version = value
            end
            ## 
            ## Gets the description property value. Description of the web part.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the web part.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "audiences" => lambda {|n| @audiences = n.get_collection_of_primitive_values(String) },
                    "dataVersion" => lambda {|n| @data_version = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "properties" => lambda {|n| @properties = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Json.create_from_discriminator_value(pn) }) },
                    "serverProcessedContent" => lambda {|n| @server_processed_content = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ServerProcessedContent.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_string_value() },
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
            ## Gets the properties property value. Properties bag of the web part.
            ## @return a json
            ## 
            def properties
                return @properties
            end
            ## 
            ## Sets the properties property value. Properties bag of the web part.
            ## @param value Value to set for the properties property.
            ## @return a void
            ## 
            def properties=(value)
                @properties = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("audiences", @audiences)
                writer.write_string_value("dataVersion", @data_version)
                writer.write_string_value("description", @description)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("properties", @properties)
                writer.write_object_value("serverProcessedContent", @server_processed_content)
                writer.write_string_value("title", @title)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the serverProcessedContent property value. Contains collections of data that can be processed by server side services like search index and link fixup.
            ## @return a server_processed_content
            ## 
            def server_processed_content
                return @server_processed_content
            end
            ## 
            ## Sets the serverProcessedContent property value. Contains collections of data that can be processed by server side services like search index and link fixup.
            ## @param value Value to set for the serverProcessedContent property.
            ## @return a void
            ## 
            def server_processed_content=(value)
                @server_processed_content = value
            end
            ## 
            ## Gets the title property value. Title of the web part.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Title of the web part.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
