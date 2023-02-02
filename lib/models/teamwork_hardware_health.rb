require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkHardwareHealth
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The system health details for a teamworkDevice.
        @compute_health
        ## 
        # The health details about the HDMI ingest of a device.
        @hdmi_ingest_health
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
        ## Gets the computeHealth property value. The system health details for a teamworkDevice.
        ## @return a teamwork_peripheral_health
        ## 
        def compute_health
            return @compute_health
        end
        ## 
        ## Sets the computeHealth property value. The system health details for a teamworkDevice.
        ## @param value Value to set for the compute_health property.
        ## @return a void
        ## 
        def compute_health=(value)
            @compute_health = value
        end
        ## 
        ## Instantiates a new teamworkHardwareHealth and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_hardware_health
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkHardwareHealth.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "computeHealth" => lambda {|n| @compute_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralHealth.create_from_discriminator_value(pn) }) },
                "hdmiIngestHealth" => lambda {|n| @hdmi_ingest_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralHealth.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the hdmiIngestHealth property value. The health details about the HDMI ingest of a device.
        ## @return a teamwork_peripheral_health
        ## 
        def hdmi_ingest_health
            return @hdmi_ingest_health
        end
        ## 
        ## Sets the hdmiIngestHealth property value. The health details about the HDMI ingest of a device.
        ## @param value Value to set for the hdmi_ingest_health property.
        ## @return a void
        ## 
        def hdmi_ingest_health=(value)
            @hdmi_ingest_health = value
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
            writer.write_object_value("computeHealth", @compute_health)
            writer.write_object_value("hdmiIngestHealth", @hdmi_ingest_health)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
