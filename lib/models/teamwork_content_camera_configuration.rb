require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkContentCameraConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # True if the content camera is inverted.
        @is_content_camera_inverted
        ## 
        # True if the content camera is optional.
        @is_content_camera_optional
        ## 
        # True if the content enhancement is enabled.
        @is_content_enhancement_enabled
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
        ## Instantiates a new teamworkContentCameraConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_content_camera_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkContentCameraConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "isContentCameraInverted" => lambda {|n| @is_content_camera_inverted = n.get_boolean_value() },
                "isContentCameraOptional" => lambda {|n| @is_content_camera_optional = n.get_boolean_value() },
                "isContentEnhancementEnabled" => lambda {|n| @is_content_enhancement_enabled = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the isContentCameraInverted property value. True if the content camera is inverted.
        ## @return a boolean
        ## 
        def is_content_camera_inverted
            return @is_content_camera_inverted
        end
        ## 
        ## Sets the isContentCameraInverted property value. True if the content camera is inverted.
        ## @param value Value to set for the isContentCameraInverted property.
        ## @return a void
        ## 
        def is_content_camera_inverted=(value)
            @is_content_camera_inverted = value
        end
        ## 
        ## Gets the isContentCameraOptional property value. True if the content camera is optional.
        ## @return a boolean
        ## 
        def is_content_camera_optional
            return @is_content_camera_optional
        end
        ## 
        ## Sets the isContentCameraOptional property value. True if the content camera is optional.
        ## @param value Value to set for the isContentCameraOptional property.
        ## @return a void
        ## 
        def is_content_camera_optional=(value)
            @is_content_camera_optional = value
        end
        ## 
        ## Gets the isContentEnhancementEnabled property value. True if the content enhancement is enabled.
        ## @return a boolean
        ## 
        def is_content_enhancement_enabled
            return @is_content_enhancement_enabled
        end
        ## 
        ## Sets the isContentEnhancementEnabled property value. True if the content enhancement is enabled.
        ## @param value Value to set for the isContentEnhancementEnabled property.
        ## @return a void
        ## 
        def is_content_enhancement_enabled=(value)
            @is_content_enhancement_enabled = value
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("isContentCameraInverted", @is_content_camera_inverted)
            writer.write_boolean_value("isContentCameraOptional", @is_content_camera_optional)
            writer.write_boolean_value("isContentEnhancementEnabled", @is_content_enhancement_enabled)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
