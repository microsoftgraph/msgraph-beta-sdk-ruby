require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsDeviceCompliancePolicySettingStateSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of devices in a conflict state. Optional. Read-only.
            @conflict_device_count
            ## 
            # The number of devices in an error state. Optional. Read-only.
            @error_device_count
            ## 
            # The number of devices in a failed state. Optional. Read-only.
            @failed_device_count
            ## 
            # The identifer for the Microsoft Intune account. Required. Read-only.
            @intune_account_id
            ## 
            # The identifier for the Intune setting. Optional. Read-only.
            @intune_setting_id
            ## 
            # Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
            @last_refreshed_date_time
            ## 
            # The number of devices in a not applicable state. Optional. Read-only.
            @not_applicable_device_count
            ## 
            # The number of devices in a pending state. Optional. Read-only.
            @pending_device_count
            ## 
            # The type for the device compliance policy. Optional. Read-only.
            @policy_type
            ## 
            # The name for the setting within the device compliance policy. Optional. Read-only.
            @setting_name
            ## 
            # The number of devices in a succeeded state. Optional. Read-only.
            @succeeded_device_count
            ## 
            # The display name for the managed tenant. Required. Read-only.
            @tenant_display_name
            ## 
            # The Microsoft Entra tenant identifier for the managed tenant. Required. Read-only.
            @tenant_id
            ## 
            ## Gets the conflictDeviceCount property value. The number of devices in a conflict state. Optional. Read-only.
            ## @return a integer
            ## 
            def conflict_device_count
                return @conflict_device_count
            end
            ## 
            ## Sets the conflictDeviceCount property value. The number of devices in a conflict state. Optional. Read-only.
            ## @param value Value to set for the conflictDeviceCount property.
            ## @return a void
            ## 
            def conflict_device_count=(value)
                @conflict_device_count = value
            end
            ## 
            ## Instantiates a new managedTenantsDeviceCompliancePolicySettingStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_device_compliance_policy_setting_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsDeviceCompliancePolicySettingStateSummary.new
            end
            ## 
            ## Gets the errorDeviceCount property value. The number of devices in an error state. Optional. Read-only.
            ## @return a integer
            ## 
            def error_device_count
                return @error_device_count
            end
            ## 
            ## Sets the errorDeviceCount property value. The number of devices in an error state. Optional. Read-only.
            ## @param value Value to set for the errorDeviceCount property.
            ## @return a void
            ## 
            def error_device_count=(value)
                @error_device_count = value
            end
            ## 
            ## Gets the failedDeviceCount property value. The number of devices in a failed state. Optional. Read-only.
            ## @return a integer
            ## 
            def failed_device_count
                return @failed_device_count
            end
            ## 
            ## Sets the failedDeviceCount property value. The number of devices in a failed state. Optional. Read-only.
            ## @param value Value to set for the failedDeviceCount property.
            ## @return a void
            ## 
            def failed_device_count=(value)
                @failed_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conflictDeviceCount" => lambda {|n| @conflict_device_count = n.get_number_value() },
                    "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                    "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
                    "intuneAccountId" => lambda {|n| @intune_account_id = n.get_string_value() },
                    "intuneSettingId" => lambda {|n| @intune_setting_id = n.get_string_value() },
                    "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                    "notApplicableDeviceCount" => lambda {|n| @not_applicable_device_count = n.get_number_value() },
                    "pendingDeviceCount" => lambda {|n| @pending_device_count = n.get_number_value() },
                    "policyType" => lambda {|n| @policy_type = n.get_string_value() },
                    "settingName" => lambda {|n| @setting_name = n.get_string_value() },
                    "succeededDeviceCount" => lambda {|n| @succeeded_device_count = n.get_number_value() },
                    "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the intuneAccountId property value. The identifer for the Microsoft Intune account. Required. Read-only.
            ## @return a string
            ## 
            def intune_account_id
                return @intune_account_id
            end
            ## 
            ## Sets the intuneAccountId property value. The identifer for the Microsoft Intune account. Required. Read-only.
            ## @param value Value to set for the intuneAccountId property.
            ## @return a void
            ## 
            def intune_account_id=(value)
                @intune_account_id = value
            end
            ## 
            ## Gets the intuneSettingId property value. The identifier for the Intune setting. Optional. Read-only.
            ## @return a string
            ## 
            def intune_setting_id
                return @intune_setting_id
            end
            ## 
            ## Sets the intuneSettingId property value. The identifier for the Intune setting. Optional. Read-only.
            ## @param value Value to set for the intuneSettingId property.
            ## @return a void
            ## 
            def intune_setting_id=(value)
                @intune_setting_id = value
            end
            ## 
            ## Gets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
            ## @return a date_time
            ## 
            def last_refreshed_date_time
                return @last_refreshed_date_time
            end
            ## 
            ## Sets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
            ## @param value Value to set for the lastRefreshedDateTime property.
            ## @return a void
            ## 
            def last_refreshed_date_time=(value)
                @last_refreshed_date_time = value
            end
            ## 
            ## Gets the notApplicableDeviceCount property value. The number of devices in a not applicable state. Optional. Read-only.
            ## @return a integer
            ## 
            def not_applicable_device_count
                return @not_applicable_device_count
            end
            ## 
            ## Sets the notApplicableDeviceCount property value. The number of devices in a not applicable state. Optional. Read-only.
            ## @param value Value to set for the notApplicableDeviceCount property.
            ## @return a void
            ## 
            def not_applicable_device_count=(value)
                @not_applicable_device_count = value
            end
            ## 
            ## Gets the pendingDeviceCount property value. The number of devices in a pending state. Optional. Read-only.
            ## @return a integer
            ## 
            def pending_device_count
                return @pending_device_count
            end
            ## 
            ## Sets the pendingDeviceCount property value. The number of devices in a pending state. Optional. Read-only.
            ## @param value Value to set for the pendingDeviceCount property.
            ## @return a void
            ## 
            def pending_device_count=(value)
                @pending_device_count = value
            end
            ## 
            ## Gets the policyType property value. The type for the device compliance policy. Optional. Read-only.
            ## @return a string
            ## 
            def policy_type
                return @policy_type
            end
            ## 
            ## Sets the policyType property value. The type for the device compliance policy. Optional. Read-only.
            ## @param value Value to set for the policyType property.
            ## @return a void
            ## 
            def policy_type=(value)
                @policy_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("conflictDeviceCount", @conflict_device_count)
                writer.write_number_value("errorDeviceCount", @error_device_count)
                writer.write_number_value("failedDeviceCount", @failed_device_count)
                writer.write_string_value("intuneAccountId", @intune_account_id)
                writer.write_string_value("intuneSettingId", @intune_setting_id)
                writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
                writer.write_number_value("notApplicableDeviceCount", @not_applicable_device_count)
                writer.write_number_value("pendingDeviceCount", @pending_device_count)
                writer.write_string_value("policyType", @policy_type)
                writer.write_string_value("settingName", @setting_name)
                writer.write_number_value("succeededDeviceCount", @succeeded_device_count)
                writer.write_string_value("tenantDisplayName", @tenant_display_name)
                writer.write_string_value("tenantId", @tenant_id)
            end
            ## 
            ## Gets the settingName property value. The name for the setting within the device compliance policy. Optional. Read-only.
            ## @return a string
            ## 
            def setting_name
                return @setting_name
            end
            ## 
            ## Sets the settingName property value. The name for the setting within the device compliance policy. Optional. Read-only.
            ## @param value Value to set for the settingName property.
            ## @return a void
            ## 
            def setting_name=(value)
                @setting_name = value
            end
            ## 
            ## Gets the succeededDeviceCount property value. The number of devices in a succeeded state. Optional. Read-only.
            ## @return a integer
            ## 
            def succeeded_device_count
                return @succeeded_device_count
            end
            ## 
            ## Sets the succeededDeviceCount property value. The number of devices in a succeeded state. Optional. Read-only.
            ## @param value Value to set for the succeededDeviceCount property.
            ## @return a void
            ## 
            def succeeded_device_count=(value)
                @succeeded_device_count = value
            end
            ## 
            ## Gets the tenantDisplayName property value. The display name for the managed tenant. Required. Read-only.
            ## @return a string
            ## 
            def tenant_display_name
                return @tenant_display_name
            end
            ## 
            ## Sets the tenantDisplayName property value. The display name for the managed tenant. Required. Read-only.
            ## @param value Value to set for the tenantDisplayName property.
            ## @return a void
            ## 
            def tenant_display_name=(value)
                @tenant_display_name = value
            end
            ## 
            ## Gets the tenantId property value. The Microsoft Entra tenant identifier for the managed tenant. Required. Read-only.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The Microsoft Entra tenant identifier for the managed tenant. Required. Read-only.
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
