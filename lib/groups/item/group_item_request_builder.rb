require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/group'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../groups'
require_relative './accepted_senders/accepted_senders_request_builder'
require_relative './add_favorite/add_favorite_request_builder'
require_relative './app_role_assignments/app_role_assignments_request_builder'
require_relative './assign_license/assign_license_request_builder'
require_relative './calendar/calendar_request_builder'
require_relative './calendar_view/calendar_view_request_builder'
require_relative './check_granted_permissions_for_app/check_granted_permissions_for_app_request_builder'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './conversations/conversations_request_builder'
require_relative './created_on_behalf_of/created_on_behalf_of_request_builder'
require_relative './drive/drive_request_builder'
require_relative './drives/drives_request_builder'
require_relative './endpoints/endpoints_request_builder'
require_relative './evaluate_dynamic_membership/evaluate_dynamic_membership_request_builder'
require_relative './events/events_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './group_lifecycle_policies/group_lifecycle_policies_request_builder'
require_relative './item'
require_relative './member_of/member_of_request_builder'
require_relative './members/members_request_builder'
require_relative './members_with_license_errors/members_with_license_errors_request_builder'
require_relative './onenote/onenote_request_builder'
require_relative './owners/owners_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './photo/photo_request_builder'
require_relative './photos/photos_request_builder'
require_relative './planner/planner_request_builder'
require_relative './rejected_senders/rejected_senders_request_builder'
require_relative './remove_favorite/remove_favorite_request_builder'
require_relative './renew/renew_request_builder'
require_relative './reset_unseen_count/reset_unseen_count_request_builder'
require_relative './restore/restore_request_builder'
require_relative './retry_service_provisioning/retry_service_provisioning_request_builder'
require_relative './settings/settings_request_builder'
require_relative './sites/sites_request_builder'
require_relative './subscribe_by_mail/subscribe_by_mail_request_builder'
require_relative './team/team_request_builder'
require_relative './threads/threads_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'
require_relative './transitive_members/transitive_members_request_builder'
require_relative './unsubscribe_by_mail/unsubscribe_by_mail_request_builder'
require_relative './validate_properties/validate_properties_request_builder'

module MicrosoftGraphBeta
    module Groups
        module Item
            ## 
            # Provides operations to manage the collection of group entities.
            class GroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the acceptedSenders property of the microsoft.graph.group entity.
                def accepted_senders()
                    return MicrosoftGraphBeta::Groups::Item::AcceptedSenders::AcceptedSendersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the addFavorite method.
                def add_favorite()
                    return MicrosoftGraphBeta::Groups::Item::AddFavorite::AddFavoriteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the appRoleAssignments property of the microsoft.graph.group entity.
                def app_role_assignments()
                    return MicrosoftGraphBeta::Groups::Item::AppRoleAssignments::AppRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the assignLicense method.
                def assign_license()
                    return MicrosoftGraphBeta::Groups::Item::AssignLicense::AssignLicenseRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the calendar property of the microsoft.graph.group entity.
                def calendar()
                    return MicrosoftGraphBeta::Groups::Item::Calendar::CalendarRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the calendarView property of the microsoft.graph.group entity.
                def calendar_view()
                    return MicrosoftGraphBeta::Groups::Item::CalendarView::CalendarViewRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkGrantedPermissionsForApp method.
                def check_granted_permissions_for_app()
                    return MicrosoftGraphBeta::Groups::Item::CheckGrantedPermissionsForApp::CheckGrantedPermissionsForAppRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberGroups method.
                def check_member_groups()
                    return MicrosoftGraphBeta::Groups::Item::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the checkMemberObjects method.
                def check_member_objects()
                    return MicrosoftGraphBeta::Groups::Item::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the conversations property of the microsoft.graph.group entity.
                def conversations()
                    return MicrosoftGraphBeta::Groups::Item::Conversations::ConversationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the createdOnBehalfOf property of the microsoft.graph.group entity.
                def created_on_behalf_of()
                    return MicrosoftGraphBeta::Groups::Item::CreatedOnBehalfOf::CreatedOnBehalfOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the drive property of the microsoft.graph.group entity.
                def drive()
                    return MicrosoftGraphBeta::Groups::Item::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the drives property of the microsoft.graph.group entity.
                def drives()
                    return MicrosoftGraphBeta::Groups::Item::Drives::DrivesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the endpoints property of the microsoft.graph.group entity.
                def endpoints()
                    return MicrosoftGraphBeta::Groups::Item::Endpoints::EndpointsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the evaluateDynamicMembership method.
                def evaluate_dynamic_membership()
                    return MicrosoftGraphBeta::Groups::Item::EvaluateDynamicMembership::EvaluateDynamicMembershipRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the events property of the microsoft.graph.group entity.
                def events()
                    return MicrosoftGraphBeta::Groups::Item::Events::EventsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the extensions property of the microsoft.graph.group entity.
                def extensions()
                    return MicrosoftGraphBeta::Groups::Item::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberGroups method.
                def get_member_groups()
                    return MicrosoftGraphBeta::Groups::Item::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getMemberObjects method.
                def get_member_objects()
                    return MicrosoftGraphBeta::Groups::Item::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the groupLifecyclePolicies property of the microsoft.graph.group entity.
                def group_lifecycle_policies()
                    return MicrosoftGraphBeta::Groups::Item::GroupLifecyclePolicies::GroupLifecyclePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the memberOf property of the microsoft.graph.group entity.
                def member_of()
                    return MicrosoftGraphBeta::Groups::Item::MemberOf::MemberOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the members property of the microsoft.graph.group entity.
                def members()
                    return MicrosoftGraphBeta::Groups::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the membersWithLicenseErrors property of the microsoft.graph.group entity.
                def members_with_license_errors()
                    return MicrosoftGraphBeta::Groups::Item::MembersWithLicenseErrors::MembersWithLicenseErrorsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the onenote property of the microsoft.graph.group entity.
                def onenote()
                    return MicrosoftGraphBeta::Groups::Item::Onenote::OnenoteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the owners property of the microsoft.graph.group entity.
                def owners()
                    return MicrosoftGraphBeta::Groups::Item::Owners::OwnersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the permissionGrants property of the microsoft.graph.group entity.
                def permission_grants()
                    return MicrosoftGraphBeta::Groups::Item::PermissionGrants::PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the photo property of the microsoft.graph.group entity.
                def photo()
                    return MicrosoftGraphBeta::Groups::Item::Photo::PhotoRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the photos property of the microsoft.graph.group entity.
                def photos()
                    return MicrosoftGraphBeta::Groups::Item::Photos::PhotosRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the planner property of the microsoft.graph.group entity.
                def planner()
                    return MicrosoftGraphBeta::Groups::Item::Planner::PlannerRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the rejectedSenders property of the microsoft.graph.group entity.
                def rejected_senders()
                    return MicrosoftGraphBeta::Groups::Item::RejectedSenders::RejectedSendersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the removeFavorite method.
                def remove_favorite()
                    return MicrosoftGraphBeta::Groups::Item::RemoveFavorite::RemoveFavoriteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the renew method.
                def renew()
                    return MicrosoftGraphBeta::Groups::Item::Renew::RenewRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the resetUnseenCount method.
                def reset_unseen_count()
                    return MicrosoftGraphBeta::Groups::Item::ResetUnseenCount::ResetUnseenCountRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the restore method.
                def restore()
                    return MicrosoftGraphBeta::Groups::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the retryServiceProvisioning method.
                def retry_service_provisioning()
                    return MicrosoftGraphBeta::Groups::Item::RetryServiceProvisioning::RetryServiceProvisioningRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the settings property of the microsoft.graph.group entity.
                def settings()
                    return MicrosoftGraphBeta::Groups::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sites property of the microsoft.graph.group entity.
                def sites()
                    return MicrosoftGraphBeta::Groups::Item::Sites::SitesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the subscribeByMail method.
                def subscribe_by_mail()
                    return MicrosoftGraphBeta::Groups::Item::SubscribeByMail::SubscribeByMailRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the team property of the microsoft.graph.group entity.
                def team()
                    return MicrosoftGraphBeta::Groups::Item::Team::TeamRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the threads property of the microsoft.graph.group entity.
                def threads()
                    return MicrosoftGraphBeta::Groups::Item::Threads::ThreadsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.group entity.
                def transitive_member_of()
                    return MicrosoftGraphBeta::Groups::Item::TransitiveMemberOf::TransitiveMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the transitiveMembers property of the microsoft.graph.group entity.
                def transitive_members()
                    return MicrosoftGraphBeta::Groups::Item::TransitiveMembers::TransitiveMembersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the unsubscribeByMail method.
                def unsubscribe_by_mail()
                    return MicrosoftGraphBeta::Groups::Item::UnsubscribeByMail::UnsubscribeByMailRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the validateProperties method.
                def validate_properties()
                    return MicrosoftGraphBeta::Groups::Item::ValidateProperties::ValidatePropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new GroupItemRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}{?%24select,%24expand}")
                end
                ## 
                ## Deletes a group. When deleted, Microsoft 365 groups are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted. This isn't applicable to Security groups and Distribution groups which are permanently deleted immediately. To learn more, see deletedItems.
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
                ## Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are not returned by default, specify them in a $select OData query option. The hasMembersWithLicenseErrors and isArchived properties are an exception and are not returned in the $select query. Because the group resource supports extensions, you can also use the GET operation to get custom properties and extension data in a group instance.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of group
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Group.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the properties of a group object.
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of group
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Group.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Deletes a group. When deleted, Microsoft 365 groups are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted. This isn't applicable to Security groups and Distribution groups which are permanently deleted immediately. To learn more, see deletedItems.
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
                ## Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are not returned by default, specify them in a $select OData query option. The hasMembersWithLicenseErrors and isArchived properties are an exception and are not returned in the $select query. Because the group resource supports extensions, you can also use the GET operation to get custom properties and extension data in a group instance.
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
                ## Update the properties of a group object.
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
                # Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are not returned by default, specify them in a $select OData query option. The hasMembersWithLicenseErrors and isArchived properties are an exception and are not returned in the $select query. Because the group resource supports extensions, you can also use the GET operation to get custom properties and extension data in a group instance.
                class GroupItemRequestBuilderGetQueryParameters
                    
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
