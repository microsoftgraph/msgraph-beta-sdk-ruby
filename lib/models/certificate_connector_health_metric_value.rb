require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Metric snapshot value returned in response to a GetHealthMetricTimeSeries request.
        class CertificateConnectorHealthMetricValue
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Timestamp for this metric data-point.
            @date_time
            ## 
            # Count of failed requests/operations.
            @failure_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Count of successful requests/operations.
            @success_count
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
            ## Instantiates a new certificateConnectorHealthMetricValue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a certificate_connector_health_metric_value
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CertificateConnectorHealthMetricValue.new
            end
            ## 
            ## Gets the dateTime property value. Timestamp for this metric data-point.
            ## @return a date_time
            ## 
            def date_time
                return @date_time
            end
            ## 
            ## Sets the dateTime property value. Timestamp for this metric data-point.
            ## @param value Value to set for the date_time property.
            ## @return a void
            ## 
            def date_time=(value)
                @date_time = value
            end
            ## 
            ## Gets the failureCount property value. Count of failed requests/operations.
            ## @return a int64
            ## 
            def failure_count
                return @failure_count
            end
            ## 
            ## Sets the failureCount property value. Count of failed requests/operations.
            ## @param value Value to set for the failure_count property.
            ## @return a void
            ## 
            def failure_count=(value)
                @failure_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dateTime" => lambda {|n| @date_time = n.get_date_time_value() },
                    "failureCount" => lambda {|n| @failure_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successCount" => lambda {|n| @success_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_date_time_value("dateTime", @date_time)
                writer.write_object_value("failureCount", @failure_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("successCount", @success_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successCount property value. Count of successful requests/operations.
            ## @return a int64
            ## 
            def success_count
                return @success_count
            end
            ## 
            ## Sets the successCount property value. Count of successful requests/operations.
            ## @param value Value to set for the success_count property.
            ## @return a void
            ## 
            def success_count=(value)
                @success_count = value
            end
        end
    end
end
