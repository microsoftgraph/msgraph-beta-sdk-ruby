require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsProtectionState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Current anti malware version
            @anti_malware_version
            ## 
            # Device malware list
            @detected_malware_state
            ## 
            # Computer's state (like clean or pending full scan or pending reboot etc). Possible values are: clean, fullScanPending, rebootPending, manualStepsPending, offlineScanPending, critical.
            @device_state
            ## 
            # Current endpoint protection engine's version
            @engine_version
            ## 
            # Full scan overdue or not?
            @full_scan_overdue
            ## 
            # Full scan required or not?
            @full_scan_required
            ## 
            # Indicates whether the device is a virtual machine.
            @is_virtual_machine
            ## 
            # Last quick scan datetime
            @last_full_scan_date_time
            ## 
            # Last full scan signature version
            @last_full_scan_signature_version
            ## 
            # Last quick scan datetime
            @last_quick_scan_date_time
            ## 
            # Last quick scan signature version
            @last_quick_scan_signature_version
            ## 
            # Last device health status reported time
            @last_reported_date_time
            ## 
            # Anti malware is enabled or not
            @malware_protection_enabled
            ## 
            # Network inspection system enabled or not?
            @network_inspection_system_enabled
            ## 
            # Product Status of Windows Defender Antivirus. Possible values are: noStatus, serviceNotRunning, serviceStartedWithoutMalwareProtection, pendingFullScanDueToThreatAction, pendingRebootDueToThreatAction, pendingManualStepsDueToThreatAction, avSignaturesOutOfDate, asSignaturesOutOfDate, noQuickScanHappenedForSpecifiedPeriod, noFullScanHappenedForSpecifiedPeriod, systemInitiatedScanInProgress, systemInitiatedCleanInProgress, samplesPendingSubmission, productRunningInEvaluationMode, productRunningInNonGenuineMode, productExpired, offlineScanRequired, serviceShutdownAsPartOfSystemShutdown, threatRemediationFailedCritically, threatRemediationFailedNonCritically, noStatusFlagsSet, platformOutOfDate, platformUpdateInProgress, platformAboutToBeOutdated, signatureOrPlatformEndOfLifeIsPastOrIsImpending, windowsSModeSignaturesInUseOnNonWin10SInstall.
            @product_status
            ## 
            # Quick scan overdue or not?
            @quick_scan_overdue
            ## 
            # Real time protection is enabled or not?
            @real_time_protection_enabled
            ## 
            # Reboot required or not?
            @reboot_required
            ## 
            # Signature out of date or not?
            @signature_update_overdue
            ## 
            # Current malware definitions version
            @signature_version
            ## 
            # Indicates whether the Windows Defender tamper protection feature is enabled.
            @tamper_protection_enabled
            ## 
            ## Gets the antiMalwareVersion property value. Current anti malware version
            ## @return a string
            ## 
            def anti_malware_version
                return @anti_malware_version
            end
            ## 
            ## Sets the antiMalwareVersion property value. Current anti malware version
            ## @param value Value to set for the anti_malware_version property.
            ## @return a void
            ## 
            def anti_malware_version=(value)
                @anti_malware_version = value
            end
            ## 
            ## Instantiates a new windowsProtectionState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_protection_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsProtectionState.new
            end
            ## 
            ## Gets the detectedMalwareState property value. Device malware list
            ## @return a windows_device_malware_state
            ## 
            def detected_malware_state
                return @detected_malware_state
            end
            ## 
            ## Sets the detectedMalwareState property value. Device malware list
            ## @param value Value to set for the detected_malware_state property.
            ## @return a void
            ## 
            def detected_malware_state=(value)
                @detected_malware_state = value
            end
            ## 
            ## Gets the deviceState property value. Computer's state (like clean or pending full scan or pending reboot etc). Possible values are: clean, fullScanPending, rebootPending, manualStepsPending, offlineScanPending, critical.
            ## @return a windows_device_health_state
            ## 
            def device_state
                return @device_state
            end
            ## 
            ## Sets the deviceState property value. Computer's state (like clean or pending full scan or pending reboot etc). Possible values are: clean, fullScanPending, rebootPending, manualStepsPending, offlineScanPending, critical.
            ## @param value Value to set for the device_state property.
            ## @return a void
            ## 
            def device_state=(value)
                @device_state = value
            end
            ## 
            ## Gets the engineVersion property value. Current endpoint protection engine's version
            ## @return a string
            ## 
            def engine_version
                return @engine_version
            end
            ## 
            ## Sets the engineVersion property value. Current endpoint protection engine's version
            ## @param value Value to set for the engine_version property.
            ## @return a void
            ## 
            def engine_version=(value)
                @engine_version = value
            end
            ## 
            ## Gets the fullScanOverdue property value. Full scan overdue or not?
            ## @return a boolean
            ## 
            def full_scan_overdue
                return @full_scan_overdue
            end
            ## 
            ## Sets the fullScanOverdue property value. Full scan overdue or not?
            ## @param value Value to set for the full_scan_overdue property.
            ## @return a void
            ## 
            def full_scan_overdue=(value)
                @full_scan_overdue = value
            end
            ## 
            ## Gets the fullScanRequired property value. Full scan required or not?
            ## @return a boolean
            ## 
            def full_scan_required
                return @full_scan_required
            end
            ## 
            ## Sets the fullScanRequired property value. Full scan required or not?
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
                    "detectedMalwareState" => lambda {|n| @detected_malware_state = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDeviceMalwareState.create_from_discriminator_value(pn) }) },
                    "deviceState" => lambda {|n| @device_state = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsDeviceHealthState) },
                    "engineVersion" => lambda {|n| @engine_version = n.get_string_value() },
                    "fullScanOverdue" => lambda {|n| @full_scan_overdue = n.get_boolean_value() },
                    "fullScanRequired" => lambda {|n| @full_scan_required = n.get_boolean_value() },
                    "isVirtualMachine" => lambda {|n| @is_virtual_machine = n.get_boolean_value() },
                    "lastFullScanDateTime" => lambda {|n| @last_full_scan_date_time = n.get_date_time_value() },
                    "lastFullScanSignatureVersion" => lambda {|n| @last_full_scan_signature_version = n.get_string_value() },
                    "lastQuickScanDateTime" => lambda {|n| @last_quick_scan_date_time = n.get_date_time_value() },
                    "lastQuickScanSignatureVersion" => lambda {|n| @last_quick_scan_signature_version = n.get_string_value() },
                    "lastReportedDateTime" => lambda {|n| @last_reported_date_time = n.get_date_time_value() },
                    "malwareProtectionEnabled" => lambda {|n| @malware_protection_enabled = n.get_boolean_value() },
                    "networkInspectionSystemEnabled" => lambda {|n| @network_inspection_system_enabled = n.get_boolean_value() },
                    "productStatus" => lambda {|n| @product_status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsDefenderProductStatus) },
                    "quickScanOverdue" => lambda {|n| @quick_scan_overdue = n.get_boolean_value() },
                    "realTimeProtectionEnabled" => lambda {|n| @real_time_protection_enabled = n.get_boolean_value() },
                    "rebootRequired" => lambda {|n| @reboot_required = n.get_boolean_value() },
                    "signatureUpdateOverdue" => lambda {|n| @signature_update_overdue = n.get_boolean_value() },
                    "signatureVersion" => lambda {|n| @signature_version = n.get_string_value() },
                    "tamperProtectionEnabled" => lambda {|n| @tamper_protection_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isVirtualMachine property value. Indicates whether the device is a virtual machine.
            ## @return a boolean
            ## 
            def is_virtual_machine
                return @is_virtual_machine
            end
            ## 
            ## Sets the isVirtualMachine property value. Indicates whether the device is a virtual machine.
            ## @param value Value to set for the is_virtual_machine property.
            ## @return a void
            ## 
            def is_virtual_machine=(value)
                @is_virtual_machine = value
            end
            ## 
            ## Gets the lastFullScanDateTime property value. Last quick scan datetime
            ## @return a date_time
            ## 
            def last_full_scan_date_time
                return @last_full_scan_date_time
            end
            ## 
            ## Sets the lastFullScanDateTime property value. Last quick scan datetime
            ## @param value Value to set for the last_full_scan_date_time property.
            ## @return a void
            ## 
            def last_full_scan_date_time=(value)
                @last_full_scan_date_time = value
            end
            ## 
            ## Gets the lastFullScanSignatureVersion property value. Last full scan signature version
            ## @return a string
            ## 
            def last_full_scan_signature_version
                return @last_full_scan_signature_version
            end
            ## 
            ## Sets the lastFullScanSignatureVersion property value. Last full scan signature version
            ## @param value Value to set for the last_full_scan_signature_version property.
            ## @return a void
            ## 
            def last_full_scan_signature_version=(value)
                @last_full_scan_signature_version = value
            end
            ## 
            ## Gets the lastQuickScanDateTime property value. Last quick scan datetime
            ## @return a date_time
            ## 
            def last_quick_scan_date_time
                return @last_quick_scan_date_time
            end
            ## 
            ## Sets the lastQuickScanDateTime property value. Last quick scan datetime
            ## @param value Value to set for the last_quick_scan_date_time property.
            ## @return a void
            ## 
            def last_quick_scan_date_time=(value)
                @last_quick_scan_date_time = value
            end
            ## 
            ## Gets the lastQuickScanSignatureVersion property value. Last quick scan signature version
            ## @return a string
            ## 
            def last_quick_scan_signature_version
                return @last_quick_scan_signature_version
            end
            ## 
            ## Sets the lastQuickScanSignatureVersion property value. Last quick scan signature version
            ## @param value Value to set for the last_quick_scan_signature_version property.
            ## @return a void
            ## 
            def last_quick_scan_signature_version=(value)
                @last_quick_scan_signature_version = value
            end
            ## 
            ## Gets the lastReportedDateTime property value. Last device health status reported time
            ## @return a date_time
            ## 
            def last_reported_date_time
                return @last_reported_date_time
            end
            ## 
            ## Sets the lastReportedDateTime property value. Last device health status reported time
            ## @param value Value to set for the last_reported_date_time property.
            ## @return a void
            ## 
            def last_reported_date_time=(value)
                @last_reported_date_time = value
            end
            ## 
            ## Gets the malwareProtectionEnabled property value. Anti malware is enabled or not
            ## @return a boolean
            ## 
            def malware_protection_enabled
                return @malware_protection_enabled
            end
            ## 
            ## Sets the malwareProtectionEnabled property value. Anti malware is enabled or not
            ## @param value Value to set for the malware_protection_enabled property.
            ## @return a void
            ## 
            def malware_protection_enabled=(value)
                @malware_protection_enabled = value
            end
            ## 
            ## Gets the networkInspectionSystemEnabled property value. Network inspection system enabled or not?
            ## @return a boolean
            ## 
            def network_inspection_system_enabled
                return @network_inspection_system_enabled
            end
            ## 
            ## Sets the networkInspectionSystemEnabled property value. Network inspection system enabled or not?
            ## @param value Value to set for the network_inspection_system_enabled property.
            ## @return a void
            ## 
            def network_inspection_system_enabled=(value)
                @network_inspection_system_enabled = value
            end
            ## 
            ## Gets the productStatus property value. Product Status of Windows Defender Antivirus. Possible values are: noStatus, serviceNotRunning, serviceStartedWithoutMalwareProtection, pendingFullScanDueToThreatAction, pendingRebootDueToThreatAction, pendingManualStepsDueToThreatAction, avSignaturesOutOfDate, asSignaturesOutOfDate, noQuickScanHappenedForSpecifiedPeriod, noFullScanHappenedForSpecifiedPeriod, systemInitiatedScanInProgress, systemInitiatedCleanInProgress, samplesPendingSubmission, productRunningInEvaluationMode, productRunningInNonGenuineMode, productExpired, offlineScanRequired, serviceShutdownAsPartOfSystemShutdown, threatRemediationFailedCritically, threatRemediationFailedNonCritically, noStatusFlagsSet, platformOutOfDate, platformUpdateInProgress, platformAboutToBeOutdated, signatureOrPlatformEndOfLifeIsPastOrIsImpending, windowsSModeSignaturesInUseOnNonWin10SInstall.
            ## @return a windows_defender_product_status
            ## 
            def product_status
                return @product_status
            end
            ## 
            ## Sets the productStatus property value. Product Status of Windows Defender Antivirus. Possible values are: noStatus, serviceNotRunning, serviceStartedWithoutMalwareProtection, pendingFullScanDueToThreatAction, pendingRebootDueToThreatAction, pendingManualStepsDueToThreatAction, avSignaturesOutOfDate, asSignaturesOutOfDate, noQuickScanHappenedForSpecifiedPeriod, noFullScanHappenedForSpecifiedPeriod, systemInitiatedScanInProgress, systemInitiatedCleanInProgress, samplesPendingSubmission, productRunningInEvaluationMode, productRunningInNonGenuineMode, productExpired, offlineScanRequired, serviceShutdownAsPartOfSystemShutdown, threatRemediationFailedCritically, threatRemediationFailedNonCritically, noStatusFlagsSet, platformOutOfDate, platformUpdateInProgress, platformAboutToBeOutdated, signatureOrPlatformEndOfLifeIsPastOrIsImpending, windowsSModeSignaturesInUseOnNonWin10SInstall.
            ## @param value Value to set for the product_status property.
            ## @return a void
            ## 
            def product_status=(value)
                @product_status = value
            end
            ## 
            ## Gets the quickScanOverdue property value. Quick scan overdue or not?
            ## @return a boolean
            ## 
            def quick_scan_overdue
                return @quick_scan_overdue
            end
            ## 
            ## Sets the quickScanOverdue property value. Quick scan overdue or not?
            ## @param value Value to set for the quick_scan_overdue property.
            ## @return a void
            ## 
            def quick_scan_overdue=(value)
                @quick_scan_overdue = value
            end
            ## 
            ## Gets the realTimeProtectionEnabled property value. Real time protection is enabled or not?
            ## @return a boolean
            ## 
            def real_time_protection_enabled
                return @real_time_protection_enabled
            end
            ## 
            ## Sets the realTimeProtectionEnabled property value. Real time protection is enabled or not?
            ## @param value Value to set for the real_time_protection_enabled property.
            ## @return a void
            ## 
            def real_time_protection_enabled=(value)
                @real_time_protection_enabled = value
            end
            ## 
            ## Gets the rebootRequired property value. Reboot required or not?
            ## @return a boolean
            ## 
            def reboot_required
                return @reboot_required
            end
            ## 
            ## Sets the rebootRequired property value. Reboot required or not?
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
                writer.write_collection_of_object_values("detectedMalwareState", @detected_malware_state)
                writer.write_enum_value("deviceState", @device_state)
                writer.write_string_value("engineVersion", @engine_version)
                writer.write_boolean_value("fullScanOverdue", @full_scan_overdue)
                writer.write_boolean_value("fullScanRequired", @full_scan_required)
                writer.write_boolean_value("isVirtualMachine", @is_virtual_machine)
                writer.write_date_time_value("lastFullScanDateTime", @last_full_scan_date_time)
                writer.write_string_value("lastFullScanSignatureVersion", @last_full_scan_signature_version)
                writer.write_date_time_value("lastQuickScanDateTime", @last_quick_scan_date_time)
                writer.write_string_value("lastQuickScanSignatureVersion", @last_quick_scan_signature_version)
                writer.write_date_time_value("lastReportedDateTime", @last_reported_date_time)
                writer.write_boolean_value("malwareProtectionEnabled", @malware_protection_enabled)
                writer.write_boolean_value("networkInspectionSystemEnabled", @network_inspection_system_enabled)
                writer.write_enum_value("productStatus", @product_status)
                writer.write_boolean_value("quickScanOverdue", @quick_scan_overdue)
                writer.write_boolean_value("realTimeProtectionEnabled", @real_time_protection_enabled)
                writer.write_boolean_value("rebootRequired", @reboot_required)
                writer.write_boolean_value("signatureUpdateOverdue", @signature_update_overdue)
                writer.write_string_value("signatureVersion", @signature_version)
                writer.write_boolean_value("tamperProtectionEnabled", @tamper_protection_enabled)
            end
            ## 
            ## Gets the signatureUpdateOverdue property value. Signature out of date or not?
            ## @return a boolean
            ## 
            def signature_update_overdue
                return @signature_update_overdue
            end
            ## 
            ## Sets the signatureUpdateOverdue property value. Signature out of date or not?
            ## @param value Value to set for the signature_update_overdue property.
            ## @return a void
            ## 
            def signature_update_overdue=(value)
                @signature_update_overdue = value
            end
            ## 
            ## Gets the signatureVersion property value. Current malware definitions version
            ## @return a string
            ## 
            def signature_version
                return @signature_version
            end
            ## 
            ## Sets the signatureVersion property value. Current malware definitions version
            ## @param value Value to set for the signature_version property.
            ## @return a void
            ## 
            def signature_version=(value)
                @signature_version = value
            end
            ## 
            ## Gets the tamperProtectionEnabled property value. Indicates whether the Windows Defender tamper protection feature is enabled.
            ## @return a boolean
            ## 
            def tamper_protection_enabled
                return @tamper_protection_enabled
            end
            ## 
            ## Sets the tamperProtectionEnabled property value. Indicates whether the Windows Defender tamper protection feature is enabled.
            ## @param value Value to set for the tamper_protection_enabled property.
            ## @return a void
            ## 
            def tamper_protection_enabled=(value)
                @tamper_protection_enabled = value
            end
        end
    end
end
