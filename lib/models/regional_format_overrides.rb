require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RegionalFormatOverrides
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The calendar to use, e.g., Gregorian Calendar.Returned by default.
            @calendar
            ## 
            # The first day of the week to use, e.g., Sunday.Returned by default.
            @first_day_of_week
            ## 
            # The long date time format to be used for displaying dates.Returned by default.
            @long_date_format
            ## 
            # The long time format to be used for displaying time.Returned by default.
            @long_time_format
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The short date time format to be used for displaying dates.Returned by default.
            @short_date_format
            ## 
            # The short time format to be used for displaying time.Returned by default.
            @short_time_format
            ## 
            # The timezone to be used for displaying time.Returned by default.
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
            ## Gets the calendar property value. The calendar to use, e.g., Gregorian Calendar.Returned by default.
            ## @return a string
            ## 
            def calendar
                return @calendar
            end
            ## 
            ## Sets the calendar property value. The calendar to use, e.g., Gregorian Calendar.Returned by default.
            ## @param value Value to set for the calendar property.
            ## @return a void
            ## 
            def calendar=(value)
                @calendar = value
            end
            ## 
            ## Instantiates a new regionalFormatOverrides and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a regional_format_overrides
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RegionalFormatOverrides.new
            end
            ## 
            ## Gets the firstDayOfWeek property value. The first day of the week to use, e.g., Sunday.Returned by default.
            ## @return a string
            ## 
            def first_day_of_week
                return @first_day_of_week
            end
            ## 
            ## Sets the firstDayOfWeek property value. The first day of the week to use, e.g., Sunday.Returned by default.
            ## @param value Value to set for the first_day_of_week property.
            ## @return a void
            ## 
            def first_day_of_week=(value)
                @first_day_of_week = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "calendar" => lambda {|n| @calendar = n.get_string_value() },
                    "firstDayOfWeek" => lambda {|n| @first_day_of_week = n.get_string_value() },
                    "longDateFormat" => lambda {|n| @long_date_format = n.get_string_value() },
                    "longTimeFormat" => lambda {|n| @long_time_format = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "shortDateFormat" => lambda {|n| @short_date_format = n.get_string_value() },
                    "shortTimeFormat" => lambda {|n| @short_time_format = n.get_string_value() },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
                }
            end
            ## 
            ## Gets the longDateFormat property value. The long date time format to be used for displaying dates.Returned by default.
            ## @return a string
            ## 
            def long_date_format
                return @long_date_format
            end
            ## 
            ## Sets the longDateFormat property value. The long date time format to be used for displaying dates.Returned by default.
            ## @param value Value to set for the long_date_format property.
            ## @return a void
            ## 
            def long_date_format=(value)
                @long_date_format = value
            end
            ## 
            ## Gets the longTimeFormat property value. The long time format to be used for displaying time.Returned by default.
            ## @return a string
            ## 
            def long_time_format
                return @long_time_format
            end
            ## 
            ## Sets the longTimeFormat property value. The long time format to be used for displaying time.Returned by default.
            ## @param value Value to set for the long_time_format property.
            ## @return a void
            ## 
            def long_time_format=(value)
                @long_time_format = value
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
                writer.write_string_value("calendar", @calendar)
                writer.write_string_value("firstDayOfWeek", @first_day_of_week)
                writer.write_string_value("longDateFormat", @long_date_format)
                writer.write_string_value("longTimeFormat", @long_time_format)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("shortDateFormat", @short_date_format)
                writer.write_string_value("shortTimeFormat", @short_time_format)
                writer.write_string_value("timeZone", @time_zone)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the shortDateFormat property value. The short date time format to be used for displaying dates.Returned by default.
            ## @return a string
            ## 
            def short_date_format
                return @short_date_format
            end
            ## 
            ## Sets the shortDateFormat property value. The short date time format to be used for displaying dates.Returned by default.
            ## @param value Value to set for the short_date_format property.
            ## @return a void
            ## 
            def short_date_format=(value)
                @short_date_format = value
            end
            ## 
            ## Gets the shortTimeFormat property value. The short time format to be used for displaying time.Returned by default.
            ## @return a string
            ## 
            def short_time_format
                return @short_time_format
            end
            ## 
            ## Sets the shortTimeFormat property value. The short time format to be used for displaying time.Returned by default.
            ## @param value Value to set for the short_time_format property.
            ## @return a void
            ## 
            def short_time_format=(value)
                @short_time_format = value
            end
            ## 
            ## Gets the timeZone property value. The timezone to be used for displaying time.Returned by default.
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. The timezone to be used for displaying time.Returned by default.
            ## @param value Value to set for the time_zone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
        end
    end
end
