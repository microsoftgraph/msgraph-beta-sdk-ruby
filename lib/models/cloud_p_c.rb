require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPC < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Microsoft Entra device ID of the Cloud PC.
            @aad_device_id
            ## 
            # The allotment name divides tenant licenses into smaller batches or groups that help restrict the number of licenses available for use in a specific assignment. When the provisioningType is dedicated, the allotment name is null. Read-only.
            @allotment_display_name
            ## 
            # The connection setting of the Cloud PC. Possible values: enableSingleSignOn. Read Only.
            @connection_setting
            ## 
            # The connectionSettings property
            @connection_settings
            ## 
            # The connectivity health check result of a Cloud PC, including the updated timestamp and whether the Cloud PC can be connected.
            @connectivity_result
            ## 
            # The name of the geographical region where the Cloud PC is currently provisioned. For example, westus3, eastus2, and southeastasia. Read-only.
            @device_region_name
            ## 
            # The disaster recovery status of the Cloud PC, including the primary region, secondary region, and capability type. The default value is null that indicates that the disaster recovery setting is disabled. To receive a response with the disasterRecoveryCapability property, $select and $filter it by disasterRecoveryCapability/{subProperty} in the request URL. For more details, see Example 4: List Cloud PCs filtered by disaster recovery capability type. Read-only.
            @disaster_recovery_capability
            ## 
            # The disk encryption applied to the Cloud PC. Possible values: notAvailable, notEncrypted, encryptedUsingPlatformManagedKey, encryptedUsingCustomerManagedKey, and unknownFutureValue.
            @disk_encryption_state
            ## 
            # The display name of the Cloud PC.
            @display_name
            ## 
            # The date and time when the grace period ends and reprovisioning or deprovisioning happens. Required only if the status is inGracePeriod. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @grace_period_end_date_time
            ## 
            # Name of the OS image that's on the Cloud PC.
            @image_display_name
            ## 
            # The last login result of the Cloud PC. For example, { 'time': '2014-01-01T00:00:00Z'}.
            @last_login_result
            ## 
            # The last modified date and time of the Cloud PC. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # The last remote action result of the enterprise Cloud PCs. The supported remote actions are: Reboot, Rename, Reprovision, Restore, Troubleshoot.
            @last_remote_action_result
            ## 
            # The Intune device ID of the Cloud PC.
            @managed_device_id
            ## 
            # The Intune device name of the Cloud PC.
            @managed_device_name
            ## 
            # The Azure network connection that is applied during the provisioning of Cloud PCs.
            @on_premises_connection_name
            ## 
            # The version of the operating system (OS) to provision on Cloud PCs. Possible values are: windows10, windows11, unknownFutureValue.
            @os_version
            ## 
            # The results of every partner agent's installation status on Cloud PC.
            @partner_agent_install_results
            ## 
            # The power state of a Cloud PC. The possible values are: running, poweredOff, unknown. This property only supports shift work Cloud PCs.
            @power_state
            ## 
            # The provisioning policy ID of the Cloud PC.
            @provisioning_policy_id
            ## 
            # The provisioning policy that is applied during the provisioning of Cloud PCs.
            @provisioning_policy_name
            ## 
            # The type of licenses to be used when provisioning Cloud PCs using this policy. Possible values are: dedicated, shared, unknownFutureValue,sharedByUser, sharedByEntraGroup. You must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: sharedByUser, sharedByEntraGroup. The default value is dedicated. CAUTION: The shared member is deprecated and will stop returning on April 30, 2027； in the future, use the sharedByUser member.
            @provisioning_type
            ## 
            # The scopeIds property
            @scope_ids
            ## 
            # The service plan ID of the Cloud PC.
            @service_plan_id
            ## 
            # The service plan name of the Cloud PC.
            @service_plan_name
            ## 
            # The service plan type of the Cloud PC.
            @service_plan_type
            ## 
            # The status property
            @status
            ## 
            # Indicates the detailed status associated with Cloud PC, including error/warning code, error/warning message, additionalInformation. For example, { 'code': 'internalServerError', 'message': 'There was an error during the Cloud PC upgrade. Please contact support.', 'additionalInformation': null }.
            @status_detail
            ## 
            # The details of the Cloud PC status. For example, { 'code': 'internalServerError', 'message': 'There was an error during the Cloud PC upgrade. Please contact support.', 'additionalInformation': null }. This property is deprecated and will no longer be supported effective August 31, 2024. Use statusDetail instead.
            @status_details
            ## 
            # The account type of the user on provisioned Cloud PCs. Possible values are: standardUser, administrator, unknownFutureValue.
            @user_account_type
            ## 
            # The user principal name (UPN) of the user assigned to the Cloud PC.
            @user_principal_name
            ## 
            ## Gets the aadDeviceId property value. The Microsoft Entra device ID of the Cloud PC.
            ## @return a string
            ## 
            def aad_device_id
                return @aad_device_id
            end
            ## 
            ## Sets the aadDeviceId property value. The Microsoft Entra device ID of the Cloud PC.
            ## @param value Value to set for the aadDeviceId property.
            ## @return a void
            ## 
            def aad_device_id=(value)
                @aad_device_id = value
            end
            ## 
            ## Gets the allotmentDisplayName property value. The allotment name divides tenant licenses into smaller batches or groups that help restrict the number of licenses available for use in a specific assignment. When the provisioningType is dedicated, the allotment name is null. Read-only.
            ## @return a string
            ## 
            def allotment_display_name
                return @allotment_display_name
            end
            ## 
            ## Sets the allotmentDisplayName property value. The allotment name divides tenant licenses into smaller batches or groups that help restrict the number of licenses available for use in a specific assignment. When the provisioningType is dedicated, the allotment name is null. Read-only.
            ## @param value Value to set for the allotmentDisplayName property.
            ## @return a void
            ## 
            def allotment_display_name=(value)
                @allotment_display_name = value
            end
            ## 
            ## Gets the connectionSetting property value. The connection setting of the Cloud PC. Possible values: enableSingleSignOn. Read Only.
            ## @return a cloud_pc_connection_setting
            ## 
            def connection_setting
                return @connection_setting
            end
            ## 
            ## Sets the connectionSetting property value. The connection setting of the Cloud PC. Possible values: enableSingleSignOn. Read Only.
            ## @param value Value to set for the connectionSetting property.
            ## @return a void
            ## 
            def connection_setting=(value)
                @connection_setting = value
            end
            ## 
            ## Gets the connectionSettings property value. The connectionSettings property
            ## @return a cloud_pc_connection_settings
            ## 
            def connection_settings
                return @connection_settings
            end
            ## 
            ## Sets the connectionSettings property value. The connectionSettings property
            ## @param value Value to set for the connectionSettings property.
            ## @return a void
            ## 
            def connection_settings=(value)
                @connection_settings = value
            end
            ## 
            ## Gets the connectivityResult property value. The connectivity health check result of a Cloud PC, including the updated timestamp and whether the Cloud PC can be connected.
            ## @return a cloud_pc_connectivity_result
            ## 
            def connectivity_result
                return @connectivity_result
            end
            ## 
            ## Sets the connectivityResult property value. The connectivity health check result of a Cloud PC, including the updated timestamp and whether the Cloud PC can be connected.
            ## @param value Value to set for the connectivityResult property.
            ## @return a void
            ## 
            def connectivity_result=(value)
                @connectivity_result = value
            end
            ## 
            ## Instantiates a new CloudPC and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_p_c
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPC.new
            end
            ## 
            ## Gets the deviceRegionName property value. The name of the geographical region where the Cloud PC is currently provisioned. For example, westus3, eastus2, and southeastasia. Read-only.
            ## @return a string
            ## 
            def device_region_name
                return @device_region_name
            end
            ## 
            ## Sets the deviceRegionName property value. The name of the geographical region where the Cloud PC is currently provisioned. For example, westus3, eastus2, and southeastasia. Read-only.
            ## @param value Value to set for the deviceRegionName property.
            ## @return a void
            ## 
            def device_region_name=(value)
                @device_region_name = value
            end
            ## 
            ## Gets the disasterRecoveryCapability property value. The disaster recovery status of the Cloud PC, including the primary region, secondary region, and capability type. The default value is null that indicates that the disaster recovery setting is disabled. To receive a response with the disasterRecoveryCapability property, $select and $filter it by disasterRecoveryCapability/{subProperty} in the request URL. For more details, see Example 4: List Cloud PCs filtered by disaster recovery capability type. Read-only.
            ## @return a cloud_pc_disaster_recovery_capability
            ## 
            def disaster_recovery_capability
                return @disaster_recovery_capability
            end
            ## 
            ## Sets the disasterRecoveryCapability property value. The disaster recovery status of the Cloud PC, including the primary region, secondary region, and capability type. The default value is null that indicates that the disaster recovery setting is disabled. To receive a response with the disasterRecoveryCapability property, $select and $filter it by disasterRecoveryCapability/{subProperty} in the request URL. For more details, see Example 4: List Cloud PCs filtered by disaster recovery capability type. Read-only.
            ## @param value Value to set for the disasterRecoveryCapability property.
            ## @return a void
            ## 
            def disaster_recovery_capability=(value)
                @disaster_recovery_capability = value
            end
            ## 
            ## Gets the diskEncryptionState property value. The disk encryption applied to the Cloud PC. Possible values: notAvailable, notEncrypted, encryptedUsingPlatformManagedKey, encryptedUsingCustomerManagedKey, and unknownFutureValue.
            ## @return a cloud_pc_disk_encryption_state
            ## 
            def disk_encryption_state
                return @disk_encryption_state
            end
            ## 
            ## Sets the diskEncryptionState property value. The disk encryption applied to the Cloud PC. Possible values: notAvailable, notEncrypted, encryptedUsingPlatformManagedKey, encryptedUsingCustomerManagedKey, and unknownFutureValue.
            ## @param value Value to set for the diskEncryptionState property.
            ## @return a void
            ## 
            def disk_encryption_state=(value)
                @disk_encryption_state = value
            end
            ## 
            ## Gets the displayName property value. The display name of the Cloud PC.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the Cloud PC.
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
                    "aadDeviceId" => lambda {|n| @aad_device_id = n.get_string_value() },
                    "allotmentDisplayName" => lambda {|n| @allotment_display_name = n.get_string_value() },
                    "connectionSetting" => lambda {|n| @connection_setting = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcConnectionSetting.create_from_discriminator_value(pn) }) },
                    "connectionSettings" => lambda {|n| @connection_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcConnectionSettings.create_from_discriminator_value(pn) }) },
                    "connectivityResult" => lambda {|n| @connectivity_result = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcConnectivityResult.create_from_discriminator_value(pn) }) },
                    "deviceRegionName" => lambda {|n| @device_region_name = n.get_string_value() },
                    "disasterRecoveryCapability" => lambda {|n| @disaster_recovery_capability = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcDisasterRecoveryCapability.create_from_discriminator_value(pn) }) },
                    "diskEncryptionState" => lambda {|n| @disk_encryption_state = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcDiskEncryptionState) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "gracePeriodEndDateTime" => lambda {|n| @grace_period_end_date_time = n.get_date_time_value() },
                    "imageDisplayName" => lambda {|n| @image_display_name = n.get_string_value() },
                    "lastLoginResult" => lambda {|n| @last_login_result = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcLoginResult.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "lastRemoteActionResult" => lambda {|n| @last_remote_action_result = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcRemoteActionResult.create_from_discriminator_value(pn) }) },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                    "onPremisesConnectionName" => lambda {|n| @on_premises_connection_name = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcOperatingSystem) },
                    "partnerAgentInstallResults" => lambda {|n| @partner_agent_install_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcPartnerAgentInstallResult.create_from_discriminator_value(pn) }) },
                    "powerState" => lambda {|n| @power_state = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcPowerState) },
                    "provisioningPolicyId" => lambda {|n| @provisioning_policy_id = n.get_string_value() },
                    "provisioningPolicyName" => lambda {|n| @provisioning_policy_name = n.get_string_value() },
                    "provisioningType" => lambda {|n| @provisioning_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcProvisioningType) },
                    "scopeIds" => lambda {|n| @scope_ids = n.get_collection_of_primitive_values(String) },
                    "servicePlanId" => lambda {|n| @service_plan_id = n.get_string_value() },
                    "servicePlanName" => lambda {|n| @service_plan_name = n.get_string_value() },
                    "servicePlanType" => lambda {|n| @service_plan_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcServicePlanType) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcStatus) },
                    "statusDetail" => lambda {|n| @status_detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcStatusDetail.create_from_discriminator_value(pn) }) },
                    "statusDetails" => lambda {|n| @status_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcStatusDetails.create_from_discriminator_value(pn) }) },
                    "userAccountType" => lambda {|n| @user_account_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcUserAccountType) },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the gracePeriodEndDateTime property value. The date and time when the grace period ends and reprovisioning or deprovisioning happens. Required only if the status is inGracePeriod. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def grace_period_end_date_time
                return @grace_period_end_date_time
            end
            ## 
            ## Sets the gracePeriodEndDateTime property value. The date and time when the grace period ends and reprovisioning or deprovisioning happens. Required only if the status is inGracePeriod. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the gracePeriodEndDateTime property.
            ## @return a void
            ## 
            def grace_period_end_date_time=(value)
                @grace_period_end_date_time = value
            end
            ## 
            ## Gets the imageDisplayName property value. Name of the OS image that's on the Cloud PC.
            ## @return a string
            ## 
            def image_display_name
                return @image_display_name
            end
            ## 
            ## Sets the imageDisplayName property value. Name of the OS image that's on the Cloud PC.
            ## @param value Value to set for the imageDisplayName property.
            ## @return a void
            ## 
            def image_display_name=(value)
                @image_display_name = value
            end
            ## 
            ## Gets the lastLoginResult property value. The last login result of the Cloud PC. For example, { 'time': '2014-01-01T00:00:00Z'}.
            ## @return a cloud_pc_login_result
            ## 
            def last_login_result
                return @last_login_result
            end
            ## 
            ## Sets the lastLoginResult property value. The last login result of the Cloud PC. For example, { 'time': '2014-01-01T00:00:00Z'}.
            ## @param value Value to set for the lastLoginResult property.
            ## @return a void
            ## 
            def last_login_result=(value)
                @last_login_result = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The last modified date and time of the Cloud PC. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The last modified date and time of the Cloud PC. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the lastRemoteActionResult property value. The last remote action result of the enterprise Cloud PCs. The supported remote actions are: Reboot, Rename, Reprovision, Restore, Troubleshoot.
            ## @return a cloud_pc_remote_action_result
            ## 
            def last_remote_action_result
                return @last_remote_action_result
            end
            ## 
            ## Sets the lastRemoteActionResult property value. The last remote action result of the enterprise Cloud PCs. The supported remote actions are: Reboot, Rename, Reprovision, Restore, Troubleshoot.
            ## @param value Value to set for the lastRemoteActionResult property.
            ## @return a void
            ## 
            def last_remote_action_result=(value)
                @last_remote_action_result = value
            end
            ## 
            ## Gets the managedDeviceId property value. The Intune device ID of the Cloud PC.
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. The Intune device ID of the Cloud PC.
            ## @param value Value to set for the managedDeviceId property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the managedDeviceName property value. The Intune device name of the Cloud PC.
            ## @return a string
            ## 
            def managed_device_name
                return @managed_device_name
            end
            ## 
            ## Sets the managedDeviceName property value. The Intune device name of the Cloud PC.
            ## @param value Value to set for the managedDeviceName property.
            ## @return a void
            ## 
            def managed_device_name=(value)
                @managed_device_name = value
            end
            ## 
            ## Gets the onPremisesConnectionName property value. The Azure network connection that is applied during the provisioning of Cloud PCs.
            ## @return a string
            ## 
            def on_premises_connection_name
                return @on_premises_connection_name
            end
            ## 
            ## Sets the onPremisesConnectionName property value. The Azure network connection that is applied during the provisioning of Cloud PCs.
            ## @param value Value to set for the onPremisesConnectionName property.
            ## @return a void
            ## 
            def on_premises_connection_name=(value)
                @on_premises_connection_name = value
            end
            ## 
            ## Gets the osVersion property value. The version of the operating system (OS) to provision on Cloud PCs. Possible values are: windows10, windows11, unknownFutureValue.
            ## @return a cloud_pc_operating_system
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The version of the operating system (OS) to provision on Cloud PCs. Possible values are: windows10, windows11, unknownFutureValue.
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the partnerAgentInstallResults property value. The results of every partner agent's installation status on Cloud PC.
            ## @return a cloud_pc_partner_agent_install_result
            ## 
            def partner_agent_install_results
                return @partner_agent_install_results
            end
            ## 
            ## Sets the partnerAgentInstallResults property value. The results of every partner agent's installation status on Cloud PC.
            ## @param value Value to set for the partnerAgentInstallResults property.
            ## @return a void
            ## 
            def partner_agent_install_results=(value)
                @partner_agent_install_results = value
            end
            ## 
            ## Gets the powerState property value. The power state of a Cloud PC. The possible values are: running, poweredOff, unknown. This property only supports shift work Cloud PCs.
            ## @return a cloud_pc_power_state
            ## 
            def power_state
                return @power_state
            end
            ## 
            ## Sets the powerState property value. The power state of a Cloud PC. The possible values are: running, poweredOff, unknown. This property only supports shift work Cloud PCs.
            ## @param value Value to set for the powerState property.
            ## @return a void
            ## 
            def power_state=(value)
                @power_state = value
            end
            ## 
            ## Gets the provisioningPolicyId property value. The provisioning policy ID of the Cloud PC.
            ## @return a string
            ## 
            def provisioning_policy_id
                return @provisioning_policy_id
            end
            ## 
            ## Sets the provisioningPolicyId property value. The provisioning policy ID of the Cloud PC.
            ## @param value Value to set for the provisioningPolicyId property.
            ## @return a void
            ## 
            def provisioning_policy_id=(value)
                @provisioning_policy_id = value
            end
            ## 
            ## Gets the provisioningPolicyName property value. The provisioning policy that is applied during the provisioning of Cloud PCs.
            ## @return a string
            ## 
            def provisioning_policy_name
                return @provisioning_policy_name
            end
            ## 
            ## Sets the provisioningPolicyName property value. The provisioning policy that is applied during the provisioning of Cloud PCs.
            ## @param value Value to set for the provisioningPolicyName property.
            ## @return a void
            ## 
            def provisioning_policy_name=(value)
                @provisioning_policy_name = value
            end
            ## 
            ## Gets the provisioningType property value. The type of licenses to be used when provisioning Cloud PCs using this policy. Possible values are: dedicated, shared, unknownFutureValue,sharedByUser, sharedByEntraGroup. You must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: sharedByUser, sharedByEntraGroup. The default value is dedicated. CAUTION: The shared member is deprecated and will stop returning on April 30, 2027； in the future, use the sharedByUser member.
            ## @return a cloud_pc_provisioning_type
            ## 
            def provisioning_type
                return @provisioning_type
            end
            ## 
            ## Sets the provisioningType property value. The type of licenses to be used when provisioning Cloud PCs using this policy. Possible values are: dedicated, shared, unknownFutureValue,sharedByUser, sharedByEntraGroup. You must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: sharedByUser, sharedByEntraGroup. The default value is dedicated. CAUTION: The shared member is deprecated and will stop returning on April 30, 2027； in the future, use the sharedByUser member.
            ## @param value Value to set for the provisioningType property.
            ## @return a void
            ## 
            def provisioning_type=(value)
                @provisioning_type = value
            end
            ## 
            ## Gets the scopeIds property value. The scopeIds property
            ## @return a string
            ## 
            def scope_ids
                return @scope_ids
            end
            ## 
            ## Sets the scopeIds property value. The scopeIds property
            ## @param value Value to set for the scopeIds property.
            ## @return a void
            ## 
            def scope_ids=(value)
                @scope_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("aadDeviceId", @aad_device_id)
                writer.write_string_value("allotmentDisplayName", @allotment_display_name)
                writer.write_object_value("connectionSetting", @connection_setting)
                writer.write_object_value("connectionSettings", @connection_settings)
                writer.write_object_value("connectivityResult", @connectivity_result)
                writer.write_string_value("deviceRegionName", @device_region_name)
                writer.write_object_value("disasterRecoveryCapability", @disaster_recovery_capability)
                writer.write_enum_value("diskEncryptionState", @disk_encryption_state)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("gracePeriodEndDateTime", @grace_period_end_date_time)
                writer.write_string_value("imageDisplayName", @image_display_name)
                writer.write_object_value("lastLoginResult", @last_login_result)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("lastRemoteActionResult", @last_remote_action_result)
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_string_value("managedDeviceName", @managed_device_name)
                writer.write_string_value("onPremisesConnectionName", @on_premises_connection_name)
                writer.write_enum_value("osVersion", @os_version)
                writer.write_collection_of_object_values("partnerAgentInstallResults", @partner_agent_install_results)
                writer.write_enum_value("powerState", @power_state)
                writer.write_string_value("provisioningPolicyId", @provisioning_policy_id)
                writer.write_string_value("provisioningPolicyName", @provisioning_policy_name)
                writer.write_enum_value("provisioningType", @provisioning_type)
                writer.write_collection_of_primitive_values("scopeIds", @scope_ids)
                writer.write_string_value("servicePlanId", @service_plan_id)
                writer.write_string_value("servicePlanName", @service_plan_name)
                writer.write_enum_value("servicePlanType", @service_plan_type)
                writer.write_enum_value("status", @status)
                writer.write_object_value("statusDetail", @status_detail)
                writer.write_object_value("statusDetails", @status_details)
                writer.write_enum_value("userAccountType", @user_account_type)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the servicePlanId property value. The service plan ID of the Cloud PC.
            ## @return a string
            ## 
            def service_plan_id
                return @service_plan_id
            end
            ## 
            ## Sets the servicePlanId property value. The service plan ID of the Cloud PC.
            ## @param value Value to set for the servicePlanId property.
            ## @return a void
            ## 
            def service_plan_id=(value)
                @service_plan_id = value
            end
            ## 
            ## Gets the servicePlanName property value. The service plan name of the Cloud PC.
            ## @return a string
            ## 
            def service_plan_name
                return @service_plan_name
            end
            ## 
            ## Sets the servicePlanName property value. The service plan name of the Cloud PC.
            ## @param value Value to set for the servicePlanName property.
            ## @return a void
            ## 
            def service_plan_name=(value)
                @service_plan_name = value
            end
            ## 
            ## Gets the servicePlanType property value. The service plan type of the Cloud PC.
            ## @return a cloud_pc_service_plan_type
            ## 
            def service_plan_type
                return @service_plan_type
            end
            ## 
            ## Sets the servicePlanType property value. The service plan type of the Cloud PC.
            ## @param value Value to set for the servicePlanType property.
            ## @return a void
            ## 
            def service_plan_type=(value)
                @service_plan_type = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a cloud_pc_status
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
            ## Gets the statusDetail property value. Indicates the detailed status associated with Cloud PC, including error/warning code, error/warning message, additionalInformation. For example, { 'code': 'internalServerError', 'message': 'There was an error during the Cloud PC upgrade. Please contact support.', 'additionalInformation': null }.
            ## @return a cloud_pc_status_detail
            ## 
            def status_detail
                return @status_detail
            end
            ## 
            ## Sets the statusDetail property value. Indicates the detailed status associated with Cloud PC, including error/warning code, error/warning message, additionalInformation. For example, { 'code': 'internalServerError', 'message': 'There was an error during the Cloud PC upgrade. Please contact support.', 'additionalInformation': null }.
            ## @param value Value to set for the statusDetail property.
            ## @return a void
            ## 
            def status_detail=(value)
                @status_detail = value
            end
            ## 
            ## Gets the statusDetails property value. The details of the Cloud PC status. For example, { 'code': 'internalServerError', 'message': 'There was an error during the Cloud PC upgrade. Please contact support.', 'additionalInformation': null }. This property is deprecated and will no longer be supported effective August 31, 2024. Use statusDetail instead.
            ## @return a cloud_pc_status_details
            ## 
            def status_details
                return @status_details
            end
            ## 
            ## Sets the statusDetails property value. The details of the Cloud PC status. For example, { 'code': 'internalServerError', 'message': 'There was an error during the Cloud PC upgrade. Please contact support.', 'additionalInformation': null }. This property is deprecated and will no longer be supported effective August 31, 2024. Use statusDetail instead.
            ## @param value Value to set for the statusDetails property.
            ## @return a void
            ## 
            def status_details=(value)
                @status_details = value
            end
            ## 
            ## Gets the userAccountType property value. The account type of the user on provisioned Cloud PCs. Possible values are: standardUser, administrator, unknownFutureValue.
            ## @return a cloud_pc_user_account_type
            ## 
            def user_account_type
                return @user_account_type
            end
            ## 
            ## Sets the userAccountType property value. The account type of the user on provisioned Cloud PCs. Possible values are: standardUser, administrator, unknownFutureValue.
            ## @param value Value to set for the userAccountType property.
            ## @return a void
            ## 
            def user_account_type=(value)
                @user_account_type = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name (UPN) of the user assigned to the Cloud PC.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name (UPN) of the user assigned to the Cloud PC.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
