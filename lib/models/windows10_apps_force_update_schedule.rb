require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows 10 force update schedule for Apps
        class Windows10AppsForceUpdateSchedule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Possible values for App update on Windows10 recurrence.
            @recurrence
            ## 
            # If true, runs the task immediately if StartDateTime is in the past, else, runs at the next recurrence.
            @run_immediately_if_after_start_date_time
            ## 
            # The start time for the force restart.
            @start_date_time
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
            ## Instantiates a new Windows10AppsForceUpdateSchedule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows10_apps_force_update_schedule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10AppsForceUpdateSchedule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recurrence" => lambda {|n| @recurrence = n.get_enum_value(MicrosoftGraphBeta::Models::Windows10AppsUpdateRecurrence) },
                    "runImmediatelyIfAfterStartDateTime" => lambda {|n| @run_immediately_if_after_start_date_time = n.get_boolean_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
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
            ## Gets the recurrence property value. Possible values for App update on Windows10 recurrence.
            ## @return a windows10_apps_update_recurrence
            ## 
            def recurrence
                return @recurrence
            end
            ## 
            ## Sets the recurrence property value. Possible values for App update on Windows10 recurrence.
            ## @param value Value to set for the recurrence property.
            ## @return a void
            ## 
            def recurrence=(value)
                @recurrence = value
            end
            ## 
            ## Gets the runImmediatelyIfAfterStartDateTime property value. If true, runs the task immediately if StartDateTime is in the past, else, runs at the next recurrence.
            ## @return a boolean
            ## 
            def run_immediately_if_after_start_date_time
                return @run_immediately_if_after_start_date_time
            end
            ## 
            ## Sets the runImmediatelyIfAfterStartDateTime property value. If true, runs the task immediately if StartDateTime is in the past, else, runs at the next recurrence.
            ## @param value Value to set for the runImmediatelyIfAfterStartDateTime property.
            ## @return a void
            ## 
            def run_immediately_if_after_start_date_time=(value)
                @run_immediately_if_after_start_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("recurrence", @recurrence)
                writer.write_boolean_value("runImmediatelyIfAfterStartDateTime", @run_immediately_if_after_start_date_time)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDateTime property value. The start time for the force restart.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The start time for the force restart.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
        end
    end
end
