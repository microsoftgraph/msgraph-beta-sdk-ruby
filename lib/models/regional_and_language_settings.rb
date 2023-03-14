require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RegionalAndLanguageSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Prioritized list of languages the user reads and authors in.Returned by default. Not nullable.
            @authoring_languages
            ## 
            # The  user's preferred user interface language (menus, buttons, ribbons, warning messages) for Microsoft web applications.Returned by default. Not nullable.
            @default_display_language
            ## 
            # The locale that drives the default date, time, and calendar formatting.Returned by default.
            @default_regional_format
            ## 
            # The language a user expected to use as input for text to speech scenarios.Returned by default.
            @default_speech_input_language
            ## 
            # The language a user expects to have documents, emails, and messages translated into.Returned by default.
            @default_translation_language
            ## 
            # Allows a user to override their defaultRegionalFormat with field specific formats.Returned by default.
            @regional_format_overrides
            ## 
            # The user's preferred settings when consuming translated documents, emails, messages, and websites.Returned by default. Not nullable.
            @translation_preferences
            ## 
            ## Gets the authoringLanguages property value. Prioritized list of languages the user reads and authors in.Returned by default. Not nullable.
            ## @return a locale_info
            ## 
            def authoring_languages
                return @authoring_languages
            end
            ## 
            ## Sets the authoringLanguages property value. Prioritized list of languages the user reads and authors in.Returned by default. Not nullable.
            ## @param value Value to set for the authoring_languages property.
            ## @return a void
            ## 
            def authoring_languages=(value)
                @authoring_languages = value
            end
            ## 
            ## Instantiates a new regionalAndLanguageSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a regional_and_language_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RegionalAndLanguageSettings.new
            end
            ## 
            ## Gets the defaultDisplayLanguage property value. The  user's preferred user interface language (menus, buttons, ribbons, warning messages) for Microsoft web applications.Returned by default. Not nullable.
            ## @return a locale_info
            ## 
            def default_display_language
                return @default_display_language
            end
            ## 
            ## Sets the defaultDisplayLanguage property value. The  user's preferred user interface language (menus, buttons, ribbons, warning messages) for Microsoft web applications.Returned by default. Not nullable.
            ## @param value Value to set for the default_display_language property.
            ## @return a void
            ## 
            def default_display_language=(value)
                @default_display_language = value
            end
            ## 
            ## Gets the defaultRegionalFormat property value. The locale that drives the default date, time, and calendar formatting.Returned by default.
            ## @return a locale_info
            ## 
            def default_regional_format
                return @default_regional_format
            end
            ## 
            ## Sets the defaultRegionalFormat property value. The locale that drives the default date, time, and calendar formatting.Returned by default.
            ## @param value Value to set for the default_regional_format property.
            ## @return a void
            ## 
            def default_regional_format=(value)
                @default_regional_format = value
            end
            ## 
            ## Gets the defaultSpeechInputLanguage property value. The language a user expected to use as input for text to speech scenarios.Returned by default.
            ## @return a locale_info
            ## 
            def default_speech_input_language
                return @default_speech_input_language
            end
            ## 
            ## Sets the defaultSpeechInputLanguage property value. The language a user expected to use as input for text to speech scenarios.Returned by default.
            ## @param value Value to set for the default_speech_input_language property.
            ## @return a void
            ## 
            def default_speech_input_language=(value)
                @default_speech_input_language = value
            end
            ## 
            ## Gets the defaultTranslationLanguage property value. The language a user expects to have documents, emails, and messages translated into.Returned by default.
            ## @return a locale_info
            ## 
            def default_translation_language
                return @default_translation_language
            end
            ## 
            ## Sets the defaultTranslationLanguage property value. The language a user expects to have documents, emails, and messages translated into.Returned by default.
            ## @param value Value to set for the default_translation_language property.
            ## @return a void
            ## 
            def default_translation_language=(value)
                @default_translation_language = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authoringLanguages" => lambda {|n| @authoring_languages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LocaleInfo.create_from_discriminator_value(pn) }) },
                    "defaultDisplayLanguage" => lambda {|n| @default_display_language = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LocaleInfo.create_from_discriminator_value(pn) }) },
                    "defaultRegionalFormat" => lambda {|n| @default_regional_format = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LocaleInfo.create_from_discriminator_value(pn) }) },
                    "defaultSpeechInputLanguage" => lambda {|n| @default_speech_input_language = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LocaleInfo.create_from_discriminator_value(pn) }) },
                    "defaultTranslationLanguage" => lambda {|n| @default_translation_language = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LocaleInfo.create_from_discriminator_value(pn) }) },
                    "regionalFormatOverrides" => lambda {|n| @regional_format_overrides = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RegionalFormatOverrides.create_from_discriminator_value(pn) }) },
                    "translationPreferences" => lambda {|n| @translation_preferences = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TranslationPreferences.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the regionalFormatOverrides property value. Allows a user to override their defaultRegionalFormat with field specific formats.Returned by default.
            ## @return a regional_format_overrides
            ## 
            def regional_format_overrides
                return @regional_format_overrides
            end
            ## 
            ## Sets the regionalFormatOverrides property value. Allows a user to override their defaultRegionalFormat with field specific formats.Returned by default.
            ## @param value Value to set for the regional_format_overrides property.
            ## @return a void
            ## 
            def regional_format_overrides=(value)
                @regional_format_overrides = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("authoringLanguages", @authoring_languages)
                writer.write_object_value("defaultDisplayLanguage", @default_display_language)
                writer.write_object_value("defaultRegionalFormat", @default_regional_format)
                writer.write_object_value("defaultSpeechInputLanguage", @default_speech_input_language)
                writer.write_object_value("defaultTranslationLanguage", @default_translation_language)
                writer.write_object_value("regionalFormatOverrides", @regional_format_overrides)
                writer.write_object_value("translationPreferences", @translation_preferences)
            end
            ## 
            ## Gets the translationPreferences property value. The user's preferred settings when consuming translated documents, emails, messages, and websites.Returned by default. Not nullable.
            ## @return a translation_preferences
            ## 
            def translation_preferences
                return @translation_preferences
            end
            ## 
            ## Sets the translationPreferences property value. The user's preferred settings when consuming translated documents, emails, messages, and websites.Returned by default. Not nullable.
            ## @param value Value to set for the translation_preferences property.
            ## @return a void
            ## 
            def translation_preferences=(value)
                @translation_preferences = value
            end
        end
    end
end
