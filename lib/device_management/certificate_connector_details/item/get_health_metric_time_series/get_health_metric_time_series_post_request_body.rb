require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/time_series_parameter'
require_relative '../../../device_management'
require_relative '../../certificate_connector_details'
require_relative '../item'
require_relative './get_health_metric_time_series'

module MicrosoftGraphBeta
    module DeviceManagement
        module CertificateConnectorDetails
            module Item
                module GetHealthMetricTimeSeries
                    class GetHealthMetricTimeSeriesPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The timeSeries property
                        @time_series
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
                        ## Instantiates a new getHealthMetricTimeSeriesPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a get_health_metric_time_series_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return GetHealthMetricTimeSeriesPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "timeSeries" => lambda {|n| @time_series = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TimeSeriesParameter.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("timeSeries", @time_series)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the timeSeries property value. The timeSeries property
                        ## @return a time_series_parameter
                        ## 
                        def time_series
                            return @time_series
                        end
                        ## 
                        ## Sets the timeSeries property value. The timeSeries property
                        ## @param value Value to set for the timeSeries property.
                        ## @return a void
                        ## 
                        def time_series=(value)
                            @time_series = value
                        end
                    end
                end
            end
        end
    end
end
