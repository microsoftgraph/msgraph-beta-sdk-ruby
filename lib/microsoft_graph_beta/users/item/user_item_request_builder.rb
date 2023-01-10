require 'microsoft_kiota_abstractions'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/user'
require_relative '../users'
require_relative './activate_service_plan/activate_service_plan_request_builder'
require_relative './activities/activities_request_builder'
require_relative './activities/item/user_activity_item_request_builder'
require_relative './agreement_acceptances/agreement_acceptances_request_builder'
require_relative './agreement_acceptances/item/agreement_acceptance_item_request_builder'
require_relative './analytics/analytics_request_builder'
require_relative './app_consent_requests_for_approval/app_consent_requests_for_approval_request_builder'
require_relative './app_consent_requests_for_approval/item/app_consent_request_item_request_builder'
require_relative './app_role_assigned_resources/app_role_assigned_resources_request_builder'
require_relative './app_role_assigned_resources/item/service_principal_item_request_builder'
require_relative './app_role_assignments/app_role_assignments_request_builder'
require_relative './app_role_assignments/item/app_role_assignment_item_request_builder'
require_relative './approvals/approvals_request_builder'
require_relative './approvals/item/approval_item_request_builder'
require_relative './assign_license/assign_license_request_builder'
require_relative './authentication/authentication_request_builder'
require_relative './calendar/calendar_request_builder'
require_relative './calendar_groups/calendar_groups_request_builder'
require_relative './calendar_groups/item/calendar_group_item_request_builder'
require_relative './calendars/calendars_request_builder'
require_relative './calendars/item/calendar_item_request_builder'
require_relative './calendar_view/calendar_view_request_builder'
require_relative './calendar_view/item/event_item_request_builder'
require_relative './change_password/change_password_request_builder'
require_relative './chats/chats_request_builder'
require_relative './chats/item/chat_item_request_builder'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './cloud_p_cs/cloud_p_cs_request_builder'
require_relative './cloud_p_cs/item/cloud_p_c_item_request_builder'
require_relative './contact_folders/contact_folders_request_builder'
require_relative './contact_folders/item/contact_folder_item_request_builder'
require_relative './contacts/contacts_request_builder'
require_relative './contacts/item/contact_item_request_builder'
require_relative './created_objects/created_objects_request_builder'
require_relative './created_objects/item/directory_object_item_request_builder'
require_relative './device_enrollment_configurations/device_enrollment_configurations_request_builder'
require_relative './device_enrollment_configurations/item/device_enrollment_configuration_item_request_builder'
require_relative './device_management_troubleshooting_events/device_management_troubleshooting_events_request_builder'
require_relative './device_management_troubleshooting_events/item/device_management_troubleshooting_event_item_request_builder'
require_relative './devices/devices_request_builder'
require_relative './devices/item/device_item_request_builder'
require_relative './direct_reports/direct_reports_request_builder'
require_relative './direct_reports/item/directory_object_item_request_builder'
require_relative './drive/drive_request_builder'
require_relative './drives/drives_request_builder'
require_relative './drives/item/drive_item_request_builder'
require_relative './events/events_request_builder'
require_relative './events/item/event_item_request_builder'
require_relative './export_device_and_app_management_data/export_device_and_app_management_data_request_builder'
require_relative './export_device_and_app_management_data_with_skip_with_top/export_device_and_app_management_data_with_skip_with_top_request_builder'
require_relative './export_personal_data/export_personal_data_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './find_meeting_times/find_meeting_times_request_builder'
require_relative './find_room_lists/find_room_lists_request_builder'
require_relative './find_rooms/find_rooms_request_builder'
require_relative './find_rooms_with_room_list/find_rooms_with_room_list_request_builder'
require_relative './followed_sites/followed_sites_request_builder'
require_relative './followed_sites/item/site_item_request_builder'
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
require_relative './item'
require_relative './joined_groups/joined_groups_request_builder'
require_relative './joined_teams/item/team_item_request_builder'
require_relative './joined_teams/joined_teams_request_builder'
require_relative './license_details/item/license_details_item_request_builder'
require_relative './license_details/license_details_request_builder'
require_relative './mail_folders/item/mail_folder_item_request_builder'
require_relative './mail_folders/mail_folders_request_builder'
require_relative './managed_app_registrations/item/managed_app_registration_item_request_builder'
require_relative './managed_app_registrations/managed_app_registrations_request_builder'
require_relative './managed_devices/item/managed_device_item_request_builder'
require_relative './managed_devices/managed_devices_request_builder'
require_relative './manager/manager_request_builder'
require_relative './member_of/item/directory_object_item_request_builder'
require_relative './member_of/member_of_request_builder'
require_relative './messages/item/message_item_request_builder'
require_relative './messages/messages_request_builder'
require_relative './mobile_app_intent_and_states/item/mobile_app_intent_and_state_item_request_builder'
require_relative './mobile_app_intent_and_states/mobile_app_intent_and_states_request_builder'
require_relative './mobile_app_troubleshooting_events/item/mobile_app_troubleshooting_event_item_request_builder'
require_relative './mobile_app_troubleshooting_events/mobile_app_troubleshooting_events_request_builder'
require_relative './notifications/item/notification_item_request_builder'
require_relative './notifications/notifications_request_builder'
require_relative './oauth2_permission_grants/item/o_auth2_permission_grant_item_request_builder'
require_relative './oauth2_permission_grants/oauth2_permission_grants_request_builder'
require_relative './onenote/onenote_request_builder'
require_relative './online_meetings/item/online_meeting_item_request_builder'
require_relative './online_meetings/online_meetings_request_builder'
require_relative './outlook/outlook_request_builder'
require_relative './owned_devices/item/directory_object_item_request_builder'
require_relative './owned_devices/owned_devices_request_builder'
require_relative './owned_objects/item/directory_object_item_request_builder'
require_relative './owned_objects/owned_objects_request_builder'
require_relative './pending_access_review_instances/item/access_review_instance_item_request_builder'
require_relative './pending_access_review_instances/pending_access_review_instances_request_builder'
require_relative './people/item/person_item_request_builder'
require_relative './people/people_request_builder'
require_relative './photo/photo_request_builder'
require_relative './photos/item/profile_photo_item_request_builder'
require_relative './photos/photos_request_builder'
require_relative './planner/planner_request_builder'
require_relative './presence/presence_request_builder'
require_relative './profile/profile_request_builder'
require_relative './registered_devices/item/directory_object_item_request_builder'
require_relative './registered_devices/registered_devices_request_builder'
require_relative './reminder_view_with_start_date_time_with_end_date_time/reminder_view_with_start_date_time_with_end_date_time_request_builder'
require_relative './remove_all_devices_from_management/remove_all_devices_from_management_request_builder'
require_relative './reprocess_license_assignment/reprocess_license_assignment_request_builder'
require_relative './restore/restore_request_builder'
require_relative './revoke_sign_in_sessions/revoke_sign_in_sessions_request_builder'
require_relative './scoped_role_member_of/item/scoped_role_membership_item_request_builder'
require_relative './scoped_role_member_of/scoped_role_member_of_request_builder'
require_relative './security/security_request_builder'
require_relative './send_mail/send_mail_request_builder'
require_relative './settings/settings_request_builder'
require_relative './teamwork/teamwork_request_builder'
require_relative './todo/todo_request_builder'
require_relative './transitive_member_of/item/directory_object_item_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'
require_relative './transitive_reports/item/directory_object_item_request_builder'
require_relative './transitive_reports/transitive_reports_request_builder'
require_relative './translate_exchange_ids/translate_exchange_ids_request_builder'
require_relative './unblock_managed_apps/unblock_managed_apps_request_builder'
require_relative './usage_rights/item/usage_right_item_request_builder'
require_relative './usage_rights/usage_rights_request_builder'
require_relative './windows_information_protection_device_registrations/item/windows_information_protection_device_registration_item_request_builder'
require_relative './windows_information_protection_device_registrations/windows_information_protection_device_registrations_request_builder'
require_relative './wipe_and_block_managed_apps/wipe_and_block_managed_apps_request_builder'
require_relative './wipe_managed_app_registration_by_device_tag/wipe_managed_app_registration_by_device_tag_request_builder'
require_relative './wipe_managed_app_registrations_by_azure_ad_device_id/wipe_managed_app_registrations_by_azure_ad_device_id_request_builder'
require_relative './wipe_managed_app_registrations_by_device_tag/wipe_managed_app_registrations_by_device_tag_request_builder'

module MicrosoftGraphBeta::Users::Item
    ## 
    # Provides operations to manage the collection of user entities.
    class UserItemRequestBuilder
        
        ## 
        # Provides operations to call the activateServicePlan method.
        def activate_service_plan()
            return MicrosoftGraphBeta::Users::Item::ActivateServicePlan::ActivateServicePlanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the activities property of the microsoft.graph.user entity.
        def activities()
            return MicrosoftGraphBeta::Users::Item::Activities::ActivitiesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the agreementAcceptances property of the microsoft.graph.user entity.
        def agreement_acceptances()
            return MicrosoftGraphBeta::Users::Item::AgreementAcceptances::AgreementAcceptancesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the analytics property of the microsoft.graph.user entity.
        def analytics()
            return MicrosoftGraphBeta::Users::Item::Analytics::AnalyticsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the appConsentRequestsForApproval property of the microsoft.graph.user entity.
        def app_consent_requests_for_approval()
            return MicrosoftGraphBeta::Users::Item::AppConsentRequestsForApproval::AppConsentRequestsForApprovalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the appRoleAssignedResources property of the microsoft.graph.user entity.
        def app_role_assigned_resources()
            return MicrosoftGraphBeta::Users::Item::AppRoleAssignedResources::AppRoleAssignedResourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the appRoleAssignments property of the microsoft.graph.user entity.
        def app_role_assignments()
            return MicrosoftGraphBeta::Users::Item::AppRoleAssignments::AppRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the approvals property of the microsoft.graph.user entity.
        def approvals()
            return MicrosoftGraphBeta::Users::Item::Approvals::ApprovalsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the assignLicense method.
        def assign_license()
            return MicrosoftGraphBeta::Users::Item::AssignLicense::AssignLicenseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the authentication property of the microsoft.graph.user entity.
        def authentication()
            return MicrosoftGraphBeta::Users::Item::Authentication::AuthenticationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the calendar property of the microsoft.graph.user entity.
        def calendar()
            return MicrosoftGraphBeta::Users::Item::Calendar::CalendarRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the calendarGroups property of the microsoft.graph.user entity.
        def calendar_groups()
            return MicrosoftGraphBeta::Users::Item::CalendarGroups::CalendarGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the calendars property of the microsoft.graph.user entity.
        def calendars()
            return MicrosoftGraphBeta::Users::Item::Calendars::CalendarsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the calendarView property of the microsoft.graph.user entity.
        def calendar_view()
            return MicrosoftGraphBeta::Users::Item::CalendarView::CalendarViewRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the changePassword method.
        def change_password()
            return MicrosoftGraphBeta::Users::Item::ChangePassword::ChangePasswordRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the chats property of the microsoft.graph.user entity.
        def chats()
            return MicrosoftGraphBeta::Users::Item::Chats::ChatsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the checkMemberGroups method.
        def check_member_groups()
            return MicrosoftGraphBeta::Users::Item::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the checkMemberObjects method.
        def check_member_objects()
            return MicrosoftGraphBeta::Users::Item::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the cloudPCs property of the microsoft.graph.user entity.
        def cloud_p_cs()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::CloudPCsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the contactFolders property of the microsoft.graph.user entity.
        def contact_folders()
            return MicrosoftGraphBeta::Users::Item::ContactFolders::ContactFoldersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the contacts property of the microsoft.graph.user entity.
        def contacts()
            return MicrosoftGraphBeta::Users::Item::Contacts::ContactsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the createdObjects property of the microsoft.graph.user entity.
        def created_objects()
            return MicrosoftGraphBeta::Users::Item::CreatedObjects::CreatedObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceEnrollmentConfigurations property of the microsoft.graph.user entity.
        def device_enrollment_configurations()
            return MicrosoftGraphBeta::Users::Item::DeviceEnrollmentConfigurations::DeviceEnrollmentConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceManagementTroubleshootingEvents property of the microsoft.graph.user entity.
        def device_management_troubleshooting_events()
            return MicrosoftGraphBeta::Users::Item::DeviceManagementTroubleshootingEvents::DeviceManagementTroubleshootingEventsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the devices property of the microsoft.graph.user entity.
        def devices()
            return MicrosoftGraphBeta::Users::Item::Devices::DevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the directReports property of the microsoft.graph.user entity.
        def direct_reports()
            return MicrosoftGraphBeta::Users::Item::DirectReports::DirectReportsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the drive property of the microsoft.graph.user entity.
        def drive()
            return MicrosoftGraphBeta::Users::Item::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the drives property of the microsoft.graph.user entity.
        def drives()
            return MicrosoftGraphBeta::Users::Item::Drives::DrivesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the events property of the microsoft.graph.user entity.
        def events()
            return MicrosoftGraphBeta::Users::Item::Events::EventsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the exportPersonalData method.
        def export_personal_data()
            return MicrosoftGraphBeta::Users::Item::ExportPersonalData::ExportPersonalDataRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the extensions property of the microsoft.graph.user entity.
        def extensions()
            return MicrosoftGraphBeta::Users::Item::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the findMeetingTimes method.
        def find_meeting_times()
            return MicrosoftGraphBeta::Users::Item::FindMeetingTimes::FindMeetingTimesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the followedSites property of the microsoft.graph.user entity.
        def followed_sites()
            return MicrosoftGraphBeta::Users::Item::FollowedSites::FollowedSitesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMailTips method.
        def get_mail_tips()
            return MicrosoftGraphBeta::Users::Item::GetMailTips::GetMailTipsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberGroups method.
        def get_member_groups()
            return MicrosoftGraphBeta::Users::Item::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberObjects method.
        def get_member_objects()
            return MicrosoftGraphBeta::Users::Item::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the inferenceClassification property of the microsoft.graph.user entity.
        def inference_classification()
            return MicrosoftGraphBeta::Users::Item::InferenceClassification::InferenceClassificationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the informationProtection property of the microsoft.graph.user entity.
        def information_protection()
            return MicrosoftGraphBeta::Users::Item::InformationProtection::InformationProtectionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the insights property of the microsoft.graph.user entity.
        def insights()
            return MicrosoftGraphBeta::Users::Item::Insights::InsightsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the invalidateAllRefreshTokens method.
        def invalidate_all_refresh_tokens()
            return MicrosoftGraphBeta::Users::Item::InvalidateAllRefreshTokens::InvalidateAllRefreshTokensRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the joinedGroups property of the microsoft.graph.user entity.
        def joined_groups()
            return MicrosoftGraphBeta::Users::Item::JoinedGroups::JoinedGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the joinedTeams property of the microsoft.graph.user entity.
        def joined_teams()
            return MicrosoftGraphBeta::Users::Item::JoinedTeams::JoinedTeamsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the licenseDetails property of the microsoft.graph.user entity.
        def license_details()
            return MicrosoftGraphBeta::Users::Item::LicenseDetails::LicenseDetailsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the mailFolders property of the microsoft.graph.user entity.
        def mail_folders()
            return MicrosoftGraphBeta::Users::Item::MailFolders::MailFoldersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedAppRegistrations property of the microsoft.graph.user entity.
        def managed_app_registrations()
            return MicrosoftGraphBeta::Users::Item::ManagedAppRegistrations::ManagedAppRegistrationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedDevices property of the microsoft.graph.user entity.
        def managed_devices()
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::ManagedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the manager property of the microsoft.graph.user entity.
        def manager()
            return MicrosoftGraphBeta::Users::Item::Manager::ManagerRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the memberOf property of the microsoft.graph.user entity.
        def member_of()
            return MicrosoftGraphBeta::Users::Item::MemberOf::MemberOfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the messages property of the microsoft.graph.user entity.
        def messages()
            return MicrosoftGraphBeta::Users::Item::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the mobileAppIntentAndStates property of the microsoft.graph.user entity.
        def mobile_app_intent_and_states()
            return MicrosoftGraphBeta::Users::Item::MobileAppIntentAndStates::MobileAppIntentAndStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the mobileAppTroubleshootingEvents property of the microsoft.graph.user entity.
        def mobile_app_troubleshooting_events()
            return MicrosoftGraphBeta::Users::Item::MobileAppTroubleshootingEvents::MobileAppTroubleshootingEventsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the notifications property of the microsoft.graph.user entity.
        def notifications()
            return MicrosoftGraphBeta::Users::Item::Notifications::NotificationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the oauth2PermissionGrants property of the microsoft.graph.user entity.
        def oauth2_permission_grants()
            return MicrosoftGraphBeta::Users::Item::Oauth2PermissionGrants::Oauth2PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the onenote property of the microsoft.graph.user entity.
        def onenote()
            return MicrosoftGraphBeta::Users::Item::Onenote::OnenoteRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the onlineMeetings property of the microsoft.graph.user entity.
        def online_meetings()
            return MicrosoftGraphBeta::Users::Item::OnlineMeetings::OnlineMeetingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the outlook property of the microsoft.graph.user entity.
        def outlook()
            return MicrosoftGraphBeta::Users::Item::Outlook::OutlookRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the ownedDevices property of the microsoft.graph.user entity.
        def owned_devices()
            return MicrosoftGraphBeta::Users::Item::OwnedDevices::OwnedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the ownedObjects property of the microsoft.graph.user entity.
        def owned_objects()
            return MicrosoftGraphBeta::Users::Item::OwnedObjects::OwnedObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the pendingAccessReviewInstances property of the microsoft.graph.user entity.
        def pending_access_review_instances()
            return MicrosoftGraphBeta::Users::Item::PendingAccessReviewInstances::PendingAccessReviewInstancesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the people property of the microsoft.graph.user entity.
        def people()
            return MicrosoftGraphBeta::Users::Item::People::PeopleRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the photo property of the microsoft.graph.user entity.
        def photo()
            return MicrosoftGraphBeta::Users::Item::Photo::PhotoRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the photos property of the microsoft.graph.user entity.
        def photos()
            return MicrosoftGraphBeta::Users::Item::Photos::PhotosRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the planner property of the microsoft.graph.user entity.
        def planner()
            return MicrosoftGraphBeta::Users::Item::Planner::PlannerRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the presence property of the microsoft.graph.user entity.
        def presence()
            return MicrosoftGraphBeta::Users::Item::Presence::PresenceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the profile property of the microsoft.graph.user entity.
        def profile()
            return MicrosoftGraphBeta::Users::Item::Profile::ProfileRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the registeredDevices property of the microsoft.graph.user entity.
        def registered_devices()
            return MicrosoftGraphBeta::Users::Item::RegisteredDevices::RegisteredDevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the removeAllDevicesFromManagement method.
        def remove_all_devices_from_management()
            return MicrosoftGraphBeta::Users::Item::RemoveAllDevicesFromManagement::RemoveAllDevicesFromManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the reprocessLicenseAssignment method.
        def reprocess_license_assignment()
            return MicrosoftGraphBeta::Users::Item::ReprocessLicenseAssignment::ReprocessLicenseAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to call the restore method.
        def restore()
            return MicrosoftGraphBeta::Users::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the revokeSignInSessions method.
        def revoke_sign_in_sessions()
            return MicrosoftGraphBeta::Users::Item::RevokeSignInSessions::RevokeSignInSessionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the scopedRoleMemberOf property of the microsoft.graph.user entity.
        def scoped_role_member_of()
            return MicrosoftGraphBeta::Users::Item::ScopedRoleMemberOf::ScopedRoleMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the security property of the microsoft.graph.user entity.
        def security()
            return MicrosoftGraphBeta::Users::Item::Security::SecurityRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sendMail method.
        def send_mail()
            return MicrosoftGraphBeta::Users::Item::SendMail::SendMailRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the settings property of the microsoft.graph.user entity.
        def settings()
            return MicrosoftGraphBeta::Users::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the teamwork property of the microsoft.graph.user entity.
        def teamwork()
            return MicrosoftGraphBeta::Users::Item::Teamwork::TeamworkRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the todo property of the microsoft.graph.user entity.
        def todo()
            return MicrosoftGraphBeta::Users::Item::Todo::TodoRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.user entity.
        def transitive_member_of()
            return MicrosoftGraphBeta::Users::Item::TransitiveMemberOf::TransitiveMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the transitiveReports property of the microsoft.graph.user entity.
        def transitive_reports()
            return MicrosoftGraphBeta::Users::Item::TransitiveReports::TransitiveReportsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the translateExchangeIds method.
        def translate_exchange_ids()
            return MicrosoftGraphBeta::Users::Item::TranslateExchangeIds::TranslateExchangeIdsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the unblockManagedApps method.
        def unblock_managed_apps()
            return MicrosoftGraphBeta::Users::Item::UnblockManagedApps::UnblockManagedAppsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the usageRights property of the microsoft.graph.user entity.
        def usage_rights()
            return MicrosoftGraphBeta::Users::Item::UsageRights::UsageRightsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the windowsInformationProtectionDeviceRegistrations property of the microsoft.graph.user entity.
        def windows_information_protection_device_registrations()
            return MicrosoftGraphBeta::Users::Item::WindowsInformationProtectionDeviceRegistrations::WindowsInformationProtectionDeviceRegistrationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipeAndBlockManagedApps method.
        def wipe_and_block_managed_apps()
            return MicrosoftGraphBeta::Users::Item::WipeAndBlockManagedApps::WipeAndBlockManagedAppsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipeManagedAppRegistrationByDeviceTag method.
        def wipe_managed_app_registration_by_device_tag()
            return MicrosoftGraphBeta::Users::Item::WipeManagedAppRegistrationByDeviceTag::WipeManagedAppRegistrationByDeviceTagRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipeManagedAppRegistrationsByAzureAdDeviceId method.
        def wipe_managed_app_registrations_by_azure_ad_device_id()
            return MicrosoftGraphBeta::Users::Item::WipeManagedAppRegistrationsByAzureAdDeviceId::WipeManagedAppRegistrationsByAzureAdDeviceIdRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipeManagedAppRegistrationsByDeviceTag method.
        def wipe_managed_app_registrations_by_device_tag()
            return MicrosoftGraphBeta::Users::Item::WipeManagedAppRegistrationsByDeviceTag::WipeManagedAppRegistrationsByDeviceTagRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the activities property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a user_activity_item_request_builder
        ## 
        def activities_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["userActivity%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Activities::Item::UserActivityItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the agreementAcceptances property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a agreement_acceptance_item_request_builder
        ## 
        def agreement_acceptances_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["agreementAcceptance%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::AgreementAcceptances::Item::AgreementAcceptanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the appConsentRequestsForApproval property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a app_consent_request_item_request_builder
        ## 
        def app_consent_requests_for_approval_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["appConsentRequest%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::AppConsentRequestsForApproval::Item::AppConsentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the appRoleAssignedResources property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a service_principal_item_request_builder
        ## 
        def app_role_assigned_resources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["servicePrincipal%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::AppRoleAssignedResources::Item::ServicePrincipalItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the appRoleAssignments property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a app_role_assignment_item_request_builder
        ## 
        def app_role_assignments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["appRoleAssignment%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::AppRoleAssignments::Item::AppRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the approvals property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a approval_item_request_builder
        ## 
        def approvals_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["approval%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Approvals::Item::ApprovalItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the calendarGroups property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a calendar_group_item_request_builder
        ## 
        def calendar_groups_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["calendarGroup%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::CalendarGroups::Item::CalendarGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the calendars property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a calendar_item_request_builder
        ## 
        def calendars_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["calendar%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Calendars::Item::CalendarItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the calendarView property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a event_item_request_builder
        ## 
        def calendar_view_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["event%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::CalendarView::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the chats property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a chat_item_request_builder
        ## 
        def chats_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["chat%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Chats::Item::ChatItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the cloudPCs property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a cloud_p_c_item_request_builder
        ## 
        def cloud_p_cs_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["cloudPC%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::CloudPCItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new UserItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/users/{user%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Provides operations to manage the contactFolders property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a contact_folder_item_request_builder
        ## 
        def contact_folders_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["contactFolder%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ContactFolders::Item::ContactFolderItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the contacts property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a contact_item_request_builder
        ## 
        def contacts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["contact%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Contacts::Item::ContactItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the createdObjects property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def created_objects_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::CreatedObjects::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete user.   When deleted, user resources are moved to a temporary container and can be restored within 30 days.  After that time, they are permanently deleted.  To learn more, see deletedItems.
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
        ## Provides operations to manage the deviceEnrollmentConfigurations property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a device_enrollment_configuration_item_request_builder
        ## 
        def device_enrollment_configurations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceEnrollmentConfiguration%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::DeviceEnrollmentConfigurations::Item::DeviceEnrollmentConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the deviceManagementTroubleshootingEvents property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_troubleshooting_event_item_request_builder
        ## 
        def device_management_troubleshooting_events_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementTroubleshootingEvent%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::DeviceManagementTroubleshootingEvents::Item::DeviceManagementTroubleshootingEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the devices property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a device_item_request_builder
        ## 
        def devices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["device%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Devices::Item::DeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the directReports property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def direct_reports_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::DirectReports::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the drives property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a drive_item_request_builder
        ## 
        def drives_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["drive%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Drives::Item::DriveItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the events property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a event_item_request_builder
        ## 
        def events_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["event%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Events::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to call the exportDeviceAndAppManagementData method.
        ## @return a export_device_and_app_management_data_request_builder
        ## 
        def export_device_and_app_management_data()
            return ExportDeviceAndAppManagementDataRequestBuilder.new(@path_parameters, @request_adapter)
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
        ## Provides operations to manage the extensions property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a extension_item_request_builder
        ## 
        def extensions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["extension%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to call the findRoomLists method.
        ## @return a find_room_lists_request_builder
        ## 
        def find_room_lists()
            return FindRoomListsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to call the findRooms method.
        ## @return a find_rooms_request_builder
        ## 
        def find_rooms()
            return FindRoomsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to call the findRooms method.
        ## @param RoomList Usage: RoomList='{RoomList}'
        ## @return a find_rooms_with_room_list_request_builder
        ## 
        def find_rooms_with_room_list(room_list)
            raise StandardError, 'room_list cannot be null' if room_list.nil?
            return FindRoomsWithRoomListRequestBuilder.new(@path_parameters, @request_adapter, RoomList)
        end
        ## 
        ## Provides operations to manage the followedSites property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a site_item_request_builder
        ## 
        def followed_sites_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["site%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::FollowedSites::Item::SiteItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Retrieve the properties and relationships of user object. This operation returns by default only a subset of the more commonly used properties for each user. These _default_ properties are noted in the Properties section. To get properties that are _not_ returned by default, do a GET operation for the user and specify the properties in a `$select` OData query option. Because the **user** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in a **user** instance.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
        ## Provides operations to call the getEffectiveDeviceEnrollmentConfigurations method.
        ## @return a get_effective_device_enrollment_configurations_request_builder
        ## 
        def get_effective_device_enrollment_configurations()
            return GetEffectiveDeviceEnrollmentConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to call the getLoggedOnManagedDevices method.
        ## @return a get_logged_on_managed_devices_request_builder
        ## 
        def get_logged_on_managed_devices()
            return GetLoggedOnManagedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to call the getManagedAppDiagnosticStatuses method.
        ## @return a get_managed_app_diagnostic_statuses_request_builder
        ## 
        def get_managed_app_diagnostic_statuses()
            return GetManagedAppDiagnosticStatusesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to call the getManagedAppPolicies method.
        ## @return a get_managed_app_policies_request_builder
        ## 
        def get_managed_app_policies()
            return GetManagedAppPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to call the getManagedDevicesWithAppFailures method.
        ## @return a get_managed_devices_with_app_failures_request_builder
        ## 
        def get_managed_devices_with_app_failures()
            return GetManagedDevicesWithAppFailuresRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to call the getManagedDevicesWithFailedOrPendingApps method.
        ## @return a get_managed_devices_with_failed_or_pending_apps_request_builder
        ## 
        def get_managed_devices_with_failed_or_pending_apps()
            return GetManagedDevicesWithFailedOrPendingAppsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to call the isManagedAppUserBlocked method.
        ## @return a is_managed_app_user_blocked_request_builder
        ## 
        def is_managed_app_user_blocked()
            return IsManagedAppUserBlockedRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the joinedTeams property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a team_item_request_builder
        ## 
        def joined_teams_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["team%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::JoinedTeams::Item::TeamItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the licenseDetails property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a license_details_item_request_builder
        ## 
        def license_details_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["licenseDetails%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::LicenseDetails::Item::LicenseDetailsItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the mailFolders property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a mail_folder_item_request_builder
        ## 
        def mail_folders_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["mailFolder%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::MailFolders::Item::MailFolderItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedAppRegistrations property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a managed_app_registration_item_request_builder
        ## 
        def managed_app_registrations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedAppRegistration%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedAppRegistrations::Item::ManagedAppRegistrationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedDevices property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a managed_device_item_request_builder
        ## 
        def managed_devices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedDevice%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ManagedDevices::Item::ManagedDeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the memberOf property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def member_of_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::MemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the messages property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a message_item_request_builder
        ## 
        def messages_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["message%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Messages::Item::MessageItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the mobileAppIntentAndStates property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a mobile_app_intent_and_state_item_request_builder
        ## 
        def mobile_app_intent_and_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["mobileAppIntentAndState%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::MobileAppIntentAndStates::Item::MobileAppIntentAndStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the mobileAppTroubleshootingEvents property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a mobile_app_troubleshooting_event_item_request_builder
        ## 
        def mobile_app_troubleshooting_events_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["mobileAppTroubleshootingEvent%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::MobileAppTroubleshootingEvents::Item::MobileAppTroubleshootingEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the notifications property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a notification_item_request_builder
        ## 
        def notifications_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["notification%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Notifications::Item::NotificationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the oauth2PermissionGrants property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a o_auth2_permission_grant_item_request_builder
        ## 
        def oauth2_permission_grants_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["oAuth2PermissionGrant%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Oauth2PermissionGrants::Item::OAuth2PermissionGrantItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the onlineMeetings property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a online_meeting_item_request_builder
        ## 
        def online_meetings_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["onlineMeeting%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::OnlineMeetings::Item::OnlineMeetingItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the ownedDevices property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def owned_devices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::OwnedDevices::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the ownedObjects property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def owned_objects_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::OwnedObjects::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the properties of a user object. Not all properties can be updated by Member or Guest users with their default permissions without Administrator roles. Compare member and guest default permissions to see properties they can manage.
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
        ## Provides operations to manage the pendingAccessReviewInstances property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a access_review_instance_item_request_builder
        ## 
        def pending_access_review_instances_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessReviewInstance%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::PendingAccessReviewInstances::Item::AccessReviewInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the people property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a person_item_request_builder
        ## 
        def people_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["person%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::People::Item::PersonItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the photos property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a profile_photo_item_request_builder
        ## 
        def photos_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["profilePhoto%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Photos::Item::ProfilePhotoItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the registeredDevices property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def registered_devices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::RegisteredDevices::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to call the reminderView method.
        ## @param EndDateTime Usage: EndDateTime='{EndDateTime}'
        ## @param StartDateTime Usage: StartDateTime='{StartDateTime}'
        ## @return a reminder_view_with_start_date_time_with_end_date_time_request_builder
        ## 
        def reminder_view_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
            raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
            raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
            return ReminderViewWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, EndDateTime, StartDateTime)
        end
        ## 
        ## Provides operations to manage the scopedRoleMemberOf property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a scoped_role_membership_item_request_builder
        ## 
        def scoped_role_member_of_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["scopedRoleMembership%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::ScopedRoleMemberOf::Item::ScopedRoleMembershipItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete user.   When deleted, user resources are moved to a temporary container and can be restored within 30 days.  After that time, they are permanently deleted.  To learn more, see deletedItems.
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
        ## Retrieve the properties and relationships of user object. This operation returns by default only a subset of the more commonly used properties for each user. These _default_ properties are noted in the Properties section. To get properties that are _not_ returned by default, do a GET operation for the user and specify the properties in a `$select` OData query option. Because the **user** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in a **user** instance.
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
        ## Update the properties of a user object. Not all properties can be updated by Member or Guest users with their default permissions without Administrator roles. Compare member and guest default permissions to see properties they can manage.
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
        ## Provides operations to manage the transitiveMemberOf property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def transitive_member_of_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::TransitiveMemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the transitiveReports property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def transitive_reports_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::TransitiveReports::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the usageRights property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a usage_right_item_request_builder
        ## 
        def usage_rights_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["usageRight%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::UsageRights::Item::UsageRightItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the windowsInformationProtectionDeviceRegistrations property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a windows_information_protection_device_registration_item_request_builder
        ## 
        def windows_information_protection_device_registrations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["windowsInformationProtectionDeviceRegistration%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::WindowsInformationProtectionDeviceRegistrations::Item::WindowsInformationProtectionDeviceRegistrationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class UserItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Retrieve the properties and relationships of user object. This operation returns by default only a subset of the more commonly used properties for each user. These _default_ properties are noted in the Properties section. To get properties that are _not_ returned by default, do a GET operation for the user and specify the properties in a `$select` OData query option. Because the **user** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in a **user** instance.
        class UserItemRequestBuilderGetQueryParameters
            
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
        class UserItemRequestBuilderGetRequestConfiguration
            
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
        class UserItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
