require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityPartnerSecurityAlert < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the activity by a partner and includes details of state transitions, who performed them, and when they occurred.
            @activity_logs
            ## 
            # A bag of name-value pairs that contain additional details about an alert.
            @additional_details
            ## 
            # Contains details of the resources affected by the security alert.
            @affected_resources
            ## 
            # The type of vulnerability that impacts the customer due to this alert.
            @alert_type
            ## 
            # The modern offer category ID of the subscription.
            @catalog_offer_id
            ## 
            # The confidenceLevel property
            @confidence_level
            ## 
            # The impacted customer tenant associated with the alert.
            @customer_tenant_id
            ## 
            # The description for each alert.
            @description
            ## 
            # Time when the alert was detected or created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @detected_date_time
            ## 
            # The display name of the alert.
            @display_name
            ## 
            # Time of the first activity associated with the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  subscription.
            @first_observed_date_time
            ## 
            # Indicates whehter an alert is a test alert.
            @is_test
            ## 
            # Time of the latest activity associated with the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_observed_date_time
            ## 
            # The UPN of the partner user who resolved the alert.
            @resolved_by
            ## 
            # Time when the alert was resolved. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @resolved_on_date_time
            ## 
            # The reason provided by the partner for addressing the alert. The possible values are: legitimate, ignore, fraud, unknownFutureValue.
            @resolved_reason
            ## 
            # The severity property
            @severity
            ## 
            # The status property
            @status
            ## 
            # The subscription associated with the alert for the customer.
            @subscription_id
            ## 
            # The value-added reseller tenant associated with the partner tenant and customer tenant.
            @value_added_reseller_tenant_id
            ## 
            ## Gets the activityLogs property value. Represents the activity by a partner and includes details of state transitions, who performed them, and when they occurred.
            ## @return a models.partner.security_activity_log
            ## 
            def activity_logs
                return @activity_logs
            end
            ## 
            ## Sets the activityLogs property value. Represents the activity by a partner and includes details of state transitions, who performed them, and when they occurred.
            ## @param value Value to set for the activityLogs property.
            ## @return a void
            ## 
            def activity_logs=(value)
                @activity_logs = value
            end
            ## 
            ## Gets the additionalDetails property value. A bag of name-value pairs that contain additional details about an alert.
            ## @return a models.partner.security_additional_data_dictionary
            ## 
            def additional_details
                return @additional_details
            end
            ## 
            ## Sets the additionalDetails property value. A bag of name-value pairs that contain additional details about an alert.
            ## @param value Value to set for the additionalDetails property.
            ## @return a void
            ## 
            def additional_details=(value)
                @additional_details = value
            end
            ## 
            ## Gets the affectedResources property value. Contains details of the resources affected by the security alert.
            ## @return a models.partner.security_affected_resource
            ## 
            def affected_resources
                return @affected_resources
            end
            ## 
            ## Sets the affectedResources property value. Contains details of the resources affected by the security alert.
            ## @param value Value to set for the affectedResources property.
            ## @return a void
            ## 
            def affected_resources=(value)
                @affected_resources = value
            end
            ## 
            ## Gets the alertType property value. The type of vulnerability that impacts the customer due to this alert.
            ## @return a string
            ## 
            def alert_type
                return @alert_type
            end
            ## 
            ## Sets the alertType property value. The type of vulnerability that impacts the customer due to this alert.
            ## @param value Value to set for the alertType property.
            ## @return a void
            ## 
            def alert_type=(value)
                @alert_type = value
            end
            ## 
            ## Gets the catalogOfferId property value. The modern offer category ID of the subscription.
            ## @return a string
            ## 
            def catalog_offer_id
                return @catalog_offer_id
            end
            ## 
            ## Sets the catalogOfferId property value. The modern offer category ID of the subscription.
            ## @param value Value to set for the catalogOfferId property.
            ## @return a void
            ## 
            def catalog_offer_id=(value)
                @catalog_offer_id = value
            end
            ## 
            ## Gets the confidenceLevel property value. The confidenceLevel property
            ## @return a models.partner.security_security_alert_confidence
            ## 
            def confidence_level
                return @confidence_level
            end
            ## 
            ## Sets the confidenceLevel property value. The confidenceLevel property
            ## @param value Value to set for the confidenceLevel property.
            ## @return a void
            ## 
            def confidence_level=(value)
                @confidence_level = value
            end
            ## 
            ## Instantiates a new Models.partner.securityPartnerSecurityAlert and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_partner_security_alert
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityPartnerSecurityAlert.new
            end
            ## 
            ## Gets the customerTenantId property value. The impacted customer tenant associated with the alert.
            ## @return a string
            ## 
            def customer_tenant_id
                return @customer_tenant_id
            end
            ## 
            ## Sets the customerTenantId property value. The impacted customer tenant associated with the alert.
            ## @param value Value to set for the customerTenantId property.
            ## @return a void
            ## 
            def customer_tenant_id=(value)
                @customer_tenant_id = value
            end
            ## 
            ## Gets the description property value. The description for each alert.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for each alert.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the detectedDateTime property value. Time when the alert was detected or created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def detected_date_time
                return @detected_date_time
            end
            ## 
            ## Sets the detectedDateTime property value. Time when the alert was detected or created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the detectedDateTime property.
            ## @return a void
            ## 
            def detected_date_time=(value)
                @detected_date_time = value
            end
            ## 
            ## Gets the displayName property value. The display name of the alert.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the alert.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the firstObservedDateTime property value. Time of the first activity associated with the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  subscription.
            ## @return a date_time
            ## 
            def first_observed_date_time
                return @first_observed_date_time
            end
            ## 
            ## Sets the firstObservedDateTime property value. Time of the first activity associated with the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  subscription.
            ## @param value Value to set for the firstObservedDateTime property.
            ## @return a void
            ## 
            def first_observed_date_time=(value)
                @first_observed_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activityLogs" => lambda {|n| @activity_logs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Models.partner.securityActivityLog.create_from_discriminator_value(pn) }) },
                    "additionalDetails" => lambda {|n| @additional_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Models.partner.securityAdditionalDataDictionary.create_from_discriminator_value(pn) }) },
                    "affectedResources" => lambda {|n| @affected_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Models.partner.securityAffectedResource.create_from_discriminator_value(pn) }) },
                    "alertType" => lambda {|n| @alert_type = n.get_string_value() },
                    "catalogOfferId" => lambda {|n| @catalog_offer_id = n.get_string_value() },
                    "confidenceLevel" => lambda {|n| @confidence_level = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securitySecurityAlertConfidence) },
                    "customerTenantId" => lambda {|n| @customer_tenant_id = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "detectedDateTime" => lambda {|n| @detected_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "firstObservedDateTime" => lambda {|n| @first_observed_date_time = n.get_date_time_value() },
                    "isTest" => lambda {|n| @is_test = n.get_boolean_value() },
                    "lastObservedDateTime" => lambda {|n| @last_observed_date_time = n.get_date_time_value() },
                    "resolvedBy" => lambda {|n| @resolved_by = n.get_string_value() },
                    "resolvedOnDateTime" => lambda {|n| @resolved_on_date_time = n.get_date_time_value() },
                    "resolvedReason" => lambda {|n| @resolved_reason = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securitySecurityAlertResolvedReason) },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securitySecurityAlertSeverity) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securitySecurityAlertStatus) },
                    "subscriptionId" => lambda {|n| @subscription_id = n.get_string_value() },
                    "valueAddedResellerTenantId" => lambda {|n| @value_added_reseller_tenant_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isTest property value. Indicates whehter an alert is a test alert.
            ## @return a boolean
            ## 
            def is_test
                return @is_test
            end
            ## 
            ## Sets the isTest property value. Indicates whehter an alert is a test alert.
            ## @param value Value to set for the isTest property.
            ## @return a void
            ## 
            def is_test=(value)
                @is_test = value
            end
            ## 
            ## Gets the lastObservedDateTime property value. Time of the latest activity associated with the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_observed_date_time
                return @last_observed_date_time
            end
            ## 
            ## Sets the lastObservedDateTime property value. Time of the latest activity associated with the alert. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastObservedDateTime property.
            ## @return a void
            ## 
            def last_observed_date_time=(value)
                @last_observed_date_time = value
            end
            ## 
            ## Gets the resolvedBy property value. The UPN of the partner user who resolved the alert.
            ## @return a string
            ## 
            def resolved_by
                return @resolved_by
            end
            ## 
            ## Sets the resolvedBy property value. The UPN of the partner user who resolved the alert.
            ## @param value Value to set for the resolvedBy property.
            ## @return a void
            ## 
            def resolved_by=(value)
                @resolved_by = value
            end
            ## 
            ## Gets the resolvedOnDateTime property value. Time when the alert was resolved. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def resolved_on_date_time
                return @resolved_on_date_time
            end
            ## 
            ## Sets the resolvedOnDateTime property value. Time when the alert was resolved. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the resolvedOnDateTime property.
            ## @return a void
            ## 
            def resolved_on_date_time=(value)
                @resolved_on_date_time = value
            end
            ## 
            ## Gets the resolvedReason property value. The reason provided by the partner for addressing the alert. The possible values are: legitimate, ignore, fraud, unknownFutureValue.
            ## @return a models.partner.security_security_alert_resolved_reason
            ## 
            def resolved_reason
                return @resolved_reason
            end
            ## 
            ## Sets the resolvedReason property value. The reason provided by the partner for addressing the alert. The possible values are: legitimate, ignore, fraud, unknownFutureValue.
            ## @param value Value to set for the resolvedReason property.
            ## @return a void
            ## 
            def resolved_reason=(value)
                @resolved_reason = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("activityLogs", @activity_logs)
                writer.write_object_value("additionalDetails", @additional_details)
                writer.write_collection_of_object_values("affectedResources", @affected_resources)
                writer.write_string_value("alertType", @alert_type)
                writer.write_string_value("catalogOfferId", @catalog_offer_id)
                writer.write_enum_value("confidenceLevel", @confidence_level)
                writer.write_string_value("customerTenantId", @customer_tenant_id)
                writer.write_string_value("description", @description)
                writer.write_date_time_value("detectedDateTime", @detected_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("firstObservedDateTime", @first_observed_date_time)
                writer.write_boolean_value("isTest", @is_test)
                writer.write_date_time_value("lastObservedDateTime", @last_observed_date_time)
                writer.write_string_value("resolvedBy", @resolved_by)
                writer.write_date_time_value("resolvedOnDateTime", @resolved_on_date_time)
                writer.write_enum_value("resolvedReason", @resolved_reason)
                writer.write_enum_value("severity", @severity)
                writer.write_enum_value("status", @status)
                writer.write_string_value("subscriptionId", @subscription_id)
                writer.write_string_value("valueAddedResellerTenantId", @value_added_reseller_tenant_id)
            end
            ## 
            ## Gets the severity property value. The severity property
            ## @return a models.partner.security_security_alert_severity
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
            ## @return a models.partner.security_security_alert_status
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
            ## Gets the subscriptionId property value. The subscription associated with the alert for the customer.
            ## @return a string
            ## 
            def subscription_id
                return @subscription_id
            end
            ## 
            ## Sets the subscriptionId property value. The subscription associated with the alert for the customer.
            ## @param value Value to set for the subscriptionId property.
            ## @return a void
            ## 
            def subscription_id=(value)
                @subscription_id = value
            end
            ## 
            ## Gets the valueAddedResellerTenantId property value. The value-added reseller tenant associated with the partner tenant and customer tenant.
            ## @return a string
            ## 
            def value_added_reseller_tenant_id
                return @value_added_reseller_tenant_id
            end
            ## 
            ## Sets the valueAddedResellerTenantId property value. The value-added reseller tenant associated with the partner tenant and customer tenant.
            ## @param value Value to set for the valueAddedResellerTenantId property.
            ## @return a void
            ## 
            def value_added_reseller_tenant_id=(value)
                @value_added_reseller_tenant_id = value
            end
        end
    end
end
