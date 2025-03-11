require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HealthMonitoringHealthMonitoringRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The configuration of an alert type, which defines behavior that occurs when an alert is created.
            @alert_configurations
            ## 
            # The collection of health monitoring system detected alerts for anomalous usage patterns found in a Microsoft Entra tenant.
            @alerts
            ## 
            ## Gets the alertConfigurations property value. The configuration of an alert type, which defines behavior that occurs when an alert is created.
            ## @return a health_monitoring_alert_configuration
            ## 
            def alert_configurations
                return @alert_configurations
            end
            ## 
            ## Sets the alertConfigurations property value. The configuration of an alert type, which defines behavior that occurs when an alert is created.
            ## @param value Value to set for the alertConfigurations property.
            ## @return a void
            ## 
            def alert_configurations=(value)
                @alert_configurations = value
            end
            ## 
            ## Gets the alerts property value. The collection of health monitoring system detected alerts for anomalous usage patterns found in a Microsoft Entra tenant.
            ## @return a health_monitoring_alert
            ## 
            def alerts
                return @alerts
            end
            ## 
            ## Sets the alerts property value. The collection of health monitoring system detected alerts for anomalous usage patterns found in a Microsoft Entra tenant.
            ## @param value Value to set for the alerts property.
            ## @return a void
            ## 
            def alerts=(value)
                @alerts = value
            end
            ## 
            ## Instantiates a new HealthMonitoringHealthMonitoringRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a health_monitoring_health_monitoring_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HealthMonitoringHealthMonitoringRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alertConfigurations" => lambda {|n| @alert_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HealthMonitoringAlertConfiguration.create_from_discriminator_value(pn) }) },
                    "alerts" => lambda {|n| @alerts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HealthMonitoringAlert.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("alertConfigurations", @alert_configurations)
                writer.write_collection_of_object_values("alerts", @alerts)
            end
        end
    end
end
