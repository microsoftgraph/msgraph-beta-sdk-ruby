require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics anomaly correlation group overview entity contains the information for each correlation group of an anomaly.
        class UserExperienceAnalyticsAnomalyCorrelationGroupOverview < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the number of correlation groups in the anomaly. Valid values -2147483648 to 2147483647
            @anomaly_correlation_group_count
            ## 
            # The unique identifier of the anomaly. Anomaly details such as name and type can be found in the UserExperienceAnalyticsAnomalySeverityOverview entity.
            @anomaly_id
            ## 
            # Indicates the total number of devices affected by the anomaly in the correlation group. Valid values -2147483648 to 2147483647
            @correlation_group_anomalous_device_count
            ## 
            # Indicates the total number of devices at risk in the correlation group. Valid values -2147483648 to 2147483647
            @correlation_group_at_risk_device_count
            ## 
            # Indicates the total number of devices in a correlation group. Valid values -2147483648 to 2147483647
            @correlation_group_device_count
            ## 
            # Describes the features of a device that are shared between all devices in a correlation group.
            @correlation_group_features
            ## 
            # The unique identifier for the correlation group which will uniquely identify one of the correlation group within an anomaly. The correlation Id can be mapped to the correlation group name by concatinating the correlation group features. Example of correlation group name which is the indicative of concatenated features names are  for names, Contoso manufacture 4.4.1 and Windows 11.22621.1485.
            @correlation_group_id
            ## 
            # Indicates the level of prevalence of the correlation group features in the anomaly. Possible values are: high, medium or low
            @correlation_group_prevalence
            ## 
            # The percentage of the devices in the correlation group that are anomalous. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @correlation_group_prevalence_percentage
            ## 
            # Indicates the total number of devices in the tenant. Valid values -2147483648 to 2147483647
            @total_device_count
            ## 
            ## Gets the anomalyCorrelationGroupCount property value. Indicates the number of correlation groups in the anomaly. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def anomaly_correlation_group_count
                return @anomaly_correlation_group_count
            end
            ## 
            ## Sets the anomalyCorrelationGroupCount property value. Indicates the number of correlation groups in the anomaly. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the anomalyCorrelationGroupCount property.
            ## @return a void
            ## 
            def anomaly_correlation_group_count=(value)
                @anomaly_correlation_group_count = value
            end
            ## 
            ## Gets the anomalyId property value. The unique identifier of the anomaly. Anomaly details such as name and type can be found in the UserExperienceAnalyticsAnomalySeverityOverview entity.
            ## @return a string
            ## 
            def anomaly_id
                return @anomaly_id
            end
            ## 
            ## Sets the anomalyId property value. The unique identifier of the anomaly. Anomaly details such as name and type can be found in the UserExperienceAnalyticsAnomalySeverityOverview entity.
            ## @param value Value to set for the anomalyId property.
            ## @return a void
            ## 
            def anomaly_id=(value)
                @anomaly_id = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsAnomalyCorrelationGroupOverview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationGroupAnomalousDeviceCount property value. Indicates the total number of devices affected by the anomaly in the correlation group. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def correlation_group_anomalous_device_count
                return @correlation_group_anomalous_device_count
            end
            ## 
            ## Sets the correlationGroupAnomalousDeviceCount property value. Indicates the total number of devices affected by the anomaly in the correlation group. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the correlationGroupAnomalousDeviceCount property.
            ## @return a void
            ## 
            def correlation_group_anomalous_device_count=(value)
                @correlation_group_anomalous_device_count = value
            end
            ## 
            ## Gets the correlationGroupAtRiskDeviceCount property value. Indicates the total number of devices at risk in the correlation group. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def correlation_group_at_risk_device_count
                return @correlation_group_at_risk_device_count
            end
            ## 
            ## Sets the correlationGroupAtRiskDeviceCount property value. Indicates the total number of devices at risk in the correlation group. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the correlationGroupAtRiskDeviceCount property.
            ## @return a void
            ## 
            def correlation_group_at_risk_device_count=(value)
                @correlation_group_at_risk_device_count = value
            end
            ## 
            ## Gets the correlationGroupDeviceCount property value. Indicates the total number of devices in a correlation group. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def correlation_group_device_count
                return @correlation_group_device_count
            end
            ## 
            ## Sets the correlationGroupDeviceCount property value. Indicates the total number of devices in a correlation group. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the correlationGroupDeviceCount property.
            ## @return a void
            ## 
            def correlation_group_device_count=(value)
                @correlation_group_device_count = value
            end
            ## 
            ## Gets the correlationGroupFeatures property value. Describes the features of a device that are shared between all devices in a correlation group.
            ## @return a user_experience_analytics_anomaly_correlation_group_feature
            ## 
            def correlation_group_features
                return @correlation_group_features
            end
            ## 
            ## Sets the correlationGroupFeatures property value. Describes the features of a device that are shared between all devices in a correlation group.
            ## @param value Value to set for the correlationGroupFeatures property.
            ## @return a void
            ## 
            def correlation_group_features=(value)
                @correlation_group_features = value
            end
            ## 
            ## Gets the correlationGroupId property value. The unique identifier for the correlation group which will uniquely identify one of the correlation group within an anomaly. The correlation Id can be mapped to the correlation group name by concatinating the correlation group features. Example of correlation group name which is the indicative of concatenated features names are  for names, Contoso manufacture 4.4.1 and Windows 11.22621.1485.
            ## @return a string
            ## 
            def correlation_group_id
                return @correlation_group_id
            end
            ## 
            ## Sets the correlationGroupId property value. The unique identifier for the correlation group which will uniquely identify one of the correlation group within an anomaly. The correlation Id can be mapped to the correlation group name by concatinating the correlation group features. Example of correlation group name which is the indicative of concatenated features names are  for names, Contoso manufacture 4.4.1 and Windows 11.22621.1485.
            ## @param value Value to set for the correlationGroupId property.
            ## @return a void
            ## 
            def correlation_group_id=(value)
                @correlation_group_id = value
            end
            ## 
            ## Gets the correlationGroupPrevalence property value. Indicates the level of prevalence of the correlation group features in the anomaly. Possible values are: high, medium or low
            ## @return a user_experience_analytics_anomaly_correlation_group_prevalence
            ## 
            def correlation_group_prevalence
                return @correlation_group_prevalence
            end
            ## 
            ## Sets the correlationGroupPrevalence property value. Indicates the level of prevalence of the correlation group features in the anomaly. Possible values are: high, medium or low
            ## @param value Value to set for the correlationGroupPrevalence property.
            ## @return a void
            ## 
            def correlation_group_prevalence=(value)
                @correlation_group_prevalence = value
            end
            ## 
            ## Gets the correlationGroupPrevalencePercentage property value. The percentage of the devices in the correlation group that are anomalous. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def correlation_group_prevalence_percentage
                return @correlation_group_prevalence_percentage
            end
            ## 
            ## Sets the correlationGroupPrevalencePercentage property value. The percentage of the devices in the correlation group that are anomalous. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the correlationGroupPrevalencePercentage property.
            ## @return a void
            ## 
            def correlation_group_prevalence_percentage=(value)
                @correlation_group_prevalence_percentage = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_anomaly_correlation_group_overview
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAnomalyCorrelationGroupOverview.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "anomalyCorrelationGroupCount" => lambda {|n| @anomaly_correlation_group_count = n.get_number_value() },
                    "anomalyId" => lambda {|n| @anomaly_id = n.get_string_value() },
                    "correlationGroupAnomalousDeviceCount" => lambda {|n| @correlation_group_anomalous_device_count = n.get_number_value() },
                    "correlationGroupAtRiskDeviceCount" => lambda {|n| @correlation_group_at_risk_device_count = n.get_number_value() },
                    "correlationGroupDeviceCount" => lambda {|n| @correlation_group_device_count = n.get_number_value() },
                    "correlationGroupFeatures" => lambda {|n| @correlation_group_features = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalyCorrelationGroupFeature.create_from_discriminator_value(pn) }) },
                    "correlationGroupId" => lambda {|n| @correlation_group_id = n.get_string_value() },
                    "correlationGroupPrevalence" => lambda {|n| @correlation_group_prevalence = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalyCorrelationGroupPrevalence) },
                    "correlationGroupPrevalencePercentage" => lambda {|n| @correlation_group_prevalence_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "totalDeviceCount" => lambda {|n| @total_device_count = n.get_number_value() },
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
                writer.write_number_value("anomalyCorrelationGroupCount", @anomaly_correlation_group_count)
                writer.write_string_value("anomalyId", @anomaly_id)
                writer.write_number_value("correlationGroupAnomalousDeviceCount", @correlation_group_anomalous_device_count)
                writer.write_number_value("correlationGroupAtRiskDeviceCount", @correlation_group_at_risk_device_count)
                writer.write_number_value("correlationGroupDeviceCount", @correlation_group_device_count)
                writer.write_collection_of_object_values("correlationGroupFeatures", @correlation_group_features)
                writer.write_string_value("correlationGroupId", @correlation_group_id)
                writer.write_enum_value("correlationGroupPrevalence", @correlation_group_prevalence)
                writer.write_object_value("correlationGroupPrevalencePercentage", @correlation_group_prevalence_percentage)
                writer.write_number_value("totalDeviceCount", @total_device_count)
            end
            ## 
            ## Gets the totalDeviceCount property value. Indicates the total number of devices in the tenant. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def total_device_count
                return @total_device_count
            end
            ## 
            ## Sets the totalDeviceCount property value. Indicates the total number of devices in the tenant. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the totalDeviceCount property.
            ## @return a void
            ## 
            def total_device_count=(value)
                @total_device_count = value
            end
        end
    end
end
