require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics battery health app impact entity contains battery usage related information at an app level for the tenant.
        class UserExperienceAnalyticsBatteryHealthAppImpact < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of active devices for using that app over a 14-day period. Valid values -2147483648 to 2147483647
            @active_devices
            ## 
            # User friendly display name for the app. Eg: Outlook
            @app_display_name
            ## 
            # App name. Eg: oltk.exe
            @app_name
            ## 
            # App publisher. Eg: Microsoft Corporation
            @app_publisher
            ## 
            # The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days computed across all devices in the tenant. Unit in percentage. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @battery_usage_percentage
            ## 
            # true if the user had active interaction with the app.
            @is_foreground_app
            ## 
            ## Gets the activeDevices property value. Number of active devices for using that app over a 14-day period. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def active_devices
                return @active_devices
            end
            ## 
            ## Sets the activeDevices property value. Number of active devices for using that app over a 14-day period. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the active_devices property.
            ## @return a void
            ## 
            def active_devices=(value)
                @active_devices = value
            end
            ## 
            ## Gets the appDisplayName property value. User friendly display name for the app. Eg: Outlook
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. User friendly display name for the app. Eg: Outlook
            ## @param value Value to set for the app_display_name property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Gets the appName property value. App name. Eg: oltk.exe
            ## @return a string
            ## 
            def app_name
                return @app_name
            end
            ## 
            ## Sets the appName property value. App name. Eg: oltk.exe
            ## @param value Value to set for the app_name property.
            ## @return a void
            ## 
            def app_name=(value)
                @app_name = value
            end
            ## 
            ## Gets the appPublisher property value. App publisher. Eg: Microsoft Corporation
            ## @return a string
            ## 
            def app_publisher
                return @app_publisher
            end
            ## 
            ## Sets the appPublisher property value. App publisher. Eg: Microsoft Corporation
            ## @param value Value to set for the app_publisher property.
            ## @return a void
            ## 
            def app_publisher=(value)
                @app_publisher = value
            end
            ## 
            ## Gets the batteryUsagePercentage property value. The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days computed across all devices in the tenant. Unit in percentage. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def battery_usage_percentage
                return @battery_usage_percentage
            end
            ## 
            ## Sets the batteryUsagePercentage property value. The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days computed across all devices in the tenant. Unit in percentage. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the battery_usage_percentage property.
            ## @return a void
            ## 
            def battery_usage_percentage=(value)
                @battery_usage_percentage = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsBatteryHealthAppImpact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_battery_health_app_impact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsBatteryHealthAppImpact.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeDevices" => lambda {|n| @active_devices = n.get_number_value() },
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appName" => lambda {|n| @app_name = n.get_string_value() },
                    "appPublisher" => lambda {|n| @app_publisher = n.get_string_value() },
                    "batteryUsagePercentage" => lambda {|n| @battery_usage_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "isForegroundApp" => lambda {|n| @is_foreground_app = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isForegroundApp property value. true if the user had active interaction with the app.
            ## @return a boolean
            ## 
            def is_foreground_app
                return @is_foreground_app
            end
            ## 
            ## Sets the isForegroundApp property value. true if the user had active interaction with the app.
            ## @param value Value to set for the is_foreground_app property.
            ## @return a void
            ## 
            def is_foreground_app=(value)
                @is_foreground_app = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activeDevices", @active_devices)
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appName", @app_name)
                writer.write_string_value("appPublisher", @app_publisher)
                writer.write_object_value("batteryUsagePercentage", @battery_usage_percentage)
                writer.write_boolean_value("isForegroundApp", @is_foreground_app)
            end
        end
    end
end
