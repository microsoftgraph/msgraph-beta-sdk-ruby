require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServiceActivityValueMetric
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The starting date and time (UTC) of the interval.
            @interval_start_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The aggregated value over the given aggregation interval starting from the intervalStartDateTime. The value is caculated at the minute level. The value at the starting minute of the intervalStartDateTime is included. The value at the last minute of the given interval is excluded. For example, if intervalStartDateTime is 2023-09-20T18:00:00Z and aggregation interval is 5 minutes, then the value is aggregated from 2023-09-20T18:00:00Z(inclusive) to 2023-09-20T18:05:00Z(exclusive).
            @value
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
            ## Instantiates a new serviceActivityValueMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_activity_value_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceActivityValueMetric.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "intervalStartDateTime" => lambda {|n| @interval_start_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "value" => lambda {|n| @value = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the intervalStartDateTime property value. The starting date and time (UTC) of the interval.
            ## @return a date_time
            ## 
            def interval_start_date_time
                return @interval_start_date_time
            end
            ## 
            ## Sets the intervalStartDateTime property value. The starting date and time (UTC) of the interval.
            ## @param value Value to set for the intervalStartDateTime property.
            ## @return a void
            ## 
            def interval_start_date_time=(value)
                @interval_start_date_time = value
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
                writer.write_date_time_value("intervalStartDateTime", @interval_start_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("value", @value)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the value property value. The aggregated value over the given aggregation interval starting from the intervalStartDateTime. The value is caculated at the minute level. The value at the starting minute of the intervalStartDateTime is included. The value at the last minute of the given interval is excluded. For example, if intervalStartDateTime is 2023-09-20T18:00:00Z and aggregation interval is 5 minutes, then the value is aggregated from 2023-09-20T18:00:00Z(inclusive) to 2023-09-20T18:05:00Z(exclusive).
            ## @return a int64
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. The aggregated value over the given aggregation interval starting from the intervalStartDateTime. The value is caculated at the minute level. The value at the starting minute of the intervalStartDateTime is included. The value at the last minute of the given interval is excluded. For example, if intervalStartDateTime is 2023-09-20T18:00:00Z and aggregation interval is 5 minutes, then the value is aggregated from 2023-09-20T18:00:00Z(inclusive) to 2023-09-20T18:05:00Z(exclusive).
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
