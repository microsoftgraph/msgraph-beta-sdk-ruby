require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ActivityHistoryItem < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activeDurationSeconds property
            @active_duration_seconds
            ## 
            # The activity property
            @activity
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The expirationDateTime property
            @expiration_date_time
            ## 
            # The lastActiveDateTime property
            @last_active_date_time
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The startedDateTime property
            @started_date_time
            ## 
            # The status property
            @status
            ## 
            # The userTimezone property
            @user_timezone
            ## 
            ## Gets the activeDurationSeconds property value. The activeDurationSeconds property
            ## @return a integer
            ## 
            def active_duration_seconds
                return @active_duration_seconds
            end
            ## 
            ## Sets the activeDurationSeconds property value. The activeDurationSeconds property
            ## @param value Value to set for the active_duration_seconds property.
            ## @return a void
            ## 
            def active_duration_seconds=(value)
                @active_duration_seconds = value
            end
            ## 
            ## Gets the activity property value. The activity property
            ## @return a user_activity
            ## 
            def activity
                return @activity
            end
            ## 
            ## Sets the activity property value. The activity property
            ## @param value Value to set for the activity property.
            ## @return a void
            ## 
            def activity=(value)
                @activity = value
            end
            ## 
            ## Instantiates a new activityHistoryItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a activity_history_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ActivityHistoryItem.new
            end
            ## 
            ## Gets the expirationDateTime property value. The expirationDateTime property
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expirationDateTime property
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDurationSeconds" => lambda {|n| @active_duration_seconds = n.get_number_value() },
                    "activity" => lambda {|n| @activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserActivity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "lastActiveDateTime" => lambda {|n| @last_active_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "startedDateTime" => lambda {|n| @started_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::Status) },
                    "userTimezone" => lambda {|n| @user_timezone = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastActiveDateTime property value. The lastActiveDateTime property
            ## @return a date_time
            ## 
            def last_active_date_time
                return @last_active_date_time
            end
            ## 
            ## Sets the lastActiveDateTime property value. The lastActiveDateTime property
            ## @param value Value to set for the last_active_date_time property.
            ## @return a void
            ## 
            def last_active_date_time=(value)
                @last_active_date_time = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activeDurationSeconds", @active_duration_seconds)
                writer.write_object_value("activity", @activity)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("lastActiveDateTime", @last_active_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("startedDateTime", @started_date_time)
                writer.write_enum_value("status", @status)
                writer.write_string_value("userTimezone", @user_timezone)
            end
            ## 
            ## Gets the startedDateTime property value. The startedDateTime property
            ## @return a date_time
            ## 
            def started_date_time
                return @started_date_time
            end
            ## 
            ## Sets the startedDateTime property value. The startedDateTime property
            ## @param value Value to set for the started_date_time property.
            ## @return a void
            ## 
            def started_date_time=(value)
                @started_date_time = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a status
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
            ## 
            ## Gets the userTimezone property value. The userTimezone property
            ## @return a string
            ## 
            def user_timezone
                return @user_timezone
            end
            ## 
            ## Sets the userTimezone property value. The userTimezone property
            ## @param value Value to set for the user_timezone property.
            ## @return a void
            ## 
            def user_timezone=(value)
                @user_timezone = value
            end
        end
    end
end
