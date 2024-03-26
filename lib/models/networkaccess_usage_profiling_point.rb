require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessUsageProfilingPoint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The internetAccessTrafficCount property
            @internet_access_traffic_count
            ## 
            # The microsoft365AccessTrafficCount property
            @microsoft365_access_traffic_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The privateAccessTrafficCount property
            @private_access_traffic_count
            ## 
            # The timeStampDateTime property
            @time_stamp_date_time
            ## 
            # The totalTrafficCount property
            @total_traffic_count
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
            ## Instantiates a new NetworkaccessUsageProfilingPoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_usage_profiling_point
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessUsageProfilingPoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "internetAccessTrafficCount" => lambda {|n| @internet_access_traffic_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "microsoft365AccessTrafficCount" => lambda {|n| @microsoft365_access_traffic_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "privateAccessTrafficCount" => lambda {|n| @private_access_traffic_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "timeStampDateTime" => lambda {|n| @time_stamp_date_time = n.get_date_time_value() },
                    "totalTrafficCount" => lambda {|n| @total_traffic_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the internetAccessTrafficCount property value. The internetAccessTrafficCount property
            ## @return a int64
            ## 
            def internet_access_traffic_count
                return @internet_access_traffic_count
            end
            ## 
            ## Sets the internetAccessTrafficCount property value. The internetAccessTrafficCount property
            ## @param value Value to set for the internetAccessTrafficCount property.
            ## @return a void
            ## 
            def internet_access_traffic_count=(value)
                @internet_access_traffic_count = value
            end
            ## 
            ## Gets the microsoft365AccessTrafficCount property value. The microsoft365AccessTrafficCount property
            ## @return a int64
            ## 
            def microsoft365_access_traffic_count
                return @microsoft365_access_traffic_count
            end
            ## 
            ## Sets the microsoft365AccessTrafficCount property value. The microsoft365AccessTrafficCount property
            ## @param value Value to set for the microsoft365AccessTrafficCount property.
            ## @return a void
            ## 
            def microsoft365_access_traffic_count=(value)
                @microsoft365_access_traffic_count = value
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
            ## Gets the privateAccessTrafficCount property value. The privateAccessTrafficCount property
            ## @return a int64
            ## 
            def private_access_traffic_count
                return @private_access_traffic_count
            end
            ## 
            ## Sets the privateAccessTrafficCount property value. The privateAccessTrafficCount property
            ## @param value Value to set for the privateAccessTrafficCount property.
            ## @return a void
            ## 
            def private_access_traffic_count=(value)
                @private_access_traffic_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("internetAccessTrafficCount", @internet_access_traffic_count)
                writer.write_object_value("microsoft365AccessTrafficCount", @microsoft365_access_traffic_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("privateAccessTrafficCount", @private_access_traffic_count)
                writer.write_date_time_value("timeStampDateTime", @time_stamp_date_time)
                writer.write_object_value("totalTrafficCount", @total_traffic_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeStampDateTime property value. The timeStampDateTime property
            ## @return a date_time
            ## 
            def time_stamp_date_time
                return @time_stamp_date_time
            end
            ## 
            ## Sets the timeStampDateTime property value. The timeStampDateTime property
            ## @param value Value to set for the timeStampDateTime property.
            ## @return a void
            ## 
            def time_stamp_date_time=(value)
                @time_stamp_date_time = value
            end
            ## 
            ## Gets the totalTrafficCount property value. The totalTrafficCount property
            ## @return a int64
            ## 
            def total_traffic_count
                return @total_traffic_count
            end
            ## 
            ## Sets the totalTrafficCount property value. The totalTrafficCount property
            ## @param value Value to set for the totalTrafficCount property.
            ## @return a void
            ## 
            def total_traffic_count=(value)
                @total_traffic_count = value
            end
        end
    end
end
