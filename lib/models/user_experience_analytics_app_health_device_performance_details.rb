require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics device performance entity contains device performance details.
    class UserExperienceAnalyticsAppHealthDevicePerformanceDetails < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The friendly name of the application for which the event occurred.
        @app_display_name
        ## 
        # The publisher of the application.
        @app_publisher
        ## 
        # The version of the application.
        @app_version
        ## 
        # The name of the device.
        @device_display_name
        ## 
        # The id of the device.
        @device_id
        ## 
        # The time the event occurred.
        @event_date_time
        ## 
        # The type of the event.
        @event_type
        ## 
        ## Gets the appDisplayName property value. The friendly name of the application for which the event occurred.
        ## @return a string
        ## 
        def app_display_name
            return @app_display_name
        end
        ## 
        ## Sets the appDisplayName property value. The friendly name of the application for which the event occurred.
        ## @param value Value to set for the appDisplayName property.
        ## @return a void
        ## 
        def app_display_name=(value)
            @app_display_name = value
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
        ## Instantiates a new userExperienceAnalyticsAppHealthDevicePerformanceDetails and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_app_health_device_performance_details
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsAppHealthDevicePerformanceDetails.new
        end
        ## 
        ## Gets the deviceDisplayName property value. The name of the device.
        ## @return a string
        ## 
        def device_display_name
            return @device_display_name
        end
        ## 
        ## Sets the deviceDisplayName property value. The name of the device.
        ## @param value Value to set for the deviceDisplayName property.
        ## @return a void
        ## 
        def device_display_name=(value)
            @device_display_name = value
        end
        ## 
        ## Gets the deviceId property value. The id of the device.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. The id of the device.
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the eventDateTime property value. The time the event occurred.
        ## @return a date_time
        ## 
        def event_date_time
            return @event_date_time
        end
        ## 
        ## Sets the eventDateTime property value. The time the event occurred.
        ## @param value Value to set for the eventDateTime property.
        ## @return a void
        ## 
        def event_date_time=(value)
            @event_date_time = value
        end
        ## 
        ## Gets the eventType property value. The type of the event.
        ## @return a string
        ## 
        def event_type
            return @event_type
        end
        ## 
        ## Sets the eventType property value. The type of the event.
        ## @param value Value to set for the eventType property.
        ## @return a void
        ## 
        def event_type=(value)
            @event_type = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                "appPublisher" => lambda {|n| @app_publisher = n.get_string_value() },
                "appVersion" => lambda {|n| @app_version = n.get_string_value() },
                "deviceDisplayName" => lambda {|n| @device_display_name = n.get_string_value() },
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                "eventType" => lambda {|n| @event_type = n.get_string_value() },
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
            writer.write_string_value("appDisplayName", @app_display_name)
            writer.write_string_value("appPublisher", @app_publisher)
            writer.write_string_value("appVersion", @app_version)
            writer.write_string_value("deviceDisplayName", @device_display_name)
            writer.write_string_value("deviceId", @device_id)
            writer.write_date_time_value("eventDateTime", @event_date_time)
            writer.write_string_value("eventType", @event_type)
        end
    end
end
