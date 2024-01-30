require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly.
        class UserExperienceAnalyticsAnomalySeverityOverview
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates count of high severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            @high_severity_anomaly_count
            ## 
            # Indicates count of informational severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            @informational_severity_anomaly_count
            ## 
            # Indicates count of low severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            @low_severity_anomaly_count
            ## 
            # Indicates count of medium severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            @medium_severity_anomaly_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsAnomalySeverityOverview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_anomaly_severity_overview
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsAnomalySeverityOverview.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "highSeverityAnomalyCount" => lambda {|n| @high_severity_anomaly_count = n.get_number_value() },
                    "informationalSeverityAnomalyCount" => lambda {|n| @informational_severity_anomaly_count = n.get_number_value() },
                    "lowSeverityAnomalyCount" => lambda {|n| @low_severity_anomaly_count = n.get_number_value() },
                    "mediumSeverityAnomalyCount" => lambda {|n| @medium_severity_anomaly_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the highSeverityAnomalyCount property value. Indicates count of high severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def high_severity_anomaly_count
                return @high_severity_anomaly_count
            end
            ## 
            ## Sets the highSeverityAnomalyCount property value. Indicates count of high severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the highSeverityAnomalyCount property.
            ## @return a void
            ## 
            def high_severity_anomaly_count=(value)
                @high_severity_anomaly_count = value
            end
            ## 
            ## Gets the informationalSeverityAnomalyCount property value. Indicates count of informational severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def informational_severity_anomaly_count
                return @informational_severity_anomaly_count
            end
            ## 
            ## Sets the informationalSeverityAnomalyCount property value. Indicates count of informational severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the informationalSeverityAnomalyCount property.
            ## @return a void
            ## 
            def informational_severity_anomaly_count=(value)
                @informational_severity_anomaly_count = value
            end
            ## 
            ## Gets the lowSeverityAnomalyCount property value. Indicates count of low severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def low_severity_anomaly_count
                return @low_severity_anomaly_count
            end
            ## 
            ## Sets the lowSeverityAnomalyCount property value. Indicates count of low severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the lowSeverityAnomalyCount property.
            ## @return a void
            ## 
            def low_severity_anomaly_count=(value)
                @low_severity_anomaly_count = value
            end
            ## 
            ## Gets the mediumSeverityAnomalyCount property value. Indicates count of medium severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def medium_severity_anomaly_count
                return @medium_severity_anomaly_count
            end
            ## 
            ## Sets the mediumSeverityAnomalyCount property value. Indicates count of medium severity anomalies which have been detected. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the mediumSeverityAnomalyCount property.
            ## @return a void
            ## 
            def medium_severity_anomaly_count=(value)
                @medium_severity_anomaly_count = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("highSeverityAnomalyCount", @high_severity_anomaly_count)
                writer.write_number_value("informationalSeverityAnomalyCount", @informational_severity_anomaly_count)
                writer.write_number_value("lowSeverityAnomalyCount", @low_severity_anomaly_count)
                writer.write_number_value("mediumSeverityAnomalyCount", @medium_severity_anomaly_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
