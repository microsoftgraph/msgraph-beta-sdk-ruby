require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TranslationLanguageOverride
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The language to apply the override.Returned by default. Not nullable.
            @language_tag
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The translation override behavior for the language, if any.Returned by default. Not nullable.
            @translation_behavior
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
            ## Instantiates a new translationLanguageOverride and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a translation_language_override
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TranslationLanguageOverride.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "translationBehavior" => lambda {|n| @translation_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::TranslationBehavior) },
                }
            end
            ## 
            ## Gets the languageTag property value. The language to apply the override.Returned by default. Not nullable.
            ## @return a string
            ## 
            def language_tag
                return @language_tag
            end
            ## 
            ## Sets the languageTag property value. The language to apply the override.Returned by default. Not nullable.
            ## @param value Value to set for the languageTag property.
            ## @return a void
            ## 
            def language_tag=(value)
                @language_tag = value
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
                writer.write_string_value("languageTag", @language_tag)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("translationBehavior", @translation_behavior)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the translationBehavior property value. The translation override behavior for the language, if any.Returned by default. Not nullable.
            ## @return a translation_behavior
            ## 
            def translation_behavior
                return @translation_behavior
            end
            ## 
            ## Sets the translationBehavior property value. The translation override behavior for the language, if any.Returned by default. Not nullable.
            ## @param value Value to set for the translationBehavior property.
            ## @return a void
            ## 
            def translation_behavior=(value)
                @translation_behavior = value
            end
        end
    end
end
