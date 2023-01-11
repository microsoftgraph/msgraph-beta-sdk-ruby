require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class LanguageProficiency < MicrosoftGraphBeta::Models::ItemFacet
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Contains the long-form name for the language.
        @display_name
        ## 
        # The proficiency property
        @proficiency
        ## 
        # Represents the users reading comprehension for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        @reading
        ## 
        # Represents the users spoken proficiency for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        @spoken
        ## 
        # Contains the four-character BCP47 name for the language (en-US, no-NB, en-AU).
        @tag
        ## 
        # The thumbnailUrl property
        @thumbnail_url
        ## 
        # Represents the users written proficiency for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        @written
        ## 
        ## Instantiates a new LanguageProficiency and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.languageProficiency"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a language_proficiency
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return LanguageProficiency.new
        end
        ## 
        ## Gets the displayName property value. Contains the long-form name for the language.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Contains the long-form name for the language.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "proficiency" => lambda {|n| @proficiency = n.get_enum_value(MicrosoftGraphBeta::Models::LanguageProficiencyLevel) },
                "reading" => lambda {|n| @reading = n.get_enum_value(MicrosoftGraphBeta::Models::LanguageProficiencyLevel) },
                "spoken" => lambda {|n| @spoken = n.get_enum_value(MicrosoftGraphBeta::Models::LanguageProficiencyLevel) },
                "tag" => lambda {|n| @tag = n.get_string_value() },
                "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                "written" => lambda {|n| @written = n.get_enum_value(MicrosoftGraphBeta::Models::LanguageProficiencyLevel) },
            })
        end
        ## 
        ## Gets the proficiency property value. The proficiency property
        ## @return a language_proficiency_level
        ## 
        def proficiency
            return @proficiency
        end
        ## 
        ## Sets the proficiency property value. The proficiency property
        ## @param value Value to set for the proficiency property.
        ## @return a void
        ## 
        def proficiency=(value)
            @proficiency = value
        end
        ## 
        ## Gets the reading property value. Represents the users reading comprehension for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        ## @return a language_proficiency_level
        ## 
        def reading
            return @reading
        end
        ## 
        ## Sets the reading property value. Represents the users reading comprehension for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        ## @param value Value to set for the reading property.
        ## @return a void
        ## 
        def reading=(value)
            @reading = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("displayName", @display_name)
            writer.write_enum_value("proficiency", @proficiency)
            writer.write_enum_value("reading", @reading)
            writer.write_enum_value("spoken", @spoken)
            writer.write_string_value("tag", @tag)
            writer.write_string_value("thumbnailUrl", @thumbnail_url)
            writer.write_enum_value("written", @written)
        end
        ## 
        ## Gets the spoken property value. Represents the users spoken proficiency for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        ## @return a language_proficiency_level
        ## 
        def spoken
            return @spoken
        end
        ## 
        ## Sets the spoken property value. Represents the users spoken proficiency for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        ## @param value Value to set for the spoken property.
        ## @return a void
        ## 
        def spoken=(value)
            @spoken = value
        end
        ## 
        ## Gets the tag property value. Contains the four-character BCP47 name for the language (en-US, no-NB, en-AU).
        ## @return a string
        ## 
        def tag
            return @tag
        end
        ## 
        ## Sets the tag property value. Contains the four-character BCP47 name for the language (en-US, no-NB, en-AU).
        ## @param value Value to set for the tag property.
        ## @return a void
        ## 
        def tag=(value)
            @tag = value
        end
        ## 
        ## Gets the thumbnailUrl property value. The thumbnailUrl property
        ## @return a string
        ## 
        def thumbnail_url
            return @thumbnail_url
        end
        ## 
        ## Sets the thumbnailUrl property value. The thumbnailUrl property
        ## @param value Value to set for the thumbnailUrl property.
        ## @return a void
        ## 
        def thumbnail_url=(value)
            @thumbnail_url = value
        end
        ## 
        ## Gets the written property value. Represents the users written proficiency for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        ## @return a language_proficiency_level
        ## 
        def written
            return @written
        end
        ## 
        ## Sets the written property value. Represents the users written proficiency for the language represented by the object. Possible values are: elementary, conversational, limitedWorking, professionalWorking, fullProfessional, nativeOrBilingual, unknownFutureValue.
        ## @param value Value to set for the written property.
        ## @return a void
        ## 
        def written=(value)
            @written = value
        end
    end
end
