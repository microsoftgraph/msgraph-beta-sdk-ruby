require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessAlertFrequencyPoint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The highSeverityCount property
            @high_severity_count
            ## 
            # The informationalSeverityCount property
            @informational_severity_count
            ## 
            # The lowSeverityCount property
            @low_severity_count
            ## 
            # The mediumSeverityCount property
            @medium_severity_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The timeStampDateTime property
            @time_stamp_date_time
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
            ## Instantiates a new NetworkaccessAlertFrequencyPoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_alert_frequency_point
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessAlertFrequencyPoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "highSeverityCount" => lambda {|n| @high_severity_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "informationalSeverityCount" => lambda {|n| @informational_severity_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "lowSeverityCount" => lambda {|n| @low_severity_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "mediumSeverityCount" => lambda {|n| @medium_severity_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "timeStampDateTime" => lambda {|n| @time_stamp_date_time = n.get_date_time_value() },
                }
            end
            ## 
            ## Gets the highSeverityCount property value. The highSeverityCount property
            ## @return a int64
            ## 
            def high_severity_count
                return @high_severity_count
            end
            ## 
            ## Sets the highSeverityCount property value. The highSeverityCount property
            ## @param value Value to set for the highSeverityCount property.
            ## @return a void
            ## 
            def high_severity_count=(value)
                @high_severity_count = value
            end
            ## 
            ## Gets the informationalSeverityCount property value. The informationalSeverityCount property
            ## @return a int64
            ## 
            def informational_severity_count
                return @informational_severity_count
            end
            ## 
            ## Sets the informationalSeverityCount property value. The informationalSeverityCount property
            ## @param value Value to set for the informationalSeverityCount property.
            ## @return a void
            ## 
            def informational_severity_count=(value)
                @informational_severity_count = value
            end
            ## 
            ## Gets the lowSeverityCount property value. The lowSeverityCount property
            ## @return a int64
            ## 
            def low_severity_count
                return @low_severity_count
            end
            ## 
            ## Sets the lowSeverityCount property value. The lowSeverityCount property
            ## @param value Value to set for the lowSeverityCount property.
            ## @return a void
            ## 
            def low_severity_count=(value)
                @low_severity_count = value
            end
            ## 
            ## Gets the mediumSeverityCount property value. The mediumSeverityCount property
            ## @return a int64
            ## 
            def medium_severity_count
                return @medium_severity_count
            end
            ## 
            ## Sets the mediumSeverityCount property value. The mediumSeverityCount property
            ## @param value Value to set for the mediumSeverityCount property.
            ## @return a void
            ## 
            def medium_severity_count=(value)
                @medium_severity_count = value
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
                writer.write_object_value("highSeverityCount", @high_severity_count)
                writer.write_object_value("informationalSeverityCount", @informational_severity_count)
                writer.write_object_value("lowSeverityCount", @low_severity_count)
                writer.write_object_value("mediumSeverityCount", @medium_severity_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("timeStampDateTime", @time_stamp_date_time)
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
        end
    end
end
