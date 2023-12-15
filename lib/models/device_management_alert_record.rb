require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementAlertRecord < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The impact of the alert event. Consists of a list of key-value pair and a number followed by the aggregation type. For example, 6 affectedCloudPcCount means that 6 Cloud PCs are affected. 12 affectedCloudPcPercentage means 12% of Cloud PCs are affected. The list of key-value pair indicates the details of the alert impact.
            @alert_impact
            ## 
            # The corresponding ID of the alert rule.
            @alert_rule_id
            ## 
            # The rule template of the alert event. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue, cloudPcInGracePeriodScenario. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: cloudPcInGracePeriodScenario.
            @alert_rule_template
            ## 
            # The date and time when the alert event was detected. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @detected_date_time
            ## 
            # The display name of the alert record.
            @display_name
            ## 
            # The date and time when the alert record was last updated. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_updated_date_time
            ## 
            # The date and time when the alert event was resolved. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @resolved_date_time
            ## 
            # The severity of the alert event. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
            @severity
            ## 
            # The status of the alert record. The possible values are: active, resolved, unknownFutureValue.
            @status
            ## 
            ## Gets the alertImpact property value. The impact of the alert event. Consists of a list of key-value pair and a number followed by the aggregation type. For example, 6 affectedCloudPcCount means that 6 Cloud PCs are affected. 12 affectedCloudPcPercentage means 12% of Cloud PCs are affected. The list of key-value pair indicates the details of the alert impact.
            ## @return a device_management_alert_impact
            ## 
            def alert_impact
                return @alert_impact
            end
            ## 
            ## Sets the alertImpact property value. The impact of the alert event. Consists of a list of key-value pair and a number followed by the aggregation type. For example, 6 affectedCloudPcCount means that 6 Cloud PCs are affected. 12 affectedCloudPcPercentage means 12% of Cloud PCs are affected. The list of key-value pair indicates the details of the alert impact.
            ## @param value Value to set for the alertImpact property.
            ## @return a void
            ## 
            def alert_impact=(value)
                @alert_impact = value
            end
            ## 
            ## Gets the alertRuleId property value. The corresponding ID of the alert rule.
            ## @return a string
            ## 
            def alert_rule_id
                return @alert_rule_id
            end
            ## 
            ## Sets the alertRuleId property value. The corresponding ID of the alert rule.
            ## @param value Value to set for the alertRuleId property.
            ## @return a void
            ## 
            def alert_rule_id=(value)
                @alert_rule_id = value
            end
            ## 
            ## Gets the alertRuleTemplate property value. The rule template of the alert event. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue, cloudPcInGracePeriodScenario. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: cloudPcInGracePeriodScenario.
            ## @return a device_management_alert_rule_template
            ## 
            def alert_rule_template
                return @alert_rule_template
            end
            ## 
            ## Sets the alertRuleTemplate property value. The rule template of the alert event. The possible values are: cloudPcProvisionScenario, cloudPcImageUploadScenario, cloudPcOnPremiseNetworkConnectionCheckScenario, unknownFutureValue, cloudPcInGracePeriodScenario. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: cloudPcInGracePeriodScenario.
            ## @param value Value to set for the alertRuleTemplate property.
            ## @return a void
            ## 
            def alert_rule_template=(value)
                @alert_rule_template = value
            end
            ## 
            ## Instantiates a new deviceManagementAlertRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_alert_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementAlertRecord.new
            end
            ## 
            ## Gets the detectedDateTime property value. The date and time when the alert event was detected. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def detected_date_time
                return @detected_date_time
            end
            ## 
            ## Sets the detectedDateTime property value. The date and time when the alert event was detected. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the detectedDateTime property.
            ## @return a void
            ## 
            def detected_date_time=(value)
                @detected_date_time = value
            end
            ## 
            ## Gets the displayName property value. The display name of the alert record.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the alert record.
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
                    "alertImpact" => lambda {|n| @alert_impact = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementAlertImpact.create_from_discriminator_value(pn) }) },
                    "alertRuleId" => lambda {|n| @alert_rule_id = n.get_string_value() },
                    "alertRuleTemplate" => lambda {|n| @alert_rule_template = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementAlertRuleTemplate) },
                    "detectedDateTime" => lambda {|n| @detected_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "resolvedDateTime" => lambda {|n| @resolved_date_time = n.get_date_time_value() },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementRuleSeverityType) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementAlertStatusType) },
                })
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. The date and time when the alert record was last updated. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. The date and time when the alert record was last updated. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastUpdatedDateTime property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the resolvedDateTime property value. The date and time when the alert event was resolved. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def resolved_date_time
                return @resolved_date_time
            end
            ## 
            ## Sets the resolvedDateTime property value. The date and time when the alert event was resolved. The Timestamp type represents date and time information using ISO 8601 format. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the resolvedDateTime property.
            ## @return a void
            ## 
            def resolved_date_time=(value)
                @resolved_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("alertImpact", @alert_impact)
                writer.write_string_value("alertRuleId", @alert_rule_id)
                writer.write_enum_value("alertRuleTemplate", @alert_rule_template)
                writer.write_date_time_value("detectedDateTime", @detected_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_date_time_value("resolvedDateTime", @resolved_date_time)
                writer.write_enum_value("severity", @severity)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the severity property value. The severity of the alert event. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
            ## @return a device_management_rule_severity_type
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. The severity of the alert event. The possible values are: unknown, informational, warning, critical, unknownFutureValue.
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
            ## 
            ## Gets the status property value. The status of the alert record. The possible values are: active, resolved, unknownFutureValue.
            ## @return a device_management_alert_status_type
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the alert record. The possible values are: active, resolved, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
