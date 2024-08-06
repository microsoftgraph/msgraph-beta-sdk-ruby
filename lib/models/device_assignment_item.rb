require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents the application or configuration included in the ChangeAssignments action execution or result. For action execution, it represents the application or configuration intended to be uninstalled or removed on the managed device. For action result, it represents the live reporting data for this application or configuration regarding its removal or restoration process.
        class DeviceAssignmentItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A list of possible assignment item action intent values on the application or configuration when executing this action on the managed device. For example, if the application or configuration is intended to be removed on the managed device, then the intent value is remove, and if the application or configuration already under removal through previous actions and is now intended to be restored on the managed device, then the intent value is restore
            @assignment_item_action_intent
            ## 
            # A list of possible assignment item action status values for the application or configuration regarding their executed action on the managed device. For example, a configuration included in the deviceAssignmentItems list has just been executed the action. Its status starts with inProgress until it's successfully removed to reflect as removed status or failed to be removed to reflect as error status on the managed device. Similar status change happens for restoration process
            @assignment_item_action_status
            ## 
            # The error code for the application or configuration regarding the failed executed action on the managed device. Read-Only. Returned in the action result. 0 is default value and indicates no failure. Valid values -9.22337203685478E+18 to 9.22337203685478E+18. This property is read-only.
            @error_code
            ## 
            # The intent action message for the application or configuration regarding the executed action on the managed device. When the action is on error, this property provides message on the reason of failure. When the action is in progress, this property provides message on what's being processed on the device. Read-Only. Returned in the action result. Can be null. Max length is 1500. This property is read-only.
            @intent_action_message
            ## 
            # The item displayName name for the application or configuration. Read-Only. Returned in the action result. Default value is null. The property value cannot be modified and is automatically populated with the action result. Max length is 200. This property is read-only.
            @item_display_name
            ## 
            # The unique identifier for the application or configuration. ItemId is required property which needs to be set in the action POST request parameter for the DeviceAssignmentItem intended to remove. Max length is 40
            @item_id
            ## 
            # Indicates the specific type for the application or configuration. For example, unknown, application, appConfiguration, exploitProtection, bitLocker, deviceControl, microsoftEdgeBaseline, attackSurfaceReductionRulesConfigMgr, endpointDetectionandResponse, windowsUpdateforBusiness, microsoftDefenderFirewallRules, applicationControl, microsoftDefenderAntivirusexclusions, microsoftDefenderAntivirus, wiredNetwork, derivedPersonalIdentityVerificationCredential, windowsHealthMonitoring, extensions, mxProfileZebraOnly, deviceFirmwareConfigurationInterface, deliveryOptimization, identityProtection, kiosk, overrideGroupPolicy, domainJoinPreview, pkcsImportedCertificate, networkBoundary, endpointProtection, microsoftDefenderAtpWindows10Desktop, sharedMultiUserDevice, deviceFeatures, secureAssessmentEducation, wiFiImport, editionUpgradeAndModeSwitch, vpn, custom, softwareUpdates, deviceRestrictionsWindows10Team, email, trustedCertificate, scepCertificate, emailSamsungKnoxOnly, pkcsCertificate, deviceRestrictions, wiFi, settingsCatalog. Read-Only. Returned in the action result. Default value is null. The property value cannot be modified and is automatically populated with the action result. Max length is 200. This property is read-only.
            @item_sub_type_display_name
            ## 
            # A list of possible device assignment item types to execute this action on the managed device. Device assignment item represents existing assigned Intune resource such as application or configuration. Currently supported device assignment item types are Application, DeviceConfiguration, DeviceManagementConfigurationPolicy and MobileAppConfiguration
            @item_type
            ## 
            # The date and time when the application or configuration was initiated an action execution. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.
            @last_action_date_time
            ## 
            # The date and time when the application or configuration was last modified because of either action execution or status change. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated or the device has a status change. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.
            @last_modified_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the assignmentItemActionIntent property value. A list of possible assignment item action intent values on the application or configuration when executing this action on the managed device. For example, if the application or configuration is intended to be removed on the managed device, then the intent value is remove, and if the application or configuration already under removal through previous actions and is now intended to be restored on the managed device, then the intent value is restore
            ## @return a device_assignment_item_intent
            ## 
            def assignment_item_action_intent
                return @assignment_item_action_intent
            end
            ## 
            ## Sets the assignmentItemActionIntent property value. A list of possible assignment item action intent values on the application or configuration when executing this action on the managed device. For example, if the application or configuration is intended to be removed on the managed device, then the intent value is remove, and if the application or configuration already under removal through previous actions and is now intended to be restored on the managed device, then the intent value is restore
            ## @param value Value to set for the assignmentItemActionIntent property.
            ## @return a void
            ## 
            def assignment_item_action_intent=(value)
                @assignment_item_action_intent = value
            end
            ## 
            ## Gets the assignmentItemActionStatus property value. A list of possible assignment item action status values for the application or configuration regarding their executed action on the managed device. For example, a configuration included in the deviceAssignmentItems list has just been executed the action. Its status starts with inProgress until it's successfully removed to reflect as removed status or failed to be removed to reflect as error status on the managed device. Similar status change happens for restoration process
            ## @return a device_assignment_item_status
            ## 
            def assignment_item_action_status
                return @assignment_item_action_status
            end
            ## 
            ## Sets the assignmentItemActionStatus property value. A list of possible assignment item action status values for the application or configuration regarding their executed action on the managed device. For example, a configuration included in the deviceAssignmentItems list has just been executed the action. Its status starts with inProgress until it's successfully removed to reflect as removed status or failed to be removed to reflect as error status on the managed device. Similar status change happens for restoration process
            ## @param value Value to set for the assignmentItemActionStatus property.
            ## @return a void
            ## 
            def assignment_item_action_status=(value)
                @assignment_item_action_status = value
            end
            ## 
            ## Instantiates a new DeviceAssignmentItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_assignment_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceAssignmentItem.new
            end
            ## 
            ## Gets the errorCode property value. The error code for the application or configuration regarding the failed executed action on the managed device. Read-Only. Returned in the action result. 0 is default value and indicates no failure. Valid values -9.22337203685478E+18 to 9.22337203685478E+18. This property is read-only.
            ## @return a int64
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. The error code for the application or configuration regarding the failed executed action on the managed device. Read-Only. Returned in the action result. 0 is default value and indicates no failure. Valid values -9.22337203685478E+18 to 9.22337203685478E+18. This property is read-only.
            ## @param value Value to set for the errorCode property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignmentItemActionIntent" => lambda {|n| @assignment_item_action_intent = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAssignmentItemIntent) },
                    "assignmentItemActionStatus" => lambda {|n| @assignment_item_action_status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAssignmentItemStatus) },
                    "errorCode" => lambda {|n| @error_code = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "intentActionMessage" => lambda {|n| @intent_action_message = n.get_string_value() },
                    "itemDisplayName" => lambda {|n| @item_display_name = n.get_string_value() },
                    "itemId" => lambda {|n| @item_id = n.get_string_value() },
                    "itemSubTypeDisplayName" => lambda {|n| @item_sub_type_display_name = n.get_string_value() },
                    "itemType" => lambda {|n| @item_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAssignmentItemType) },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the intentActionMessage property value. The intent action message for the application or configuration regarding the executed action on the managed device. When the action is on error, this property provides message on the reason of failure. When the action is in progress, this property provides message on what's being processed on the device. Read-Only. Returned in the action result. Can be null. Max length is 1500. This property is read-only.
            ## @return a string
            ## 
            def intent_action_message
                return @intent_action_message
            end
            ## 
            ## Sets the intentActionMessage property value. The intent action message for the application or configuration regarding the executed action on the managed device. When the action is on error, this property provides message on the reason of failure. When the action is in progress, this property provides message on what's being processed on the device. Read-Only. Returned in the action result. Can be null. Max length is 1500. This property is read-only.
            ## @param value Value to set for the intentActionMessage property.
            ## @return a void
            ## 
            def intent_action_message=(value)
                @intent_action_message = value
            end
            ## 
            ## Gets the itemDisplayName property value. The item displayName name for the application or configuration. Read-Only. Returned in the action result. Default value is null. The property value cannot be modified and is automatically populated with the action result. Max length is 200. This property is read-only.
            ## @return a string
            ## 
            def item_display_name
                return @item_display_name
            end
            ## 
            ## Sets the itemDisplayName property value. The item displayName name for the application or configuration. Read-Only. Returned in the action result. Default value is null. The property value cannot be modified and is automatically populated with the action result. Max length is 200. This property is read-only.
            ## @param value Value to set for the itemDisplayName property.
            ## @return a void
            ## 
            def item_display_name=(value)
                @item_display_name = value
            end
            ## 
            ## Gets the itemId property value. The unique identifier for the application or configuration. ItemId is required property which needs to be set in the action POST request parameter for the DeviceAssignmentItem intended to remove. Max length is 40
            ## @return a string
            ## 
            def item_id
                return @item_id
            end
            ## 
            ## Sets the itemId property value. The unique identifier for the application or configuration. ItemId is required property which needs to be set in the action POST request parameter for the DeviceAssignmentItem intended to remove. Max length is 40
            ## @param value Value to set for the itemId property.
            ## @return a void
            ## 
            def item_id=(value)
                @item_id = value
            end
            ## 
            ## Gets the itemSubTypeDisplayName property value. Indicates the specific type for the application or configuration. For example, unknown, application, appConfiguration, exploitProtection, bitLocker, deviceControl, microsoftEdgeBaseline, attackSurfaceReductionRulesConfigMgr, endpointDetectionandResponse, windowsUpdateforBusiness, microsoftDefenderFirewallRules, applicationControl, microsoftDefenderAntivirusexclusions, microsoftDefenderAntivirus, wiredNetwork, derivedPersonalIdentityVerificationCredential, windowsHealthMonitoring, extensions, mxProfileZebraOnly, deviceFirmwareConfigurationInterface, deliveryOptimization, identityProtection, kiosk, overrideGroupPolicy, domainJoinPreview, pkcsImportedCertificate, networkBoundary, endpointProtection, microsoftDefenderAtpWindows10Desktop, sharedMultiUserDevice, deviceFeatures, secureAssessmentEducation, wiFiImport, editionUpgradeAndModeSwitch, vpn, custom, softwareUpdates, deviceRestrictionsWindows10Team, email, trustedCertificate, scepCertificate, emailSamsungKnoxOnly, pkcsCertificate, deviceRestrictions, wiFi, settingsCatalog. Read-Only. Returned in the action result. Default value is null. The property value cannot be modified and is automatically populated with the action result. Max length is 200. This property is read-only.
            ## @return a string
            ## 
            def item_sub_type_display_name
                return @item_sub_type_display_name
            end
            ## 
            ## Sets the itemSubTypeDisplayName property value. Indicates the specific type for the application or configuration. For example, unknown, application, appConfiguration, exploitProtection, bitLocker, deviceControl, microsoftEdgeBaseline, attackSurfaceReductionRulesConfigMgr, endpointDetectionandResponse, windowsUpdateforBusiness, microsoftDefenderFirewallRules, applicationControl, microsoftDefenderAntivirusexclusions, microsoftDefenderAntivirus, wiredNetwork, derivedPersonalIdentityVerificationCredential, windowsHealthMonitoring, extensions, mxProfileZebraOnly, deviceFirmwareConfigurationInterface, deliveryOptimization, identityProtection, kiosk, overrideGroupPolicy, domainJoinPreview, pkcsImportedCertificate, networkBoundary, endpointProtection, microsoftDefenderAtpWindows10Desktop, sharedMultiUserDevice, deviceFeatures, secureAssessmentEducation, wiFiImport, editionUpgradeAndModeSwitch, vpn, custom, softwareUpdates, deviceRestrictionsWindows10Team, email, trustedCertificate, scepCertificate, emailSamsungKnoxOnly, pkcsCertificate, deviceRestrictions, wiFi, settingsCatalog. Read-Only. Returned in the action result. Default value is null. The property value cannot be modified and is automatically populated with the action result. Max length is 200. This property is read-only.
            ## @param value Value to set for the itemSubTypeDisplayName property.
            ## @return a void
            ## 
            def item_sub_type_display_name=(value)
                @item_sub_type_display_name = value
            end
            ## 
            ## Gets the itemType property value. A list of possible device assignment item types to execute this action on the managed device. Device assignment item represents existing assigned Intune resource such as application or configuration. Currently supported device assignment item types are Application, DeviceConfiguration, DeviceManagementConfigurationPolicy and MobileAppConfiguration
            ## @return a device_assignment_item_type
            ## 
            def item_type
                return @item_type
            end
            ## 
            ## Sets the itemType property value. A list of possible device assignment item types to execute this action on the managed device. Device assignment item represents existing assigned Intune resource such as application or configuration. Currently supported device assignment item types are Application, DeviceConfiguration, DeviceManagementConfigurationPolicy and MobileAppConfiguration
            ## @param value Value to set for the itemType property.
            ## @return a void
            ## 
            def item_type=(value)
                @item_type = value
            end
            ## 
            ## Gets the lastActionDateTime property value. The date and time when the application or configuration was initiated an action execution. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. The date and time when the application or configuration was initiated an action execution. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.
            ## @param value Value to set for the lastActionDateTime property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the application or configuration was last modified because of either action execution or status change. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated or the device has a status change. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the application or configuration was last modified because of either action execution or status change. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated or the device has a status change. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_enum_value("assignmentItemActionIntent", @assignment_item_action_intent)
                writer.write_enum_value("assignmentItemActionStatus", @assignment_item_action_status)
                writer.write_string_value("itemId", @item_id)
                writer.write_enum_value("itemType", @item_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
