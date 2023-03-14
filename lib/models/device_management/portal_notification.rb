require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './device_management'

module MicrosoftGraphBeta
    module Models
        module DeviceManagement
            class PortalNotification
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The associated alert impact.
                @alert_impact
                ## 
                # The associated alert record ID.
                @alert_record_id
                ## 
                # The associated alert rule ID.
                @alert_rule_id
                ## 
                # The associated alert rule name.
                @alert_rule_name
                ## 
                # The associated alert rule template. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue.
                @alert_rule_template
                ## 
                # The unique identifier for the portal notification.
                @id
                ## 
                # true if the portal notification has already been sent to the user; false otherwise.
                @is_portal_notification_sent
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The associated alert rule severity. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
                @severity
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the alertImpact property value. The associated alert impact.
                ## @return a alert_impact
                ## 
                def alert_impact
                    return @alert_impact
                end
                ## 
                ## Sets the alertImpact property value. The associated alert impact.
                ## @param value Value to set for the alert_impact property.
                ## @return a void
                ## 
                def alert_impact=(value)
                    @alert_impact = value
                end
                ## 
                ## Gets the alertRecordId property value. The associated alert record ID.
                ## @return a string
                ## 
                def alert_record_id
                    return @alert_record_id
                end
                ## 
                ## Sets the alertRecordId property value. The associated alert record ID.
                ## @param value Value to set for the alert_record_id property.
                ## @return a void
                ## 
                def alert_record_id=(value)
                    @alert_record_id = value
                end
                ## 
                ## Gets the alertRuleId property value. The associated alert rule ID.
                ## @return a string
                ## 
                def alert_rule_id
                    return @alert_rule_id
                end
                ## 
                ## Sets the alertRuleId property value. The associated alert rule ID.
                ## @param value Value to set for the alert_rule_id property.
                ## @return a void
                ## 
                def alert_rule_id=(value)
                    @alert_rule_id = value
                end
                ## 
                ## Gets the alertRuleName property value. The associated alert rule name.
                ## @return a string
                ## 
                def alert_rule_name
                    return @alert_rule_name
                end
                ## 
                ## Sets the alertRuleName property value. The associated alert rule name.
                ## @param value Value to set for the alert_rule_name property.
                ## @return a void
                ## 
                def alert_rule_name=(value)
                    @alert_rule_name = value
                end
                ## 
                ## Gets the alertRuleTemplate property value. The associated alert rule template. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue.
                ## @return a alert_rule_template
                ## 
                def alert_rule_template
                    return @alert_rule_template
                end
                ## 
                ## Sets the alertRuleTemplate property value. The associated alert rule template. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue.
                ## @param value Value to set for the alert_rule_template property.
                ## @return a void
                ## 
                def alert_rule_template=(value)
                    @alert_rule_template = value
                end
                ## 
                ## Instantiates a new portalNotification and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a portal_notification
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return PortalNotification.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "alertImpact" => lambda {|n| @alert_impact = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagement::AlertImpact.create_from_discriminator_value(pn) }) },
                        "alertRecordId" => lambda {|n| @alert_record_id = n.get_string_value() },
                        "alertRuleId" => lambda {|n| @alert_rule_id = n.get_string_value() },
                        "alertRuleName" => lambda {|n| @alert_rule_name = n.get_string_value() },
                        "alertRuleTemplate" => lambda {|n| @alert_rule_template = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagement::AlertRuleTemplate) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isPortalNotificationSent" => lambda {|n| @is_portal_notification_sent = n.get_boolean_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagement::RuleSeverityType) },
                    }
                end
                ## 
                ## Gets the id property value. The unique identifier for the portal notification.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. The unique identifier for the portal notification.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isPortalNotificationSent property value. true if the portal notification has already been sent to the user; false otherwise.
                ## @return a boolean
                ## 
                def is_portal_notification_sent
                    return @is_portal_notification_sent
                end
                ## 
                ## Sets the isPortalNotificationSent property value. true if the portal notification has already been sent to the user; false otherwise.
                ## @param value Value to set for the is_portal_notification_sent property.
                ## @return a void
                ## 
                def is_portal_notification_sent=(value)
                    @is_portal_notification_sent = value
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
                ## @param value Value to set for the odata_type property.
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
                    writer.write_object_value("alertImpact", @alert_impact)
                    writer.write_string_value("alertRecordId", @alert_record_id)
                    writer.write_string_value("alertRuleId", @alert_rule_id)
                    writer.write_string_value("alertRuleName", @alert_rule_name)
                    writer.write_enum_value("alertRuleTemplate", @alert_rule_template)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isPortalNotificationSent", @is_portal_notification_sent)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("severity", @severity)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the severity property value. The associated alert rule severity. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
                ## @return a rule_severity_type
                ## 
                def severity
                    return @severity
                end
                ## 
                ## Sets the severity property value. The associated alert rule severity. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
                ## @param value Value to set for the severity property.
                ## @return a void
                ## 
                def severity=(value)
                    @severity = value
                end
            end
        end
    end
end
