require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PersonAnnotation < MicrosoftGraphBeta::Models::ItemFacet
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Contains the detail of the note itself.
        @detail
        ## 
        # Contains a friendly name for the note.
        @display_name
        ## 
        # The thumbnailUrl property
        @thumbnail_url
        ## 
        ## Instantiates a new PersonAnnotation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.personAnnotation"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a person_annotation
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PersonAnnotation.new
        end
        ## 
        ## Gets the detail property value. Contains the detail of the note itself.
        ## @return a item_body
        ## 
        def detail
            return @detail
        end
        ## 
        ## Sets the detail property value. Contains the detail of the note itself.
        ## @param value Value to set for the detail property.
        ## @return a void
        ## 
        def detail=(value)
            @detail = value
        end
        ## 
        ## Gets the displayName property value. Contains a friendly name for the note.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Contains a friendly name for the note.
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
                "detail" => lambda {|n| @detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemBody.create_from_discriminator_value(pn) }) },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
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
            writer.write_object_value("detail", @detail)
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("thumbnailUrl", @thumbnail_url)
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
    end
end
