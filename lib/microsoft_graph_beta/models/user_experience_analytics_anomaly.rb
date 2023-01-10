require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics anomaly entity contains anomaly details.
    class UserExperienceAnalyticsAnomaly < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates the first occurrence date and time for the anomaly.
        @anomaly_first_occurrence_date_time
        ## 
        # The unique identifier of the anomaly.
        @anomaly_id
        ## 
        # Indicates the latest occurrence date and time for the anomaly.
        @anomaly_latest_occurrence_date_time
        ## 
        # The name of the anomaly.
        @anomaly_name
        ## 
        # Indicates the category of the anomaly. Eg: anomaly type can be device, application, stop error, driver or other.
        @anomaly_type
        ## 
        # The name of the application or module that caused the anomaly.
        @asset_name
        ## 
        # The publisher of the application or module that caused the anomaly.
        @asset_publisher
        ## 
        # The version of the application or module that caused the anomaly.
        @asset_version
        ## 
        # The unique identifier of the anomaly detection model.
        @detection_model_id
        ## 
        # The number of devices impacted by the anomaly. Valid values -2147483648 to 2147483647
        @device_impacted_count
        ## 
        # The unique identifier of the anomaly detection model.
        @issue_id
        ## 
        # Indicates the severity of the anomaly. Eg: anomaly severity can be high, medium, low, informational or other.
        @severity
        ## 
        # Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other.
        @state
        ## 
        ## Gets the anomalyFirstOccurrenceDateTime property value. Indicates the first occurrence date and time for the anomaly.
        ## @return a date_time
        ## 
        def anomaly_first_occurrence_date_time
            return @anomaly_first_occurrence_date_time
        end
        ## 
        ## Sets the anomalyFirstOccurrenceDateTime property value. Indicates the first occurrence date and time for the anomaly.
        ## @param value Value to set for the anomalyFirstOccurrenceDateTime property.
        ## @return a void
        ## 
        def anomaly_first_occurrence_date_time=(value)
            @anomaly_first_occurrence_date_time = value
        end
        ## 
        ## Gets the anomalyId property value. The unique identifier of the anomaly.
        ## @return a string
        ## 
        def anomaly_id
            return @anomaly_id
        end
        ## 
        ## Sets the anomalyId property value. The unique identifier of the anomaly.
        ## @param value Value to set for the anomalyId property.
        ## @return a void
        ## 
        def anomaly_id=(value)
            @anomaly_id = value
        end
        ## 
        ## Gets the anomalyLatestOccurrenceDateTime property value. Indicates the latest occurrence date and time for the anomaly.
        ## @return a date_time
        ## 
        def anomaly_latest_occurrence_date_time
            return @anomaly_latest_occurrence_date_time
        end
        ## 
        ## Sets the anomalyLatestOccurrenceDateTime property value. Indicates the latest occurrence date and time for the anomaly.
        ## @param value Value to set for the anomalyLatestOccurrenceDateTime property.
        ## @return a void
        ## 
        def anomaly_latest_occurrence_date_time=(value)
            @anomaly_latest_occurrence_date_time = value
        end
        ## 
        ## Gets the anomalyName property value. The name of the anomaly.
        ## @return a string
        ## 
        def anomaly_name
            return @anomaly_name
        end
        ## 
        ## Sets the anomalyName property value. The name of the anomaly.
        ## @param value Value to set for the anomalyName property.
        ## @return a void
        ## 
        def anomaly_name=(value)
            @anomaly_name = value
        end
        ## 
        ## Gets the anomalyType property value. Indicates the category of the anomaly. Eg: anomaly type can be device, application, stop error, driver or other.
        ## @return a user_experience_analytics_anomaly_type
        ## 
        def anomaly_type
            return @anomaly_type
        end
        ## 
        ## Sets the anomalyType property value. Indicates the category of the anomaly. Eg: anomaly type can be device, application, stop error, driver or other.
        ## @param value Value to set for the anomalyType property.
        ## @return a void
        ## 
        def anomaly_type=(value)
            @anomaly_type = value
        end
        ## 
        ## Gets the assetName property value. The name of the application or module that caused the anomaly.
        ## @return a string
        ## 
        def asset_name
            return @asset_name
        end
        ## 
        ## Sets the assetName property value. The name of the application or module that caused the anomaly.
        ## @param value Value to set for the assetName property.
        ## @return a void
        ## 
        def asset_name=(value)
            @asset_name = value
        end
        ## 
        ## Gets the assetPublisher property value. The publisher of the application or module that caused the anomaly.
        ## @return a string
        ## 
        def asset_publisher
            return @asset_publisher
        end
        ## 
        ## Sets the assetPublisher property value. The publisher of the application or module that caused the anomaly.
        ## @param value Value to set for the assetPublisher property.
        ## @return a void
        ## 
        def asset_publisher=(value)
            @asset_publisher = value
        end
        ## 
        ## Gets the assetVersion property value. The version of the application or module that caused the anomaly.
        ## @return a string
        ## 
        def asset_version
            return @asset_version
        end
        ## 
        ## Sets the assetVersion property value. The version of the application or module that caused the anomaly.
        ## @param value Value to set for the assetVersion property.
        ## @return a void
        ## 
        def asset_version=(value)
            @asset_version = value
        end
        ## 
        ## Instantiates a new userExperienceAnalyticsAnomaly and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_anomaly
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsAnomaly.new
        end
        ## 
        ## Gets the detectionModelId property value. The unique identifier of the anomaly detection model.
        ## @return a string
        ## 
        def detection_model_id
            return @detection_model_id
        end
        ## 
        ## Sets the detectionModelId property value. The unique identifier of the anomaly detection model.
        ## @param value Value to set for the detectionModelId property.
        ## @return a void
        ## 
        def detection_model_id=(value)
            @detection_model_id = value
        end
        ## 
        ## Gets the deviceImpactedCount property value. The number of devices impacted by the anomaly. Valid values -2147483648 to 2147483647
        ## @return a integer
        ## 
        def device_impacted_count
            return @device_impacted_count
        end
        ## 
        ## Sets the deviceImpactedCount property value. The number of devices impacted by the anomaly. Valid values -2147483648 to 2147483647
        ## @param value Value to set for the deviceImpactedCount property.
        ## @return a void
        ## 
        def device_impacted_count=(value)
            @device_impacted_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "anomalyFirstOccurrenceDateTime" => lambda {|n| @anomaly_first_occurrence_date_time = n.get_date_time_value() },
                "anomalyId" => lambda {|n| @anomaly_id = n.get_string_value() },
                "anomalyLatestOccurrenceDateTime" => lambda {|n| @anomaly_latest_occurrence_date_time = n.get_date_time_value() },
                "anomalyName" => lambda {|n| @anomaly_name = n.get_string_value() },
                "anomalyType" => lambda {|n| @anomaly_type = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalyType) },
                "assetName" => lambda {|n| @asset_name = n.get_string_value() },
                "assetPublisher" => lambda {|n| @asset_publisher = n.get_string_value() },
                "assetVersion" => lambda {|n| @asset_version = n.get_string_value() },
                "detectionModelId" => lambda {|n| @detection_model_id = n.get_string_value() },
                "deviceImpactedCount" => lambda {|n| @device_impacted_count = n.get_number_value() },
                "issueId" => lambda {|n| @issue_id = n.get_string_value() },
                "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalySeverity) },
                "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalyState) },
            })
        end
        ## 
        ## Gets the issueId property value. The unique identifier of the anomaly detection model.
        ## @return a string
        ## 
        def issue_id
            return @issue_id
        end
        ## 
        ## Sets the issueId property value. The unique identifier of the anomaly detection model.
        ## @param value Value to set for the issueId property.
        ## @return a void
        ## 
        def issue_id=(value)
            @issue_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("anomalyFirstOccurrenceDateTime", @anomaly_first_occurrence_date_time)
            writer.write_string_value("anomalyId", @anomaly_id)
            writer.write_date_time_value("anomalyLatestOccurrenceDateTime", @anomaly_latest_occurrence_date_time)
            writer.write_string_value("anomalyName", @anomaly_name)
            writer.write_enum_value("anomalyType", @anomaly_type)
            writer.write_string_value("assetName", @asset_name)
            writer.write_string_value("assetPublisher", @asset_publisher)
            writer.write_string_value("assetVersion", @asset_version)
            writer.write_string_value("detectionModelId", @detection_model_id)
            writer.write_number_value("deviceImpactedCount", @device_impacted_count)
            writer.write_string_value("issueId", @issue_id)
            writer.write_enum_value("severity", @severity)
            writer.write_enum_value("state", @state)
        end
        ## 
        ## Gets the severity property value. Indicates the severity of the anomaly. Eg: anomaly severity can be high, medium, low, informational or other.
        ## @return a user_experience_analytics_anomaly_severity
        ## 
        def severity
            return @severity
        end
        ## 
        ## Sets the severity property value. Indicates the severity of the anomaly. Eg: anomaly severity can be high, medium, low, informational or other.
        ## @param value Value to set for the severity property.
        ## @return a void
        ## 
        def severity=(value)
            @severity = value
        end
        ## 
        ## Gets the state property value. Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other.
        ## @return a user_experience_analytics_anomaly_state
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other.
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
        end
    end
end
