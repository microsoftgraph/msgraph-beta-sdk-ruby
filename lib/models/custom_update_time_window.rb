require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Custom update time window
        class CustomUpdateTimeWindow
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The endDay property
            @end_day
            ## 
            # End time of the time window
            @end_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The startDay property
            @start_day
            ## 
            # Start time of the time window
            @start_time
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
            ## Instantiates a new CustomUpdateTimeWindow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_update_time_window
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomUpdateTimeWindow.new
            end
            ## 
            ## Gets the endDay property value. The endDay property
            ## @return a day_of_week
            ## 
            def end_day
                return @end_day
            end
            ## 
            ## Sets the endDay property value. The endDay property
            ## @param value Value to set for the endDay property.
            ## @return a void
            ## 
            def end_day=(value)
                @end_day = value
            end
            ## 
            ## Gets the endTime property value. End time of the time window
            ## @return a time
            ## 
            def end_time
                return @end_time
            end
            ## 
            ## Sets the endTime property value. End time of the time window
            ## @param value Value to set for the endTime property.
            ## @return a void
            ## 
            def end_time=(value)
                @end_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "endDay" => lambda {|n| @end_day = n.get_enum_value(MicrosoftGraphBeta::Models::DayOfWeek) },
                    "endTime" => lambda {|n| @end_time = n.get_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startDay" => lambda {|n| @start_day = n.get_enum_value(MicrosoftGraphBeta::Models::DayOfWeek) },
                    "startTime" => lambda {|n| @start_time = n.get_time_value() },
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
                writer.write_enum_value("endDay", @end_day)
                writer.write_time_value("endTime", @end_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("startDay", @start_day)
                writer.write_time_value("startTime", @start_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDay property value. The startDay property
            ## @return a day_of_week
            ## 
            def start_day
                return @start_day
            end
            ## 
            ## Sets the startDay property value. The startDay property
            ## @param value Value to set for the startDay property.
            ## @return a void
            ## 
            def start_day=(value)
                @start_day = value
            end
            ## 
            ## Gets the startTime property value. Start time of the time window
            ## @return a time
            ## 
            def start_time
                return @start_time
            end
            ## 
            ## Sets the startTime property value. Start time of the time window
            ## @param value Value to set for the startTime property.
            ## @return a void
            ## 
            def start_time=(value)
                @start_time = value
            end
        end
    end
end
