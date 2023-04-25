require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics model scores entity consolidates the various endpoint analytics scores.
        class UserExperienceAnalyticsModelScores < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user experience analytics model app reliability score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @app_reliability_score
            ## 
            # The user experience analytics model battery health score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @battery_health_score
            ## 
            # The user experience analytics model score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @endpoint_analytics_score
            ## 
            # The healthStatus property
            @health_status
            ## 
            # A unique identifier of the user experience analytics model scores: device manufacturer.
            @manufacturer
            ## 
            # A unique identifier of the user experience analytics model scores: device model.
            @model
            ## 
            # The user experience analytics model device count. Valid values -9.22337203685478E+18 to 9.22337203685478E+18
            @model_device_count
            ## 
            # The user experience analytics model startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @startup_performance_score
            ## 
            # The user experience analytics model work from anywhere score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @work_from_anywhere_score
            ## 
            ## Gets the appReliabilityScore property value. The user experience analytics model app reliability score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def app_reliability_score
                return @app_reliability_score
            end
            ## 
            ## Sets the appReliabilityScore property value. The user experience analytics model app reliability score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the app_reliability_score property.
            ## @return a void
            ## 
            def app_reliability_score=(value)
                @app_reliability_score = value
            end
            ## 
            ## Gets the batteryHealthScore property value. The user experience analytics model battery health score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def battery_health_score
                return @battery_health_score
            end
            ## 
            ## Sets the batteryHealthScore property value. The user experience analytics model battery health score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the battery_health_score property.
            ## @return a void
            ## 
            def battery_health_score=(value)
                @battery_health_score = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsModelScores and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_model_scores
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsModelScores.new
            end
            ## 
            ## Gets the endpointAnalyticsScore property value. The user experience analytics model score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def endpoint_analytics_score
                return @endpoint_analytics_score
            end
            ## 
            ## Sets the endpointAnalyticsScore property value. The user experience analytics model score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the endpoint_analytics_score property.
            ## @return a void
            ## 
            def endpoint_analytics_score=(value)
                @endpoint_analytics_score = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appReliabilityScore" => lambda {|n| @app_reliability_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "batteryHealthScore" => lambda {|n| @battery_health_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "endpointAnalyticsScore" => lambda {|n| @endpoint_analytics_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsHealthState) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "modelDeviceCount" => lambda {|n| @model_device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "startupPerformanceScore" => lambda {|n| @startup_performance_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "workFromAnywhereScore" => lambda {|n| @work_from_anywhere_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the healthStatus property value. The healthStatus property
            ## @return a user_experience_analytics_health_state
            ## 
            def health_status
                return @health_status
            end
            ## 
            ## Sets the healthStatus property value. The healthStatus property
            ## @param value Value to set for the health_status property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the manufacturer property value. A unique identifier of the user experience analytics model scores: device manufacturer.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. A unique identifier of the user experience analytics model scores: device manufacturer.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. A unique identifier of the user experience analytics model scores: device model.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. A unique identifier of the user experience analytics model scores: device model.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the modelDeviceCount property value. The user experience analytics model device count. Valid values -9.22337203685478E+18 to 9.22337203685478E+18
            ## @return a int64
            ## 
            def model_device_count
                return @model_device_count
            end
            ## 
            ## Sets the modelDeviceCount property value. The user experience analytics model device count. Valid values -9.22337203685478E+18 to 9.22337203685478E+18
            ## @param value Value to set for the model_device_count property.
            ## @return a void
            ## 
            def model_device_count=(value)
                @model_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("appReliabilityScore", @app_reliability_score)
                writer.write_object_value("batteryHealthScore", @battery_health_score)
                writer.write_object_value("endpointAnalyticsScore", @endpoint_analytics_score)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_object_value("modelDeviceCount", @model_device_count)
                writer.write_object_value("startupPerformanceScore", @startup_performance_score)
                writer.write_object_value("workFromAnywhereScore", @work_from_anywhere_score)
            end
            ## 
            ## Gets the startupPerformanceScore property value. The user experience analytics model startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def startup_performance_score
                return @startup_performance_score
            end
            ## 
            ## Sets the startupPerformanceScore property value. The user experience analytics model startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the startup_performance_score property.
            ## @return a void
            ## 
            def startup_performance_score=(value)
                @startup_performance_score = value
            end
            ## 
            ## Gets the workFromAnywhereScore property value. The user experience analytics model work from anywhere score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def work_from_anywhere_score
                return @work_from_anywhere_score
            end
            ## 
            ## Sets the workFromAnywhereScore property value. The user experience analytics model work from anywhere score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the work_from_anywhere_score property.
            ## @return a void
            ## 
            def work_from_anywhere_score=(value)
                @work_from_anywhere_score = value
            end
        end
    end
end
