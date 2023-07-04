require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkSpeakerConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The defaultCommunicationSpeaker property
            @default_communication_speaker
            ## 
            # The defaultSpeaker property
            @default_speaker
            ## 
            # True if the communication speaker is optional. Used to compute the health state if the communication speaker is not optional.
            @is_communication_speaker_optional
            ## 
            # True if the configured speaker is optional. Used to compute the health state if the speaker is not optional.
            @is_speaker_optional
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The speakers property
            @speakers
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
            ## Instantiates a new teamworkSpeakerConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_speaker_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkSpeakerConfiguration.new
            end
            ## 
            ## Gets the defaultCommunicationSpeaker property value. The defaultCommunicationSpeaker property
            ## @return a teamwork_peripheral
            ## 
            def default_communication_speaker
                return @default_communication_speaker
            end
            ## 
            ## Sets the defaultCommunicationSpeaker property value. The defaultCommunicationSpeaker property
            ## @param value Value to set for the default_communication_speaker property.
            ## @return a void
            ## 
            def default_communication_speaker=(value)
                @default_communication_speaker = value
            end
            ## 
            ## Gets the defaultSpeaker property value. The defaultSpeaker property
            ## @return a teamwork_peripheral
            ## 
            def default_speaker
                return @default_speaker
            end
            ## 
            ## Sets the defaultSpeaker property value. The defaultSpeaker property
            ## @param value Value to set for the default_speaker property.
            ## @return a void
            ## 
            def default_speaker=(value)
                @default_speaker = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultCommunicationSpeaker" => lambda {|n| @default_communication_speaker = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                    "defaultSpeaker" => lambda {|n| @default_speaker = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                    "isCommunicationSpeakerOptional" => lambda {|n| @is_communication_speaker_optional = n.get_boolean_value() },
                    "isSpeakerOptional" => lambda {|n| @is_speaker_optional = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "speakers" => lambda {|n| @speakers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isCommunicationSpeakerOptional property value. True if the communication speaker is optional. Used to compute the health state if the communication speaker is not optional.
            ## @return a boolean
            ## 
            def is_communication_speaker_optional
                return @is_communication_speaker_optional
            end
            ## 
            ## Sets the isCommunicationSpeakerOptional property value. True if the communication speaker is optional. Used to compute the health state if the communication speaker is not optional.
            ## @param value Value to set for the is_communication_speaker_optional property.
            ## @return a void
            ## 
            def is_communication_speaker_optional=(value)
                @is_communication_speaker_optional = value
            end
            ## 
            ## Gets the isSpeakerOptional property value. True if the configured speaker is optional. Used to compute the health state if the speaker is not optional.
            ## @return a boolean
            ## 
            def is_speaker_optional
                return @is_speaker_optional
            end
            ## 
            ## Sets the isSpeakerOptional property value. True if the configured speaker is optional. Used to compute the health state if the speaker is not optional.
            ## @param value Value to set for the is_speaker_optional property.
            ## @return a void
            ## 
            def is_speaker_optional=(value)
                @is_speaker_optional = value
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
                writer.write_object_value("defaultCommunicationSpeaker", @default_communication_speaker)
                writer.write_object_value("defaultSpeaker", @default_speaker)
                writer.write_boolean_value("isCommunicationSpeakerOptional", @is_communication_speaker_optional)
                writer.write_boolean_value("isSpeakerOptional", @is_speaker_optional)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("speakers", @speakers)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the speakers property value. The speakers property
            ## @return a teamwork_peripheral
            ## 
            def speakers
                return @speakers
            end
            ## 
            ## Sets the speakers property value. The speakers property
            ## @param value Value to set for the speakers property.
            ## @return a void
            ## 
            def speakers=(value)
                @speakers = value
            end
        end
    end
end
