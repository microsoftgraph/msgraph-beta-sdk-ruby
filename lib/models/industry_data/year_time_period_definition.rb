require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class YearTimePeriodDefinition < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The name of the year. Maximum supported length is 100 characters.
                @display_name
                ## 
                # The last day of the year using ISO 8601 format for date.
                @end_date
                ## 
                # The first day of the year using ISO 8601 format for date.
                @start_date
                ## 
                # The year property
                @year
                ## 
                ## Instantiates a new yearTimePeriodDefinition and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a year_time_period_definition
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return YearTimePeriodDefinition.new
                end
                ## 
                ## Gets the displayName property value. The name of the year. Maximum supported length is 100 characters.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The name of the year. Maximum supported length is 100 characters.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## Gets the endDate property value. The last day of the year using ISO 8601 format for date.
                ## @return a date
                ## 
                def end_date
                    return @end_date
                end
                ## 
                ## Sets the endDate property value. The last day of the year using ISO 8601 format for date.
                ## @param value Value to set for the end_date property.
                ## @return a void
                ## 
                def end_date=(value)
                    @end_date = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "endDate" => lambda {|n| @end_date = n.get_date_value() },
                        "startDate" => lambda {|n| @start_date = n.get_date_value() },
                        "year" => lambda {|n| @year = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::YearReferenceValue.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("displayName", @display_name)
                    writer.write_date_value("endDate", @end_date)
                    writer.write_date_value("startDate", @start_date)
                    writer.write_object_value("year", @year)
                end
                ## 
                ## Gets the startDate property value. The first day of the year using ISO 8601 format for date.
                ## @return a date
                ## 
                def start_date
                    return @start_date
                end
                ## 
                ## Sets the startDate property value. The first day of the year using ISO 8601 format for date.
                ## @param value Value to set for the start_date property.
                ## @return a void
                ## 
                def start_date=(value)
                    @start_date = value
                end
                ## 
                ## Gets the year property value. The year property
                ## @return a year_reference_value
                ## 
                def year
                    return @year
                end
                ## 
                ## Sets the year property value. The year property
                ## @param value Value to set for the year property.
                ## @return a void
                ## 
                def year=(value)
                    @year = value
                end
            end
        end
    end
end
