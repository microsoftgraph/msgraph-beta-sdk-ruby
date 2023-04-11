require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class WindowsProtectionState < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The anti-malware version for the managed device. Optional. Read-only.
                @anti_malware_version
                ## 
                # A flag indicating whether attention is required for the managed device. Optional. Read-only.
                @attention_required
                ## 
                # A flag indicating whether the managed device has been deleted. Optional. Read-only.
                @device_deleted
                ## 
                # The date and time the device property has been refreshed. Optional. Read-only.
                @device_property_refresh_date_time
                ## 
                # The anti-virus engine version for the managed device. Optional. Read-only.
                @engine_version
                ## 
                # A flag indicating whether quick scan is overdue for the managed device. Optional. Read-only.
                @full_scan_overdue
                ## 
                # A flag indicating whether full scan is overdue for the managed device. Optional. Read-only.
                @full_scan_required
                ## 
                # The date and time a full scan was completed. Optional. Read-only.
                @last_full_scan_date_time
                ## 
                # The version anti-malware version used to perform the last full scan. Optional. Read-only.
                @last_full_scan_signature_version
                ## 
                # The date and time a quick scan was completed. Optional. Read-only.
                @last_quick_scan_date_time
                ## 
                # The version anti-malware version used to perform the last full scan. Optional. Read-only.
                @last_quick_scan_signature_version
                ## 
                # Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
                @last_refreshed_date_time
                ## 
                # The date and time the protection state was last reported for the managed device. Optional. Read-only.
                @last_reported_date_time
                ## 
                # A flag indicating whether malware protection is enabled for the managed device. Optional. Read-only.
                @malware_protection_enabled
                ## 
                # The health state for the managed device. Optional. Read-only.
                @managed_device_health_state
                ## 
                # The unique identifier for the managed device. Optional. Read-only.
                @managed_device_id
                ## 
                # The display name for the managed device. Optional. Read-only.
                @managed_device_name
                ## 
                # A flag indicating whether the network inspection system is enabled. Optional. Read-only.
                @network_inspection_system_enabled
                ## 
                # A flag indicating weather a quick scan is overdue. Optional. Read-only.
                @quick_scan_overdue
                ## 
                # A flag indicating whether real time protection is enabled. Optional. Read-only.
                @real_time_protection_enabled
                ## 
                # A flag indicating whether a reboot is required. Optional. Read-only.
                @reboot_required
                ## 
                # A flag indicating whether an signature update is overdue. Optional. Read-only.
                @signature_update_overdue
                ## 
                # The signature version for the managed device. Optional. Read-only.
                @signature_version
                ## 
                # The display name for the managed tenant. Optional. Read-only.
                @tenant_display_name
                ## 
                # The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
                @tenant_id
                ## 
                ## Gets the antiMalwareVersion property value. The anti-malware version for the managed device. Optional. Read-only.
                ## @return a string
                ## 
                def anti_malware_version
                    return @anti_malware_version
                end
                ## 
                ## Sets the antiMalwareVersion property value. The anti-malware version for the managed device. Optional. Read-only.
                ## @param value Value to set for the anti_malware_version property.
                ## @return a void
                ## 
                def anti_malware_version=(value)
                    @anti_malware_version = value
                end
                ## 
                ## Gets the attentionRequired property value. A flag indicating whether attention is required for the managed device. Optional. Read-only.
                ## @return a boolean
                ## 
                def attention_required
                    return @attention_required
                end
                ## 
                ## Sets the attentionRequired property value. A flag indicating whether attention is required for the managed device. Optional. Read-only.
                ## @param value Value to set for the attention_required property.
                ## @return a void
                ## 
                def attention_required=(value)
                    @attention_required = value
                end
                ## 
                ## Instantiates a new WindowsProtectionState and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a windows_protection_state
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WindowsProtectionState.new
                end
                ## 
                ## Gets the deviceDeleted property value. A flag indicating whether the managed device has been deleted. Optional. Read-only.
                ## @return a boolean
                ## 
                def device_deleted
                    return @device_deleted
                end
                ## 
                ## Sets the deviceDeleted property value. A flag indicating whether the managed device has been deleted. Optional. Read-only.
                ## @param value Value to set for the device_deleted property.
                ## @return a void
                ## 
                def device_deleted=(value)
                    @device_deleted = value
                end
                ## 
                ## Gets the devicePropertyRefreshDateTime property value. The date and time the device property has been refreshed. Optional. Read-only.
                ## @return a date_time
                ## 
                def device_property_refresh_date_time
                    return @device_property_refresh_date_time
                end
                ## 
                ## Sets the devicePropertyRefreshDateTime property value. The date and time the device property has been refreshed. Optional. Read-only.
                ## @param value Value to set for the device_property_refresh_date_time property.
                ## @return a void
                ## 
                def device_property_refresh_date_time=(value)
                    @device_property_refresh_date_time = value
                end
                ## 
                ## Gets the engineVersion property value. The anti-virus engine version for the managed device. Optional. Read-only.
                ## @return a string
                ## 
                def engine_version
                    return @engine_version
                end
                ## 
                ## Sets the engineVersion property value. The anti-virus engine version for the managed device. Optional. Read-only.
                ## @param value Value to set for the engine_version property.
                ## @return a void
                ## 
                def engine_version=(value)
                    @engine_version = value
                end
                ## 
                ## Gets the fullScanOverdue property value. A flag indicating whether quick scan is overdue for the managed device. Optional. Read-only.
                ## @return a boolean
                ## 
                def full_scan_overdue
                    return @full_scan_overdue
                end
                ## 
                ## Sets the fullScanOverdue property value. A flag indicating whether quick scan is overdue for the managed device. Optional. Read-only.
                ## @param value Value to set for the full_scan_overdue property.
                ## @return a void
                ## 
                def full_scan_overdue=(value)
                    @full_scan_overdue = value
                end
                ## 
                ## Gets the fullScanRequired property value. A flag indicating whether full scan is overdue for the managed device. Optional. Read-only.
                ## @return a boolean
                ## 
                def full_scan_required
                    return @full_scan_required
                end
                ## 
                ## Sets the fullScanRequired property value. A flag indicating whether full scan is overdue for the managed device. Optional. Read-only.
                ## @param value Value to set for the full_scan_required property.
                ## @return a void
                ## 
                def full_scan_required=(value)
                    @full_scan_required = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "antiMalwareVersion" => lambda {|n| @anti_malware_version = n.get_string_value() },
                        "attentionRequired" => lambda {|n| @attention_required = n.get_boolean_value() },
                        "deviceDeleted" => lambda {|n| @device_deleted = n.get_boolean_value() },
                        "devicePropertyRefreshDateTime" => lambda {|n| @device_property_refresh_date_time = n.get_date_time_value() },
                        "engineVersion" => lambda {|n| @engine_version = n.get_string_value() },
                        "fullScanOverdue" => lambda {|n| @full_scan_overdue = n.get_boolean_value() },
                        "fullScanRequired" => lambda {|n| @full_scan_required = n.get_boolean_value() },
                        "lastFullScanDateTime" => lambda {|n| @last_full_scan_date_time = n.get_date_time_value() },
                        "lastFullScanSignatureVersion" => lambda {|n| @last_full_scan_signature_version = n.get_string_value() },
                        "lastQuickScanDateTime" => lambda {|n| @last_quick_scan_date_time = n.get_date_time_value() },
                        "lastQuickScanSignatureVersion" => lambda {|n| @last_quick_scan_signature_version = n.get_string_value() },
                        "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                        "lastReportedDateTime" => lambda {|n| @last_reported_date_time = n.get_date_time_value() },
                        "malwareProtectionEnabled" => lambda {|n| @malware_protection_enabled = n.get_boolean_value() },
                        "managedDeviceHealthState" => lambda {|n| @managed_device_health_state = n.get_string_value() },
                        "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                        "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                        "networkInspectionSystemEnabled" => lambda {|n| @network_inspection_system_enabled = n.get_boolean_value() },
                        "quickScanOverdue" => lambda {|n| @quick_scan_overdue = n.get_boolean_value() },
                        "realTimeProtectionEnabled" => lambda {|n| @real_time_protection_enabled = n.get_boolean_value() },
                        "rebootRequired" => lambda {|n| @reboot_required = n.get_boolean_value() },
                        "signatureUpdateOverdue" => lambda {|n| @signature_update_overdue = n.get_boolean_value() },
                        "signatureVersion" => lambda {|n| @signature_version = n.get_string_value() },
                        "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the lastFullScanDateTime property value. The date and time a full scan was completed. Optional. Read-only.
                ## @return a date_time
                ## 
                def last_full_scan_date_time
                    return @last_full_scan_date_time
                end
                ## 
                ## Sets the lastFullScanDateTime property value. The date and time a full scan was completed. Optional. Read-only.
                ## @param value Value to set for the last_full_scan_date_time property.
                ## @return a void
                ## 
                def last_full_scan_date_time=(value)
                    @last_full_scan_date_time = value
                end
                ## 
                ## Gets the lastFullScanSignatureVersion property value. The version anti-malware version used to perform the last full scan. Optional. Read-only.
                ## @return a string
                ## 
                def last_full_scan_signature_version
                    return @last_full_scan_signature_version
                end
                ## 
                ## Sets the lastFullScanSignatureVersion property value. The version anti-malware version used to perform the last full scan. Optional. Read-only.
                ## @param value Value to set for the last_full_scan_signature_version property.
                ## @return a void
                ## 
                def last_full_scan_signature_version=(value)
                    @last_full_scan_signature_version = value
                end
                ## 
                ## Gets the lastQuickScanDateTime property value. The date and time a quick scan was completed. Optional. Read-only.
                ## @return a date_time
                ## 
                def last_quick_scan_date_time
                    return @last_quick_scan_date_time
                end
                ## 
                ## Sets the lastQuickScanDateTime property value. The date and time a quick scan was completed. Optional. Read-only.
                ## @param value Value to set for the last_quick_scan_date_time property.
                ## @return a void
                ## 
                def last_quick_scan_date_time=(value)
                    @last_quick_scan_date_time = value
                end
                ## 
                ## Gets the lastQuickScanSignatureVersion property value. The version anti-malware version used to perform the last full scan. Optional. Read-only.
                ## @return a string
                ## 
                def last_quick_scan_signature_version
                    return @last_quick_scan_signature_version
                end
                ## 
                ## Sets the lastQuickScanSignatureVersion property value. The version anti-malware version used to perform the last full scan. Optional. Read-only.
                ## @param value Value to set for the last_quick_scan_signature_version property.
                ## @return a void
                ## 
                def last_quick_scan_signature_version=(value)
                    @last_quick_scan_signature_version = value
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
                ## @param value Value to set for the last_refreshed_date_time property.
                ## @return a void
                ## 
                def last_refreshed_date_time=(value)
                    @last_refreshed_date_time = value
                end
                ## 
                ## Gets the lastReportedDateTime property value. The date and time the protection state was last reported for the managed device. Optional. Read-only.
                ## @return a date_time
                ## 
                def last_reported_date_time
                    return @last_reported_date_time
                end
                ## 
                ## Sets the lastReportedDateTime property value. The date and time the protection state was last reported for the managed device. Optional. Read-only.
                ## @param value Value to set for the last_reported_date_time property.
                ## @return a void
                ## 
                def last_reported_date_time=(value)
                    @last_reported_date_time = value
                end
                ## 
                ## Gets the malwareProtectionEnabled property value. A flag indicating whether malware protection is enabled for the managed device. Optional. Read-only.
                ## @return a boolean
                ## 
                def malware_protection_enabled
                    return @malware_protection_enabled
                end
                ## 
                ## Sets the malwareProtectionEnabled property value. A flag indicating whether malware protection is enabled for the managed device. Optional. Read-only.
                ## @param value Value to set for the malware_protection_enabled property.
                ## @return a void
                ## 
                def malware_protection_enabled=(value)
                    @malware_protection_enabled = value
                end
                ## 
                ## Gets the managedDeviceHealthState property value. The health state for the managed device. Optional. Read-only.
                ## @return a string
                ## 
                def managed_device_health_state
                    return @managed_device_health_state
                end
                ## 
                ## Sets the managedDeviceHealthState property value. The health state for the managed device. Optional. Read-only.
                ## @param value Value to set for the managed_device_health_state property.
                ## @return a void
                ## 
                def managed_device_health_state=(value)
                    @managed_device_health_state = value
                end
                ## 
                ## Gets the managedDeviceId property value. The unique identifier for the managed device. Optional. Read-only.
                ## @return a string
                ## 
                def managed_device_id
                    return @managed_device_id
                end
                ## 
                ## Sets the managedDeviceId property value. The unique identifier for the managed device. Optional. Read-only.
                ## @param value Value to set for the managed_device_id property.
                ## @return a void
                ## 
                def managed_device_id=(value)
                    @managed_device_id = value
                end
                ## 
                ## Gets the managedDeviceName property value. The display name for the managed device. Optional. Read-only.
                ## @return a string
                ## 
                def managed_device_name
                    return @managed_device_name
                end
                ## 
                ## Sets the managedDeviceName property value. The display name for the managed device. Optional. Read-only.
                ## @param value Value to set for the managed_device_name property.
                ## @return a void
                ## 
                def managed_device_name=(value)
                    @managed_device_name = value
                end
                ## 
                ## Gets the networkInspectionSystemEnabled property value. A flag indicating whether the network inspection system is enabled. Optional. Read-only.
                ## @return a boolean
                ## 
                def network_inspection_system_enabled
                    return @network_inspection_system_enabled
                end
                ## 
                ## Sets the networkInspectionSystemEnabled property value. A flag indicating whether the network inspection system is enabled. Optional. Read-only.
                ## @param value Value to set for the network_inspection_system_enabled property.
                ## @return a void
                ## 
                def network_inspection_system_enabled=(value)
                    @network_inspection_system_enabled = value
                end
                ## 
                ## Gets the quickScanOverdue property value. A flag indicating weather a quick scan is overdue. Optional. Read-only.
                ## @return a boolean
                ## 
                def quick_scan_overdue
                    return @quick_scan_overdue
                end
                ## 
                ## Sets the quickScanOverdue property value. A flag indicating weather a quick scan is overdue. Optional. Read-only.
                ## @param value Value to set for the quick_scan_overdue property.
                ## @return a void
                ## 
                def quick_scan_overdue=(value)
                    @quick_scan_overdue = value
                end
                ## 
                ## Gets the realTimeProtectionEnabled property value. A flag indicating whether real time protection is enabled. Optional. Read-only.
                ## @return a boolean
                ## 
                def real_time_protection_enabled
                    return @real_time_protection_enabled
                end
                ## 
                ## Sets the realTimeProtectionEnabled property value. A flag indicating whether real time protection is enabled. Optional. Read-only.
                ## @param value Value to set for the real_time_protection_enabled property.
                ## @return a void
                ## 
                def real_time_protection_enabled=(value)
                    @real_time_protection_enabled = value
                end
                ## 
                ## Gets the rebootRequired property value. A flag indicating whether a reboot is required. Optional. Read-only.
                ## @return a boolean
                ## 
                def reboot_required
                    return @reboot_required
                end
                ## 
                ## Sets the rebootRequired property value. A flag indicating whether a reboot is required. Optional. Read-only.
                ## @param value Value to set for the reboot_required property.
                ## @return a void
                ## 
                def reboot_required=(value)
                    @reboot_required = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("antiMalwareVersion", @anti_malware_version)
                    writer.write_boolean_value("attentionRequired", @attention_required)
                    writer.write_boolean_value("deviceDeleted", @device_deleted)
                    writer.write_date_time_value("devicePropertyRefreshDateTime", @device_property_refresh_date_time)
                    writer.write_string_value("engineVersion", @engine_version)
                    writer.write_boolean_value("fullScanOverdue", @full_scan_overdue)
                    writer.write_boolean_value("fullScanRequired", @full_scan_required)
                    writer.write_date_time_value("lastFullScanDateTime", @last_full_scan_date_time)
                    writer.write_string_value("lastFullScanSignatureVersion", @last_full_scan_signature_version)
                    writer.write_date_time_value("lastQuickScanDateTime", @last_quick_scan_date_time)
                    writer.write_string_value("lastQuickScanSignatureVersion", @last_quick_scan_signature_version)
                    writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
                    writer.write_date_time_value("lastReportedDateTime", @last_reported_date_time)
                    writer.write_boolean_value("malwareProtectionEnabled", @malware_protection_enabled)
                    writer.write_string_value("managedDeviceHealthState", @managed_device_health_state)
                    writer.write_string_value("managedDeviceId", @managed_device_id)
                    writer.write_string_value("managedDeviceName", @managed_device_name)
                    writer.write_boolean_value("networkInspectionSystemEnabled", @network_inspection_system_enabled)
                    writer.write_boolean_value("quickScanOverdue", @quick_scan_overdue)
                    writer.write_boolean_value("realTimeProtectionEnabled", @real_time_protection_enabled)
                    writer.write_boolean_value("rebootRequired", @reboot_required)
                    writer.write_boolean_value("signatureUpdateOverdue", @signature_update_overdue)
                    writer.write_string_value("signatureVersion", @signature_version)
                    writer.write_string_value("tenantDisplayName", @tenant_display_name)
                    writer.write_string_value("tenantId", @tenant_id)
                end
                ## 
                ## Gets the signatureUpdateOverdue property value. A flag indicating whether an signature update is overdue. Optional. Read-only.
                ## @return a boolean
                ## 
                def signature_update_overdue
                    return @signature_update_overdue
                end
                ## 
                ## Sets the signatureUpdateOverdue property value. A flag indicating whether an signature update is overdue. Optional. Read-only.
                ## @param value Value to set for the signature_update_overdue property.
                ## @return a void
                ## 
                def signature_update_overdue=(value)
                    @signature_update_overdue = value
                end
                ## 
                ## Gets the signatureVersion property value. The signature version for the managed device. Optional. Read-only.
                ## @return a string
                ## 
                def signature_version
                    return @signature_version
                end
                ## 
                ## Sets the signatureVersion property value. The signature version for the managed device. Optional. Read-only.
                ## @param value Value to set for the signature_version property.
                ## @return a void
                ## 
                def signature_version=(value)
                    @signature_version = value
                end
                ## 
                ## Gets the tenantDisplayName property value. The display name for the managed tenant. Optional. Read-only.
                ## @return a string
                ## 
                def tenant_display_name
                    return @tenant_display_name
                end
                ## 
                ## Sets the tenantDisplayName property value. The display name for the managed tenant. Optional. Read-only.
                ## @param value Value to set for the tenant_display_name property.
                ## @return a void
                ## 
                def tenant_display_name=(value)
                    @tenant_display_name = value
                end
                ## 
                ## Gets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
                ## @return a string
                ## 
                def tenant_id
                    return @tenant_id
                end
                ## 
                ## Sets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
                ## @param value Value to set for the tenant_id property.
                ## @return a void
                ## 
                def tenant_id=(value)
                    @tenant_id = value
                end
            end
        end
    end
end
