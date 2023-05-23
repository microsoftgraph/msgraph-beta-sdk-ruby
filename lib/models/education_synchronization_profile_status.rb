require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationSynchronizationProfileStatus < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of errors during synchronization.
            @error_count
            ## 
            # Date and time when most recent changes were observed in the profile.
            @last_activity_date_time
            ## 
            # Date and time of the most recent successful synchronization.
            @last_synchronization_date_time
            ## 
            # The status of a sync. The possible values are: paused, inProgress, success, error, validationError, quarantined, unknownFutureValue, extracting, validating. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: extracting, validating.
            @status
            ## 
            # Status message for the synchronization stage of the current profile.
            @status_message
            ## 
            ## Instantiates a new educationSynchronizationProfileStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_synchronization_profile_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSynchronizationProfileStatus.new
            end
            ## 
            ## Gets the errorCount property value. Number of errors during synchronization.
            ## @return a int64
            ## 
            def error_count
                return @error_count
            end
            ## 
            ## Sets the errorCount property value. Number of errors during synchronization.
            ## @param value Value to set for the error_count property.
            ## @return a void
            ## 
            def error_count=(value)
                @error_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "errorCount" => lambda {|n| @error_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "lastActivityDateTime" => lambda {|n| @last_activity_date_time = n.get_date_time_value() },
                    "lastSynchronizationDateTime" => lambda {|n| @last_synchronization_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::EducationSynchronizationStatus) },
                    "statusMessage" => lambda {|n| @status_message = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastActivityDateTime property value. Date and time when most recent changes were observed in the profile.
            ## @return a date_time
            ## 
            def last_activity_date_time
                return @last_activity_date_time
            end
            ## 
            ## Sets the lastActivityDateTime property value. Date and time when most recent changes were observed in the profile.
            ## @param value Value to set for the last_activity_date_time property.
            ## @return a void
            ## 
            def last_activity_date_time=(value)
                @last_activity_date_time = value
            end
            ## 
            ## Gets the lastSynchronizationDateTime property value. Date and time of the most recent successful synchronization.
            ## @return a date_time
            ## 
            def last_synchronization_date_time
                return @last_synchronization_date_time
            end
            ## 
            ## Sets the lastSynchronizationDateTime property value. Date and time of the most recent successful synchronization.
            ## @param value Value to set for the last_synchronization_date_time property.
            ## @return a void
            ## 
            def last_synchronization_date_time=(value)
                @last_synchronization_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("errorCount", @error_count)
                writer.write_date_time_value("lastActivityDateTime", @last_activity_date_time)
                writer.write_date_time_value("lastSynchronizationDateTime", @last_synchronization_date_time)
                writer.write_enum_value("status", @status)
                writer.write_string_value("statusMessage", @status_message)
            end
            ## 
            ## Gets the status property value. The status of a sync. The possible values are: paused, inProgress, success, error, validationError, quarantined, unknownFutureValue, extracting, validating. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: extracting, validating.
            ## @return a education_synchronization_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of a sync. The possible values are: paused, inProgress, success, error, validationError, quarantined, unknownFutureValue, extracting, validating. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: extracting, validating.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the statusMessage property value. Status message for the synchronization stage of the current profile.
            ## @return a string
            ## 
            def status_message
                return @status_message
            end
            ## 
            ## Sets the statusMessage property value. Status message for the synchronization stage of the current profile.
            ## @param value Value to set for the status_message property.
            ## @return a void
            ## 
            def status_message=(value)
                @status_message = value
            end
        end
    end
end
