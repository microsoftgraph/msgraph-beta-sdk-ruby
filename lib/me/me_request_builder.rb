require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/o_data_errors/o_data_error'
require_relative '../models/user'
require_relative './activities/activities_request_builder'
require_relative './agreement_acceptances/agreement_acceptances_request_builder'
require_relative './analytics/analytics_request_builder'
require_relative './app_consent_requests_for_approval/app_consent_requests_for_approval_request_builder'
require_relative './app_role_assigned_resources/app_role_assigned_resources_request_builder'
require_relative './app_role_assignments/app_role_assignments_request_builder'
require_relative './approvals/approvals_request_builder'
require_relative './assign_license/assign_license_request_builder'
require_relative './authentication/authentication_request_builder'
require_relative './calendar/calendar_request_builder'
require_relative './calendar_groups/calendar_groups_request_builder'
require_relative './calendars/calendars_request_builder'
require_relative './calendar_view/calendar_view_request_builder'
require_relative './change_password/change_password_request_builder'
require_relative './chats/chats_request_builder'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './cloud_p_cs/cloud_p_cs_request_builder'
require_relative './contact_folders/contact_folders_request_builder'
require_relative './contacts/contacts_request_builder'
require_relative './created_objects/created_objects_request_builder'
require_relative './device_enrollment_configurations/device_enrollment_configurations_request_builder'
require_relative './device_management_troubleshooting_events/device_management_troubleshooting_events_request_builder'
require_relative './devices/devices_request_builder'
require_relative './direct_reports/direct_reports_request_builder'
require_relative './drive/drive_request_builder'
require_relative './drives/drives_request_builder'
require_relative './events/events_request_builder'
require_relative './export_device_and_app_management_data/export_device_and_app_management_data_request_builder'
require_relative './export_device_and_app_management_data_with_skip_with_top/export_device_and_app_management_data_with_skip_with_top_request_builder'
require_relative './export_personal_data/export_personal_data_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './find_meeting_times/find_meeting_times_request_builder'
require_relative './find_room_lists/find_room_lists_request_builder'
require_relative './find_rooms/find_rooms_request_builder'
require_relative './find_rooms_with_room_list/find_rooms_with_room_list_request_builder'
require_relative './followed_sites/followed_sites_request_builder'
require_relative './get_effective_device_enrollment_configurations/get_effective_device_enrollment_configurations_request_builder'
require_relative './get_logged_on_managed_devices/get_logged_on_managed_devices_request_builder'
require_relative './get_mail_tips/get_mail_tips_request_builder'
require_relative './get_managed_app_diagnostic_statuses/get_managed_app_diagnostic_statuses_request_builder'
require_relative './get_managed_app_policies/get_managed_app_policies_request_builder'
require_relative './get_managed_devices_with_app_failures/get_managed_devices_with_app_failures_request_builder'
require_relative './get_managed_devices_with_failed_or_pending_apps/get_managed_devices_with_failed_or_pending_apps_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './inference_classification/inference_classification_request_builder'
require_relative './information_protection/information_protection_request_builder'
require_relative './insights/insights_request_builder'
require_relative './invalidate_all_refresh_tokens/invalidate_all_refresh_tokens_request_builder'
require_relative './is_managed_app_user_blocked/is_managed_app_user_blocked_request_builder'
require_relative './joined_groups/joined_groups_request_builder'
require_relative './joined_teams/joined_teams_request_builder'
require_relative './license_details/license_details_request_builder'
require_relative './mailbox_settings/mailbox_settings_request_builder'
require_relative './mail_folders/mail_folders_request_builder'
require_relative './managed_app_registrations/managed_app_registrations_request_builder'
require_relative './managed_devices/managed_devices_request_builder'
require_relative './manager/manager_request_builder'
require_relative './me'
require_relative './member_of/member_of_request_builder'
require_relative './messages/messages_request_builder'
require_relative './mobile_app_intent_and_states/mobile_app_intent_and_states_request_builder'
require_relative './mobile_app_troubleshooting_events/mobile_app_troubleshooting_events_request_builder'
require_relative './notifications/notifications_request_builder'
require_relative './oauth2_permission_grants/oauth2_permission_grants_request_builder'
require_relative './onenote/onenote_request_builder'
require_relative './online_meetings/online_meetings_request_builder'
require_relative './outlook/outlook_request_builder'
require_relative './owned_devices/owned_devices_request_builder'
require_relative './owned_objects/owned_objects_request_builder'
require_relative './pending_access_review_instances/pending_access_review_instances_request_builder'
require_relative './people/people_request_builder'
require_relative './photo/photo_request_builder'
require_relative './photos/photos_request_builder'
require_relative './planner/planner_request_builder'
require_relative './presence/presence_request_builder'
require_relative './profile/profile_request_builder'
require_relative './registered_devices/registered_devices_request_builder'
require_relative './reminder_view_with_start_date_time_with_end_date_time/reminder_view_with_start_date_time_with_end_date_time_request_builder'
require_relative './remove_all_devices_from_management/remove_all_devices_from_management_request_builder'
require_relative './reprocess_license_assignment/reprocess_license_assignment_request_builder'
require_relative './restore/restore_request_builder'
require_relative './retry_service_provisioning/retry_service_provisioning_request_builder'
require_relative './revoke_sign_in_sessions/revoke_sign_in_sessions_request_builder'
require_relative './scoped_role_member_of/scoped_role_member_of_request_builder'
require_relative './security/security_request_builder'
require_relative './send_mail/send_mail_request_builder'
require_relative './settings/settings_request_builder'
require_relative './teamwork/teamwork_request_builder'
require_relative './todo/todo_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'
require_relative './transitive_reports/transitive_reports_request_builder'
require_relative './translate_exchange_ids/translate_exchange_ids_request_builder'
require_relative './unblock_managed_apps/unblock_managed_apps_request_builder'
require_relative './usage_rights/usage_rights_request_builder'
require_relative './windows_information_protection_device_registrations/windows_information_protection_device_registrations_request_builder'
require_relative './wipe_and_block_managed_apps/wipe_and_block_managed_apps_request_builder'
require_relative './wipe_managed_app_registration_by_device_tag/wipe_managed_app_registration_by_device_tag_request_builder'
require_relative './wipe_managed_app_registrations_by_azure_ad_device_id/wipe_managed_app_registrations_by_azure_ad_device_id_request_builder'
require_relative './wipe_managed_app_registrations_by_device_tag/wipe_managed_app_registrations_by_device_tag_request_builder'

module MicrosoftGraphBeta
    module Me
        ## 
        # Provides operations to manage the user singleton.
        class MeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the activities property of the microsoft.graph.user entity.
            def activities()
                return MicrosoftGraphBeta::Me::Activities::ActivitiesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the agreementAcceptances property of the microsoft.graph.user entity.
            def agreement_acceptances()
                return MicrosoftGraphBeta::Me::AgreementAcceptances::AgreementAcceptancesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the analytics property of the microsoft.graph.user entity.
            def analytics()
                return MicrosoftGraphBeta::Me::Analytics::AnalyticsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the appConsentRequestsForApproval property of the microsoft.graph.user entity.
            def app_consent_requests_for_approval()
                return MicrosoftGraphBeta::Me::AppConsentRequestsForApproval::AppConsentRequestsForApprovalRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the appRoleAssignedResources property of the microsoft.graph.user entity.
            def app_role_assigned_resources()
                return MicrosoftGraphBeta::Me::AppRoleAssignedResources::AppRoleAssignedResourcesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the appRoleAssignments property of the microsoft.graph.user entity.
            def app_role_assignments()
                return MicrosoftGraphBeta::Me::AppRoleAssignments::AppRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the approvals property of the microsoft.graph.user entity.
            def approvals()
                return MicrosoftGraphBeta::Me::Approvals::ApprovalsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the assignLicense method.
            def assign_license()
                return MicrosoftGraphBeta::Me::AssignLicense::AssignLicenseRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the authentication property of the microsoft.graph.user entity.
            def authentication()
                return MicrosoftGraphBeta::Me::Authentication::AuthenticationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the calendar property of the microsoft.graph.user entity.
            def calendar()
                return MicrosoftGraphBeta::Me::Calendar::CalendarRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the calendarGroups property of the microsoft.graph.user entity.
            def calendar_groups()
                return MicrosoftGraphBeta::Me::CalendarGroups::CalendarGroupsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the calendars property of the microsoft.graph.user entity.
            def calendars()
                return MicrosoftGraphBeta::Me::Calendars::CalendarsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the calendarView property of the microsoft.graph.user entity.
            def calendar_view()
                return MicrosoftGraphBeta::Me::CalendarView::CalendarViewRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the changePassword method.
            def change_password()
                return MicrosoftGraphBeta::Me::ChangePassword::ChangePasswordRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the chats property of the microsoft.graph.user entity.
            def chats()
                return MicrosoftGraphBeta::Me::Chats::ChatsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the checkMemberGroups method.
            def check_member_groups()
                return MicrosoftGraphBeta::Me::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the checkMemberObjects method.
            def check_member_objects()
                return MicrosoftGraphBeta::Me::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the cloudPCs property of the microsoft.graph.user entity.
            def cloud_p_cs()
                return MicrosoftGraphBeta::Me::CloudPCs::CloudPCsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the contactFolders property of the microsoft.graph.user entity.
            def contact_folders()
                return MicrosoftGraphBeta::Me::ContactFolders::ContactFoldersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the contacts property of the microsoft.graph.user entity.
            def contacts()
                return MicrosoftGraphBeta::Me::Contacts::ContactsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the createdObjects property of the microsoft.graph.user entity.
            def created_objects()
                return MicrosoftGraphBeta::Me::CreatedObjects::CreatedObjectsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceEnrollmentConfigurations property of the microsoft.graph.user entity.
            def device_enrollment_configurations()
                return MicrosoftGraphBeta::Me::DeviceEnrollmentConfigurations::DeviceEnrollmentConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceManagementTroubleshootingEvents property of the microsoft.graph.user entity.
            def device_management_troubleshooting_events()
                return MicrosoftGraphBeta::Me::DeviceManagementTroubleshootingEvents::DeviceManagementTroubleshootingEventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the devices property of the microsoft.graph.user entity.
            def devices()
                return MicrosoftGraphBeta::Me::Devices::DevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the directReports property of the microsoft.graph.user entity.
            def direct_reports()
                return MicrosoftGraphBeta::Me::DirectReports::DirectReportsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the drive property of the microsoft.graph.user entity.
            def drive()
                return MicrosoftGraphBeta::Me::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the drives property of the microsoft.graph.user entity.
            def drives()
                return MicrosoftGraphBeta::Me::Drives::DrivesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the events property of the microsoft.graph.user entity.
            def events()
                return MicrosoftGraphBeta::Me::Events::EventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the exportDeviceAndAppManagementData method.
            def export_device_and_app_management_data()
                return MicrosoftGraphBeta::Me::ExportDeviceAndAppManagementData::ExportDeviceAndAppManagementDataRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the exportPersonalData method.
            def export_personal_data()
                return MicrosoftGraphBeta::Me::ExportPersonalData::ExportPersonalDataRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the extensions property of the microsoft.graph.user entity.
            def extensions()
                return MicrosoftGraphBeta::Me::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the findMeetingTimes method.
            def find_meeting_times()
                return MicrosoftGraphBeta::Me::FindMeetingTimes::FindMeetingTimesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the findRoomLists method.
            def find_room_lists()
                return MicrosoftGraphBeta::Me::FindRoomLists::FindRoomListsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the findRooms method.
            def find_rooms()
                return MicrosoftGraphBeta::Me::FindRooms::FindRoomsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the followedSites property of the microsoft.graph.user entity.
            def followed_sites()
                return MicrosoftGraphBeta::Me::FollowedSites::FollowedSitesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getEffectiveDeviceEnrollmentConfigurations method.
            def get_effective_device_enrollment_configurations()
                return MicrosoftGraphBeta::Me::GetEffectiveDeviceEnrollmentConfigurations::GetEffectiveDeviceEnrollmentConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getLoggedOnManagedDevices method.
            def get_logged_on_managed_devices()
                return MicrosoftGraphBeta::Me::GetLoggedOnManagedDevices::GetLoggedOnManagedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getMailTips method.
            def get_mail_tips()
                return MicrosoftGraphBeta::Me::GetMailTips::GetMailTipsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getManagedAppDiagnosticStatuses method.
            def get_managed_app_diagnostic_statuses()
                return MicrosoftGraphBeta::Me::GetManagedAppDiagnosticStatuses::GetManagedAppDiagnosticStatusesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getManagedAppPolicies method.
            def get_managed_app_policies()
                return MicrosoftGraphBeta::Me::GetManagedAppPolicies::GetManagedAppPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getManagedDevicesWithAppFailures method.
            def get_managed_devices_with_app_failures()
                return MicrosoftGraphBeta::Me::GetManagedDevicesWithAppFailures::GetManagedDevicesWithAppFailuresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getManagedDevicesWithFailedOrPendingApps method.
            def get_managed_devices_with_failed_or_pending_apps()
                return MicrosoftGraphBeta::Me::GetManagedDevicesWithFailedOrPendingApps::GetManagedDevicesWithFailedOrPendingAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getMemberGroups method.
            def get_member_groups()
                return MicrosoftGraphBeta::Me::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getMemberObjects method.
            def get_member_objects()
                return MicrosoftGraphBeta::Me::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the inferenceClassification property of the microsoft.graph.user entity.
            def inference_classification()
                return MicrosoftGraphBeta::Me::InferenceClassification::InferenceClassificationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the informationProtection property of the microsoft.graph.user entity.
            def information_protection()
                return MicrosoftGraphBeta::Me::InformationProtection::InformationProtectionRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the insights property of the microsoft.graph.user entity.
            def insights()
                return MicrosoftGraphBeta::Me::Insights::InsightsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the invalidateAllRefreshTokens method.
            def invalidate_all_refresh_tokens()
                return MicrosoftGraphBeta::Me::InvalidateAllRefreshTokens::InvalidateAllRefreshTokensRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the isManagedAppUserBlocked method.
            def is_managed_app_user_blocked()
                return MicrosoftGraphBeta::Me::IsManagedAppUserBlocked::IsManagedAppUserBlockedRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the joinedGroups property of the microsoft.graph.user entity.
            def joined_groups()
                return MicrosoftGraphBeta::Me::JoinedGroups::JoinedGroupsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the joinedTeams property of the microsoft.graph.user entity.
            def joined_teams()
                return MicrosoftGraphBeta::Me::JoinedTeams::JoinedTeamsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the licenseDetails property of the microsoft.graph.user entity.
            def license_details()
                return MicrosoftGraphBeta::Me::LicenseDetails::LicenseDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The mailboxSettings property
            def mailbox_settings()
                return MicrosoftGraphBeta::Me::MailboxSettings::MailboxSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mailFolders property of the microsoft.graph.user entity.
            def mail_folders()
                return MicrosoftGraphBeta::Me::MailFolders::MailFoldersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedAppRegistrations property of the microsoft.graph.user entity.
            def managed_app_registrations()
                return MicrosoftGraphBeta::Me::ManagedAppRegistrations::ManagedAppRegistrationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedDevices property of the microsoft.graph.user entity.
            def managed_devices()
                return MicrosoftGraphBeta::Me::ManagedDevices::ManagedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the manager property of the microsoft.graph.user entity.
            def manager()
                return MicrosoftGraphBeta::Me::Manager::ManagerRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the memberOf property of the microsoft.graph.user entity.
            def member_of()
                return MicrosoftGraphBeta::Me::MemberOf::MemberOfRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the messages property of the microsoft.graph.user entity.
            def messages()
                return MicrosoftGraphBeta::Me::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileAppIntentAndStates property of the microsoft.graph.user entity.
            def mobile_app_intent_and_states()
                return MicrosoftGraphBeta::Me::MobileAppIntentAndStates::MobileAppIntentAndStatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileAppTroubleshootingEvents property of the microsoft.graph.user entity.
            def mobile_app_troubleshooting_events()
                return MicrosoftGraphBeta::Me::MobileAppTroubleshootingEvents::MobileAppTroubleshootingEventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the notifications property of the microsoft.graph.user entity.
            def notifications()
                return MicrosoftGraphBeta::Me::Notifications::NotificationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the oauth2PermissionGrants property of the microsoft.graph.user entity.
            def oauth2_permission_grants()
                return MicrosoftGraphBeta::Me::Oauth2PermissionGrants::Oauth2PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the onenote property of the microsoft.graph.user entity.
            def onenote()
                return MicrosoftGraphBeta::Me::Onenote::OnenoteRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the onlineMeetings property of the microsoft.graph.user entity.
            def online_meetings()
                return MicrosoftGraphBeta::Me::OnlineMeetings::OnlineMeetingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the outlook property of the microsoft.graph.user entity.
            def outlook()
                return MicrosoftGraphBeta::Me::Outlook::OutlookRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the ownedDevices property of the microsoft.graph.user entity.
            def owned_devices()
                return MicrosoftGraphBeta::Me::OwnedDevices::OwnedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the ownedObjects property of the microsoft.graph.user entity.
            def owned_objects()
                return MicrosoftGraphBeta::Me::OwnedObjects::OwnedObjectsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the pendingAccessReviewInstances property of the microsoft.graph.user entity.
            def pending_access_review_instances()
                return MicrosoftGraphBeta::Me::PendingAccessReviewInstances::PendingAccessReviewInstancesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the people property of the microsoft.graph.user entity.
            def people()
                return MicrosoftGraphBeta::Me::People::PeopleRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the photo property of the microsoft.graph.user entity.
            def photo()
                return MicrosoftGraphBeta::Me::Photo::PhotoRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the photos property of the microsoft.graph.user entity.
            def photos()
                return MicrosoftGraphBeta::Me::Photos::PhotosRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the planner property of the microsoft.graph.user entity.
            def planner()
                return MicrosoftGraphBeta::Me::Planner::PlannerRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the presence property of the microsoft.graph.user entity.
            def presence()
                return MicrosoftGraphBeta::Me::Presence::PresenceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the profile property of the microsoft.graph.user entity.
            def profile()
                return MicrosoftGraphBeta::Me::Profile::ProfileRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the registeredDevices property of the microsoft.graph.user entity.
            def registered_devices()
                return MicrosoftGraphBeta::Me::RegisteredDevices::RegisteredDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the removeAllDevicesFromManagement method.
            def remove_all_devices_from_management()
                return MicrosoftGraphBeta::Me::RemoveAllDevicesFromManagement::RemoveAllDevicesFromManagementRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the reprocessLicenseAssignment method.
            def reprocess_license_assignment()
                return MicrosoftGraphBeta::Me::ReprocessLicenseAssignment::ReprocessLicenseAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the restore method.
            def restore()
                return MicrosoftGraphBeta::Me::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the retryServiceProvisioning method.
            def retry_service_provisioning()
                return MicrosoftGraphBeta::Me::RetryServiceProvisioning::RetryServiceProvisioningRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the revokeSignInSessions method.
            def revoke_sign_in_sessions()
                return MicrosoftGraphBeta::Me::RevokeSignInSessions::RevokeSignInSessionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the scopedRoleMemberOf property of the microsoft.graph.user entity.
            def scoped_role_member_of()
                return MicrosoftGraphBeta::Me::ScopedRoleMemberOf::ScopedRoleMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the security property of the microsoft.graph.user entity.
            def security()
                return MicrosoftGraphBeta::Me::Security::SecurityRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the sendMail method.
            def send_mail()
                return MicrosoftGraphBeta::Me::SendMail::SendMailRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the settings property of the microsoft.graph.user entity.
            def settings()
                return MicrosoftGraphBeta::Me::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the teamwork property of the microsoft.graph.user entity.
            def teamwork()
                return MicrosoftGraphBeta::Me::Teamwork::TeamworkRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the todo property of the microsoft.graph.user entity.
            def todo()
                return MicrosoftGraphBeta::Me::Todo::TodoRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.user entity.
            def transitive_member_of()
                return MicrosoftGraphBeta::Me::TransitiveMemberOf::TransitiveMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the transitiveReports property of the microsoft.graph.user entity.
            def transitive_reports()
                return MicrosoftGraphBeta::Me::TransitiveReports::TransitiveReportsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the translateExchangeIds method.
            def translate_exchange_ids()
                return MicrosoftGraphBeta::Me::TranslateExchangeIds::TranslateExchangeIdsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the unblockManagedApps method.
            def unblock_managed_apps()
                return MicrosoftGraphBeta::Me::UnblockManagedApps::UnblockManagedAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the usageRights property of the microsoft.graph.user entity.
            def usage_rights()
                return MicrosoftGraphBeta::Me::UsageRights::UsageRightsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionDeviceRegistrations property of the microsoft.graph.user entity.
            def windows_information_protection_device_registrations()
                return MicrosoftGraphBeta::Me::WindowsInformationProtectionDeviceRegistrations::WindowsInformationProtectionDeviceRegistrationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the wipeAndBlockManagedApps method.
            def wipe_and_block_managed_apps()
                return MicrosoftGraphBeta::Me::WipeAndBlockManagedApps::WipeAndBlockManagedAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the wipeManagedAppRegistrationByDeviceTag method.
            def wipe_managed_app_registration_by_device_tag()
                return MicrosoftGraphBeta::Me::WipeManagedAppRegistrationByDeviceTag::WipeManagedAppRegistrationByDeviceTagRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the wipeManagedAppRegistrationsByAzureAdDeviceId method.
            def wipe_managed_app_registrations_by_azure_ad_device_id()
                return MicrosoftGraphBeta::Me::WipeManagedAppRegistrationsByAzureAdDeviceId::WipeManagedAppRegistrationsByAzureAdDeviceIdRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the wipeManagedAppRegistrationsByDeviceTag method.
            def wipe_managed_app_registrations_by_device_tag()
                return MicrosoftGraphBeta::Me::WipeManagedAppRegistrationsByDeviceTag::WipeManagedAppRegistrationsByDeviceTagRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new MeRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/me{?%24select,%24expand}")
            end
            ## 
            ## Provides operations to call the exportDeviceAndAppManagementData method.
            ## @param skip Usage: skip={skip}
            ## @param top Usage: top={top}
            ## @return a export_device_and_app_management_data_with_skip_with_top_request_builder
            ## 
            def export_device_and_app_management_data_with_skip_with_top(skip, top)
                raise StandardError, 'skip cannot be null' if skip.nil?
                raise StandardError, 'top cannot be null' if top.nil?
                return ExportDeviceAndAppManagementDataWithSkipWithTopRequestBuilder.new(@path_parameters, @request_adapter, skip, top)
            end
            ## 
            ## Provides operations to call the findRooms method.
            ## @param room_list Usage: RoomList='{RoomList}'
            ## @return a find_rooms_with_room_list_request_builder
            ## 
            def find_rooms_with_room_list(room_list)
                raise StandardError, 'room_list cannot be null' if room_list.nil?
                return FindRoomsWithRoomListRequestBuilder.new(@path_parameters, @request_adapter, RoomList)
            end
            ## 
            ## Retrieve the properties and relationships of user object. This operation returns by default only a subset of the more commonly used properties for each user. These _default_ properties are noted in the Properties section. To get properties that are _not_ returned by default, do a GET operation for the user and specify the properties in a `$select` OData query option. Because the **user** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in a **user** instance.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of user
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::User.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update the properties of a user object. Not all properties can be updated by Member or Guest users with their default permissions without Administrator roles. Compare member and guest default permissions to see properties they can manage.
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of user
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::User.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to call the reminderView method.
            ## @param end_date_time Usage: EndDateTime='{EndDateTime}'
            ## @param start_date_time Usage: StartDateTime='{StartDateTime}'
            ## @return a reminder_view_with_start_date_time_with_end_date_time_request_builder
            ## 
            def reminder_view_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                return ReminderViewWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, EndDateTime, StartDateTime)
            end
            ## 
            ## Retrieve the properties and relationships of user object. This operation returns by default only a subset of the more commonly used properties for each user. These _default_ properties are noted in the Properties section. To get properties that are _not_ returned by default, do a GET operation for the user and specify the properties in a `$select` OData query option. Because the **user** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in a **user** instance.
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
            ## Update the properties of a user object. Not all properties can be updated by Member or Guest users with their default permissions without Administrator roles. Compare member and guest default permissions to see properties they can manage.
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
            # Retrieve the properties and relationships of user object. This operation returns by default only a subset of the more commonly used properties for each user. These _default_ properties are noted in the Properties section. To get properties that are _not_ returned by default, do a GET operation for the user and specify the properties in a `$select` OData query option. Because the **user** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in a **user** instance.
            class MeRequestBuilderGetQueryParameters
                
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
