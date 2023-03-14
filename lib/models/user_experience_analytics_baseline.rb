require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserExperienceAnalyticsBaseline < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user experience analytics app health metrics.
            @app_health_metrics
            ## 
            # The user experience analytics battery health metrics.
            @battery_health_metrics
            ## 
            # The user experience analytics best practices metrics.
            @best_practices_metrics
            ## 
            # The date the custom baseline was created.
            @created_date_time
            ## 
            # The user experience analytics device boot performance metrics.
            @device_boot_performance_metrics
            ## 
            # The name of the user experience analytics baseline.
            @display_name
            ## 
            # Signifies if the current baseline is the commercial median baseline or a custom baseline.
            @is_built_in
            ## 
            # The user experience analytics reboot analytics metrics.
            @reboot_analytics_metrics
            ## 
            # The user experience analytics resource performance metrics.
            @resource_performance_metrics
            ## 
            # The user experience analytics work from anywhere metrics.
            @work_from_anywhere_metrics
            ## 
            ## Gets the appHealthMetrics property value. The user experience analytics app health metrics.
            ## @return a user_experience_analytics_category
            ## 
            def app_health_metrics
                return @app_health_metrics
            end
            ## 
            ## Sets the appHealthMetrics property value. The user experience analytics app health metrics.
            ## @param value Value to set for the app_health_metrics property.
            ## @return a void
            ## 
            def app_health_metrics=(value)
                @app_health_metrics = value
            end
            ## 
            ## Gets the batteryHealthMetrics property value. The user experience analytics battery health metrics.
            ## @return a user_experience_analytics_category
            ## 
            def battery_health_metrics
                return @battery_health_metrics
            end
            ## 
            ## Sets the batteryHealthMetrics property value. The user experience analytics battery health metrics.
            ## @param value Value to set for the battery_health_metrics property.
            ## @return a void
            ## 
            def battery_health_metrics=(value)
                @battery_health_metrics = value
            end
            ## 
            ## Gets the bestPracticesMetrics property value. The user experience analytics best practices metrics.
            ## @return a user_experience_analytics_category
            ## 
            def best_practices_metrics
                return @best_practices_metrics
            end
            ## 
            ## Sets the bestPracticesMetrics property value. The user experience analytics best practices metrics.
            ## @param value Value to set for the best_practices_metrics property.
            ## @return a void
            ## 
            def best_practices_metrics=(value)
                @best_practices_metrics = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsBaseline and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date the custom baseline was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date the custom baseline was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_baseline
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsBaseline.new
            end
            ## 
            ## Gets the deviceBootPerformanceMetrics property value. The user experience analytics device boot performance metrics.
            ## @return a user_experience_analytics_category
            ## 
            def device_boot_performance_metrics
                return @device_boot_performance_metrics
            end
            ## 
            ## Sets the deviceBootPerformanceMetrics property value. The user experience analytics device boot performance metrics.
            ## @param value Value to set for the device_boot_performance_metrics property.
            ## @return a void
            ## 
            def device_boot_performance_metrics=(value)
                @device_boot_performance_metrics = value
            end
            ## 
            ## Gets the displayName property value. The name of the user experience analytics baseline.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the user experience analytics baseline.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appHealthMetrics" => lambda {|n| @app_health_metrics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "batteryHealthMetrics" => lambda {|n| @battery_health_metrics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "bestPracticesMetrics" => lambda {|n| @best_practices_metrics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deviceBootPerformanceMetrics" => lambda {|n| @device_boot_performance_metrics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isBuiltIn" => lambda {|n| @is_built_in = n.get_boolean_value() },
                    "rebootAnalyticsMetrics" => lambda {|n| @reboot_analytics_metrics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "resourcePerformanceMetrics" => lambda {|n| @resource_performance_metrics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "workFromAnywhereMetrics" => lambda {|n| @work_from_anywhere_metrics = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isBuiltIn property value. Signifies if the current baseline is the commercial median baseline or a custom baseline.
            ## @return a boolean
            ## 
            def is_built_in
                return @is_built_in
            end
            ## 
            ## Sets the isBuiltIn property value. Signifies if the current baseline is the commercial median baseline or a custom baseline.
            ## @param value Value to set for the is_built_in property.
            ## @return a void
            ## 
            def is_built_in=(value)
                @is_built_in = value
            end
            ## 
            ## Gets the rebootAnalyticsMetrics property value. The user experience analytics reboot analytics metrics.
            ## @return a user_experience_analytics_category
            ## 
            def reboot_analytics_metrics
                return @reboot_analytics_metrics
            end
            ## 
            ## Sets the rebootAnalyticsMetrics property value. The user experience analytics reboot analytics metrics.
            ## @param value Value to set for the reboot_analytics_metrics property.
            ## @return a void
            ## 
            def reboot_analytics_metrics=(value)
                @reboot_analytics_metrics = value
            end
            ## 
            ## Gets the resourcePerformanceMetrics property value. The user experience analytics resource performance metrics.
            ## @return a user_experience_analytics_category
            ## 
            def resource_performance_metrics
                return @resource_performance_metrics
            end
            ## 
            ## Sets the resourcePerformanceMetrics property value. The user experience analytics resource performance metrics.
            ## @param value Value to set for the resource_performance_metrics property.
            ## @return a void
            ## 
            def resource_performance_metrics=(value)
                @resource_performance_metrics = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("appHealthMetrics", @app_health_metrics)
                writer.write_object_value("batteryHealthMetrics", @battery_health_metrics)
                writer.write_object_value("bestPracticesMetrics", @best_practices_metrics)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("deviceBootPerformanceMetrics", @device_boot_performance_metrics)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isBuiltIn", @is_built_in)
                writer.write_object_value("rebootAnalyticsMetrics", @reboot_analytics_metrics)
                writer.write_object_value("resourcePerformanceMetrics", @resource_performance_metrics)
                writer.write_object_value("workFromAnywhereMetrics", @work_from_anywhere_metrics)
            end
            ## 
            ## Gets the workFromAnywhereMetrics property value. The user experience analytics work from anywhere metrics.
            ## @return a user_experience_analytics_category
            ## 
            def work_from_anywhere_metrics
                return @work_from_anywhere_metrics
            end
            ## 
            ## Sets the workFromAnywhereMetrics property value. The user experience analytics work from anywhere metrics.
            ## @param value Value to set for the work_from_anywhere_metrics property.
            ## @return a void
            ## 
            def work_from_anywhere_metrics=(value)
                @work_from_anywhere_metrics = value
            end
        end
    end
end
