require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ContentSharingSession < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The pngOfCurrentSlide property
            @png_of_current_slide
            ## 
            # The presenterParticipantId property
            @presenter_participant_id
            ## 
            ## Instantiates a new ContentSharingSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a content_sharing_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ContentSharingSession.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "pngOfCurrentSlide" => lambda {|n| @png_of_current_slide = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "presenterParticipantId" => lambda {|n| @presenter_participant_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the pngOfCurrentSlide property value. The pngOfCurrentSlide property
            ## @return a base64url
            ## 
            def png_of_current_slide
                return @png_of_current_slide
            end
            ## 
            ## Sets the pngOfCurrentSlide property value. The pngOfCurrentSlide property
            ## @param value Value to set for the pngOfCurrentSlide property.
            ## @return a void
            ## 
            def png_of_current_slide=(value)
                @png_of_current_slide = value
            end
            ## 
            ## Gets the presenterParticipantId property value. The presenterParticipantId property
            ## @return a string
            ## 
            def presenter_participant_id
                return @presenter_participant_id
            end
            ## 
            ## Sets the presenterParticipantId property value. The presenterParticipantId property
            ## @param value Value to set for the presenterParticipantId property.
            ## @return a void
            ## 
            def presenter_participant_id=(value)
                @presenter_participant_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("pngOfCurrentSlide", @png_of_current_slide)
                writer.write_string_value("presenterParticipantId", @presenter_participant_id)
            end
        end
    end
end
