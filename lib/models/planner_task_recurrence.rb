require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PlannerTaskRecurrence
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The nextInSeriesTaskId property
        @next_in_series_task_id
        ## 
        # The occurrenceId property
        @occurrence_id
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The previousInSeriesTaskId property
        @previous_in_series_task_id
        ## 
        # The recurrenceStartDateTime property
        @recurrence_start_date_time
        ## 
        # The schedule property
        @schedule
        ## 
        # The seriesId property
        @series_id
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
        ## Instantiates a new plannerTaskRecurrence and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a planner_task_recurrence
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PlannerTaskRecurrence.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "nextInSeriesTaskId" => lambda {|n| @next_in_series_task_id = n.get_string_value() },
                "occurrenceId" => lambda {|n| @occurrence_id = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "previousInSeriesTaskId" => lambda {|n| @previous_in_series_task_id = n.get_string_value() },
                "recurrenceStartDateTime" => lambda {|n| @recurrence_start_date_time = n.get_date_time_value() },
                "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerRecurrenceSchedule.create_from_discriminator_value(pn) }) },
                "seriesId" => lambda {|n| @series_id = n.get_string_value() },
            }
        end
        ## 
        ## Gets the nextInSeriesTaskId property value. The nextInSeriesTaskId property
        ## @return a string
        ## 
        def next_in_series_task_id
            return @next_in_series_task_id
        end
        ## 
        ## Sets the nextInSeriesTaskId property value. The nextInSeriesTaskId property
        ## @param value Value to set for the next_in_series_task_id property.
        ## @return a void
        ## 
        def next_in_series_task_id=(value)
            @next_in_series_task_id = value
        end
        ## 
        ## Gets the occurrenceId property value. The occurrenceId property
        ## @return a integer
        ## 
        def occurrence_id
            return @occurrence_id
        end
        ## 
        ## Sets the occurrenceId property value. The occurrenceId property
        ## @param value Value to set for the occurrence_id property.
        ## @return a void
        ## 
        def occurrence_id=(value)
            @occurrence_id = value
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
        ## Gets the previousInSeriesTaskId property value. The previousInSeriesTaskId property
        ## @return a string
        ## 
        def previous_in_series_task_id
            return @previous_in_series_task_id
        end
        ## 
        ## Sets the previousInSeriesTaskId property value. The previousInSeriesTaskId property
        ## @param value Value to set for the previous_in_series_task_id property.
        ## @return a void
        ## 
        def previous_in_series_task_id=(value)
            @previous_in_series_task_id = value
        end
        ## 
        ## Gets the recurrenceStartDateTime property value. The recurrenceStartDateTime property
        ## @return a date_time
        ## 
        def recurrence_start_date_time
            return @recurrence_start_date_time
        end
        ## 
        ## Sets the recurrenceStartDateTime property value. The recurrenceStartDateTime property
        ## @param value Value to set for the recurrence_start_date_time property.
        ## @return a void
        ## 
        def recurrence_start_date_time=(value)
            @recurrence_start_date_time = value
        end
        ## 
        ## Gets the schedule property value. The schedule property
        ## @return a planner_recurrence_schedule
        ## 
        def schedule
            return @schedule
        end
        ## 
        ## Sets the schedule property value. The schedule property
        ## @param value Value to set for the schedule property.
        ## @return a void
        ## 
        def schedule=(value)
            @schedule = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("nextInSeriesTaskId", @next_in_series_task_id)
            writer.write_number_value("occurrenceId", @occurrence_id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("previousInSeriesTaskId", @previous_in_series_task_id)
            writer.write_date_time_value("recurrenceStartDateTime", @recurrence_start_date_time)
            writer.write_object_value("schedule", @schedule)
            writer.write_string_value("seriesId", @series_id)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the seriesId property value. The seriesId property
        ## @return a string
        ## 
        def series_id
            return @series_id
        end
        ## 
        ## Sets the seriesId property value. The seriesId property
        ## @param value Value to set for the series_id property.
        ## @return a void
        ## 
        def series_id=(value)
            @series_id = value
        end
    end
end
