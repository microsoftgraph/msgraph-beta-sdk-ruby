require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './microsoft_graph_play_lost_mode_sound'

module MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphPlayLostModeSound
    class PlayLostModeSoundPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The durationInMinutes property
        @duration_in_minutes
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
        ## Instantiates a new playLostModeSoundPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a play_lost_mode_sound_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PlayLostModeSoundPostRequestBody.new
        end
        ## 
        ## Gets the durationInMinutes property value. The durationInMinutes property
        ## @return a string
        ## 
        def duration_in_minutes
            return @duration_in_minutes
        end
        ## 
        ## Sets the durationInMinutes property value. The durationInMinutes property
        ## @param value Value to set for the duration_in_minutes property.
        ## @return a void
        ## 
        def duration_in_minutes=(value)
            @duration_in_minutes = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "durationInMinutes" => lambda {|n| @duration_in_minutes = n.get_string_value() },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("durationInMinutes", @duration_in_minutes)
            writer.write_additional_data(@additional_data)
        end
    end
end
