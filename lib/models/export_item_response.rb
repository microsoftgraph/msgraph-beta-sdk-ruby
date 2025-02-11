require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExportItemResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The version of the item.
            @change_key
            ## 
            # Data that represents an item in a base64 encoded FastTransfer stream format.
            @data
            ## 
            # An error that occurs during an action.
            @error
            ## 
            # The unique identifier of the item.
            @item_id
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
            ## Gets the changeKey property value. The version of the item.
            ## @return a string
            ## 
            def change_key
                return @change_key
            end
            ## 
            ## Sets the changeKey property value. The version of the item.
            ## @param value Value to set for the changeKey property.
            ## @return a void
            ## 
            def change_key=(value)
                @change_key = value
            end
            ## 
            ## Instantiates a new ExportItemResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a export_item_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExportItemResponse.new
            end
            ## 
            ## Gets the data property value. Data that represents an item in a base64 encoded FastTransfer stream format.
            ## @return a base64url
            ## 
            def data
                return @data
            end
            ## 
            ## Sets the data property value. Data that represents an item in a base64 encoded FastTransfer stream format.
            ## @param value Value to set for the data property.
            ## @return a void
            ## 
            def data=(value)
                @data = value
            end
            ## 
            ## Gets the error property value. An error that occurs during an action.
            ## @return a mail_tips_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. An error that occurs during an action.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "changeKey" => lambda {|n| @change_key = n.get_string_value() },
                    "data" => lambda {|n| @data = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MailTipsError.create_from_discriminator_value(pn) }) },
                    "itemId" => lambda {|n| @item_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the itemId property value. The unique identifier of the item.
            ## @return a string
            ## 
            def item_id
                return @item_id
            end
            ## 
            ## Sets the itemId property value. The unique identifier of the item.
            ## @param value Value to set for the itemId property.
            ## @return a void
            ## 
            def item_id=(value)
                @item_id = value
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
                writer.write_string_value("changeKey", @change_key)
                writer.write_object_value("data", @data)
                writer.write_object_value("error", @error)
                writer.write_string_value("itemId", @item_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
