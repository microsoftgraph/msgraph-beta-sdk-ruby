require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics metric history.
        class UserExperienceAnalyticsMetricHistory < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user experience analytics device id.
            @device_id
            ## 
            # The user experience analytics metric date time.
            @metric_date_time
            ## 
            # The user experience analytics metric type.
            @metric_type
            ## 
            ## Instantiates a new userExperienceAnalyticsMetricHistory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_metric_history
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsMetricHistory.new
            end
            ## 
            ## Gets the deviceId property value. The user experience analytics device id.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The user experience analytics device id.
            ## @param value Value to set for the device_id property.
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
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "metricDateTime" => lambda {|n| @metric_date_time = n.get_date_time_value() },
                    "metricType" => lambda {|n| @metric_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the metricDateTime property value. The user experience analytics metric date time.
            ## @return a date_time
            ## 
            def metric_date_time
                return @metric_date_time
            end
            ## 
            ## Sets the metricDateTime property value. The user experience analytics metric date time.
            ## @param value Value to set for the metric_date_time property.
            ## @return a void
            ## 
            def metric_date_time=(value)
                @metric_date_time = value
            end
            ## 
            ## Gets the metricType property value. The user experience analytics metric type.
            ## @return a string
            ## 
            def metric_type
                return @metric_type
            end
            ## 
            ## Sets the metricType property value. The user experience analytics metric type.
            ## @param value Value to set for the metric_type property.
            ## @return a void
            ## 
            def metric_type=(value)
                @metric_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("deviceId", @device_id)
                writer.write_date_time_value("metricDateTime", @metric_date_time)
                writer.write_string_value("metricType", @metric_type)
            end
        end
    end
end
