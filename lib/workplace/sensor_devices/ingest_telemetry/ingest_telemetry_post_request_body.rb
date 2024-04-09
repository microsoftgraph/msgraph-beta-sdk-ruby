require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/workplace_sensor_device_telemetry'
require_relative '../../workplace'
require_relative '../sensor_devices'
require_relative './ingest_telemetry'

module MicrosoftGraphBeta
    module Workplace
        module SensorDevices
            module IngestTelemetry
                class IngestTelemetryPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The telemetry property
                    @telemetry
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
                    ## Instantiates a new IngestTelemetryPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a ingest_telemetry_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return IngestTelemetryPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "telemetry" => lambda {|n| @telemetry = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WorkplaceSensorDeviceTelemetry.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_object_values("telemetry", @telemetry)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the telemetry property value. The telemetry property
                    ## @return a workplace_sensor_device_telemetry
                    ## 
                    def telemetry
                        return @telemetry
                    end
                    ## 
                    ## Sets the telemetry property value. The telemetry property
                    ## @param value Value to set for the telemetry property.
                    ## @return a void
                    ## 
                    def telemetry=(value)
                        @telemetry = value
                    end
                end
            end
        end
    end
end
