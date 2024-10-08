require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics battery health device app impact entity contains battery usage related information at an app level for a given device.
        class UserExperienceAnalyticsBatteryHealthDeviceAppImpact < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
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
            # The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days. Unit in percentage. Valid values 0 to 1.79769313486232E+308
            @battery_usage_percentage
            ## 
            # The unique identifier of the device, Intune DeviceID or SCCM device id.
            @device_id
            ## 
            # true if the user had active interaction with the app.
            @is_foreground_app
            ## 
            ## Gets the appDisplayName property value. User friendly display name for the app. Eg: Outlook
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. User friendly display name for the app. Eg: Outlook
            ## @param value Value to set for the appDisplayName property.
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
            ## @param value Value to set for the appName property.
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
            ## @param value Value to set for the appPublisher property.
            ## @return a void
            ## 
            def app_publisher=(value)
                @app_publisher = value
            end
            ## 
            ## Gets the batteryUsagePercentage property value. The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days. Unit in percentage. Valid values 0 to 1.79769313486232E+308
            ## @return a user_experience_analytics_battery_health_device_app_impact_battery_usage_percentage
            ## 
            def battery_usage_percentage
                return @battery_usage_percentage
            end
            ## 
            ## Sets the batteryUsagePercentage property value. The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days. Unit in percentage. Valid values 0 to 1.79769313486232E+308
            ## @param value Value to set for the batteryUsagePercentage property.
            ## @return a void
            ## 
            def battery_usage_percentage=(value)
                @battery_usage_percentage = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsBatteryHealthDeviceAppImpact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_battery_health_device_app_impact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsBatteryHealthDeviceAppImpact.new
            end
            ## 
            ## Gets the deviceId property value. The unique identifier of the device, Intune DeviceID or SCCM device id.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The unique identifier of the device, Intune DeviceID or SCCM device id.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appName" => lambda {|n| @app_name = n.get_string_value() },
                    "appPublisher" => lambda {|n| @app_publisher = n.get_string_value() },
                    "batteryUsagePercentage" => lambda {|n| @battery_usage_percentage = n.get_object_value(lambda {|pn| UserExperienceAnalyticsBatteryHealthDeviceAppImpact::UserExperienceAnalyticsBatteryHealthDeviceAppImpactBatteryUsagePercentage.create_from_discriminator_value(pn) }) },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
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
            ## @param value Value to set for the isForegroundApp property.
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
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appName", @app_name)
                writer.write_string_value("appPublisher", @app_publisher)
                writer.write_object_value("batteryUsagePercentage", @battery_usage_percentage)
                writer.write_string_value("deviceId", @device_id)
                writer.write_boolean_value("isForegroundApp", @is_foreground_app)
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class UserExperienceAnalyticsBatteryHealthDeviceAppImpactBatteryUsagePercentage
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a user_experience_analytics_battery_health_device_app_impact_battery_usage_percentage
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return UserExperienceAnalyticsBatteryHealthDeviceAppImpactBatteryUsagePercentage.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraphBeta::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
