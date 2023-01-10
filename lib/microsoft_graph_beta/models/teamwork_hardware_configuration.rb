require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkHardwareConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The compute property
        @compute
        ## 
        # The hdmiIngest property
        @hdmi_ingest
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The CPU model on the device.
        @processor_model
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
        ## Gets the compute property value. The compute property
        ## @return a teamwork_peripheral
        ## 
        def compute
            return @compute
        end
        ## 
        ## Sets the compute property value. The compute property
        ## @param value Value to set for the compute property.
        ## @return a void
        ## 
        def compute=(value)
            @compute = value
        end
        ## 
        ## Instantiates a new teamworkHardwareConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_hardware_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkHardwareConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "compute" => lambda {|n| @compute = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                "hdmiIngest" => lambda {|n| @hdmi_ingest = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "processorModel" => lambda {|n| @processor_model = n.get_string_value() },
            }
        end
        ## 
        ## Gets the hdmiIngest property value. The hdmiIngest property
        ## @return a teamwork_peripheral
        ## 
        def hdmi_ingest
            return @hdmi_ingest
        end
        ## 
        ## Sets the hdmiIngest property value. The hdmiIngest property
        ## @param value Value to set for the hdmiIngest property.
        ## @return a void
        ## 
        def hdmi_ingest=(value)
            @hdmi_ingest = value
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
        ## Gets the processorModel property value. The CPU model on the device.
        ## @return a string
        ## 
        def processor_model
            return @processor_model
        end
        ## 
        ## Sets the processorModel property value. The CPU model on the device.
        ## @param value Value to set for the processorModel property.
        ## @return a void
        ## 
        def processor_model=(value)
            @processor_model = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("compute", @compute)
            writer.write_object_value("hdmiIngest", @hdmi_ingest)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("processorModel", @processor_model)
            writer.write_additional_data(@additional_data)
        end
    end
end
