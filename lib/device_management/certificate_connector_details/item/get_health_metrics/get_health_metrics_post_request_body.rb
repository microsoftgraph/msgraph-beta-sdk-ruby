require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../certificate_connector_details'
require_relative '../item'
require_relative './get_health_metrics'

module MicrosoftGraphBeta
    module DeviceManagement
        module CertificateConnectorDetails
            module Item
                module GetHealthMetrics
                    class GetHealthMetricsPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The metricNames property
                        @metric_names
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
                        ## Instantiates a new getHealthMetricsPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a get_health_metrics_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return GetHealthMetricsPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "metricNames" => lambda {|n| @metric_names = n.get_collection_of_primitive_values(String) },
                            }
                        end
                        ## 
                        ## Gets the metricNames property value. The metricNames property
                        ## @return a string
                        ## 
                        def metric_names
                            return @metric_names
                        end
                        ## 
                        ## Sets the metricNames property value. The metricNames property
                        ## @param value Value to set for the metric_names property.
                        ## @return a void
                        ## 
                        def metric_names=(value)
                            @metric_names = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_primitive_values("metricNames", @metric_names)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
