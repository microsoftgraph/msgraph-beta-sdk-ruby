require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MentionEvent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The eventDateTime property
            @event_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The speaker property
            @speaker
            ## 
            # The transcriptUtterance property
            @transcript_utterance
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new MentionEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mention_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MentionEvent.new
            end
            ## 
            ## Gets the eventDateTime property value. The eventDateTime property
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. The eventDateTime property
            ## @param value Value to set for the eventDateTime property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "speaker" => lambda {|n| @speaker = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "transcriptUtterance" => lambda {|n| @transcript_utterance = n.get_string_value() },
                }
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("speaker", @speaker)
                writer.write_string_value("transcriptUtterance", @transcript_utterance)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the speaker property value. The speaker property
            ## @return a identity_set
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
            ## 
            ## Gets the transcriptUtterance property value. The transcriptUtterance property
            ## @return a string
            ## 
            def transcript_utterance
                return @transcript_utterance
            end
            ## 
            ## Sets the transcriptUtterance property value. The transcriptUtterance property
            ## @param value Value to set for the transcriptUtterance property.
            ## @return a void
            ## 
            def transcript_utterance=(value)
                @transcript_utterance = value
            end
        end
    end
end
