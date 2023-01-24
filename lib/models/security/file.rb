require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class File < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The content property
        @content
        ## 
        # The dateTime property
        @date_time
        ## 
        # The extension property
        @extension
        ## 
        # The extractedTextContent property
        @extracted_text_content
        ## 
        # The mediaType property
        @media_type
        ## 
        # The name property
        @name
        ## 
        # The otherProperties property
        @other_properties
        ## 
        # The processingStatus property
        @processing_status
        ## 
        # The senderOrAuthors property
        @sender_or_authors
        ## 
        # The size property
        @size
        ## 
        # The sourceType property
        @source_type
        ## 
        # The subjectTitle property
        @subject_title
        ## 
        ## Instantiates a new file and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the content property value. The content property
        ## @return a binary
        ## 
        def content
            return @content
        end
        ## 
        ## Sets the content property value. The content property
        ## @param value Value to set for the content property.
        ## @return a void
        ## 
        def content=(value)
            @content = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a file
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.security.ediscoveryFile"
                        return EdiscoveryFile.new
                end
            end
            return File.new
        end
        ## 
        ## Gets the dateTime property value. The dateTime property
        ## @return a date_time
        ## 
        def date_time
            return @date_time
        end
        ## 
        ## Sets the dateTime property value. The dateTime property
        ## @param value Value to set for the dateTime property.
        ## @return a void
        ## 
        def date_time=(value)
            @date_time = value
        end
        ## 
        ## Gets the extension property value. The extension property
        ## @return a string
        ## 
        def extension
            return @extension
        end
        ## 
        ## Sets the extension property value. The extension property
        ## @param value Value to set for the extension property.
        ## @return a void
        ## 
        def extension=(value)
            @extension = value
        end
        ## 
        ## Gets the extractedTextContent property value. The extractedTextContent property
        ## @return a binary
        ## 
        def extracted_text_content
            return @extracted_text_content
        end
        ## 
        ## Sets the extractedTextContent property value. The extractedTextContent property
        ## @param value Value to set for the extractedTextContent property.
        ## @return a void
        ## 
        def extracted_text_content=(value)
            @extracted_text_content = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "content" => lambda {|n| @content = n.get_string_value() },
                "dateTime" => lambda {|n| @date_time = n.get_date_time_value() },
                "extension" => lambda {|n| @extension = n.get_string_value() },
                "extractedTextContent" => lambda {|n| @extracted_text_content = n.get_string_value() },
                "mediaType" => lambda {|n| @media_type = n.get_string_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "otherProperties" => lambda {|n| @other_properties = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::StringValueDictionary.create_from_discriminator_value(pn) }) },
                "processingStatus" => lambda {|n| @processing_status = n.get_enum_value(MicrosoftGraphBeta::Models::Security::FileProcessingStatus) },
                "senderOrAuthors" => lambda {|n| @sender_or_authors = n.get_collection_of_primitive_values(String) },
                "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "sourceType" => lambda {|n| @source_type = n.get_enum_value(MicrosoftGraphBeta::Models::Security::SourceType) },
                "subjectTitle" => lambda {|n| @subject_title = n.get_string_value() },
            })
        end
        ## 
        ## Gets the mediaType property value. The mediaType property
        ## @return a string
        ## 
        def media_type
            return @media_type
        end
        ## 
        ## Sets the mediaType property value. The mediaType property
        ## @param value Value to set for the mediaType property.
        ## @return a void
        ## 
        def media_type=(value)
            @media_type = value
        end
        ## 
        ## Gets the name property value. The name property
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The name property
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Gets the otherProperties property value. The otherProperties property
        ## @return a string_value_dictionary
        ## 
        def other_properties
            return @other_properties
        end
        ## 
        ## Sets the otherProperties property value. The otherProperties property
        ## @param value Value to set for the otherProperties property.
        ## @return a void
        ## 
        def other_properties=(value)
            @other_properties = value
        end
        ## 
        ## Gets the processingStatus property value. The processingStatus property
        ## @return a file_processing_status
        ## 
        def processing_status
            return @processing_status
        end
        ## 
        ## Sets the processingStatus property value. The processingStatus property
        ## @param value Value to set for the processingStatus property.
        ## @return a void
        ## 
        def processing_status=(value)
            @processing_status = value
        end
        ## 
        ## Gets the senderOrAuthors property value. The senderOrAuthors property
        ## @return a string
        ## 
        def sender_or_authors
            return @sender_or_authors
        end
        ## 
        ## Sets the senderOrAuthors property value. The senderOrAuthors property
        ## @param value Value to set for the senderOrAuthors property.
        ## @return a void
        ## 
        def sender_or_authors=(value)
            @sender_or_authors = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("content", @content)
            writer.write_date_time_value("dateTime", @date_time)
            writer.write_string_value("extension", @extension)
            writer.write_object_value("extractedTextContent", @extracted_text_content)
            writer.write_string_value("mediaType", @media_type)
            writer.write_string_value("name", @name)
            writer.write_object_value("otherProperties", @other_properties)
            writer.write_enum_value("processingStatus", @processing_status)
            writer.write_collection_of_primitive_values("senderOrAuthors", @sender_or_authors)
            writer.write_object_value("size", @size)
            writer.write_enum_value("sourceType", @source_type)
            writer.write_string_value("subjectTitle", @subject_title)
        end
        ## 
        ## Gets the size property value. The size property
        ## @return a int64
        ## 
        def size
            return @size
        end
        ## 
        ## Sets the size property value. The size property
        ## @param value Value to set for the size property.
        ## @return a void
        ## 
        def size=(value)
            @size = value
        end
        ## 
        ## Gets the sourceType property value. The sourceType property
        ## @return a source_type
        ## 
        def source_type
            return @source_type
        end
        ## 
        ## Sets the sourceType property value. The sourceType property
        ## @param value Value to set for the sourceType property.
        ## @return a void
        ## 
        def source_type=(value)
            @source_type = value
        end
        ## 
        ## Gets the subjectTitle property value. The subjectTitle property
        ## @return a string
        ## 
        def subject_title
            return @subject_title
        end
        ## 
        ## Sets the subjectTitle property value. The subjectTitle property
        ## @param value Value to set for the subjectTitle property.
        ## @return a void
        ## 
        def subject_title=(value)
            @subject_title = value
        end
    end
end
