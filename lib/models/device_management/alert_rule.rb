require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './device_management'

module MicrosoftGraphBeta::Models::DeviceManagement
    class AlertRule < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The rule template of the alert event. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue.
        @alert_rule_template
        ## 
        # The rule description.
        @description
        ## 
        # The display name of the rule.
        @display_name
        ## 
        # The status of the rule that indicates whether the rule is enabled or disabled. If true, the rule is enabled; otherwise, the rule is disabled.
        @enabled
        ## 
        # Indicates whether the rule is a system rule. If true, the rule is a system rule; otherwise, the rule is a custom defined rule and can be edited. System rules are built-in and only a few properties can be edited.
        @is_system_rule
        ## 
        # The notification channels of the rule selected by the user.
        @notification_channels
        ## 
        # The severity of the rule. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
        @severity
        ## 
        # The conditions to send alerts. For example, send alert when provisioning has failed for greater than or equal to 6 Cloud PCs.
        @threshold
        ## 
        ## Gets the alertRuleTemplate property value. The rule template of the alert event. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue.
        ## @return a alert_rule_template
        ## 
        def alert_rule_template
            return @alert_rule_template
        end
        ## 
        ## Sets the alertRuleTemplate property value. The rule template of the alert event. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue.
        ## @param value Value to set for the alertRuleTemplate property.
        ## @return a void
        ## 
        def alert_rule_template=(value)
            @alert_rule_template = value
        end
        ## 
        ## Instantiates a new alertRule and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a alert_rule
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AlertRule.new
        end
        ## 
        ## Gets the description property value. The rule description.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The rule description.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The display name of the rule.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name of the rule.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the enabled property value. The status of the rule that indicates whether the rule is enabled or disabled. If true, the rule is enabled; otherwise, the rule is disabled.
        ## @return a boolean
        ## 
        def enabled
            return @enabled
        end
        ## 
        ## Sets the enabled property value. The status of the rule that indicates whether the rule is enabled or disabled. If true, the rule is enabled; otherwise, the rule is disabled.
        ## @param value Value to set for the enabled property.
        ## @return a void
        ## 
        def enabled=(value)
            @enabled = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "alertRuleTemplate" => lambda {|n| @alert_rule_template = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagement::AlertRuleTemplate) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                "isSystemRule" => lambda {|n| @is_system_rule = n.get_boolean_value() },
                "notificationChannels" => lambda {|n| @notification_channels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagement::NotificationChannel.create_from_discriminator_value(pn) }) },
                "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagement::RuleSeverityType) },
                "threshold" => lambda {|n| @threshold = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagement::RuleThreshold.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the isSystemRule property value. Indicates whether the rule is a system rule. If true, the rule is a system rule; otherwise, the rule is a custom defined rule and can be edited. System rules are built-in and only a few properties can be edited.
        ## @return a boolean
        ## 
        def is_system_rule
            return @is_system_rule
        end
        ## 
        ## Sets the isSystemRule property value. Indicates whether the rule is a system rule. If true, the rule is a system rule; otherwise, the rule is a custom defined rule and can be edited. System rules are built-in and only a few properties can be edited.
        ## @param value Value to set for the isSystemRule property.
        ## @return a void
        ## 
        def is_system_rule=(value)
            @is_system_rule = value
        end
        ## 
        ## Gets the notificationChannels property value. The notification channels of the rule selected by the user.
        ## @return a notification_channel
        ## 
        def notification_channels
            return @notification_channels
        end
        ## 
        ## Sets the notificationChannels property value. The notification channels of the rule selected by the user.
        ## @param value Value to set for the notificationChannels property.
        ## @return a void
        ## 
        def notification_channels=(value)
            @notification_channels = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("alertRuleTemplate", @alert_rule_template)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_boolean_value("enabled", @enabled)
            writer.write_boolean_value("isSystemRule", @is_system_rule)
            writer.write_collection_of_object_values("notificationChannels", @notification_channels)
            writer.write_enum_value("severity", @severity)
            writer.write_object_value("threshold", @threshold)
        end
        ## 
        ## Gets the severity property value. The severity of the rule. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
        ## @return a rule_severity_type
        ## 
        def severity
            return @severity
        end
        ## 
        ## Sets the severity property value. The severity of the rule. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
        ## @param value Value to set for the severity property.
        ## @return a void
        ## 
        def severity=(value)
            @severity = value
        end
        ## 
        ## Gets the threshold property value. The conditions to send alerts. For example, send alert when provisioning has failed for greater than or equal to 6 Cloud PCs.
        ## @return a rule_threshold
        ## 
        def threshold
            return @threshold
        end
        ## 
        ## Sets the threshold property value. The conditions to send alerts. For example, send alert when provisioning has failed for greater than or equal to 6 Cloud PCs.
        ## @param value Value to set for the threshold property.
        ## @return a void
        ## 
        def threshold=(value)
            @threshold = value
        end
    end
end
