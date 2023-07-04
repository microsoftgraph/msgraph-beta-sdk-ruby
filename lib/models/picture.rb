require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Picture
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The content property
            @content
            ## 
            # The contentType property
            @content_type
            ## 
            # The height property
            @height
            ## 
            # The id property
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The width property
            @width
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
            ## Instantiates a new Picture and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. The content property
            ## @return a base64url
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
            ## Gets the contentType property value. The contentType property
            ## @return a string
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. The contentType property
            ## @param value Value to set for the content_type property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a picture
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Picture.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "contentType" => lambda {|n| @content_type = n.get_string_value() },
                    "height" => lambda {|n| @height = n.get_number_value() },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "width" => lambda {|n| @width = n.get_number_value() },
                }
            end
            ## 
            ## Gets the height property value. The height property
            ## @return a integer
            ## 
            def height
                return @height
            end
            ## 
            ## Sets the height property value. The height property
            ## @param value Value to set for the height property.
            ## @return a void
            ## 
            def height=(value)
                @height = value
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a guid
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("content", @content)
                writer.write_string_value("contentType", @content_type)
                writer.write_number_value("height", @height)
                writer.write_guid_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("width", @width)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the width property value. The width property
            ## @return a integer
            ## 
            def width
                return @width
            end
            ## 
            ## Sets the width property value. The width property
            ## @param value Value to set for the width property.
            ## @return a void
            ## 
            def width=(value)
                @width = value
            end
        end
    end
end
