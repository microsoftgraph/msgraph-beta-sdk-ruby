require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RoleManagementAlert < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The various configurations of an alert for Microsoft Entra roles. The configurations are predefined and can't be created or deleted, but some of the configurations can be modified.
            @alert_configurations
            ## 
            # Defines an alert, its impact, and measures to mitigate or prevent it.
            @alert_definitions
            ## 
            # Represents the alert entity.
            @alerts
            ## 
            # Represents operations on resources that take a long time to complete and can run in the background until completion.
            @operations
            ## 
            ## Gets the alertConfigurations property value. The various configurations of an alert for Microsoft Entra roles. The configurations are predefined and can't be created or deleted, but some of the configurations can be modified.
            ## @return a unified_role_management_alert_configuration
            ## 
            def alert_configurations
                return @alert_configurations
            end
            ## 
            ## Sets the alertConfigurations property value. The various configurations of an alert for Microsoft Entra roles. The configurations are predefined and can't be created or deleted, but some of the configurations can be modified.
            ## @param value Value to set for the alertConfigurations property.
            ## @return a void
            ## 
            def alert_configurations=(value)
                @alert_configurations = value
            end
            ## 
            ## Gets the alertDefinitions property value. Defines an alert, its impact, and measures to mitigate or prevent it.
            ## @return a unified_role_management_alert_definition
            ## 
            def alert_definitions
                return @alert_definitions
            end
            ## 
            ## Sets the alertDefinitions property value. Defines an alert, its impact, and measures to mitigate or prevent it.
            ## @param value Value to set for the alertDefinitions property.
            ## @return a void
            ## 
            def alert_definitions=(value)
                @alert_definitions = value
            end
            ## 
            ## Gets the alerts property value. Represents the alert entity.
            ## @return a unified_role_management_alert
            ## 
            def alerts
                return @alerts
            end
            ## 
            ## Sets the alerts property value. Represents the alert entity.
            ## @param value Value to set for the alerts property.
            ## @return a void
            ## 
            def alerts=(value)
                @alerts = value
            end
            ## 
            ## Instantiates a new RoleManagementAlert and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a role_management_alert
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RoleManagementAlert.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alertConfigurations" => lambda {|n| @alert_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertConfiguration.create_from_discriminator_value(pn) }) },
                    "alertDefinitions" => lambda {|n| @alert_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertDefinition.create_from_discriminator_value(pn) }) },
                    "alerts" => lambda {|n| @alerts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementAlert.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LongRunningOperation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the operations property value. Represents operations on resources that take a long time to complete and can run in the background until completion.
            ## @return a long_running_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. Represents operations on resources that take a long time to complete and can run in the background until completion.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
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
                writer.write_collection_of_object_values("alertDefinitions", @alert_definitions)
                writer.write_collection_of_object_values("alerts", @alerts)
                writer.write_collection_of_object_values("operations", @operations)
            end
        end
    end
end
