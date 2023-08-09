require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './managed_tenants/managed_tenants'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagedTenantAlertRule < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alertDisplayName property
            @alert_display_name
            ## 
            # The alertTTL property
            @alert_t_t_l
            ## 
            # The alerts property
            @alerts
            ## 
            # The createdByUserId property
            @created_by_user_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The lastActionByUserId property
            @last_action_by_user_id
            ## 
            # The lastActionDateTime property
            @last_action_date_time
            ## 
            # The lastRunDateTime property
            @last_run_date_time
            ## 
            # The notificationFinalDestinations property
            @notification_final_destinations
            ## 
            # The ruleDefinition property
            @rule_definition
            ## 
            # The severity property
            @severity
            ## 
            # The targets property
            @targets
            ## 
            # The tenantIds property
            @tenant_ids
            ## 
            ## Gets the alertDisplayName property value. The alertDisplayName property
            ## @return a string
            ## 
            def alert_display_name
                return @alert_display_name
            end
            ## 
            ## Sets the alertDisplayName property value. The alertDisplayName property
            ## @param value Value to set for the alertDisplayName property.
            ## @return a void
            ## 
            def alert_display_name=(value)
                @alert_display_name = value
            end
            ## 
            ## Gets the alertTTL property value. The alertTTL property
            ## @return a integer
            ## 
            def alert_t_t_l
                return @alert_t_t_l
            end
            ## 
            ## Sets the alertTTL property value. The alertTTL property
            ## @param value Value to set for the alertTTL property.
            ## @return a void
            ## 
            def alert_t_t_l=(value)
                @alert_t_t_l = value
            end
            ## 
            ## Gets the alerts property value. The alerts property
            ## @return a managed_tenants_managed_tenant_alert
            ## 
            def alerts
                return @alerts
            end
            ## 
            ## Sets the alerts property value. The alerts property
            ## @param value Value to set for the alerts property.
            ## @return a void
            ## 
            def alerts=(value)
                @alerts = value
            end
            ## 
            ## Instantiates a new managedTenantAlertRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdByUserId property value. The createdByUserId property
            ## @return a string
            ## 
            def created_by_user_id
                return @created_by_user_id
            end
            ## 
            ## Sets the createdByUserId property value. The createdByUserId property
            ## @param value Value to set for the createdByUserId property.
            ## @return a void
            ## 
            def created_by_user_id=(value)
                @created_by_user_id = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_managed_tenant_alert_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagedTenantAlertRule.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
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
                    "alertDisplayName" => lambda {|n| @alert_display_name = n.get_string_value() },
                    "alertTTL" => lambda {|n| @alert_t_t_l = n.get_number_value() },
                    "alerts" => lambda {|n| @alerts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlert.create_from_discriminator_value(pn) }) },
                    "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "lastRunDateTime" => lambda {|n| @last_run_date_time = n.get_date_time_value() },
                    "notificationFinalDestinations" => lambda {|n| @notification_final_destinations = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsNotificationDestination) },
                    "ruleDefinition" => lambda {|n| @rule_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlertRuleDefinition.create_from_discriminator_value(pn) }) },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsAlertSeverity) },
                    "targets" => lambda {|n| @targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsNotificationTarget.create_from_discriminator_value(pn) }) },
                    "tenantIds" => lambda {|n| @tenant_ids = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsTenantInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastActionByUserId property value. The lastActionByUserId property
            ## @return a string
            ## 
            def last_action_by_user_id
                return @last_action_by_user_id
            end
            ## 
            ## Sets the lastActionByUserId property value. The lastActionByUserId property
            ## @param value Value to set for the lastActionByUserId property.
            ## @return a void
            ## 
            def last_action_by_user_id=(value)
                @last_action_by_user_id = value
            end
            ## 
            ## Gets the lastActionDateTime property value. The lastActionDateTime property
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. The lastActionDateTime property
            ## @param value Value to set for the lastActionDateTime property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
            end
            ## 
            ## Gets the lastRunDateTime property value. The lastRunDateTime property
            ## @return a date_time
            ## 
            def last_run_date_time
                return @last_run_date_time
            end
            ## 
            ## Sets the lastRunDateTime property value. The lastRunDateTime property
            ## @param value Value to set for the lastRunDateTime property.
            ## @return a void
            ## 
            def last_run_date_time=(value)
                @last_run_date_time = value
            end
            ## 
            ## Gets the notificationFinalDestinations property value. The notificationFinalDestinations property
            ## @return a managed_tenants_notification_destination
            ## 
            def notification_final_destinations
                return @notification_final_destinations
            end
            ## 
            ## Sets the notificationFinalDestinations property value. The notificationFinalDestinations property
            ## @param value Value to set for the notificationFinalDestinations property.
            ## @return a void
            ## 
            def notification_final_destinations=(value)
                @notification_final_destinations = value
            end
            ## 
            ## Gets the ruleDefinition property value. The ruleDefinition property
            ## @return a managed_tenants_managed_tenant_alert_rule_definition
            ## 
            def rule_definition
                return @rule_definition
            end
            ## 
            ## Sets the ruleDefinition property value. The ruleDefinition property
            ## @param value Value to set for the ruleDefinition property.
            ## @return a void
            ## 
            def rule_definition=(value)
                @rule_definition = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("alertDisplayName", @alert_display_name)
                writer.write_number_value("alertTTL", @alert_t_t_l)
                writer.write_collection_of_object_values("alerts", @alerts)
                writer.write_string_value("createdByUserId", @created_by_user_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_date_time_value("lastRunDateTime", @last_run_date_time)
                writer.write_enum_value("notificationFinalDestinations", @notification_final_destinations)
                writer.write_object_value("ruleDefinition", @rule_definition)
                writer.write_enum_value("severity", @severity)
                writer.write_collection_of_object_values("targets", @targets)
                writer.write_collection_of_object_values("tenantIds", @tenant_ids)
            end
            ## 
            ## Gets the severity property value. The severity property
            ## @return a managed_tenants_alert_severity
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. The severity property
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
            ## 
            ## Gets the targets property value. The targets property
            ## @return a managed_tenants_notification_target
            ## 
            def targets
                return @targets
            end
            ## 
            ## Sets the targets property value. The targets property
            ## @param value Value to set for the targets property.
            ## @return a void
            ## 
            def targets=(value)
                @targets = value
            end
            ## 
            ## Gets the tenantIds property value. The tenantIds property
            ## @return a managed_tenants_tenant_info
            ## 
            def tenant_ids
                return @tenant_ids
            end
            ## 
            ## Sets the tenantIds property value. The tenantIds property
            ## @param value Value to set for the tenantIds property.
            ## @return a void
            ## 
            def tenant_ids=(value)
                @tenant_ids = value
            end
        end
    end
end
