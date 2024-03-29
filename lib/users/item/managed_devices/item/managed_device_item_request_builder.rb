require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/managed_device'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../users'
require_relative '../../item'
require_relative '../managed_devices'
require_relative './activate_device_esim/activate_device_esim_request_builder'
require_relative './assignment_filter_evaluation_status_details/assignment_filter_evaluation_status_details_request_builder'
require_relative './bypass_activation_lock/bypass_activation_lock_request_builder'
require_relative './clean_windows_device/clean_windows_device_request_builder'
require_relative './create_device_log_collection_request/create_device_log_collection_request_request_builder'
require_relative './delete_user_from_shared_apple_device/delete_user_from_shared_apple_device_request_builder'
require_relative './deprovision/deprovision_request_builder'
require_relative './detected_apps/detected_apps_request_builder'
require_relative './device_category/device_category_request_builder'
require_relative './device_compliance_policy_states/device_compliance_policy_states_request_builder'
require_relative './device_configuration_states/device_configuration_states_request_builder'
require_relative './device_health_script_states/device_health_script_states_request_builder'
require_relative './disable/disable_request_builder'
require_relative './disable_lost_mode/disable_lost_mode_request_builder'
require_relative './enable_lost_mode/enable_lost_mode_request_builder'
require_relative './enroll_now_action/enroll_now_action_request_builder'
require_relative './get_cloud_pc_remote_action_results/get_cloud_pc_remote_action_results_request_builder'
require_relative './get_cloud_pc_review_status/get_cloud_pc_review_status_request_builder'
require_relative './get_file_vault_key/get_file_vault_key_request_builder'
require_relative './get_non_compliant_settings/get_non_compliant_settings_request_builder'
require_relative './initiate_mobile_device_management_key_recovery/initiate_mobile_device_management_key_recovery_request_builder'
require_relative './initiate_on_demand_proactive_remediation/initiate_on_demand_proactive_remediation_request_builder'
require_relative './item'
require_relative './locate_device/locate_device_request_builder'
require_relative './log_collection_requests/log_collection_requests_request_builder'
require_relative './logout_shared_apple_device_active_user/logout_shared_apple_device_active_user_request_builder'
require_relative './managed_device_mobile_app_configuration_states/managed_device_mobile_app_configuration_states_request_builder'
require_relative './override_compliance_state/override_compliance_state_request_builder'
require_relative './play_lost_mode_sound/play_lost_mode_sound_request_builder'
require_relative './reboot_now/reboot_now_request_builder'
require_relative './recover_passcode/recover_passcode_request_builder'
require_relative './reenable/reenable_request_builder'
require_relative './remote_lock/remote_lock_request_builder'
require_relative './remove_device_firmware_configuration_interface_management/remove_device_firmware_configuration_interface_management_request_builder'
require_relative './reprovision_cloud_pc/reprovision_cloud_pc_request_builder'
require_relative './request_remote_assistance/request_remote_assistance_request_builder'
require_relative './reset_passcode/reset_passcode_request_builder'
require_relative './resize_cloud_pc/resize_cloud_pc_request_builder'
require_relative './restore_cloud_pc/restore_cloud_pc_request_builder'
require_relative './retire/retire_request_builder'
require_relative './revoke_apple_vpp_licenses/revoke_apple_vpp_licenses_request_builder'
require_relative './rotate_bit_locker_keys/rotate_bit_locker_keys_request_builder'
require_relative './rotate_file_vault_key/rotate_file_vault_key_request_builder'
require_relative './rotate_local_admin_password/rotate_local_admin_password_request_builder'
require_relative './security_baseline_states/security_baseline_states_request_builder'
require_relative './send_custom_notification_to_company_portal/send_custom_notification_to_company_portal_request_builder'
require_relative './set_cloud_pc_review_status/set_cloud_pc_review_status_request_builder'
require_relative './set_device_name/set_device_name_request_builder'
require_relative './shut_down/shut_down_request_builder'
require_relative './sync_device/sync_device_request_builder'
require_relative './trigger_configuration_manager_action/trigger_configuration_manager_action_request_builder'
require_relative './update_windows_device_account/update_windows_device_account_request_builder'
require_relative './users/users_request_builder'
require_relative './windows_defender_scan/windows_defender_scan_request_builder'
require_relative './windows_defender_update_signatures/windows_defender_update_signatures_request_builder'
require_relative './windows_protection_state/windows_protection_state_request_builder'
require_relative './wipe/wipe_request_builder'

module MicrosoftGraphBeta
    module Users
        module Item
            module ManagedDevices
                module Item
                    ## 
                    # Provides operations to manage the managedDevices property of the microsoft.graph.user entity.
                    class ManagedDeviceItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to call the activateDeviceEsim method.
                        def activate_device_esim()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ActivateDeviceEsim::ActivateDeviceEsimRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the assignmentFilterEvaluationStatusDetails property of the microsoft.graph.managedDevice entity.
                        def assignment_filter_evaluation_status_details()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::AssignmentFilterEvaluationStatusDetails::AssignmentFilterEvaluationStatusDetailsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the bypassActivationLock method.
                        def bypass_activation_lock()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::BypassActivationLock::BypassActivationLockRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the cleanWindowsDevice method.
                        def clean_windows_device()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::CleanWindowsDevice::CleanWindowsDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the createDeviceLogCollectionRequest method.
                        def create_device_log_collection_request()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::CreateDeviceLogCollectionRequest::CreateDeviceLogCollectionRequestRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the deleteUserFromSharedAppleDevice method.
                        def delete_user_from_shared_apple_device()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DeleteUserFromSharedAppleDevice::DeleteUserFromSharedAppleDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the deprovision method.
                        def deprovision()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::Deprovision::DeprovisionRequestBuilder.new(@path_parameters, @request_adapter)
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
                        # Provides operations to call the disable method.
                        def disable()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::Disable::DisableRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the disableLostMode method.
                        def disable_lost_mode()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::DisableLostMode::DisableLostModeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the enableLostMode method.
                        def enable_lost_mode()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::EnableLostMode::EnableLostModeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the enrollNowAction method.
                        def enroll_now_action()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::EnrollNowAction::EnrollNowActionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getCloudPcRemoteActionResults method.
                        def get_cloud_pc_remote_action_results()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::GetCloudPcRemoteActionResults::GetCloudPcRemoteActionResultsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getCloudPcReviewStatus method.
                        def get_cloud_pc_review_status()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::GetCloudPcReviewStatus::GetCloudPcReviewStatusRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getFileVaultKey method.
                        def get_file_vault_key()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::GetFileVaultKey::GetFileVaultKeyRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getNonCompliantSettings method.
                        def get_non_compliant_settings()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::GetNonCompliantSettings::GetNonCompliantSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the initiateMobileDeviceManagementKeyRecovery method.
                        def initiate_mobile_device_management_key_recovery()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::InitiateMobileDeviceManagementKeyRecovery::InitiateMobileDeviceManagementKeyRecoveryRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the initiateOnDemandProactiveRemediation method.
                        def initiate_on_demand_proactive_remediation()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::InitiateOnDemandProactiveRemediation::InitiateOnDemandProactiveRemediationRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the locateDevice method.
                        def locate_device()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::LocateDevice::LocateDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the logCollectionRequests property of the microsoft.graph.managedDevice entity.
                        def log_collection_requests()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::LogCollectionRequests::LogCollectionRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the logoutSharedAppleDeviceActiveUser method.
                        def logout_shared_apple_device_active_user()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::LogoutSharedAppleDeviceActiveUser::LogoutSharedAppleDeviceActiveUserRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the managedDeviceMobileAppConfigurationStates property of the microsoft.graph.managedDevice entity.
                        def managed_device_mobile_app_configuration_states()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ManagedDeviceMobileAppConfigurationStates::ManagedDeviceMobileAppConfigurationStatesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the overrideComplianceState method.
                        def override_compliance_state()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::OverrideComplianceState::OverrideComplianceStateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the playLostModeSound method.
                        def play_lost_mode_sound()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::PlayLostModeSound::PlayLostModeSoundRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the rebootNow method.
                        def reboot_now()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RebootNow::RebootNowRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the recoverPasscode method.
                        def recover_passcode()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RecoverPasscode::RecoverPasscodeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the reenable method.
                        def reenable()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::Reenable::ReenableRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the remoteLock method.
                        def remote_lock()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RemoteLock::RemoteLockRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the removeDeviceFirmwareConfigurationInterfaceManagement method.
                        def remove_device_firmware_configuration_interface_management()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RemoveDeviceFirmwareConfigurationInterfaceManagement::RemoveDeviceFirmwareConfigurationInterfaceManagementRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the reprovisionCloudPc method.
                        def reprovision_cloud_pc()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ReprovisionCloudPc::ReprovisionCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the requestRemoteAssistance method.
                        def request_remote_assistance()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RequestRemoteAssistance::RequestRemoteAssistanceRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the resetPasscode method.
                        def reset_passcode()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ResetPasscode::ResetPasscodeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the resizeCloudPc method.
                        def resize_cloud_pc()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ResizeCloudPc::ResizeCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the restoreCloudPc method.
                        def restore_cloud_pc()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RestoreCloudPc::RestoreCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the retire method.
                        def retire()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::Retire::RetireRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the revokeAppleVppLicenses method.
                        def revoke_apple_vpp_licenses()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RevokeAppleVppLicenses::RevokeAppleVppLicensesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the rotateBitLockerKeys method.
                        def rotate_bit_locker_keys()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RotateBitLockerKeys::RotateBitLockerKeysRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the rotateFileVaultKey method.
                        def rotate_file_vault_key()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RotateFileVaultKey::RotateFileVaultKeyRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the rotateLocalAdminPassword method.
                        def rotate_local_admin_password()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::RotateLocalAdminPassword::RotateLocalAdminPasswordRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the securityBaselineStates property of the microsoft.graph.managedDevice entity.
                        def security_baseline_states()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::SecurityBaselineStates::SecurityBaselineStatesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the sendCustomNotificationToCompanyPortal method.
                        def send_custom_notification_to_company_portal()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::SendCustomNotificationToCompanyPortal::SendCustomNotificationToCompanyPortalRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the setCloudPcReviewStatus method.
                        def set_cloud_pc_review_status()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::SetCloudPcReviewStatus::SetCloudPcReviewStatusRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the setDeviceName method.
                        def set_device_name()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::SetDeviceName::SetDeviceNameRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the shutDown method.
                        def shut_down()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ShutDown::ShutDownRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the syncDevice method.
                        def sync_device()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::SyncDevice::SyncDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the triggerConfigurationManagerAction method.
                        def trigger_configuration_manager_action()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::TriggerConfigurationManagerAction::TriggerConfigurationManagerActionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the updateWindowsDeviceAccount method.
                        def update_windows_device_account()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::UpdateWindowsDeviceAccount::UpdateWindowsDeviceAccountRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the users property of the microsoft.graph.managedDevice entity.
                        def users()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::Users::UsersRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the windowsDefenderScan method.
                        def windows_defender_scan()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::WindowsDefenderScan::WindowsDefenderScanRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the windowsDefenderUpdateSignatures method.
                        def windows_defender_update_signatures()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::WindowsDefenderUpdateSignatures::WindowsDefenderUpdateSignaturesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the windowsProtectionState property of the microsoft.graph.managedDevice entity.
                        def windows_protection_state()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::WindowsProtectionState::WindowsProtectionStateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the wipe method.
                        def wipe()
                            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::Wipe::WipeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ManagedDeviceItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/managedDevices/{managedDevice%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete navigation property managedDevices for users
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of void
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, nil, error_mapping)
                        end
                        ## 
                        ## The managed devices associated with the user.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of managed_device
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the navigation property managedDevices in users
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of managed_device
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete navigation property managedDevices for users
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                            return request_info
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
                            ## @param original_name The original query parameter name in the class.
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
                    end
                end
            end
        end
    end
end
