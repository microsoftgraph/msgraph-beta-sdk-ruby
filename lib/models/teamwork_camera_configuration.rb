require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkCameraConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The cameras property
            @cameras
            ## 
            # The configuration for the content camera.
            @content_camera_configuration
            ## 
            # The defaultContentCamera property
            @default_content_camera
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the cameras property value. The cameras property
            ## @return a teamwork_peripheral
            ## 
            def cameras
                return @cameras
            end
            ## 
            ## Sets the cameras property value. The cameras property
            ## @param value Value to set for the cameras property.
            ## @return a void
            ## 
            def cameras=(value)
                @cameras = value
            end
            ## 
            ## Instantiates a new TeamworkCameraConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentCameraConfiguration property value. The configuration for the content camera.
            ## @return a teamwork_content_camera_configuration
            ## 
            def content_camera_configuration
                return @content_camera_configuration
            end
            ## 
            ## Sets the contentCameraConfiguration property value. The configuration for the content camera.
            ## @param value Value to set for the contentCameraConfiguration property.
            ## @return a void
            ## 
            def content_camera_configuration=(value)
                @content_camera_configuration = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_camera_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkCameraConfiguration.new
            end
            ## 
            ## Gets the defaultContentCamera property value. The defaultContentCamera property
            ## @return a teamwork_peripheral
            ## 
            def default_content_camera
                return @default_content_camera
            end
            ## 
            ## Sets the defaultContentCamera property value. The defaultContentCamera property
            ## @param value Value to set for the defaultContentCamera property.
            ## @return a void
            ## 
            def default_content_camera=(value)
                @default_content_camera = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "cameras" => lambda {|n| @cameras = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                    "contentCameraConfiguration" => lambda {|n| @content_camera_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkContentCameraConfiguration.create_from_discriminator_value(pn) }) },
                    "defaultContentCamera" => lambda {|n| @default_content_camera = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_collection_of_object_values("cameras", @cameras)
                writer.write_object_value("contentCameraConfiguration", @content_camera_configuration)
                writer.write_object_value("defaultContentCamera", @default_content_camera)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
