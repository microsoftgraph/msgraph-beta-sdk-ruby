require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HealthMonitoringAlertConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The emailNotificationConfigurations property
            @email_notification_configurations
            ## 
            ## Instantiates a new HealthMonitoringAlertConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a health_monitoring_alert_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HealthMonitoringAlertConfiguration.new
            end
            ## 
            ## Gets the emailNotificationConfigurations property value. The emailNotificationConfigurations property
            ## @return a health_monitoring_email_notification_configuration
            ## 
            def email_notification_configurations
                return @email_notification_configurations
            end
            ## 
            ## Sets the emailNotificationConfigurations property value. The emailNotificationConfigurations property
            ## @param value Value to set for the emailNotificationConfigurations property.
            ## @return a void
            ## 
            def email_notification_configurations=(value)
                @email_notification_configurations = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "emailNotificationConfigurations" => lambda {|n| @email_notification_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HealthMonitoringEmailNotificationConfiguration.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("emailNotificationConfigurations", @email_notification_configurations)
            end
        end
    end
end
