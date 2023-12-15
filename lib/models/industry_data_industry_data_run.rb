require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataIndustryDataRun < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The set of activities performed during the run.
            @activities
            ## 
            # An error object to diagnose critical failures in the run.
            @blocking_error
            ## 
            # The name of the run for rendering in a user interface.
            @display_name
            ## 
            # The date and time when the run finished or null if the run is still in-progress. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @end_date_time
            ## 
            # The date and time when the run started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @start_date_time
            ## 
            # The status property
            @status
            ## 
            ## Gets the activities property value. The set of activities performed during the run.
            ## @return a industry_data_industry_data_run_activity
            ## 
            def activities
                return @activities
            end
            ## 
            ## Sets the activities property value. The set of activities performed during the run.
            ## @param value Value to set for the activities property.
            ## @return a void
            ## 
            def activities=(value)
                @activities = value
            end
            ## 
            ## Gets the blockingError property value. An error object to diagnose critical failures in the run.
            ## @return a public_error
            ## 
            def blocking_error
                return @blocking_error
            end
            ## 
            ## Sets the blockingError property value. An error object to diagnose critical failures in the run.
            ## @param value Value to set for the blockingError property.
            ## @return a void
            ## 
            def blocking_error=(value)
                @blocking_error = value
            end
            ## 
            ## Instantiates a new industryDataIndustryDataRun and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_industry_data_run
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataIndustryDataRun.new
            end
            ## 
            ## Gets the displayName property value. The name of the run for rendering in a user interface.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the run for rendering in a user interface.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDateTime property value. The date and time when the run finished or null if the run is still in-progress. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The date and time when the run finished or null if the run is still in-progress. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activities" => lambda {|n| @activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataIndustryDataRunActivity.create_from_discriminator_value(pn) }) },
                    "blockingError" => lambda {|n| @blocking_error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PublicError.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::IndustryDataIndustryDataRunStatus) },
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
                writer.write_collection_of_object_values("activities", @activities)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the startDateTime property value. The date and time when the run started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The date and time when the run started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a industry_data_industry_data_run_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
