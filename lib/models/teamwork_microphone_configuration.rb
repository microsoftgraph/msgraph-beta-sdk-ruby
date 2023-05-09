require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkMicrophoneConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The defaultMicrophone property
            @default_microphone
            ## 
            # True if the configured microphone is optional. False if the microphone is not optional and the health state of the device should be computed.
            @is_microphone_optional
            ## 
            # The microphones property
            @microphones
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new teamworkMicrophoneConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_microphone_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkMicrophoneConfiguration.new
            end
            ## 
            ## Gets the defaultMicrophone property value. The defaultMicrophone property
            ## @return a teamwork_peripheral
            ## 
            def default_microphone
                return @default_microphone
            end
            ## 
            ## Sets the defaultMicrophone property value. The defaultMicrophone property
            ## @param value Value to set for the default_microphone property.
            ## @return a void
            ## 
            def default_microphone=(value)
                @default_microphone = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultMicrophone" => lambda {|n| @default_microphone = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                    "isMicrophoneOptional" => lambda {|n| @is_microphone_optional = n.get_boolean_value() },
                    "microphones" => lambda {|n| @microphones = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isMicrophoneOptional property value. True if the configured microphone is optional. False if the microphone is not optional and the health state of the device should be computed.
            ## @return a boolean
            ## 
            def is_microphone_optional
                return @is_microphone_optional
            end
            ## 
            ## Sets the isMicrophoneOptional property value. True if the configured microphone is optional. False if the microphone is not optional and the health state of the device should be computed.
            ## @param value Value to set for the is_microphone_optional property.
            ## @return a void
            ## 
            def is_microphone_optional=(value)
                @is_microphone_optional = value
            end
            ## 
            ## Gets the microphones property value. The microphones property
            ## @return a teamwork_peripheral
            ## 
            def microphones
                return @microphones
            end
            ## 
            ## Sets the microphones property value. The microphones property
            ## @param value Value to set for the microphones property.
            ## @return a void
            ## 
            def microphones=(value)
                @microphones = value
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
                writer.write_object_value("defaultMicrophone", @default_microphone)
                writer.write_boolean_value("isMicrophoneOptional", @is_microphone_optional)
                writer.write_collection_of_object_values("microphones", @microphones)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
