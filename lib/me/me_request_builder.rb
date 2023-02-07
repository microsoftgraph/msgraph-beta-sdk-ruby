require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/o_data_errors/o_data_error'
require_relative '../models/user'
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
require_relative './authentication/authentication_request_builder'
require_relative './calendar/calendar_request_builder'
require_relative './calendar_groups/calendar_groups_request_builder'
require_relative './calendar_groups/item/calendar_group_item_request_builder'
require_relative './calendars/calendars_request_builder'
require_relative './calendars/item/calendar_item_request_builder'
require_relative './calendar_view/calendar_view_request_builder'
require_relative './calendar_view/item/event_item_request_builder'
require_relative './chats/chats_request_builder'
require_relative './chats/item/chat_item_request_builder'
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
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './followed_sites/followed_sites_request_builder'
require_relative './followed_sites/item/site_item_request_builder'
require_relative './inference_classification/inference_classification_request_builder'
require_relative './information_protection/information_protection_request_builder'
require_relative './insights/insights_request_builder'
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
require_relative './me'
require_relative './member_of/item/directory_object_item_request_builder'
require_relative './member_of/member_of_request_builder'
require_relative './messages/item/message_item_request_builder'
require_relative './messages/messages_request_builder'
require_relative './microsoft_graph_activate_service_plan/microsoft_graph_activate_service_plan_request_builder'
require_relative './microsoft_graph_assign_license/microsoft_graph_assign_license_request_builder'
require_relative './microsoft_graph_change_password/microsoft_graph_change_password_request_builder'
require_relative './microsoft_graph_check_member_groups/microsoft_graph_check_member_groups_request_builder'
require_relative './microsoft_graph_check_member_objects/microsoft_graph_check_member_objects_request_builder'
require_relative './microsoft_graph_export_device_and_app_management_data/microsoft_graph_export_device_and_app_management_data_request_builder'
require_relative './microsoft_graph_export_device_and_app_management_data_with_skip_with_top/microsoft_graph_export_device_and_app_management_data_with_skip_with_top_request_builder'
require_relative './microsoft_graph_export_personal_data/microsoft_graph_export_personal_data_request_builder'
require_relative './microsoft_graph_find_meeting_times/microsoft_graph_find_meeting_times_request_builder'
require_relative './microsoft_graph_find_room_lists/microsoft_graph_find_room_lists_request_builder'
require_relative './microsoft_graph_find_rooms/microsoft_graph_find_rooms_request_builder'
require_relative './microsoft_graph_find_rooms_with_room_list/microsoft_graph_find_rooms_with_room_list_request_builder'
require_relative './microsoft_graph_get_effective_device_enrollment_configurations/microsoft_graph_get_effective_device_enrollment_configurations_request_builder'
require_relative './microsoft_graph_get_logged_on_managed_devices/microsoft_graph_get_logged_on_managed_devices_request_builder'
require_relative './microsoft_graph_get_mail_tips/microsoft_graph_get_mail_tips_request_builder'
require_relative './microsoft_graph_get_managed_app_diagnostic_statuses/microsoft_graph_get_managed_app_diagnostic_statuses_request_builder'
require_relative './microsoft_graph_get_managed_app_policies/microsoft_graph_get_managed_app_policies_request_builder'
require_relative './microsoft_graph_get_managed_devices_with_app_failures/microsoft_graph_get_managed_devices_with_app_failures_request_builder'
require_relative './microsoft_graph_get_managed_devices_with_failed_or_pending_apps/microsoft_graph_get_managed_devices_with_failed_or_pending_apps_request_builder'
require_relative './microsoft_graph_get_member_groups/microsoft_graph_get_member_groups_request_builder'
require_relative './microsoft_graph_get_member_objects/microsoft_graph_get_member_objects_request_builder'
require_relative './microsoft_graph_invalidate_all_refresh_tokens/microsoft_graph_invalidate_all_refresh_tokens_request_builder'
require_relative './microsoft_graph_is_managed_app_user_blocked/microsoft_graph_is_managed_app_user_blocked_request_builder'
require_relative './microsoft_graph_reminder_view_with_start_date_time_with_end_date_time/microsoft_graph_reminder_view_with_start_date_time_with_end_date_time_request_builder'
require_relative './microsoft_graph_remove_all_devices_from_management/microsoft_graph_remove_all_devices_from_management_request_builder'
require_relative './microsoft_graph_reprocess_license_assignment/microsoft_graph_reprocess_license_assignment_request_builder'
require_relative './microsoft_graph_restore/microsoft_graph_restore_request_builder'
require_relative './microsoft_graph_revoke_sign_in_sessions/microsoft_graph_revoke_sign_in_sessions_request_builder'
require_relative './microsoft_graph_send_mail/microsoft_graph_send_mail_request_builder'
require_relative './microsoft_graph_translate_exchange_ids/microsoft_graph_translate_exchange_ids_request_builder'
require_relative './microsoft_graph_unblock_managed_apps/microsoft_graph_unblock_managed_apps_request_builder'
require_relative './microsoft_graph_wipe_and_block_managed_apps/microsoft_graph_wipe_and_block_managed_apps_request_builder'
require_relative './microsoft_graph_wipe_managed_app_registration_by_device_tag/microsoft_graph_wipe_managed_app_registration_by_device_tag_request_builder'
require_relative './microsoft_graph_wipe_managed_app_registrations_by_azure_ad_device_id/microsoft_graph_wipe_managed_app_registrations_by_azure_ad_device_id_request_builder'
require_relative './microsoft_graph_wipe_managed_app_registrations_by_device_tag/microsoft_graph_wipe_managed_app_registrations_by_device_tag_request_builder'
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
require_relative './scoped_role_member_of/item/scoped_role_membership_item_request_builder'
require_relative './scoped_role_member_of/scoped_role_member_of_request_builder'
require_relative './security/security_request_builder'
require_relative './settings/settings_request_builder'
require_relative './teamwork/teamwork_request_builder'
require_relative './todo/todo_request_builder'
require_relative './transitive_member_of/item/directory_object_item_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'
require_relative './transitive_reports/item/directory_object_item_request_builder'
require_relative './transitive_reports/transitive_reports_request_builder'
require_relative './usage_rights/item/usage_right_item_request_builder'
require_relative './usage_rights/usage_rights_request_builder'
require_relative './windows_information_protection_device_registrations/item/windows_information_protection_device_registration_item_request_builder'
require_relative './windows_information_protection_device_registrations/windows_information_protection_device_registrations_request_builder'

module MicrosoftGraphBeta::Me
    ## 
    # Provides operations to manage the user singleton.
    class MeRequestBuilder
        
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
        # Provides operations to manage the chats property of the microsoft.graph.user entity.
        def chats()
            return MicrosoftGraphBeta::Me::Chats::ChatsRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Provides operations to manage the extensions property of the microsoft.graph.user entity.
        def extensions()
            return MicrosoftGraphBeta::Me::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the followedSites property of the microsoft.graph.user entity.
        def followed_sites()
            return MicrosoftGraphBeta::Me::FollowedSites::FollowedSitesRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Provides operations to call the activateServicePlan method.
        def microsoft_graph_activate_service_plan()
            return MicrosoftGraphBeta::Me::MicrosoftGraphActivateServicePlan::MicrosoftGraphActivateServicePlanRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the assignLicense method.
        def microsoft_graph_assign_license()
            return MicrosoftGraphBeta::Me::MicrosoftGraphAssignLicense::MicrosoftGraphAssignLicenseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the changePassword method.
        def microsoft_graph_change_password()
            return MicrosoftGraphBeta::Me::MicrosoftGraphChangePassword::MicrosoftGraphChangePasswordRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the checkMemberGroups method.
        def microsoft_graph_check_member_groups()
            return MicrosoftGraphBeta::Me::MicrosoftGraphCheckMemberGroups::MicrosoftGraphCheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the checkMemberObjects method.
        def microsoft_graph_check_member_objects()
            return MicrosoftGraphBeta::Me::MicrosoftGraphCheckMemberObjects::MicrosoftGraphCheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the exportDeviceAndAppManagementData method.
        def microsoft_graph_export_device_and_app_management_data()
            return MicrosoftGraphBeta::Me::MicrosoftGraphExportDeviceAndAppManagementData::MicrosoftGraphExportDeviceAndAppManagementDataRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the exportPersonalData method.
        def microsoft_graph_export_personal_data()
            return MicrosoftGraphBeta::Me::MicrosoftGraphExportPersonalData::MicrosoftGraphExportPersonalDataRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the findMeetingTimes method.
        def microsoft_graph_find_meeting_times()
            return MicrosoftGraphBeta::Me::MicrosoftGraphFindMeetingTimes::MicrosoftGraphFindMeetingTimesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the findRoomLists method.
        def microsoft_graph_find_room_lists()
            return MicrosoftGraphBeta::Me::MicrosoftGraphFindRoomLists::MicrosoftGraphFindRoomListsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the findRooms method.
        def microsoft_graph_find_rooms()
            return MicrosoftGraphBeta::Me::MicrosoftGraphFindRooms::MicrosoftGraphFindRoomsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getEffectiveDeviceEnrollmentConfigurations method.
        def microsoft_graph_get_effective_device_enrollment_configurations()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetEffectiveDeviceEnrollmentConfigurations::MicrosoftGraphGetEffectiveDeviceEnrollmentConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getLoggedOnManagedDevices method.
        def microsoft_graph_get_logged_on_managed_devices()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetLoggedOnManagedDevices::MicrosoftGraphGetLoggedOnManagedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMailTips method.
        def microsoft_graph_get_mail_tips()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetMailTips::MicrosoftGraphGetMailTipsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getManagedAppDiagnosticStatuses method.
        def microsoft_graph_get_managed_app_diagnostic_statuses()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetManagedAppDiagnosticStatuses::MicrosoftGraphGetManagedAppDiagnosticStatusesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getManagedAppPolicies method.
        def microsoft_graph_get_managed_app_policies()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetManagedAppPolicies::MicrosoftGraphGetManagedAppPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getManagedDevicesWithAppFailures method.
        def microsoft_graph_get_managed_devices_with_app_failures()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetManagedDevicesWithAppFailures::MicrosoftGraphGetManagedDevicesWithAppFailuresRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getManagedDevicesWithFailedOrPendingApps method.
        def microsoft_graph_get_managed_devices_with_failed_or_pending_apps()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetManagedDevicesWithFailedOrPendingApps::MicrosoftGraphGetManagedDevicesWithFailedOrPendingAppsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberGroups method.
        def microsoft_graph_get_member_groups()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetMemberGroups::MicrosoftGraphGetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberObjects method.
        def microsoft_graph_get_member_objects()
            return MicrosoftGraphBeta::Me::MicrosoftGraphGetMemberObjects::MicrosoftGraphGetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the invalidateAllRefreshTokens method.
        def microsoft_graph_invalidate_all_refresh_tokens()
            return MicrosoftGraphBeta::Me::MicrosoftGraphInvalidateAllRefreshTokens::MicrosoftGraphInvalidateAllRefreshTokensRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the isManagedAppUserBlocked method.
        def microsoft_graph_is_managed_app_user_blocked()
            return MicrosoftGraphBeta::Me::MicrosoftGraphIsManagedAppUserBlocked::MicrosoftGraphIsManagedAppUserBlockedRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the removeAllDevicesFromManagement method.
        def microsoft_graph_remove_all_devices_from_management()
            return MicrosoftGraphBeta::Me::MicrosoftGraphRemoveAllDevicesFromManagement::MicrosoftGraphRemoveAllDevicesFromManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the reprocessLicenseAssignment method.
        def microsoft_graph_reprocess_license_assignment()
            return MicrosoftGraphBeta::Me::MicrosoftGraphReprocessLicenseAssignment::MicrosoftGraphReprocessLicenseAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the restore method.
        def microsoft_graph_restore()
            return MicrosoftGraphBeta::Me::MicrosoftGraphRestore::MicrosoftGraphRestoreRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the revokeSignInSessions method.
        def microsoft_graph_revoke_sign_in_sessions()
            return MicrosoftGraphBeta::Me::MicrosoftGraphRevokeSignInSessions::MicrosoftGraphRevokeSignInSessionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sendMail method.
        def microsoft_graph_send_mail()
            return MicrosoftGraphBeta::Me::MicrosoftGraphSendMail::MicrosoftGraphSendMailRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the translateExchangeIds method.
        def microsoft_graph_translate_exchange_ids()
            return MicrosoftGraphBeta::Me::MicrosoftGraphTranslateExchangeIds::MicrosoftGraphTranslateExchangeIdsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the unblockManagedApps method.
        def microsoft_graph_unblock_managed_apps()
            return MicrosoftGraphBeta::Me::MicrosoftGraphUnblockManagedApps::MicrosoftGraphUnblockManagedAppsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipeAndBlockManagedApps method.
        def microsoft_graph_wipe_and_block_managed_apps()
            return MicrosoftGraphBeta::Me::MicrosoftGraphWipeAndBlockManagedApps::MicrosoftGraphWipeAndBlockManagedAppsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipeManagedAppRegistrationByDeviceTag method.
        def microsoft_graph_wipe_managed_app_registration_by_device_tag()
            return MicrosoftGraphBeta::Me::MicrosoftGraphWipeManagedAppRegistrationByDeviceTag::MicrosoftGraphWipeManagedAppRegistrationByDeviceTagRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipeManagedAppRegistrationsByAzureAdDeviceId method.
        def microsoft_graph_wipe_managed_app_registrations_by_azure_ad_device_id()
            return MicrosoftGraphBeta::Me::MicrosoftGraphWipeManagedAppRegistrationsByAzureAdDeviceId::MicrosoftGraphWipeManagedAppRegistrationsByAzureAdDeviceIdRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the wipeManagedAppRegistrationsByDeviceTag method.
        def microsoft_graph_wipe_managed_app_registrations_by_device_tag()
            return MicrosoftGraphBeta::Me::MicrosoftGraphWipeManagedAppRegistrationsByDeviceTag::MicrosoftGraphWipeManagedAppRegistrationsByDeviceTagRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Path parameters for the request
        @path_parameters
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
        # The request adapter to use to execute the requests.
        @request_adapter
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
        # Url template to use to build the URL for the current request builder
        @url_template
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
        ## Provides operations to manage the activities property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a user_activity_item_request_builder
        ## 
        def activities_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["userActivity%2Did"] = id
            return MicrosoftGraphBeta::Me::Activities::Item::UserActivityItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::AgreementAcceptances::Item::AgreementAcceptanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::AppConsentRequestsForApproval::Item::AppConsentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::AppRoleAssignedResources::Item::ServicePrincipalItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::AppRoleAssignments::Item::AppRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Approvals::Item::ApprovalItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::CalendarGroups::Item::CalendarGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Calendars::Item::CalendarItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::CalendarView::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Chats::Item::ChatItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::CloudPCs::Item::CloudPCItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new MeRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/me{?%24select,%24expand}"
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
            return MicrosoftGraphBeta::Me::ContactFolders::Item::ContactFolderItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Contacts::Item::ContactItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::CreatedObjects::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::DeviceEnrollmentConfigurations::Item::DeviceEnrollmentConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::DeviceManagementTroubleshootingEvents::Item::DeviceManagementTroubleshootingEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Devices::Item::DeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::DirectReports::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Drives::Item::DriveItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Events::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::FollowedSites::Item::SiteItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
        ## Provides operations to manage the joinedTeams property of the microsoft.graph.user entity.
        ## @param id Unique identifier of the item
        ## @return a team_item_request_builder
        ## 
        def joined_teams_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["team%2Did"] = id
            return MicrosoftGraphBeta::Me::JoinedTeams::Item::TeamItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::LicenseDetails::Item::LicenseDetailsItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::MailFolders::Item::MailFolderItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::ManagedAppRegistrations::Item::ManagedAppRegistrationItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::ManagedDevices::Item::ManagedDeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::MemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Messages::Item::MessageItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to call the exportDeviceAndAppManagementData method.
        ## @param skip Usage: skip={skip}
        ## @param top Usage: top={top}
        ## @return a microsoft_graph_export_device_and_app_management_data_with_skip_with_top_request_builder
        ## 
        def microsoft_graph_export_device_and_app_management_data_with_skip_with_top(skip, top)
            raise StandardError, 'skip cannot be null' if skip.nil?
            raise StandardError, 'top cannot be null' if top.nil?
            return MicrosoftGraphExportDeviceAndAppManagementDataWithSkipWithTopRequestBuilder.new(@path_parameters, @request_adapter, skip, top)
        end
        ## 
        ## Provides operations to call the findRooms method.
        ## @param RoomList Usage: RoomList='{RoomList}'
        ## @return a microsoft_graph_find_rooms_with_room_list_request_builder
        ## 
        def microsoft_graph_find_rooms_with_room_list(room_list)
            raise StandardError, 'room_list cannot be null' if room_list.nil?
            return MicrosoftGraphFindRoomsWithRoomListRequestBuilder.new(@path_parameters, @request_adapter, RoomList)
        end
        ## 
        ## Provides operations to call the reminderView method.
        ## @param EndDateTime Usage: EndDateTime='{EndDateTime}'
        ## @param StartDateTime Usage: StartDateTime='{StartDateTime}'
        ## @return a microsoft_graph_reminder_view_with_start_date_time_with_end_date_time_request_builder
        ## 
        def microsoft_graph_reminder_view_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
            raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
            raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
            return MicrosoftGraphReminderViewWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, EndDateTime, StartDateTime)
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
            return MicrosoftGraphBeta::Me::MobileAppIntentAndStates::Item::MobileAppIntentAndStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::MobileAppTroubleshootingEvents::Item::MobileAppTroubleshootingEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Notifications::Item::NotificationItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Oauth2PermissionGrants::Item::OAuth2PermissionGrantItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::OnlineMeetings::Item::OnlineMeetingItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::OwnedDevices::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::OwnedObjects::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::PendingAccessReviewInstances::Item::AccessReviewInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::People::Item::PersonItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::Photos::Item::ProfilePhotoItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::RegisteredDevices::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::ScopedRoleMemberOf::Item::ScopedRoleMembershipItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::TransitiveMemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::TransitiveReports::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::UsageRights::Item::UsageRightItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            return MicrosoftGraphBeta::Me::WindowsInformationProtectionDeviceRegistrations::Item::WindowsInformationProtectionDeviceRegistrationItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
        class MeRequestBuilderGetRequestConfiguration
            
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
        class MeRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
