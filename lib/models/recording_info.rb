require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RecordingInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The participant who initiated the recording.
            @initiated_by
            ## 
            # The identities of recording initiator.
            @initiator
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The recordingStatus property
            @recording_status
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new recordingInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a recording_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RecordingInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "initiatedBy" => lambda {|n| @initiated_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ParticipantInfo.create_from_discriminator_value(pn) }) },
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recordingStatus" => lambda {|n| @recording_status = n.get_enum_value(MicrosoftGraphBeta::Models::RecordingStatus) },
                }
            end
            ## 
            ## Gets the initiatedBy property value. The participant who initiated the recording.
            ## @return a participant_info
            ## 
            def initiated_by
                return @initiated_by
            end
            ## 
            ## Sets the initiatedBy property value. The participant who initiated the recording.
            ## @param value Value to set for the initiatedBy property.
            ## @return a void
            ## 
            def initiated_by=(value)
                @initiated_by = value
            end
            ## 
            ## Gets the initiator property value. The identities of recording initiator.
            ## @return a identity_set
            ## 
            def initiator
                return @initiator
            end
            ## 
            ## Sets the initiator property value. The identities of recording initiator.
            ## @param value Value to set for the initiator property.
            ## @return a void
            ## 
            def initiator=(value)
                @initiator = value
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
            ## Gets the recordingStatus property value. The recordingStatus property
            ## @return a recording_status
            ## 
            def recording_status
                return @recording_status
            end
            ## 
            ## Sets the recordingStatus property value. The recordingStatus property
            ## @param value Value to set for the recordingStatus property.
            ## @return a void
            ## 
            def recording_status=(value)
                @recording_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("initiatedBy", @initiated_by)
                writer.write_object_value("initiator", @initiator)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("recordingStatus", @recording_status)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
