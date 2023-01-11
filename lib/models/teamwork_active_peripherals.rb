require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkActivePeripherals
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The communicationSpeaker property
        @communication_speaker
        ## 
        # The contentCamera property
        @content_camera
        ## 
        # The microphone property
        @microphone
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The roomCamera property
        @room_camera
        ## 
        # The speaker property
        @speaker
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
        ## Gets the communicationSpeaker property value. The communicationSpeaker property
        ## @return a teamwork_peripheral
        ## 
        def communication_speaker
            return @communication_speaker
        end
        ## 
        ## Sets the communicationSpeaker property value. The communicationSpeaker property
        ## @param value Value to set for the communicationSpeaker property.
        ## @return a void
        ## 
        def communication_speaker=(value)
            @communication_speaker = value
        end
        ## 
        ## Instantiates a new teamworkActivePeripherals and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Gets the contentCamera property value. The contentCamera property
        ## @return a teamwork_peripheral
        ## 
        def content_camera
            return @content_camera
        end
        ## 
        ## Sets the contentCamera property value. The contentCamera property
        ## @param value Value to set for the contentCamera property.
        ## @return a void
        ## 
        def content_camera=(value)
            @content_camera = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_active_peripherals
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkActivePeripherals.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "communicationSpeaker" => lambda {|n| @communication_speaker = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                "contentCamera" => lambda {|n| @content_camera = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                "microphone" => lambda {|n| @microphone = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "roomCamera" => lambda {|n| @room_camera = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                "speaker" => lambda {|n| @speaker = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the microphone property value. The microphone property
        ## @return a teamwork_peripheral
        ## 
        def microphone
            return @microphone
        end
        ## 
        ## Sets the microphone property value. The microphone property
        ## @param value Value to set for the microphone property.
        ## @return a void
        ## 
        def microphone=(value)
            @microphone = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the roomCamera property value. The roomCamera property
        ## @return a teamwork_peripheral
        ## 
        def room_camera
            return @room_camera
        end
        ## 
        ## Sets the roomCamera property value. The roomCamera property
        ## @param value Value to set for the roomCamera property.
        ## @return a void
        ## 
        def room_camera=(value)
            @room_camera = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("communicationSpeaker", @communication_speaker)
            writer.write_object_value("contentCamera", @content_camera)
            writer.write_object_value("microphone", @microphone)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("roomCamera", @room_camera)
            writer.write_object_value("speaker", @speaker)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the speaker property value. The speaker property
        ## @return a teamwork_peripheral
        ## 
        def speaker
            return @speaker
        end
        ## 
        ## Sets the speaker property value. The speaker property
        ## @param value Value to set for the speaker property.
        ## @return a void
        ## 
        def speaker=(value)
            @speaker = value
        end
    end
end
