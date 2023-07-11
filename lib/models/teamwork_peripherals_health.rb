require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkPeripheralsHealth
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The health details about the communication speaker.
            @communication_speaker_health
            ## 
            # The health details about the content camera.
            @content_camera_health
            ## 
            # The health details about displays.
            @display_health_collection
            ## 
            # The health details about the microphone.
            @microphone_health
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The health details about the room camera.
            @room_camera_health
            ## 
            # The health details about the speaker.
            @speaker_health
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
            ## Gets the communicationSpeakerHealth property value. The health details about the communication speaker.
            ## @return a teamwork_peripheral_health
            ## 
            def communication_speaker_health
                return @communication_speaker_health
            end
            ## 
            ## Sets the communicationSpeakerHealth property value. The health details about the communication speaker.
            ## @param value Value to set for the communication_speaker_health property.
            ## @return a void
            ## 
            def communication_speaker_health=(value)
                @communication_speaker_health = value
            end
            ## 
            ## Instantiates a new teamworkPeripheralsHealth and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentCameraHealth property value. The health details about the content camera.
            ## @return a teamwork_peripheral_health
            ## 
            def content_camera_health
                return @content_camera_health
            end
            ## 
            ## Sets the contentCameraHealth property value. The health details about the content camera.
            ## @param value Value to set for the content_camera_health property.
            ## @return a void
            ## 
            def content_camera_health=(value)
                @content_camera_health = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_peripherals_health
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkPeripheralsHealth.new
            end
            ## 
            ## Gets the displayHealthCollection property value. The health details about displays.
            ## @return a teamwork_peripheral_health
            ## 
            def display_health_collection
                return @display_health_collection
            end
            ## 
            ## Sets the displayHealthCollection property value. The health details about displays.
            ## @param value Value to set for the display_health_collection property.
            ## @return a void
            ## 
            def display_health_collection=(value)
                @display_health_collection = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "communicationSpeakerHealth" => lambda {|n| @communication_speaker_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralHealth.create_from_discriminator_value(pn) }) },
                    "contentCameraHealth" => lambda {|n| @content_camera_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralHealth.create_from_discriminator_value(pn) }) },
                    "displayHealthCollection" => lambda {|n| @display_health_collection = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralHealth.create_from_discriminator_value(pn) }) },
                    "microphoneHealth" => lambda {|n| @microphone_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralHealth.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "roomCameraHealth" => lambda {|n| @room_camera_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralHealth.create_from_discriminator_value(pn) }) },
                    "speakerHealth" => lambda {|n| @speaker_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralHealth.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the microphoneHealth property value. The health details about the microphone.
            ## @return a teamwork_peripheral_health
            ## 
            def microphone_health
                return @microphone_health
            end
            ## 
            ## Sets the microphoneHealth property value. The health details about the microphone.
            ## @param value Value to set for the microphone_health property.
            ## @return a void
            ## 
            def microphone_health=(value)
                @microphone_health = value
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
            ## Gets the roomCameraHealth property value. The health details about the room camera.
            ## @return a teamwork_peripheral_health
            ## 
            def room_camera_health
                return @room_camera_health
            end
            ## 
            ## Sets the roomCameraHealth property value. The health details about the room camera.
            ## @param value Value to set for the room_camera_health property.
            ## @return a void
            ## 
            def room_camera_health=(value)
                @room_camera_health = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("communicationSpeakerHealth", @communication_speaker_health)
                writer.write_object_value("contentCameraHealth", @content_camera_health)
                writer.write_collection_of_object_values("displayHealthCollection", @display_health_collection)
                writer.write_object_value("microphoneHealth", @microphone_health)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("roomCameraHealth", @room_camera_health)
                writer.write_object_value("speakerHealth", @speaker_health)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the speakerHealth property value. The health details about the speaker.
            ## @return a teamwork_peripheral_health
            ## 
            def speaker_health
                return @speaker_health
            end
            ## 
            ## Sets the speakerHealth property value. The health details about the speaker.
            ## @param value Value to set for the speaker_health property.
            ## @return a void
            ## 
            def speaker_health=(value)
                @speaker_health = value
            end
        end
    end
end
