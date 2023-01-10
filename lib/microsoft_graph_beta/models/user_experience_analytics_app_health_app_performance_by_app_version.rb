require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics application performance entity contains app performance details by app version.
    class UserExperienceAnalyticsAppHealthAppPerformanceByAppVersion < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The number of crashes for the app. Valid values -2147483648 to 2147483647
        @app_crash_count
        ## 
        # The friendly name of the application.
        @app_display_name
        ## 
        # The name of the application.
        @app_name
        ## 
        # The publisher of the application.
        @app_publisher
        ## 
        # The total usage time of the application in minutes. Valid values -2147483648 to 2147483647
        @app_usage_duration
        ## 
        # The version of the application.
        @app_version
        ## 
        # The mean time to failure for the app in minutes. Valid values -2147483648 to 2147483647
        @mean_time_to_failure_in_minutes
        ## 
        ## Gets the appCrashCount property value. The number of crashes for the app. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def app_crash_count
            return @app_crash_count
        end
        ## 
        ## Sets the appCrashCount property value. The number of crashes for the app. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the appCrashCount property.
        ## @return a void
        ## 
        def app_crash_count=(value)
            @app_crash_count = value
        end
        ## 
        ## Gets the appDisplayName property value. The friendly name of the application.
        ## @return a string
        ## 
        def app_display_name
            return @app_display_name
        end
        ## 
        ## Sets the appDisplayName property value. The friendly name of the application.
        ## @param value Value to set for the appDisplayName property.
        ## @return a void
        ## 
        def app_display_name=(value)
            @app_display_name = value
        end
        ## 
        ## Gets the appName property value. The name of the application.
        ## @return a string
        ## 
        def app_name
            return @app_name
        end
        ## 
        ## Sets the appName property value. The name of the application.
        ## @param value Value to set for the appName property.
        ## @return a void
        ## 
        def app_name=(value)
            @app_name = value
        end
        ## 
        ## Gets the appPublisher property value. The publisher of the application.
        ## @return a string
        ## 
        def app_publisher
            return @app_publisher
        end
        ## 
        ## Sets the appPublisher property value. The publisher of the application.
        ## @param value Value to set for the appPublisher property.
        ## @return a void
        ## 
        def app_publisher=(value)
            @app_publisher = value
        end
        ## 
        ## Gets the appUsageDuration property value. The total usage time of the application in minutes. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def app_usage_duration
            return @app_usage_duration
        end
        ## 
        ## Sets the appUsageDuration property value. The total usage time of the application in minutes. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the appUsageDuration property.
        ## @return a void
        ## 
        def app_usage_duration=(value)
            @app_usage_duration = value
        end
        ## 
        ## Gets the appVersion property value. The version of the application.
        ## @return a string
        ## 
        def app_version
            return @app_version
        end
        ## 
        ## Sets the appVersion property value. The version of the application.
        ## @param value Value to set for the appVersion property.
        ## @return a void
        ## 
        def app_version=(value)
            @app_version = value
        end
        ## 
        ## Instantiates a new userExperienceAnalyticsAppHealthAppPerformanceByAppVersion and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_app_health_app_performance_by_app_version
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsAppHealthAppPerformanceByAppVersion.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appCrashCount" => lambda {|n| @app_crash_count = n.get_number_value() },
                "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                "appName" => lambda {|n| @app_name = n.get_string_value() },
                "appPublisher" => lambda {|n| @app_publisher = n.get_string_value() },
                "appUsageDuration" => lambda {|n| @app_usage_duration = n.get_number_value() },
                "appVersion" => lambda {|n| @app_version = n.get_string_value() },
                "meanTimeToFailureInMinutes" => lambda {|n| @mean_time_to_failure_in_minutes = n.get_number_value() },
            })
        end
        ## 
        ## Gets the meanTimeToFailureInMinutes property value. The mean time to failure for the app in minutes. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def mean_time_to_failure_in_minutes
            return @mean_time_to_failure_in_minutes
        end
        ## 
        ## Sets the meanTimeToFailureInMinutes property value. The mean time to failure for the app in minutes. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the meanTimeToFailureInMinutes property.
        ## @return a void
        ## 
        def mean_time_to_failure_in_minutes=(value)
            @mean_time_to_failure_in_minutes = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("appCrashCount", @app_crash_count)
            writer.write_string_value("appDisplayName", @app_display_name)
            writer.write_string_value("appName", @app_name)
            writer.write_string_value("appPublisher", @app_publisher)
            writer.write_number_value("appUsageDuration", @app_usage_duration)
            writer.write_string_value("appVersion", @app_version)
            writer.write_number_value("meanTimeToFailureInMinutes", @mean_time_to_failure_in_minutes)
        end
    end
end
