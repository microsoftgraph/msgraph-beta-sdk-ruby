require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagedTenantAlert < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alertData property
            @alert_data
            ## 
            # The alertDataReferenceStrings property
            @alert_data_reference_strings
            ## 
            # The alertLogs property
            @alert_logs
            ## 
            # The alertRule property
            @alert_rule
            ## 
            # The alertRuleDisplayName property
            @alert_rule_display_name
            ## 
            # The apiNotifications property
            @api_notifications
            ## 
            # The assignedToUserId property
            @assigned_to_user_id
            ## 
            # The correlationCount property
            @correlation_count
            ## 
            # The correlationId property
            @correlation_id
            ## 
            # The createdByUserId property
            @created_by_user_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The emailNotifications property
            @email_notifications
            ## 
            # The lastActionByUserId property
            @last_action_by_user_id
            ## 
            # The lastActionDateTime property
            @last_action_date_time
            ## 
            # The message property
            @message
            ## 
            # The severity property
            @severity
            ## 
            # The status property
            @status
            ## 
            # The tenantId property
            @tenant_id
            ## 
            # The title property
            @title
            ## 
            ## Gets the alertData property value. The alertData property
            ## @return a managed_tenants_alert_data
            ## 
            def alert_data
                return @alert_data
            end
            ## 
            ## Sets the alertData property value. The alertData property
            ## @param value Value to set for the alertData property.
            ## @return a void
            ## 
            def alert_data=(value)
                @alert_data = value
            end
            ## 
            ## Gets the alertDataReferenceStrings property value. The alertDataReferenceStrings property
            ## @return a managed_tenants_alert_data_reference_string
            ## 
            def alert_data_reference_strings
                return @alert_data_reference_strings
            end
            ## 
            ## Sets the alertDataReferenceStrings property value. The alertDataReferenceStrings property
            ## @param value Value to set for the alertDataReferenceStrings property.
            ## @return a void
            ## 
            def alert_data_reference_strings=(value)
                @alert_data_reference_strings = value
            end
            ## 
            ## Gets the alertLogs property value. The alertLogs property
            ## @return a managed_tenants_managed_tenant_alert_log
            ## 
            def alert_logs
                return @alert_logs
            end
            ## 
            ## Sets the alertLogs property value. The alertLogs property
            ## @param value Value to set for the alertLogs property.
            ## @return a void
            ## 
            def alert_logs=(value)
                @alert_logs = value
            end
            ## 
            ## Gets the alertRule property value. The alertRule property
            ## @return a managed_tenants_managed_tenant_alert_rule
            ## 
            def alert_rule
                return @alert_rule
            end
            ## 
            ## Sets the alertRule property value. The alertRule property
            ## @param value Value to set for the alertRule property.
            ## @return a void
            ## 
            def alert_rule=(value)
                @alert_rule = value
            end
            ## 
            ## Gets the alertRuleDisplayName property value. The alertRuleDisplayName property
            ## @return a string
            ## 
            def alert_rule_display_name
                return @alert_rule_display_name
            end
            ## 
            ## Sets the alertRuleDisplayName property value. The alertRuleDisplayName property
            ## @param value Value to set for the alertRuleDisplayName property.
            ## @return a void
            ## 
            def alert_rule_display_name=(value)
                @alert_rule_display_name = value
            end
            ## 
            ## Gets the apiNotifications property value. The apiNotifications property
            ## @return a managed_tenants_managed_tenant_api_notification
            ## 
            def api_notifications
                return @api_notifications
            end
            ## 
            ## Sets the apiNotifications property value. The apiNotifications property
            ## @param value Value to set for the apiNotifications property.
            ## @return a void
            ## 
            def api_notifications=(value)
                @api_notifications = value
            end
            ## 
            ## Gets the assignedToUserId property value. The assignedToUserId property
            ## @return a string
            ## 
            def assigned_to_user_id
                return @assigned_to_user_id
            end
            ## 
            ## Sets the assignedToUserId property value. The assignedToUserId property
            ## @param value Value to set for the assignedToUserId property.
            ## @return a void
            ## 
            def assigned_to_user_id=(value)
                @assigned_to_user_id = value
            end
            ## 
            ## Instantiates a new managedTenantsManagedTenantAlert and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationCount property value. The correlationCount property
            ## @return a integer
            ## 
            def correlation_count
                return @correlation_count
            end
            ## 
            ## Sets the correlationCount property value. The correlationCount property
            ## @param value Value to set for the correlationCount property.
            ## @return a void
            ## 
            def correlation_count=(value)
                @correlation_count = value
            end
            ## 
            ## Gets the correlationId property value. The correlationId property
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. The correlationId property
            ## @param value Value to set for the correlationId property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
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
            ## @return a managed_tenants_managed_tenant_alert
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagedTenantAlert.new
            end
            ## 
            ## Gets the emailNotifications property value. The emailNotifications property
            ## @return a managed_tenants_managed_tenant_email_notification
            ## 
            def email_notifications
                return @email_notifications
            end
            ## 
            ## Sets the emailNotifications property value. The emailNotifications property
            ## @param value Value to set for the emailNotifications property.
            ## @return a void
            ## 
            def email_notifications=(value)
                @email_notifications = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alertData" => lambda {|n| @alert_data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsAlertData.create_from_discriminator_value(pn) }) },
                    "alertDataReferenceStrings" => lambda {|n| @alert_data_reference_strings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsAlertDataReferenceString.create_from_discriminator_value(pn) }) },
                    "alertLogs" => lambda {|n| @alert_logs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlertLog.create_from_discriminator_value(pn) }) },
                    "alertRule" => lambda {|n| @alert_rule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlertRule.create_from_discriminator_value(pn) }) },
                    "alertRuleDisplayName" => lambda {|n| @alert_rule_display_name = n.get_string_value() },
                    "apiNotifications" => lambda {|n| @api_notifications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantApiNotification.create_from_discriminator_value(pn) }) },
                    "assignedToUserId" => lambda {|n| @assigned_to_user_id = n.get_string_value() },
                    "correlationCount" => lambda {|n| @correlation_count = n.get_number_value() },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "emailNotifications" => lambda {|n| @email_notifications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantEmailNotification.create_from_discriminator_value(pn) }) },
                    "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsAlertSeverity) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsAlertStatus) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "title" => lambda {|n| @title = n.get_string_value() },
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
            ## Gets the message property value. The message property
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. The message property
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("alertData", @alert_data)
                writer.write_collection_of_object_values("alertDataReferenceStrings", @alert_data_reference_strings)
                writer.write_collection_of_object_values("alertLogs", @alert_logs)
                writer.write_object_value("alertRule", @alert_rule)
                writer.write_string_value("alertRuleDisplayName", @alert_rule_display_name)
                writer.write_collection_of_object_values("apiNotifications", @api_notifications)
                writer.write_string_value("assignedToUserId", @assigned_to_user_id)
                writer.write_number_value("correlationCount", @correlation_count)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_string_value("createdByUserId", @created_by_user_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("emailNotifications", @email_notifications)
                writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_string_value("message", @message)
                writer.write_enum_value("severity", @severity)
                writer.write_enum_value("status", @status)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_string_value("title", @title)
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
            ## Gets the status property value. The status property
            ## @return a managed_tenants_alert_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
