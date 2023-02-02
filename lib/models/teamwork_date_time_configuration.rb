require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkDateTimeConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The date format for the device.
        @date_format
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The time of the day when the device is turned off.
        @office_hours_end_time
        ## 
        # The time of the day when the device is turned on.
        @office_hours_start_time
        ## 
        # The time format for the device.
        @time_format
        ## 
        # The time zone to which the office hours apply.
        @time_zone
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
        ## Instantiates a new teamworkDateTimeConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_date_time_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkDateTimeConfiguration.new
        end
        ## 
        ## Gets the dateFormat property value. The date format for the device.
        ## @return a string
        ## 
        def date_format
            return @date_format
        end
        ## 
        ## Sets the dateFormat property value. The date format for the device.
        ## @param value Value to set for the date_format property.
        ## @return a void
        ## 
        def date_format=(value)
            @date_format = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "dateFormat" => lambda {|n| @date_format = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "officeHoursEndTime" => lambda {|n| @office_hours_end_time = n.get_time_value() },
                "officeHoursStartTime" => lambda {|n| @office_hours_start_time = n.get_time_value() },
                "timeFormat" => lambda {|n| @time_format = n.get_string_value() },
                "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
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
        ## Gets the officeHoursEndTime property value. The time of the day when the device is turned off.
        ## @return a time
        ## 
        def office_hours_end_time
            return @office_hours_end_time
        end
        ## 
        ## Sets the officeHoursEndTime property value. The time of the day when the device is turned off.
        ## @param value Value to set for the office_hours_end_time property.
        ## @return a void
        ## 
        def office_hours_end_time=(value)
            @office_hours_end_time = value
        end
        ## 
        ## Gets the officeHoursStartTime property value. The time of the day when the device is turned on.
        ## @return a time
        ## 
        def office_hours_start_time
            return @office_hours_start_time
        end
        ## 
        ## Sets the officeHoursStartTime property value. The time of the day when the device is turned on.
        ## @param value Value to set for the office_hours_start_time property.
        ## @return a void
        ## 
        def office_hours_start_time=(value)
            @office_hours_start_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("dateFormat", @date_format)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_time_value("officeHoursEndTime", @office_hours_end_time)
            writer.write_time_value("officeHoursStartTime", @office_hours_start_time)
            writer.write_string_value("timeFormat", @time_format)
            writer.write_string_value("timeZone", @time_zone)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the timeFormat property value. The time format for the device.
        ## @return a string
        ## 
        def time_format
            return @time_format
        end
        ## 
        ## Sets the timeFormat property value. The time format for the device.
        ## @param value Value to set for the time_format property.
        ## @return a void
        ## 
        def time_format=(value)
            @time_format = value
        end
        ## 
        ## Gets the timeZone property value. The time zone to which the office hours apply.
        ## @return a string
        ## 
        def time_zone
            return @time_zone
        end
        ## 
        ## Sets the timeZone property value. The time zone to which the office hours apply.
        ## @param value Value to set for the time_zone property.
        ## @return a void
        ## 
        def time_zone=(value)
            @time_zone = value
        end
    end
end
