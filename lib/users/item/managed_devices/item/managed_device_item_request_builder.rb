require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/managed_device'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../users'
require_relative '../../item'
require_relative '../managed_devices'
require_relative './assignment_filter_evaluation_status_details/assignment_filter_evaluation_status_details_request_builder'
require_relative './assignment_filter_evaluation_status_details/item/assignment_filter_evaluation_status_details_item_request_builder'
require_relative './detected_apps/detected_apps_request_builder'
require_relative './detected_apps/item/detected_app_item_request_builder'
require_relative './device_category/device_category_request_builder'
require_relative './device_compliance_policy_states/device_compliance_policy_states_request_builder'
require_relative './device_compliance_policy_states/item/device_compliance_policy_state_item_request_builder'
require_relative './device_configuration_states/device_configuration_states_request_builder'
require_relative './device_configuration_states/item/device_configuration_state_item_request_builder'
require_relative './device_health_script_states/device_health_script_states_request_builder'
require_relative './item'
require_relative './log_collection_requests/item/device_log_collection_response_item_request_builder'
require_relative './log_collection_requests/log_collection_requests_request_builder'
require_relative './managed_device_mobile_app_configuration_states/item/managed_device_mobile_app_configuration_state_item_request_builder'
require_relative './managed_device_mobile_app_configuration_states/managed_device_mobile_app_configuration_states_request_builder'
require_relative './microsoft_graph_activate_device_esim/activate_device_esim_request_builder'
require_relative './microsoft_graph_bypass_activation_lock/bypass_activation_lock_request_builder'
require_relative './microsoft_graph_clean_windows_device/clean_windows_device_request_builder'
require_relative './microsoft_graph_create_device_log_collection_request/create_device_log_collection_request_request_builder'
require_relative './microsoft_graph_create_remote_help_session/create_remote_help_session_request_builder'
require_relative './microsoft_graph_delete_user_from_shared_apple_device/delete_user_from_shared_apple_device_request_builder'
require_relative './microsoft_graph_deprovision/deprovision_request_builder'
require_relative './microsoft_graph_disable/disable_request_builder'
require_relative './microsoft_graph_disable_lost_mode/disable_lost_mode_request_builder'
require_relative './microsoft_graph_enable_lost_mode/enable_lost_mode_request_builder'
require_relative './microsoft_graph_end_remote_help_session/end_remote_help_session_request_builder'
require_relative './microsoft_graph_enroll_now_action/enroll_now_action_request_builder'
require_relative './microsoft_graph_get_cloud_pc_remote_action_results/get_cloud_pc_remote_action_results_request_builder'
require_relative './microsoft_graph_get_cloud_pc_review_status/get_cloud_pc_review_status_request_builder'
require_relative './microsoft_graph_get_file_vault_key/get_file_vault_key_request_builder'
require_relative './microsoft_graph_get_non_compliant_settings/get_non_compliant_settings_request_builder'
require_relative './microsoft_graph_get_oem_warranty/get_oem_warranty_request_builder'
require_relative './microsoft_graph_initiate_mobile_device_management_key_recovery/initiate_mobile_device_management_key_recovery_request_builder'
require_relative './microsoft_graph_initiate_on_demand_proactive_remediation/initiate_on_demand_proactive_remediation_request_builder'
require_relative './microsoft_graph_locate_device/locate_device_request_builder'
require_relative './microsoft_graph_logout_shared_apple_device_active_user/logout_shared_apple_device_active_user_request_builder'
require_relative './microsoft_graph_override_compliance_state/override_compliance_state_request_builder'
require_relative './microsoft_graph_play_lost_mode_sound/play_lost_mode_sound_request_builder'
require_relative './microsoft_graph_reboot_now/reboot_now_request_builder'
require_relative './microsoft_graph_recover_passcode/recover_passcode_request_builder'
require_relative './microsoft_graph_reenable/reenable_request_builder'
require_relative './microsoft_graph_remote_lock/remote_lock_request_builder'
require_relative './microsoft_graph_remove_device_firmware_configuration_interface_management/remove_device_firmware_configuration_interface_management_request_builder'
require_relative './microsoft_graph_reprovision_cloud_pc/reprovision_cloud_pc_request_builder'
require_relative './microsoft_graph_request_remote_assistance/request_remote_assistance_request_builder'
require_relative './microsoft_graph_request_remote_help_session_access/request_remote_help_session_access_request_builder'
require_relative './microsoft_graph_reset_passcode/reset_passcode_request_builder'
require_relative './microsoft_graph_resize_cloud_pc/resize_cloud_pc_request_builder'
require_relative './microsoft_graph_restore_cloud_pc/restore_cloud_pc_request_builder'
require_relative './microsoft_graph_retire/retire_request_builder'
require_relative './microsoft_graph_retrieve_remote_help_session_with_session_key/retrieve_remote_help_session_with_session_key_request_builder'
require_relative './microsoft_graph_revoke_apple_vpp_licenses/revoke_apple_vpp_licenses_request_builder'
require_relative './microsoft_graph_rotate_bit_locker_keys/rotate_bit_locker_keys_request_builder'
require_relative './microsoft_graph_rotate_file_vault_key/rotate_file_vault_key_request_builder'
require_relative './microsoft_graph_send_custom_notification_to_company_portal/send_custom_notification_to_company_portal_request_builder'
require_relative './microsoft_graph_set_cloud_pc_review_status/set_cloud_pc_review_status_request_builder'
require_relative './microsoft_graph_set_device_name/set_device_name_request_builder'
require_relative './microsoft_graph_shut_down/shut_down_request_builder'
require_relative './microsoft_graph_sync_device/sync_device_request_builder'
require_relative './microsoft_graph_trigger_configuration_manager_action/trigger_configuration_manager_action_request_builder'
require_relative './microsoft_graph_update_windows_device_account/update_windows_device_account_request_builder'
require_relative './microsoft_graph_windows_defender_scan/windows_defender_scan_request_builder'
require_relative './microsoft_graph_windows_defender_update_signatures/windows_defender_update_signatures_request_builder'
require_relative './microsoft_graph_wipe/wipe_request_builder'
require_relative './security_baseline_states/item/security_baseline_state_item_request_builder'
require_relative './security_baseline_states/security_baseline_states_request_builder'
require_relative './users/users_request_builder'
require_relative './windows_protection_state/windows_protection_state_request_builder'

module MicrosoftGraphBeta::Users::Item::ManagedDevices::Item
    ## 
    # Provides operations to manage the managedDevices property of the microsoft.graph.user entity.
    class ManagedDeviceItemRequestBuilder
        
        ## 
        # Provides operations to manage the assignmentFilterEvaluationStatusDetails property of the microsoft.graph.managedDevice entity.
        def assignment_filter_evaluation_status_details()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::AssignmentFilterEvaluationStatusDetails::AssignmentFilterEvaluationStatusDetailsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the detectedApps property of the microsoft.graph.managedDevice entity.
        def detected_apps()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DetectedApps::DetectedAppsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceCategory property of the microsoft.graph.managedDevice entity.
        def device_category()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DeviceCategory::DeviceCategoryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceCompliancePolicyStates property of the microsoft.graph.managedDevice entity.
        def device_compliance_policy_states()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DeviceCompliancePolicyStates::DeviceCompliancePolicyStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceConfigurationStates property of the microsoft.graph.managedDevice entity.
        def device_configuration_states()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DeviceConfigurationStates::DeviceConfigurationStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceHealthScriptStates property of the microsoft.graph.managedDevice entity.
        def device_health_script_states()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DeviceHealthScriptStates::DeviceHealthScriptStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the logCollectionRequests property of the microsoft.graph.managedDevice entity.
        def log_collection_requests()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::LogCollectionRequests::LogCollectionRequestsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedDeviceMobileAppConfigurationStates property of the microsoft.graph.managedDevice entity.
        def managed_device_mobile_app_configuration_states()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ManagedDeviceMobileAppConfigurationStates::ManagedDeviceMobileAppConfigurationStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the activateDeviceEsim method.
        def microsoft_graph_activate_device_esim()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphActivateDeviceEsim::ActivateDeviceEsimRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bypassActivationLock method.
        def microsoft_graph_bypass_activation_lock()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphBypassActivationLock::BypassActivationLockRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the cleanWindowsDevice method.
        def microsoft_graph_clean_windows_device()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphCleanWindowsDevice::CleanWindowsDeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the createDeviceLogCollectionRequest method.
        def microsoft_graph_create_device_log_collection_request()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphCreateDeviceLogCollectionRequest::CreateDeviceLogCollectionRequestRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the createRemoteHelpSession method.
        def microsoft_graph_create_remote_help_session()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphCreateRemoteHelpSession::CreateRemoteHelpSessionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the deleteUserFromSharedAppleDevice method.
        def microsoft_graph_delete_user_from_shared_apple_device()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphDeleteUserFromSharedAppleDevice::DeleteUserFromSharedAppleDeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the deprovision method.
        def microsoft_graph_deprovision()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphDeprovision::DeprovisionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the disable method.
        def microsoft_graph_disable()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphDisable::DisableRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the disableLostMode method.
        def microsoft_graph_disable_lost_mode()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphDisableLostMode::DisableLostModeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the enableLostMode method.
        def microsoft_graph_enable_lost_mode()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphEnableLostMode::EnableLostModeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the endRemoteHelpSession method.
        def microsoft_graph_end_remote_help_session()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphEndRemoteHelpSession::EndRemoteHelpSessionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the enrollNowAction method.
        def microsoft_graph_enroll_now_action()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphEnrollNowAction::EnrollNowActionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCloudPcRemoteActionResults method.
        def microsoft_graph_get_cloud_pc_remote_action_results()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphGetCloudPcRemoteActionResults::GetCloudPcRemoteActionResultsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCloudPcReviewStatus method.
        def microsoft_graph_get_cloud_pc_review_status()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphGetCloudPcReviewStatus::GetCloudPcReviewStatusRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getFileVaultKey method.
        def microsoft_graph_get_file_vault_key()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphGetFileVaultKey::GetFileVaultKeyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getNonCompliantSettings method.
        def microsoft_graph_get_non_compliant_settings()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphGetNonCompliantSettings::GetNonCompliantSettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getOemWarranty method.
        def microsoft_graph_get_oem_warranty()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphGetOemWarranty::GetOemWarrantyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the initiateMobileDeviceManagementKeyRecovery method.
        def microsoft_graph_initiate_mobile_device_management_key_recovery()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphInitiateMobileDeviceManagementKeyRecovery::InitiateMobileDeviceManagementKeyRecoveryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the initiateOnDemandProactiveRemediation method.
        def microsoft_graph_initiate_on_demand_proactive_remediation()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphInitiateOnDemandProactiveRemediation::InitiateOnDemandProactiveRemediationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the locateDevice method.
        def microsoft_graph_locate_device()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphLocateDevice::LocateDeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the logoutSharedAppleDeviceActiveUser method.
        def microsoft_graph_logout_shared_apple_device_active_user()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphLogoutSharedAppleDeviceActiveUser::LogoutSharedAppleDeviceActiveUserRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the overrideComplianceState method.
        def microsoft_graph_override_compliance_state()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphOverrideComplianceState::OverrideComplianceStateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the playLostModeSound method.
        def microsoft_graph_play_lost_mode_sound()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphPlayLostModeSound::PlayLostModeSoundRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rebootNow method.
        def microsoft_graph_reboot_now()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRebootNow::RebootNowRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the recoverPasscode method.
        def microsoft_graph_recover_passcode()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRecoverPasscode::RecoverPasscodeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the reenable method.
        def microsoft_graph_reenable()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphReenable::ReenableRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the remoteLock method.
        def microsoft_graph_remote_lock()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRemoteLock::RemoteLockRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the removeDeviceFirmwareConfigurationInterfaceManagement method.
        def microsoft_graph_remove_device_firmware_configuration_interface_management()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRemoveDeviceFirmwareConfigurationInterfaceManagement::RemoveDeviceFirmwareConfigurationInterfaceManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the reprovisionCloudPc method.
        def microsoft_graph_reprovision_cloud_pc()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphReprovisionCloudPc::ReprovisionCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the requestRemoteAssistance method.
        def microsoft_graph_request_remote_assistance()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRequestRemoteAssistance::RequestRemoteAssistanceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the requestRemoteHelpSessionAccess method.
        def microsoft_graph_request_remote_help_session_access()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRequestRemoteHelpSessionAccess::RequestRemoteHelpSessionAccessRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the resetPasscode method.
        def microsoft_graph_reset_passcode()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphResetPasscode::ResetPasscodeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the resizeCloudPc method.
        def microsoft_graph_resize_cloud_pc()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphResizeCloudPc::ResizeCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the restoreCloudPc method.
        def microsoft_graph_restore_cloud_pc()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRestoreCloudPc::RestoreCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the retire method.
        def microsoft_graph_retire()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRetire::RetireRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the revokeAppleVppLicenses method.
        def microsoft_graph_revoke_apple_vpp_licenses()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRevokeAppleVppLicenses::RevokeAppleVppLicensesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rotateBitLockerKeys method.
        def microsoft_graph_rotate_bit_locker_keys()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRotateBitLockerKeys::RotateBitLockerKeysRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rotateFileVaultKey method.
        def microsoft_graph_rotate_file_vault_key()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphRotateFileVaultKey::RotateFileVaultKeyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sendCustomNotificationToCompanyPortal method.
        def microsoft_graph_send_custom_notification_to_company_portal()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphSendCustomNotificationToCompanyPortal::SendCustomNotificationToCompanyPortalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the setCloudPcReviewStatus method.
        def microsoft_graph_set_cloud_pc_review_status()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphSetCloudPcReviewStatus::SetCloudPcReviewStatusRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the setDeviceName method.
        def microsoft_graph_set_device_name()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphSetDeviceName::SetDeviceNameRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the shutDown method.
        def microsoft_graph_shut_down()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphShutDown::ShutDownRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the syncDevice method.
        def microsoft_graph_sync_device()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphSyncDevice::SyncDeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the triggerConfigurationManagerAction method.
        def microsoft_graph_trigger_configuration_manager_action()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphTriggerConfigurationManagerAction::TriggerConfigurationManagerActionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the updateWindowsDeviceAccount method.
        def microsoft_graph_update_windows_device_account()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphUpdateWindowsDeviceAccount::UpdateWindowsDeviceAccountRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the windowsDefenderScan method.
        def microsoft_graph_windows_defender_scan()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphWindowsDefenderScan::WindowsDefenderScanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the windowsDefenderUpdateSignatures method.
        def microsoft_graph_windows_defender_update_signatures()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphWindowsDefenderUpdateSignatures::WindowsDefenderUpdateSignaturesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipe method.
        def microsoft_graph_wipe()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::MicrosoftGraphWipe::WipeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the securityBaselineStates property of the microsoft.graph.managedDevice entity.
        def security_baseline_states()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::SecurityBaselineStates::SecurityBaselineStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the users property of the microsoft.graph.managedDevice entity.
        def users()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::Users::UsersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the windowsProtectionState property of the microsoft.graph.managedDevice entity.
        def windows_protection_state()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::WindowsProtectionState::WindowsProtectionStateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the assignmentFilterEvaluationStatusDetails property of the microsoft.graph.managedDevice entity.
        ## @param id Unique identifier of the item
        ## @return a assignment_filter_evaluation_status_details_item_request_builder
        ## 
        def assignment_filter_evaluation_status_details_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["assignmentFilterEvaluationStatusDetails%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::AssignmentFilterEvaluationStatusDetails::Item::AssignmentFilterEvaluationStatusDetailsItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new ManagedDeviceItemRequestBuilder and sets the default values.
        ## @param managedDeviceId key: id of managedDevice
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter, managed_device_id=nil)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/users/{user%2Did}/managedDevices/{managedDevice%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property managedDevices for users
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.to_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Provides operations to manage the detectedApps property of the microsoft.graph.managedDevice entity.
        ## @param id Unique identifier of the item
        ## @return a detected_app_item_request_builder
        ## 
        def detected_apps_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["detectedApp%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DetectedApps::Item::DetectedAppItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the deviceCompliancePolicyStates property of the microsoft.graph.managedDevice entity.
        ## @param id Unique identifier of the item
        ## @return a device_compliance_policy_state_item_request_builder
        ## 
        def device_compliance_policy_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceCompliancePolicyState%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DeviceCompliancePolicyStates::Item::DeviceCompliancePolicyStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the deviceConfigurationStates property of the microsoft.graph.managedDevice entity.
        ## @param id Unique identifier of the item
        ## @return a device_configuration_state_item_request_builder
        ## 
        def device_configuration_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceConfigurationState%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DeviceConfigurationStates::Item::DeviceConfigurationStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## The managed devices associated with the user.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of managed_device
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the logCollectionRequests property of the microsoft.graph.managedDevice entity.
        ## @param id Unique identifier of the item
        ## @return a device_log_collection_response_item_request_builder
        ## 
        def log_collection_requests_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceLogCollectionResponse%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::LogCollectionRequests::Item::DeviceLogCollectionResponseItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedDeviceMobileAppConfigurationStates property of the microsoft.graph.managedDevice entity.
        ## @param id Unique identifier of the item
        ## @return a managed_device_mobile_app_configuration_state_item_request_builder
        ## 
        def managed_device_mobile_app_configuration_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedDeviceMobileAppConfigurationState%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ManagedDeviceMobileAppConfigurationStates::Item::ManagedDeviceMobileAppConfigurationStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to call the retrieveRemoteHelpSession method.
        ## @param sessionKey Usage: sessionKey='{sessionKey}'
        ## @return a retrieve_remote_help_session_with_session_key_request_builder
        ## 
        def microsoft_graph_retrieve_remote_help_session_with_session_key(session_key)
            raise StandardError, 'session_key cannot be null' if session_key.nil?
            return RetrieveRemoteHelpSessionWithSessionKeyRequestBuilder.new(@path_parameters, @request_adapter, sessionKey)
        end
        ## 
        ## Update the navigation property managedDevices in users
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of managed_device
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the securityBaselineStates property of the microsoft.graph.managedDevice entity.
        ## @param id Unique identifier of the item
        ## @return a security_baseline_state_item_request_builder
        ## 
        def security_baseline_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["securityBaselineState%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::SecurityBaselineStates::Item::SecurityBaselineStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property managedDevices for users
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_delete_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :DELETE
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## The managed devices associated with the user.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_get_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :GET
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Update the navigation property managedDevices in users
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :PATCH
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ManagedDeviceItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # The managed devices associated with the user.
        class ManagedDeviceItemRequestBuilderGetQueryParameters
            
            ## 
            # Expand related entities
            attr_accessor :expand
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
            ## @return a string
            ## 
            def get_query_parameter(original_name)
                raise StandardError, 'original_name cannot be null' if original_name.nil?
                case original_name
                    when "expand"
                        return "%24expand"
                    when "select"
                        return "%24select"
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ManagedDeviceItemRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ManagedDeviceItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
