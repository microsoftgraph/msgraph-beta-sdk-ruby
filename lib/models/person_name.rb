require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PersonName < MicrosoftGraphBeta::Models::ItemFacet
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Provides an ordered rendering of firstName and lastName depending on the locale of the user or their device.
        @display_name
        ## 
        # First name of the user.
        @first
        ## 
        # Initials of the user.
        @initials
        ## 
        # Contains the name for the language (en-US, no-NB, en-AU) following IETF BCP47 format.
        @language_tag
        ## 
        # Last name of the user.
        @last
        ## 
        # Maiden name of the user.
        @maiden
        ## 
        # Middle name of the user.
        @middle
        ## 
        # Nickname of the user.
        @nickname
        ## 
        # Guidance on how to pronounce the users name.
        @pronunciation
        ## 
        # Designators used after the users name (eg: PhD.)
        @suffix
        ## 
        # Honorifics used to prefix a users name (eg: Dr, Sir, Madam, Mrs.)
        @title
        ## 
        ## Instantiates a new PersonName and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.personName"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a person_name
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PersonName.new
        end
        ## 
        ## Gets the displayName property value. Provides an ordered rendering of firstName and lastName depending on the locale of the user or their device.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Provides an ordered rendering of firstName and lastName depending on the locale of the user or their device.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the first property value. First name of the user.
        ## @return a string
        ## 
        def first
            return @first
        end
        ## 
        ## Sets the first property value. First name of the user.
        ## @param value Value to set for the first property.
        ## @return a void
        ## 
        def first=(value)
            @first = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "first" => lambda {|n| @first = n.get_string_value() },
                "initials" => lambda {|n| @initials = n.get_string_value() },
                "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                "last" => lambda {|n| @last = n.get_string_value() },
                "maiden" => lambda {|n| @maiden = n.get_string_value() },
                "middle" => lambda {|n| @middle = n.get_string_value() },
                "nickname" => lambda {|n| @nickname = n.get_string_value() },
                "pronunciation" => lambda {|n| @pronunciation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PersonNamePronounciation.create_from_discriminator_value(pn) }) },
                "suffix" => lambda {|n| @suffix = n.get_string_value() },
                "title" => lambda {|n| @title = n.get_string_value() },
            })
        end
        ## 
        ## Gets the initials property value. Initials of the user.
        ## @return a string
        ## 
        def initials
            return @initials
        end
        ## 
        ## Sets the initials property value. Initials of the user.
        ## @param value Value to set for the initials property.
        ## @return a void
        ## 
        def initials=(value)
            @initials = value
        end
        ## 
        ## Gets the languageTag property value. Contains the name for the language (en-US, no-NB, en-AU) following IETF BCP47 format.
        ## @return a string
        ## 
        def language_tag
            return @language_tag
        end
        ## 
        ## Sets the languageTag property value. Contains the name for the language (en-US, no-NB, en-AU) following IETF BCP47 format.
        ## @param value Value to set for the language_tag property.
        ## @return a void
        ## 
        def language_tag=(value)
            @language_tag = value
        end
        ## 
        ## Gets the last property value. Last name of the user.
        ## @return a string
        ## 
        def last
            return @last
        end
        ## 
        ## Sets the last property value. Last name of the user.
        ## @param value Value to set for the last property.
        ## @return a void
        ## 
        def last=(value)
            @last = value
        end
        ## 
        ## Gets the maiden property value. Maiden name of the user.
        ## @return a string
        ## 
        def maiden
            return @maiden
        end
        ## 
        ## Sets the maiden property value. Maiden name of the user.
        ## @param value Value to set for the maiden property.
        ## @return a void
        ## 
        def maiden=(value)
            @maiden = value
        end
        ## 
        ## Gets the middle property value. Middle name of the user.
        ## @return a string
        ## 
        def middle
            return @middle
        end
        ## 
        ## Sets the middle property value. Middle name of the user.
        ## @param value Value to set for the middle property.
        ## @return a void
        ## 
        def middle=(value)
            @middle = value
        end
        ## 
        ## Gets the nickname property value. Nickname of the user.
        ## @return a string
        ## 
        def nickname
            return @nickname
        end
        ## 
        ## Sets the nickname property value. Nickname of the user.
        ## @param value Value to set for the nickname property.
        ## @return a void
        ## 
        def nickname=(value)
            @nickname = value
        end
        ## 
        ## Gets the pronunciation property value. Guidance on how to pronounce the users name.
        ## @return a person_name_pronounciation
        ## 
        def pronunciation
            return @pronunciation
        end
        ## 
        ## Sets the pronunciation property value. Guidance on how to pronounce the users name.
        ## @param value Value to set for the pronunciation property.
        ## @return a void
        ## 
        def pronunciation=(value)
            @pronunciation = value
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
            writer.write_string_value("first", @first)
            writer.write_string_value("initials", @initials)
            writer.write_string_value("languageTag", @language_tag)
            writer.write_string_value("last", @last)
            writer.write_string_value("maiden", @maiden)
            writer.write_string_value("middle", @middle)
            writer.write_string_value("nickname", @nickname)
            writer.write_object_value("pronunciation", @pronunciation)
            writer.write_string_value("suffix", @suffix)
            writer.write_string_value("title", @title)
        end
        ## 
        ## Gets the suffix property value. Designators used after the users name (eg: PhD.)
        ## @return a string
        ## 
        def suffix
            return @suffix
        end
        ## 
        ## Sets the suffix property value. Designators used after the users name (eg: PhD.)
        ## @param value Value to set for the suffix property.
        ## @return a void
        ## 
        def suffix=(value)
            @suffix = value
        end
        ## 
        ## Gets the title property value. Honorifics used to prefix a users name (eg: Dr, Sir, Madam, Mrs.)
        ## @return a string
        ## 
        def title
            return @title
        end
        ## 
        ## Sets the title property value. Honorifics used to prefix a users name (eg: Dr, Sir, Madam, Mrs.)
        ## @param value Value to set for the title property.
        ## @return a void
        ## 
        def title=(value)
            @title = value
        end
    end
end
