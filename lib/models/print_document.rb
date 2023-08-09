require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrintDocument < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The configuration property
            @configuration
            ## 
            # The document's content (MIME) type. Read-only.
            @content_type
            ## 
            # The document's name. Read-only.
            @display_name
            ## 
            # The downloadedDateTime property
            @downloaded_date_time
            ## 
            # The document's size in bytes. Read-only.
            @size
            ## 
            # The uploadedDateTime property
            @uploaded_date_time
            ## 
            ## Gets the configuration property value. The configuration property
            ## @return a printer_document_configuration
            ## 
            def configuration
                return @configuration
            end
            ## 
            ## Sets the configuration property value. The configuration property
            ## @param value Value to set for the configuration property.
            ## @return a void
            ## 
            def configuration=(value)
                @configuration = value
            end
            ## 
            ## Instantiates a new printDocument and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentType property value. The document's content (MIME) type. Read-only.
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The document's content (MIME) type. Read-only.
            ## @param value Value to set for the contentType property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a print_document
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintDocument.new
            end
            ## 
            ## Gets the displayName property value. The document's name. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The document's name. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the downloadedDateTime property value. The downloadedDateTime property
            ## @return a date_time
            ## 
            def downloaded_date_time
                return @downloaded_date_time
            end
            ## 
            ## Sets the downloadedDateTime property value. The downloadedDateTime property
            ## @param value Value to set for the downloadedDateTime property.
            ## @return a void
            ## 
            def downloaded_date_time=(value)
                @downloaded_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrinterDocumentConfiguration.create_from_discriminator_value(pn) }) },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "downloadedDateTime" => lambda {|n| @downloaded_date_time = n.get_date_time_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "uploadedDateTime" => lambda {|n| @uploaded_date_time = n.get_date_time_value() },
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
                writer.write_object_value("configuration", @configuration)
                writer.write_string_value("contentType", @content_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("downloadedDateTime", @downloaded_date_time)
                writer.write_object_value("size", @size)
                writer.write_date_time_value("uploadedDateTime", @uploaded_date_time)
            end
            ## 
            ## Gets the size property value. The document's size in bytes. Read-only.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The document's size in bytes. Read-only.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the uploadedDateTime property value. The uploadedDateTime property
            ## @return a date_time
            ## 
            def uploaded_date_time
                return @uploaded_date_time
            end
            ## 
            ## Sets the uploadedDateTime property value. The uploadedDateTime property
            ## @param value Value to set for the uploadedDateTime property.
            ## @return a void
            ## 
            def uploaded_date_time=(value)
                @uploaded_date_time = value
            end
        end
    end
end
