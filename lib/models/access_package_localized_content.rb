require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageLocalizedContent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The fallback string, which is used when a requested localization is not available. Required.
            @default_text
            ## 
            # Content represented in a format for a specific locale.
            @localized_texts
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new accessPackageLocalizedContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_localized_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageLocalizedContent.new
            end
            ## 
            ## Gets the defaultText property value. The fallback string, which is used when a requested localization is not available. Required.
            ## @return a string
            ## 
            def default_text
                return @default_text
            end
            ## 
            ## Sets the defaultText property value. The fallback string, which is used when a requested localization is not available. Required.
            ## @param value Value to set for the default_text property.
            ## @return a void
            ## 
            def default_text=(value)
                @default_text = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultText" => lambda {|n| @default_text = n.get_string_value() },
                    "localizedTexts" => lambda {|n| @localized_texts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageLocalizedText.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the localizedTexts property value. Content represented in a format for a specific locale.
            ## @return a access_package_localized_text
            ## 
            def localized_texts
                return @localized_texts
            end
            ## 
            ## Sets the localizedTexts property value. Content represented in a format for a specific locale.
            ## @param value Value to set for the localized_texts property.
            ## @return a void
            ## 
            def localized_texts=(value)
                @localized_texts = value
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
                writer.write_string_value("defaultText", @default_text)
                writer.write_collection_of_object_values("localizedTexts", @localized_texts)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
