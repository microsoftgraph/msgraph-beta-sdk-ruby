require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TranslationPreferences
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Translation override behavior for languages, if any.Returned by default.
        @language_overrides
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The user's preferred translation behavior.Returned by default. Not nullable.
        @translation_behavior
        ## 
        # The list of languages the user does not need translated. This is computed from the authoringLanguages collection in regionalAndLanguageSettings, and the languageOverrides collection in translationPreferences. The list specifies neutral culture values that include the language code without any country or region association. For example, it would specify 'fr' for the neutral French culture, but not 'fr-FR' for the French culture in France. Returned by default. Read only.
        @untranslated_languages
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
        ## Instantiates a new translationPreferences and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a translation_preferences
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TranslationPreferences.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "languageOverrides" => lambda {|n| @language_overrides = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TranslationLanguageOverride.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "translationBehavior" => lambda {|n| @translation_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::TranslationBehavior) },
                "untranslatedLanguages" => lambda {|n| @untranslated_languages = n.get_collection_of_primitive_values(String) },
            }
        end
        ## 
        ## Gets the languageOverrides property value. Translation override behavior for languages, if any.Returned by default.
        ## @return a translation_language_override
        ## 
        def language_overrides
            return @language_overrides
        end
        ## 
        ## Sets the languageOverrides property value. Translation override behavior for languages, if any.Returned by default.
        ## @param value Value to set for the language_overrides property.
        ## @return a void
        ## 
        def language_overrides=(value)
            @language_overrides = value
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
            writer.write_collection_of_object_values("languageOverrides", @language_overrides)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("translationBehavior", @translation_behavior)
            writer.write_collection_of_primitive_values("untranslatedLanguages", @untranslated_languages)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the translationBehavior property value. The user's preferred translation behavior.Returned by default. Not nullable.
        ## @return a translation_behavior
        ## 
        def translation_behavior
            return @translation_behavior
        end
        ## 
        ## Sets the translationBehavior property value. The user's preferred translation behavior.Returned by default. Not nullable.
        ## @param value Value to set for the translation_behavior property.
        ## @return a void
        ## 
        def translation_behavior=(value)
            @translation_behavior = value
        end
        ## 
        ## Gets the untranslatedLanguages property value. The list of languages the user does not need translated. This is computed from the authoringLanguages collection in regionalAndLanguageSettings, and the languageOverrides collection in translationPreferences. The list specifies neutral culture values that include the language code without any country or region association. For example, it would specify 'fr' for the neutral French culture, but not 'fr-FR' for the French culture in France. Returned by default. Read only.
        ## @return a string
        ## 
        def untranslated_languages
            return @untranslated_languages
        end
        ## 
        ## Sets the untranslatedLanguages property value. The list of languages the user does not need translated. This is computed from the authoringLanguages collection in regionalAndLanguageSettings, and the languageOverrides collection in translationPreferences. The list specifies neutral culture values that include the language code without any country or region association. For example, it would specify 'fr' for the neutral French culture, but not 'fr-FR' for the French culture in France. Returned by default. Read only.
        ## @param value Value to set for the untranslated_languages property.
        ## @return a void
        ## 
        def untranslated_languages=(value)
            @untranslated_languages = value
        end
    end
end
