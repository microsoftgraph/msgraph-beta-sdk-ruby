require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Group < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.
            @accepted_senders
            ## 
            # The accessType property
            @access_type
            ## 
            # Indicates if people external to the organization can send messages to the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @allow_external_senders
            ## 
            # Represents the app roles a group has been granted for an application. Supports $expand.
            @app_role_assignments
            ## 
            # The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. Returned only on $select.
            @assigned_labels
            ## 
            # The licenses that are assigned to the group. Returned only on $select. Supports $filter (eq). Read-only.
            @assigned_licenses
            ## 
            # Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @auto_subscribe_new_members
            ## 
            # The group's calendar. Read-only.
            @calendar
            ## 
            # The calendar view for the calendar. Read-only.
            @calendar_view
            ## 
            # Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList setting value, based on the template definition.Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            @classification
            ## 
            # The group's conversations.
            @conversations
            ## 
            # App ID of the app used to create the group. Can be null for some groups. Returned by default. Read-only. Supports $filter (eq, ne, not, in, startsWith).
            @created_by_app_id
            ## 
            # Timestamp of when the group was created. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only.
            @created_date_time
            ## 
            # The user (or application) that created the group. Note: This is not set if the user is an administrator. Read-only.
            @created_on_behalf_of
            ## 
            # An optional description for the group. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            @description
            ## 
            # The display name for the group. Required. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            @display_name
            ## 
            # The group's default drive. Read-only.
            @drive
            ## 
            # The group's drives. Read-only.
            @drives
            ## 
            # Endpoints for the group. Read-only. Nullable.
            @endpoints
            ## 
            # The group's events.
            @events
            ## 
            # Timestamp of when the group is set to expire. Is null for security groups but for Microsoft 365 groups, it represents when the group is set to expire as defined in the groupLifecyclePolicy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            @expiration_date_time
            ## 
            # The collection of open extensions defined for the group. Read-only. Nullable.
            @extensions
            ## 
            # The collection of lifecycle policies for this group. Read-only. Nullable.
            @group_lifecycle_policies
            ## 
            # Specifies the group type and its membership. If the collection contains Unified, the group is a Microsoft 365 group; otherwise, it's either a security group or distribution group. For details, see groups overview.If the collection includes DynamicMembership, the group has dynamic membership; otherwise, membership is static. Returned by default. Supports $filter (eq, not).
            @group_types
            ## 
            # Indicates whether there are members in this group that have license errors from its group-based license assignment. This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being true).  Supports $filter (eq).
            @has_members_with_license_errors
            ## 
            # true if the group is not displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups; false otherwise. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @hide_from_address_lists
            ## 
            # true if the group is not displayed in Outlook clients, such as Outlook for Windows and Outlook on the web, false otherwise. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @hide_from_outlook_clients
            ## 
            # Identifies the info segments assigned to the group. Returned by default. Supports $filter (eq, not, ge, le, startsWith).
            @info_catalogs
            ## 
            # When a group is associated with a team, this property determines whether the team is in read-only mode. To read this property, use the /group/{groupId}/team endpoint or the Get team API. To update this property, use the archiveTeam and unarchiveTeam APIs.
            @is_archived
            ## 
            # Indicates whether this group can be assigned to an Azure Active Directory role. Optional. This property can only be set while creating the group and is immutable. If set to true, the securityEnabled property must also be set to true,  visibility must be Hidden, and the group cannot be a dynamic group (that is, groupTypes cannot contain DynamicMembership). Only callers in Global Administrator and Privileged Role Administrator roles can set this property. The caller must also be assigned the RoleManagement.ReadWrite.Directory permission to set this property or update the membership of such groups. For more, see Using a group to manage Azure AD role assignmentsUsing this feature requires a Azure AD Premium P1 license. Returned by default. Supports $filter (eq, ne, not).
            @is_assignable_to_role
            ## 
            # The isFavorite property
            @is_favorite
            ## 
            # Indicates whether the group is a member of a restricted management administrative unit, in which case it requires a role scoped to the restricted administrative unit to manage. Default value is false. Read-only.  To manage a group that's a member of a restricted administrative unit, the calling app must be assigned the Directory.Write.Restricted permission. For delegated scenarios, the administrators must also be explicitly assigned supported roles at the restricted administrative unit scope.
            @is_management_restricted
            ## 
            # Indicates whether the signed-in user is subscribed to receive email conversations. Default value is true. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @is_subscribed_by_mail
            ## 
            # Indicates status of the group license assignment to all members of the group. Possible values: QueuedForProcessing, ProcessingInProgress, and ProcessingComplete. Returned only on $select. Read-only.
            @license_processing_state
            ## 
            # The SMTP address for the group, for example, 'serviceadmins@contoso.onmicrosoft.com'. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @mail
            ## 
            # Specifies whether the group is mail-enabled. Required. Returned by default. Supports $filter (eq, ne, not, and eq on null values).
            @mail_enabled
            ## 
            # The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the ASCII character set 0 - 127 except the following: @ () / [] ' ; : <> , SPACE. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            @mail_nickname
            ## 
            # Groups and administrative units that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports $expand.
            @member_of
            ## 
            # Direct members of this group, who can be users, devices, other groups, or service principals. Supports the List members, Add member, and Remove member operations. Nullable. Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=members($select=id,userPrincipalName,displayName).
            @members
            ## 
            # A list of group members with license errors from this group-based license assignment. Read-only.
            @members_with_license_errors
            ## 
            # The rule that determines members for this group if the group is a dynamic group (groupTypes contains DynamicMembership). For more information about the syntax of the membership rule, see Membership Rules syntax. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            @membership_rule
            ## 
            # Indicates whether the dynamic membership processing is on or paused. Possible values are On or Paused. Returned by default. Supports $filter (eq, ne, not, in).
            @membership_rule_processing_state
            ## 
            # Describes the processing status for rules-based dynamic groups. The property is null for non-rule based dynamic groups or if the dynamic group processing has been paused. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}). Read-only.
            @membership_rule_processing_status
            ## 
            # Contains the on-premises domain FQDN, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Read-only.
            @on_premises_domain_name
            ## 
            # Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in).
            @on_premises_last_sync_date_time
            ## 
            # Contains the on-premises netBios name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Read-only.
            @on_premises_net_bios_name
            ## 
            # Errors when using Microsoft synchronization product during provisioning. Returned by default. Supports $filter (eq, not).
            @on_premises_provisioning_errors
            ## 
            # Contains the on-premises SAM account name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith). Read-only.
            @on_premises_sam_account_name
            ## 
            # Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Returned by default. Supports $filter (eq including on null values). Read-only.
            @on_premises_security_identifier
            ## 
            # true if this group is synced from an on-premises directory; false if this group was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Returned by default. Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            @on_premises_sync_enabled
            ## 
            # The onenote property
            @onenote
            ## 
            # The organizationId property
            @organization_id
            ## 
            # The owners of the group who can be users or service principals. Nullable. If this property is not specified when creating a Microsoft 365 group, the calling user is automatically assigned as the group owner.  Supports $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1); Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=owners($select=id,userPrincipalName,displayName).
            @owners
            ## 
            # The permissions that have been granted for a group to a specific application. Supports $expand.
            @permission_grants
            ## 
            # The group's profile photo.
            @photo
            ## 
            # The profile photos owned by the group. Read-only. Nullable.
            @photos
            ## 
            # Selective Planner services available to the group. Read-only. Nullable.
            @planner
            ## 
            # The preferred data location for the Microsoft 365 group. By default, the group inherits the group creator's preferred data location. To set this property, the calling user must be assigned one of the following Azure AD roles:  Global Administrator  User Account Administrator Directory Writer  Exchange Administrator  SharePoint Administrator  For more information about this property, see OneDrive Online Multi-Geo. Nullable. Returned by default.
            @preferred_data_location
            ## 
            # The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            @preferred_language
            ## 
            # Email addresses for the group that direct to the same group mailbox. For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. The any operator is required for filter expressions on multi-valued properties. Returned by default. Read-only. Not nullable. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            @proxy_addresses
            ## 
            # The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable
            @rejected_senders
            ## 
            # Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the renew service action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            @renewed_date_time
            ## 
            # Specifies the group behaviors that can be set for a Microsoft 365 group during creation. This can be set only as part of creation (POST). Possible values are AllowOnlyMembersToPost, HideGroupInOutlook, SubscribeNewGroupMembers, WelcomeEmailDisabled. For more information, see Set Microsoft 365 group behaviors and provisioning options.
            @resource_behavior_options
            ## 
            # Specifies the group resources that are provisioned as part of Microsoft 365 group creation, that are not normally part of default group creation. Possible value is Team. For more information, see Set Microsoft 365 group behaviors and provisioning options. Returned by default. Supports $filter (eq, not, startsWith.
            @resource_provisioning_options
            ## 
            # Specifies whether the group is a security group. Required.Returned by default. Supports $filter (eq, ne, not, in).
            @security_enabled
            ## 
            # Security identifier of the group, used in Windows scenarios. Returned by default.
            @security_identifier
            ## 
            # Errors published by a federated service describing a non-transient, service-specific error regarding the properties or link from a group object .  Supports $filter (eq, not, for isResolved and serviceInstance).
            @service_provisioning_errors
            ## 
            # Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.
            @settings
            ## 
            # The list of SharePoint sites in this group. Access the default site with /sites/root.
            @sites
            ## 
            # The team associated with this group.
            @team
            ## 
            # Specifies a Microsoft 365 group's color theme. Possible values are Teal, Purple, Green, Blue, Pink, Orange or Red. Returned by default.
            @theme
            ## 
            # The group's conversation threads. Nullable.
            @threads
            ## 
            # The groups that a group is a member of, either directly and through nested membership. Nullable.
            @transitive_member_of
            ## 
            # The direct and transitive members of a group. Nullable.
            @transitive_members
            ## 
            # The uniqueName property
            @unique_name
            ## 
            # Count of conversations that have been delivered one or more new posts since the signed-in user's last visit to the group. This property is the same as unseenCount. Returned only on $select.
            @unseen_conversations_count
            ## 
            # Count of conversations that have received new posts since the signed-in user last visited the group. This property is the same as unseenConversationsCount.Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            @unseen_count
            ## 
            # Count of new posts that have been delivered to the group's conversations since the signed-in user's last visit to the group. Returned only on $select.
            @unseen_messages_count
            ## 
            # Specifies the group join policy and group content visibility for groups. Possible values are: Private, Public, or HiddenMembership. HiddenMembership can be set only for Microsoft 365 groups, when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation. If visibility value is not specified during group creation on Microsoft Graph, a security group is created as Private by default and Microsoft 365 group is Public. Groups assignable to roles are always Private. See group visibility options to learn more. Returned by default. Nullable.
            @visibility
            ## 
            # Specifies whether or not a group is configured to write back group object properties to on-premise Active Directory. These properties are used when group writeback is configured in the Azure AD Connect sync client.
            @writeback_configuration
            ## 
            ## Gets the acceptedSenders property value. The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.
            ## @return a directory_object
            ## 
            def accepted_senders
                return @accepted_senders
            end
            ## 
            ## Sets the acceptedSenders property value. The list of users or groups that are allowed to create post's or calendar events in this group. If this list is non-empty then only users or groups listed here are allowed to post.
            ## @param value Value to set for the acceptedSenders property.
            ## @return a void
            ## 
            def accepted_senders=(value)
                @accepted_senders = value
            end
            ## 
            ## Gets the accessType property value. The accessType property
            ## @return a group_access_type
            ## 
            def access_type
                return @access_type
            end
            ## 
            ## Sets the accessType property value. The accessType property
            ## @param value Value to set for the accessType property.
            ## @return a void
            ## 
            def access_type=(value)
                @access_type = value
            end
            ## 
            ## Gets the allowExternalSenders property value. Indicates if people external to the organization can send messages to the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def allow_external_senders
                return @allow_external_senders
            end
            ## 
            ## Sets the allowExternalSenders property value. Indicates if people external to the organization can send messages to the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the allowExternalSenders property.
            ## @return a void
            ## 
            def allow_external_senders=(value)
                @allow_external_senders = value
            end
            ## 
            ## Gets the appRoleAssignments property value. Represents the app roles a group has been granted for an application. Supports $expand.
            ## @return a app_role_assignment
            ## 
            def app_role_assignments
                return @app_role_assignments
            end
            ## 
            ## Sets the appRoleAssignments property value. Represents the app roles a group has been granted for an application. Supports $expand.
            ## @param value Value to set for the appRoleAssignments property.
            ## @return a void
            ## 
            def app_role_assignments=(value)
                @app_role_assignments = value
            end
            ## 
            ## Gets the assignedLabels property value. The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. Returned only on $select.
            ## @return a assigned_label
            ## 
            def assigned_labels
                return @assigned_labels
            end
            ## 
            ## Sets the assignedLabels property value. The list of sensitivity label pairs (label ID, label name) associated with a Microsoft 365 group. Returned only on $select.
            ## @param value Value to set for the assignedLabels property.
            ## @return a void
            ## 
            def assigned_labels=(value)
                @assigned_labels = value
            end
            ## 
            ## Gets the assignedLicenses property value. The licenses that are assigned to the group. Returned only on $select. Supports $filter (eq). Read-only.
            ## @return a assigned_license
            ## 
            def assigned_licenses
                return @assigned_licenses
            end
            ## 
            ## Sets the assignedLicenses property value. The licenses that are assigned to the group. Returned only on $select. Supports $filter (eq). Read-only.
            ## @param value Value to set for the assignedLicenses property.
            ## @return a void
            ## 
            def assigned_licenses=(value)
                @assigned_licenses = value
            end
            ## 
            ## Gets the autoSubscribeNewMembers property value. Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def auto_subscribe_new_members
                return @auto_subscribe_new_members
            end
            ## 
            ## Sets the autoSubscribeNewMembers property value. Indicates if new members added to the group will be auto-subscribed to receive email notifications. You can set this property in a PATCH request for the group; do not set it in the initial POST request that creates the group. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the autoSubscribeNewMembers property.
            ## @return a void
            ## 
            def auto_subscribe_new_members=(value)
                @auto_subscribe_new_members = value
            end
            ## 
            ## Gets the calendar property value. The group's calendar. Read-only.
            ## @return a calendar
            ## 
            def calendar
                return @calendar
            end
            ## 
            ## Sets the calendar property value. The group's calendar. Read-only.
            ## @param value Value to set for the calendar property.
            ## @return a void
            ## 
            def calendar=(value)
                @calendar = value
            end
            ## 
            ## Gets the calendarView property value. The calendar view for the calendar. Read-only.
            ## @return a event
            ## 
            def calendar_view
                return @calendar_view
            end
            ## 
            ## Sets the calendarView property value. The calendar view for the calendar. Read-only.
            ## @param value Value to set for the calendarView property.
            ## @return a void
            ## 
            def calendar_view=(value)
                @calendar_view = value
            end
            ## 
            ## Gets the classification property value. Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList setting value, based on the template definition.Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            ## @return a string
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. Describes a classification for the group (such as low, medium or high business impact). Valid values for this property are defined by creating a ClassificationList setting value, based on the template definition.Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new group and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.group"
            end
            ## 
            ## Gets the conversations property value. The group's conversations.
            ## @return a conversation
            ## 
            def conversations
                return @conversations
            end
            ## 
            ## Sets the conversations property value. The group's conversations.
            ## @param value Value to set for the conversations property.
            ## @return a void
            ## 
            def conversations=(value)
                @conversations = value
            end
            ## 
            ## Gets the createdByAppId property value. App ID of the app used to create the group. Can be null for some groups. Returned by default. Read-only. Supports $filter (eq, ne, not, in, startsWith).
            ## @return a string
            ## 
            def created_by_app_id
                return @created_by_app_id
            end
            ## 
            ## Sets the createdByAppId property value. App ID of the app used to create the group. Can be null for some groups. Returned by default. Read-only. Supports $filter (eq, ne, not, in, startsWith).
            ## @param value Value to set for the createdByAppId property.
            ## @return a void
            ## 
            def created_by_app_id=(value)
                @created_by_app_id = value
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp of when the group was created. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp of when the group was created. The value cannot be modified and is automatically populated when the group is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Gets the createdOnBehalfOf property value. The user (or application) that created the group. Note: This is not set if the user is an administrator. Read-only.
            ## @return a directory_object
            ## 
            def created_on_behalf_of
                return @created_on_behalf_of
            end
            ## 
            ## Sets the createdOnBehalfOf property value. The user (or application) that created the group. Note: This is not set if the user is an administrator. Read-only.
            ## @param value Value to set for the createdOnBehalfOf property.
            ## @return a void
            ## 
            def created_on_behalf_of=(value)
                @created_on_behalf_of = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Group.new
            end
            ## 
            ## Gets the description property value. An optional description for the group. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. An optional description for the group. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the group. Required. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the group. Required. Maximum length is 256 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the drive property value. The group's default drive. Read-only.
            ## @return a drive
            ## 
            def drive
                return @drive
            end
            ## 
            ## Sets the drive property value. The group's default drive. Read-only.
            ## @param value Value to set for the drive property.
            ## @return a void
            ## 
            def drive=(value)
                @drive = value
            end
            ## 
            ## Gets the drives property value. The group's drives. Read-only.
            ## @return a drive
            ## 
            def drives
                return @drives
            end
            ## 
            ## Sets the drives property value. The group's drives. Read-only.
            ## @param value Value to set for the drives property.
            ## @return a void
            ## 
            def drives=(value)
                @drives = value
            end
            ## 
            ## Gets the endpoints property value. Endpoints for the group. Read-only. Nullable.
            ## @return a endpoint
            ## 
            def endpoints
                return @endpoints
            end
            ## 
            ## Sets the endpoints property value. Endpoints for the group. Read-only. Nullable.
            ## @param value Value to set for the endpoints property.
            ## @return a void
            ## 
            def endpoints=(value)
                @endpoints = value
            end
            ## 
            ## Gets the events property value. The group's events.
            ## @return a event
            ## 
            def events
                return @events
            end
            ## 
            ## Sets the events property value. The group's events.
            ## @param value Value to set for the events property.
            ## @return a void
            ## 
            def events=(value)
                @events = value
            end
            ## 
            ## Gets the expirationDateTime property value. Timestamp of when the group is set to expire. Is null for security groups but for Microsoft 365 groups, it represents when the group is set to expire as defined in the groupLifecyclePolicy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Timestamp of when the group is set to expire. Is null for security groups but for Microsoft 365 groups, it represents when the group is set to expire as defined in the groupLifecyclePolicy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for the group. Read-only. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for the group. Read-only. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "acceptedSenders" => lambda {|n| @accepted_senders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "accessType" => lambda {|n| @access_type = n.get_enum_value(MicrosoftGraphBeta::Models::GroupAccessType) },
                    "allowExternalSenders" => lambda {|n| @allow_external_senders = n.get_boolean_value() },
                    "appRoleAssignments" => lambda {|n| @app_role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppRoleAssignment.create_from_discriminator_value(pn) }) },
                    "assignedLabels" => lambda {|n| @assigned_labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AssignedLabel.create_from_discriminator_value(pn) }) },
                    "assignedLicenses" => lambda {|n| @assigned_licenses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AssignedLicense.create_from_discriminator_value(pn) }) },
                    "autoSubscribeNewMembers" => lambda {|n| @auto_subscribe_new_members = n.get_boolean_value() },
                    "calendar" => lambda {|n| @calendar = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Calendar.create_from_discriminator_value(pn) }) },
                    "calendarView" => lambda {|n| @calendar_view = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Event.create_from_discriminator_value(pn) }) },
                    "classification" => lambda {|n| @classification = n.get_string_value() },
                    "conversations" => lambda {|n| @conversations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Conversation.create_from_discriminator_value(pn) }) },
                    "createdByAppId" => lambda {|n| @created_by_app_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "createdOnBehalfOf" => lambda {|n| @created_on_behalf_of = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "drive" => lambda {|n| @drive = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Drive.create_from_discriminator_value(pn) }) },
                    "drives" => lambda {|n| @drives = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Drive.create_from_discriminator_value(pn) }) },
                    "endpoints" => lambda {|n| @endpoints = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Endpoint.create_from_discriminator_value(pn) }) },
                    "events" => lambda {|n| @events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Event.create_from_discriminator_value(pn) }) },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Extension.create_from_discriminator_value(pn) }) },
                    "groupLifecyclePolicies" => lambda {|n| @group_lifecycle_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupLifecyclePolicy.create_from_discriminator_value(pn) }) },
                    "groupTypes" => lambda {|n| @group_types = n.get_collection_of_primitive_values(String) },
                    "hasMembersWithLicenseErrors" => lambda {|n| @has_members_with_license_errors = n.get_boolean_value() },
                    "hideFromAddressLists" => lambda {|n| @hide_from_address_lists = n.get_boolean_value() },
                    "hideFromOutlookClients" => lambda {|n| @hide_from_outlook_clients = n.get_boolean_value() },
                    "infoCatalogs" => lambda {|n| @info_catalogs = n.get_collection_of_primitive_values(String) },
                    "isArchived" => lambda {|n| @is_archived = n.get_boolean_value() },
                    "isAssignableToRole" => lambda {|n| @is_assignable_to_role = n.get_boolean_value() },
                    "isFavorite" => lambda {|n| @is_favorite = n.get_boolean_value() },
                    "isManagementRestricted" => lambda {|n| @is_management_restricted = n.get_boolean_value() },
                    "isSubscribedByMail" => lambda {|n| @is_subscribed_by_mail = n.get_boolean_value() },
                    "licenseProcessingState" => lambda {|n| @license_processing_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LicenseProcessingState.create_from_discriminator_value(pn) }) },
                    "mail" => lambda {|n| @mail = n.get_string_value() },
                    "mailEnabled" => lambda {|n| @mail_enabled = n.get_boolean_value() },
                    "mailNickname" => lambda {|n| @mail_nickname = n.get_string_value() },
                    "memberOf" => lambda {|n| @member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "membersWithLicenseErrors" => lambda {|n| @members_with_license_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "membershipRule" => lambda {|n| @membership_rule = n.get_string_value() },
                    "membershipRuleProcessingState" => lambda {|n| @membership_rule_processing_state = n.get_string_value() },
                    "membershipRuleProcessingStatus" => lambda {|n| @membership_rule_processing_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MembershipRuleProcessingStatus.create_from_discriminator_value(pn) }) },
                    "onPremisesDomainName" => lambda {|n| @on_premises_domain_name = n.get_string_value() },
                    "onPremisesLastSyncDateTime" => lambda {|n| @on_premises_last_sync_date_time = n.get_date_time_value() },
                    "onPremisesNetBiosName" => lambda {|n| @on_premises_net_bios_name = n.get_string_value() },
                    "onPremisesProvisioningErrors" => lambda {|n| @on_premises_provisioning_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesProvisioningError.create_from_discriminator_value(pn) }) },
                    "onPremisesSamAccountName" => lambda {|n| @on_premises_sam_account_name = n.get_string_value() },
                    "onPremisesSecurityIdentifier" => lambda {|n| @on_premises_security_identifier = n.get_string_value() },
                    "onPremisesSyncEnabled" => lambda {|n| @on_premises_sync_enabled = n.get_boolean_value() },
                    "onenote" => lambda {|n| @onenote = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Onenote.create_from_discriminator_value(pn) }) },
                    "organizationId" => lambda {|n| @organization_id = n.get_string_value() },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "permissionGrants" => lambda {|n| @permission_grants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ResourceSpecificPermissionGrant.create_from_discriminator_value(pn) }) },
                    "photo" => lambda {|n| @photo = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ProfilePhoto.create_from_discriminator_value(pn) }) },
                    "photos" => lambda {|n| @photos = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ProfilePhoto.create_from_discriminator_value(pn) }) },
                    "planner" => lambda {|n| @planner = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerGroup.create_from_discriminator_value(pn) }) },
                    "preferredDataLocation" => lambda {|n| @preferred_data_location = n.get_string_value() },
                    "preferredLanguage" => lambda {|n| @preferred_language = n.get_string_value() },
                    "proxyAddresses" => lambda {|n| @proxy_addresses = n.get_collection_of_primitive_values(String) },
                    "rejectedSenders" => lambda {|n| @rejected_senders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "renewedDateTime" => lambda {|n| @renewed_date_time = n.get_date_time_value() },
                    "resourceBehaviorOptions" => lambda {|n| @resource_behavior_options = n.get_collection_of_primitive_values(String) },
                    "resourceProvisioningOptions" => lambda {|n| @resource_provisioning_options = n.get_collection_of_primitive_values(String) },
                    "securityEnabled" => lambda {|n| @security_enabled = n.get_boolean_value() },
                    "securityIdentifier" => lambda {|n| @security_identifier = n.get_string_value() },
                    "serviceProvisioningErrors" => lambda {|n| @service_provisioning_errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServiceProvisioningError.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectorySetting.create_from_discriminator_value(pn) }) },
                    "sites" => lambda {|n| @sites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Site.create_from_discriminator_value(pn) }) },
                    "team" => lambda {|n| @team = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Team.create_from_discriminator_value(pn) }) },
                    "theme" => lambda {|n| @theme = n.get_string_value() },
                    "threads" => lambda {|n| @threads = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConversationThread.create_from_discriminator_value(pn) }) },
                    "transitiveMemberOf" => lambda {|n| @transitive_member_of = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "transitiveMembers" => lambda {|n| @transitive_members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "uniqueName" => lambda {|n| @unique_name = n.get_string_value() },
                    "unseenConversationsCount" => lambda {|n| @unseen_conversations_count = n.get_number_value() },
                    "unseenCount" => lambda {|n| @unseen_count = n.get_number_value() },
                    "unseenMessagesCount" => lambda {|n| @unseen_messages_count = n.get_number_value() },
                    "visibility" => lambda {|n| @visibility = n.get_string_value() },
                    "writebackConfiguration" => lambda {|n| @writeback_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupWritebackConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupLifecyclePolicies property value. The collection of lifecycle policies for this group. Read-only. Nullable.
            ## @return a group_lifecycle_policy
            ## 
            def group_lifecycle_policies
                return @group_lifecycle_policies
            end
            ## 
            ## Sets the groupLifecyclePolicies property value. The collection of lifecycle policies for this group. Read-only. Nullable.
            ## @param value Value to set for the groupLifecyclePolicies property.
            ## @return a void
            ## 
            def group_lifecycle_policies=(value)
                @group_lifecycle_policies = value
            end
            ## 
            ## Gets the groupTypes property value. Specifies the group type and its membership. If the collection contains Unified, the group is a Microsoft 365 group; otherwise, it's either a security group or distribution group. For details, see groups overview.If the collection includes DynamicMembership, the group has dynamic membership; otherwise, membership is static. Returned by default. Supports $filter (eq, not).
            ## @return a string
            ## 
            def group_types
                return @group_types
            end
            ## 
            ## Sets the groupTypes property value. Specifies the group type and its membership. If the collection contains Unified, the group is a Microsoft 365 group; otherwise, it's either a security group or distribution group. For details, see groups overview.If the collection includes DynamicMembership, the group has dynamic membership; otherwise, membership is static. Returned by default. Supports $filter (eq, not).
            ## @param value Value to set for the groupTypes property.
            ## @return a void
            ## 
            def group_types=(value)
                @group_types = value
            end
            ## 
            ## Gets the hasMembersWithLicenseErrors property value. Indicates whether there are members in this group that have license errors from its group-based license assignment. This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being true).  Supports $filter (eq).
            ## @return a boolean
            ## 
            def has_members_with_license_errors
                return @has_members_with_license_errors
            end
            ## 
            ## Sets the hasMembersWithLicenseErrors property value. Indicates whether there are members in this group that have license errors from its group-based license assignment. This property is never returned on a GET operation. You can use it as a $filter argument to get groups that have members with license errors (that is, filter for this property being true).  Supports $filter (eq).
            ## @param value Value to set for the hasMembersWithLicenseErrors property.
            ## @return a void
            ## 
            def has_members_with_license_errors=(value)
                @has_members_with_license_errors = value
            end
            ## 
            ## Gets the hideFromAddressLists property value. true if the group is not displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups; false otherwise. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def hide_from_address_lists
                return @hide_from_address_lists
            end
            ## 
            ## Sets the hideFromAddressLists property value. true if the group is not displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups; false otherwise. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the hideFromAddressLists property.
            ## @return a void
            ## 
            def hide_from_address_lists=(value)
                @hide_from_address_lists = value
            end
            ## 
            ## Gets the hideFromOutlookClients property value. true if the group is not displayed in Outlook clients, such as Outlook for Windows and Outlook on the web, false otherwise. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def hide_from_outlook_clients
                return @hide_from_outlook_clients
            end
            ## 
            ## Sets the hideFromOutlookClients property value. true if the group is not displayed in Outlook clients, such as Outlook for Windows and Outlook on the web, false otherwise. Default value is false. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the hideFromOutlookClients property.
            ## @return a void
            ## 
            def hide_from_outlook_clients=(value)
                @hide_from_outlook_clients = value
            end
            ## 
            ## Gets the infoCatalogs property value. Identifies the info segments assigned to the group. Returned by default. Supports $filter (eq, not, ge, le, startsWith).
            ## @return a string
            ## 
            def info_catalogs
                return @info_catalogs
            end
            ## 
            ## Sets the infoCatalogs property value. Identifies the info segments assigned to the group. Returned by default. Supports $filter (eq, not, ge, le, startsWith).
            ## @param value Value to set for the infoCatalogs property.
            ## @return a void
            ## 
            def info_catalogs=(value)
                @info_catalogs = value
            end
            ## 
            ## Gets the isArchived property value. When a group is associated with a team, this property determines whether the team is in read-only mode. To read this property, use the /group/{groupId}/team endpoint or the Get team API. To update this property, use the archiveTeam and unarchiveTeam APIs.
            ## @return a boolean
            ## 
            def is_archived
                return @is_archived
            end
            ## 
            ## Sets the isArchived property value. When a group is associated with a team, this property determines whether the team is in read-only mode. To read this property, use the /group/{groupId}/team endpoint or the Get team API. To update this property, use the archiveTeam and unarchiveTeam APIs.
            ## @param value Value to set for the isArchived property.
            ## @return a void
            ## 
            def is_archived=(value)
                @is_archived = value
            end
            ## 
            ## Gets the isAssignableToRole property value. Indicates whether this group can be assigned to an Azure Active Directory role. Optional. This property can only be set while creating the group and is immutable. If set to true, the securityEnabled property must also be set to true,  visibility must be Hidden, and the group cannot be a dynamic group (that is, groupTypes cannot contain DynamicMembership). Only callers in Global Administrator and Privileged Role Administrator roles can set this property. The caller must also be assigned the RoleManagement.ReadWrite.Directory permission to set this property or update the membership of such groups. For more, see Using a group to manage Azure AD role assignmentsUsing this feature requires a Azure AD Premium P1 license. Returned by default. Supports $filter (eq, ne, not).
            ## @return a boolean
            ## 
            def is_assignable_to_role
                return @is_assignable_to_role
            end
            ## 
            ## Sets the isAssignableToRole property value. Indicates whether this group can be assigned to an Azure Active Directory role. Optional. This property can only be set while creating the group and is immutable. If set to true, the securityEnabled property must also be set to true,  visibility must be Hidden, and the group cannot be a dynamic group (that is, groupTypes cannot contain DynamicMembership). Only callers in Global Administrator and Privileged Role Administrator roles can set this property. The caller must also be assigned the RoleManagement.ReadWrite.Directory permission to set this property or update the membership of such groups. For more, see Using a group to manage Azure AD role assignmentsUsing this feature requires a Azure AD Premium P1 license. Returned by default. Supports $filter (eq, ne, not).
            ## @param value Value to set for the isAssignableToRole property.
            ## @return a void
            ## 
            def is_assignable_to_role=(value)
                @is_assignable_to_role = value
            end
            ## 
            ## Gets the isFavorite property value. The isFavorite property
            ## @return a boolean
            ## 
            def is_favorite
                return @is_favorite
            end
            ## 
            ## Sets the isFavorite property value. The isFavorite property
            ## @param value Value to set for the isFavorite property.
            ## @return a void
            ## 
            def is_favorite=(value)
                @is_favorite = value
            end
            ## 
            ## Gets the isManagementRestricted property value. Indicates whether the group is a member of a restricted management administrative unit, in which case it requires a role scoped to the restricted administrative unit to manage. Default value is false. Read-only.  To manage a group that's a member of a restricted administrative unit, the calling app must be assigned the Directory.Write.Restricted permission. For delegated scenarios, the administrators must also be explicitly assigned supported roles at the restricted administrative unit scope.
            ## @return a boolean
            ## 
            def is_management_restricted
                return @is_management_restricted
            end
            ## 
            ## Sets the isManagementRestricted property value. Indicates whether the group is a member of a restricted management administrative unit, in which case it requires a role scoped to the restricted administrative unit to manage. Default value is false. Read-only.  To manage a group that's a member of a restricted administrative unit, the calling app must be assigned the Directory.Write.Restricted permission. For delegated scenarios, the administrators must also be explicitly assigned supported roles at the restricted administrative unit scope.
            ## @param value Value to set for the isManagementRestricted property.
            ## @return a void
            ## 
            def is_management_restricted=(value)
                @is_management_restricted = value
            end
            ## 
            ## Gets the isSubscribedByMail property value. Indicates whether the signed-in user is subscribed to receive email conversations. Default value is true. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a boolean
            ## 
            def is_subscribed_by_mail
                return @is_subscribed_by_mail
            end
            ## 
            ## Sets the isSubscribedByMail property value. Indicates whether the signed-in user is subscribed to receive email conversations. Default value is true. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the isSubscribedByMail property.
            ## @return a void
            ## 
            def is_subscribed_by_mail=(value)
                @is_subscribed_by_mail = value
            end
            ## 
            ## Gets the licenseProcessingState property value. Indicates status of the group license assignment to all members of the group. Possible values: QueuedForProcessing, ProcessingInProgress, and ProcessingComplete. Returned only on $select. Read-only.
            ## @return a license_processing_state
            ## 
            def license_processing_state
                return @license_processing_state
            end
            ## 
            ## Sets the licenseProcessingState property value. Indicates status of the group license assignment to all members of the group. Possible values: QueuedForProcessing, ProcessingInProgress, and ProcessingComplete. Returned only on $select. Read-only.
            ## @param value Value to set for the licenseProcessingState property.
            ## @return a void
            ## 
            def license_processing_state=(value)
                @license_processing_state = value
            end
            ## 
            ## Gets the mail property value. The SMTP address for the group, for example, 'serviceadmins@contoso.onmicrosoft.com'. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def mail
                return @mail
            end
            ## 
            ## Sets the mail property value. The SMTP address for the group, for example, 'serviceadmins@contoso.onmicrosoft.com'. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the mail property.
            ## @return a void
            ## 
            def mail=(value)
                @mail = value
            end
            ## 
            ## Gets the mailEnabled property value. Specifies whether the group is mail-enabled. Required. Returned by default. Supports $filter (eq, ne, not, and eq on null values).
            ## @return a boolean
            ## 
            def mail_enabled
                return @mail_enabled
            end
            ## 
            ## Sets the mailEnabled property value. Specifies whether the group is mail-enabled. Required. Returned by default. Supports $filter (eq, ne, not, and eq on null values).
            ## @param value Value to set for the mailEnabled property.
            ## @return a void
            ## 
            def mail_enabled=(value)
                @mail_enabled = value
            end
            ## 
            ## Gets the mailNickname property value. The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the ASCII character set 0 - 127 except the following: @ () / [] ' ; : <> , SPACE. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            ## @return a string
            ## 
            def mail_nickname
                return @mail_nickname
            end
            ## 
            ## Sets the mailNickname property value. The mail alias for the group, unique for Microsoft 365 groups in the organization. Maximum length is 64 characters. This property can contain only characters in the ASCII character set 0 - 127 except the following: @ () / [] ' ; : <> , SPACE. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith).
            ## @param value Value to set for the mailNickname property.
            ## @return a void
            ## 
            def mail_nickname=(value)
                @mail_nickname = value
            end
            ## 
            ## Gets the memberOf property value. Groups and administrative units that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports $expand.
            ## @return a directory_object
            ## 
            def member_of
                return @member_of
            end
            ## 
            ## Sets the memberOf property value. Groups and administrative units that this group is a member of. HTTP Methods: GET (supported for all groups). Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the memberOf property.
            ## @return a void
            ## 
            def member_of=(value)
                @member_of = value
            end
            ## 
            ## Gets the members property value. Direct members of this group, who can be users, devices, other groups, or service principals. Supports the List members, Add member, and Remove member operations. Nullable. Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=members($select=id,userPrincipalName,displayName).
            ## @return a directory_object
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. Direct members of this group, who can be users, devices, other groups, or service principals. Supports the List members, Add member, and Remove member operations. Nullable. Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=members($select=id,userPrincipalName,displayName).
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the membersWithLicenseErrors property value. A list of group members with license errors from this group-based license assignment. Read-only.
            ## @return a directory_object
            ## 
            def members_with_license_errors
                return @members_with_license_errors
            end
            ## 
            ## Sets the membersWithLicenseErrors property value. A list of group members with license errors from this group-based license assignment. Read-only.
            ## @param value Value to set for the membersWithLicenseErrors property.
            ## @return a void
            ## 
            def members_with_license_errors=(value)
                @members_with_license_errors = value
            end
            ## 
            ## Gets the membershipRule property value. The rule that determines members for this group if the group is a dynamic group (groupTypes contains DynamicMembership). For more information about the syntax of the membership rule, see Membership Rules syntax. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            ## @return a string
            ## 
            def membership_rule
                return @membership_rule
            end
            ## 
            ## Sets the membershipRule property value. The rule that determines members for this group if the group is a dynamic group (groupTypes contains DynamicMembership). For more information about the syntax of the membership rule, see Membership Rules syntax. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith).
            ## @param value Value to set for the membershipRule property.
            ## @return a void
            ## 
            def membership_rule=(value)
                @membership_rule = value
            end
            ## 
            ## Gets the membershipRuleProcessingState property value. Indicates whether the dynamic membership processing is on or paused. Possible values are On or Paused. Returned by default. Supports $filter (eq, ne, not, in).
            ## @return a string
            ## 
            def membership_rule_processing_state
                return @membership_rule_processing_state
            end
            ## 
            ## Sets the membershipRuleProcessingState property value. Indicates whether the dynamic membership processing is on or paused. Possible values are On or Paused. Returned by default. Supports $filter (eq, ne, not, in).
            ## @param value Value to set for the membershipRuleProcessingState property.
            ## @return a void
            ## 
            def membership_rule_processing_state=(value)
                @membership_rule_processing_state = value
            end
            ## 
            ## Gets the membershipRuleProcessingStatus property value. Describes the processing status for rules-based dynamic groups. The property is null for non-rule based dynamic groups or if the dynamic group processing has been paused. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}). Read-only.
            ## @return a membership_rule_processing_status
            ## 
            def membership_rule_processing_status
                return @membership_rule_processing_status
            end
            ## 
            ## Sets the membershipRuleProcessingStatus property value. Describes the processing status for rules-based dynamic groups. The property is null for non-rule based dynamic groups or if the dynamic group processing has been paused. Returned only on $select. Supported only on the Get group API (GET /groups/{ID}). Read-only.
            ## @param value Value to set for the membershipRuleProcessingStatus property.
            ## @return a void
            ## 
            def membership_rule_processing_status=(value)
                @membership_rule_processing_status = value
            end
            ## 
            ## Gets the onPremisesDomainName property value. Contains the on-premises domain FQDN, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Read-only.
            ## @return a string
            ## 
            def on_premises_domain_name
                return @on_premises_domain_name
            end
            ## 
            ## Sets the onPremisesDomainName property value. Contains the on-premises domain FQDN, also called dnsDomainName synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Read-only.
            ## @param value Value to set for the onPremisesDomainName property.
            ## @return a void
            ## 
            def on_premises_domain_name=(value)
                @on_premises_domain_name = value
            end
            ## 
            ## Gets the onPremisesLastSyncDateTime property value. Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in).
            ## @return a date_time
            ## 
            def on_premises_last_sync_date_time
                return @on_premises_last_sync_date_time
            end
            ## 
            ## Sets the onPremisesLastSyncDateTime property value. Indicates the last time at which the group was synced with the on-premises directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Read-only. Supports $filter (eq, ne, not, ge, le, in).
            ## @param value Value to set for the onPremisesLastSyncDateTime property.
            ## @return a void
            ## 
            def on_premises_last_sync_date_time=(value)
                @on_premises_last_sync_date_time = value
            end
            ## 
            ## Gets the onPremisesNetBiosName property value. Contains the on-premises netBios name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Read-only.
            ## @return a string
            ## 
            def on_premises_net_bios_name
                return @on_premises_net_bios_name
            end
            ## 
            ## Sets the onPremisesNetBiosName property value. Contains the on-premises netBios name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Read-only.
            ## @param value Value to set for the onPremisesNetBiosName property.
            ## @return a void
            ## 
            def on_premises_net_bios_name=(value)
                @on_premises_net_bios_name = value
            end
            ## 
            ## Gets the onPremisesProvisioningErrors property value. Errors when using Microsoft synchronization product during provisioning. Returned by default. Supports $filter (eq, not).
            ## @return a on_premises_provisioning_error
            ## 
            def on_premises_provisioning_errors
                return @on_premises_provisioning_errors
            end
            ## 
            ## Sets the onPremisesProvisioningErrors property value. Errors when using Microsoft synchronization product during provisioning. Returned by default. Supports $filter (eq, not).
            ## @param value Value to set for the onPremisesProvisioningErrors property.
            ## @return a void
            ## 
            def on_premises_provisioning_errors=(value)
                @on_premises_provisioning_errors = value
            end
            ## 
            ## Gets the onPremisesSamAccountName property value. Contains the on-premises SAM account name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith). Read-only.
            ## @return a string
            ## 
            def on_premises_sam_account_name
                return @on_premises_sam_account_name
            end
            ## 
            ## Sets the onPremisesSamAccountName property value. Contains the on-premises SAM account name synchronized from the on-premises directory. The property is only populated for customers who are synchronizing their on-premises directory to Azure Active Directory via Azure AD Connect.Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith). Read-only.
            ## @param value Value to set for the onPremisesSamAccountName property.
            ## @return a void
            ## 
            def on_premises_sam_account_name=(value)
                @on_premises_sam_account_name = value
            end
            ## 
            ## Gets the onPremisesSecurityIdentifier property value. Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Returned by default. Supports $filter (eq including on null values). Read-only.
            ## @return a string
            ## 
            def on_premises_security_identifier
                return @on_premises_security_identifier
            end
            ## 
            ## Sets the onPremisesSecurityIdentifier property value. Contains the on-premises security identifier (SID) for the group that was synchronized from on-premises to the cloud. Returned by default. Supports $filter (eq including on null values). Read-only.
            ## @param value Value to set for the onPremisesSecurityIdentifier property.
            ## @return a void
            ## 
            def on_premises_security_identifier=(value)
                @on_premises_security_identifier = value
            end
            ## 
            ## Gets the onPremisesSyncEnabled property value. true if this group is synced from an on-premises directory; false if this group was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Returned by default. Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @return a boolean
            ## 
            def on_premises_sync_enabled
                return @on_premises_sync_enabled
            end
            ## 
            ## Sets the onPremisesSyncEnabled property value. true if this group is synced from an on-premises directory; false if this group was originally synced from an on-premises directory but is no longer synced; null if this object has never been synced from an on-premises directory (default). Returned by default. Read-only. Supports $filter (eq, ne, not, in, and eq on null values).
            ## @param value Value to set for the onPremisesSyncEnabled property.
            ## @return a void
            ## 
            def on_premises_sync_enabled=(value)
                @on_premises_sync_enabled = value
            end
            ## 
            ## Gets the onenote property value. The onenote property
            ## @return a onenote
            ## 
            def onenote
                return @onenote
            end
            ## 
            ## Sets the onenote property value. The onenote property
            ## @param value Value to set for the onenote property.
            ## @return a void
            ## 
            def onenote=(value)
                @onenote = value
            end
            ## 
            ## Gets the organizationId property value. The organizationId property
            ## @return a string
            ## 
            def organization_id
                return @organization_id
            end
            ## 
            ## Sets the organizationId property value. The organizationId property
            ## @param value Value to set for the organizationId property.
            ## @return a void
            ## 
            def organization_id=(value)
                @organization_id = value
            end
            ## 
            ## Gets the owners property value. The owners of the group who can be users or service principals. Nullable. If this property is not specified when creating a Microsoft 365 group, the calling user is automatically assigned as the group owner.  Supports $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1); Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=owners($select=id,userPrincipalName,displayName).
            ## @return a directory_object
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. The owners of the group who can be users or service principals. Nullable. If this property is not specified when creating a Microsoft 365 group, the calling user is automatically assigned as the group owner.  Supports $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1); Supports $expand including nested $select. For example, /groups?$filter=startsWith(displayName,'Role')&$select=id,displayName&$expand=owners($select=id,userPrincipalName,displayName).
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the permissionGrants property value. The permissions that have been granted for a group to a specific application. Supports $expand.
            ## @return a resource_specific_permission_grant
            ## 
            def permission_grants
                return @permission_grants
            end
            ## 
            ## Sets the permissionGrants property value. The permissions that have been granted for a group to a specific application. Supports $expand.
            ## @param value Value to set for the permissionGrants property.
            ## @return a void
            ## 
            def permission_grants=(value)
                @permission_grants = value
            end
            ## 
            ## Gets the photo property value. The group's profile photo.
            ## @return a profile_photo
            ## 
            def photo
                return @photo
            end
            ## 
            ## Sets the photo property value. The group's profile photo.
            ## @param value Value to set for the photo property.
            ## @return a void
            ## 
            def photo=(value)
                @photo = value
            end
            ## 
            ## Gets the photos property value. The profile photos owned by the group. Read-only. Nullable.
            ## @return a profile_photo
            ## 
            def photos
                return @photos
            end
            ## 
            ## Sets the photos property value. The profile photos owned by the group. Read-only. Nullable.
            ## @param value Value to set for the photos property.
            ## @return a void
            ## 
            def photos=(value)
                @photos = value
            end
            ## 
            ## Gets the planner property value. Selective Planner services available to the group. Read-only. Nullable.
            ## @return a planner_group
            ## 
            def planner
                return @planner
            end
            ## 
            ## Sets the planner property value. Selective Planner services available to the group. Read-only. Nullable.
            ## @param value Value to set for the planner property.
            ## @return a void
            ## 
            def planner=(value)
                @planner = value
            end
            ## 
            ## Gets the preferredDataLocation property value. The preferred data location for the Microsoft 365 group. By default, the group inherits the group creator's preferred data location. To set this property, the calling user must be assigned one of the following Azure AD roles:  Global Administrator  User Account Administrator Directory Writer  Exchange Administrator  SharePoint Administrator  For more information about this property, see OneDrive Online Multi-Geo. Nullable. Returned by default.
            ## @return a string
            ## 
            def preferred_data_location
                return @preferred_data_location
            end
            ## 
            ## Sets the preferredDataLocation property value. The preferred data location for the Microsoft 365 group. By default, the group inherits the group creator's preferred data location. To set this property, the calling user must be assigned one of the following Azure AD roles:  Global Administrator  User Account Administrator Directory Writer  Exchange Administrator  SharePoint Administrator  For more information about this property, see OneDrive Online Multi-Geo. Nullable. Returned by default.
            ## @param value Value to set for the preferredDataLocation property.
            ## @return a void
            ## 
            def preferred_data_location=(value)
                @preferred_data_location = value
            end
            ## 
            ## Gets the preferredLanguage property value. The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @return a string
            ## 
            def preferred_language
                return @preferred_language
            end
            ## 
            ## Sets the preferredLanguage property value. The preferred language for a Microsoft 365 group. Should follow ISO 639-1 Code; for example en-US. Returned by default. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values).
            ## @param value Value to set for the preferredLanguage property.
            ## @return a void
            ## 
            def preferred_language=(value)
                @preferred_language = value
            end
            ## 
            ## Gets the proxyAddresses property value. Email addresses for the group that direct to the same group mailbox. For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. The any operator is required for filter expressions on multi-valued properties. Returned by default. Read-only. Not nullable. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            ## @return a string
            ## 
            def proxy_addresses
                return @proxy_addresses
            end
            ## 
            ## Sets the proxyAddresses property value. Email addresses for the group that direct to the same group mailbox. For example: ['SMTP: bob@contoso.com', 'smtp: bob@sales.contoso.com']. The any operator is required for filter expressions on multi-valued properties. Returned by default. Read-only. Not nullable. Supports $filter (eq, not, ge, le, startsWith, endsWith, /$count eq 0, /$count ne 0).
            ## @param value Value to set for the proxyAddresses property.
            ## @return a void
            ## 
            def proxy_addresses=(value)
                @proxy_addresses = value
            end
            ## 
            ## Gets the rejectedSenders property value. The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable
            ## @return a directory_object
            ## 
            def rejected_senders
                return @rejected_senders
            end
            ## 
            ## Sets the rejectedSenders property value. The list of users or groups that are not allowed to create posts or calendar events in this group. Nullable
            ## @param value Value to set for the rejectedSenders property.
            ## @return a void
            ## 
            def rejected_senders=(value)
                @rejected_senders = value
            end
            ## 
            ## Gets the renewedDateTime property value. Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the renew service action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            ## @return a date_time
            ## 
            def renewed_date_time
                return @renewed_date_time
            end
            ## 
            ## Sets the renewedDateTime property value. Timestamp of when the group was last renewed. This cannot be modified directly and is only updated via the renew service action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Returned by default. Supports $filter (eq, ne, not, ge, le, in). Read-only.
            ## @param value Value to set for the renewedDateTime property.
            ## @return a void
            ## 
            def renewed_date_time=(value)
                @renewed_date_time = value
            end
            ## 
            ## Gets the resourceBehaviorOptions property value. Specifies the group behaviors that can be set for a Microsoft 365 group during creation. This can be set only as part of creation (POST). Possible values are AllowOnlyMembersToPost, HideGroupInOutlook, SubscribeNewGroupMembers, WelcomeEmailDisabled. For more information, see Set Microsoft 365 group behaviors and provisioning options.
            ## @return a string
            ## 
            def resource_behavior_options
                return @resource_behavior_options
            end
            ## 
            ## Sets the resourceBehaviorOptions property value. Specifies the group behaviors that can be set for a Microsoft 365 group during creation. This can be set only as part of creation (POST). Possible values are AllowOnlyMembersToPost, HideGroupInOutlook, SubscribeNewGroupMembers, WelcomeEmailDisabled. For more information, see Set Microsoft 365 group behaviors and provisioning options.
            ## @param value Value to set for the resourceBehaviorOptions property.
            ## @return a void
            ## 
            def resource_behavior_options=(value)
                @resource_behavior_options = value
            end
            ## 
            ## Gets the resourceProvisioningOptions property value. Specifies the group resources that are provisioned as part of Microsoft 365 group creation, that are not normally part of default group creation. Possible value is Team. For more information, see Set Microsoft 365 group behaviors and provisioning options. Returned by default. Supports $filter (eq, not, startsWith.
            ## @return a string
            ## 
            def resource_provisioning_options
                return @resource_provisioning_options
            end
            ## 
            ## Sets the resourceProvisioningOptions property value. Specifies the group resources that are provisioned as part of Microsoft 365 group creation, that are not normally part of default group creation. Possible value is Team. For more information, see Set Microsoft 365 group behaviors and provisioning options. Returned by default. Supports $filter (eq, not, startsWith.
            ## @param value Value to set for the resourceProvisioningOptions property.
            ## @return a void
            ## 
            def resource_provisioning_options=(value)
                @resource_provisioning_options = value
            end
            ## 
            ## Gets the securityEnabled property value. Specifies whether the group is a security group. Required.Returned by default. Supports $filter (eq, ne, not, in).
            ## @return a boolean
            ## 
            def security_enabled
                return @security_enabled
            end
            ## 
            ## Sets the securityEnabled property value. Specifies whether the group is a security group. Required.Returned by default. Supports $filter (eq, ne, not, in).
            ## @param value Value to set for the securityEnabled property.
            ## @return a void
            ## 
            def security_enabled=(value)
                @security_enabled = value
            end
            ## 
            ## Gets the securityIdentifier property value. Security identifier of the group, used in Windows scenarios. Returned by default.
            ## @return a string
            ## 
            def security_identifier
                return @security_identifier
            end
            ## 
            ## Sets the securityIdentifier property value. Security identifier of the group, used in Windows scenarios. Returned by default.
            ## @param value Value to set for the securityIdentifier property.
            ## @return a void
            ## 
            def security_identifier=(value)
                @security_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("acceptedSenders", @accepted_senders)
                writer.write_enum_value("accessType", @access_type)
                writer.write_boolean_value("allowExternalSenders", @allow_external_senders)
                writer.write_collection_of_object_values("appRoleAssignments", @app_role_assignments)
                writer.write_collection_of_object_values("assignedLabels", @assigned_labels)
                writer.write_collection_of_object_values("assignedLicenses", @assigned_licenses)
                writer.write_boolean_value("autoSubscribeNewMembers", @auto_subscribe_new_members)
                writer.write_object_value("calendar", @calendar)
                writer.write_collection_of_object_values("calendarView", @calendar_view)
                writer.write_string_value("classification", @classification)
                writer.write_collection_of_object_values("conversations", @conversations)
                writer.write_string_value("createdByAppId", @created_by_app_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("createdOnBehalfOf", @created_on_behalf_of)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("drive", @drive)
                writer.write_collection_of_object_values("drives", @drives)
                writer.write_collection_of_object_values("endpoints", @endpoints)
                writer.write_collection_of_object_values("events", @events)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_collection_of_object_values("groupLifecyclePolicies", @group_lifecycle_policies)
                writer.write_collection_of_primitive_values("groupTypes", @group_types)
                writer.write_boolean_value("hasMembersWithLicenseErrors", @has_members_with_license_errors)
                writer.write_boolean_value("hideFromAddressLists", @hide_from_address_lists)
                writer.write_boolean_value("hideFromOutlookClients", @hide_from_outlook_clients)
                writer.write_collection_of_primitive_values("infoCatalogs", @info_catalogs)
                writer.write_boolean_value("isArchived", @is_archived)
                writer.write_boolean_value("isAssignableToRole", @is_assignable_to_role)
                writer.write_boolean_value("isFavorite", @is_favorite)
                writer.write_boolean_value("isManagementRestricted", @is_management_restricted)
                writer.write_boolean_value("isSubscribedByMail", @is_subscribed_by_mail)
                writer.write_object_value("licenseProcessingState", @license_processing_state)
                writer.write_string_value("mail", @mail)
                writer.write_boolean_value("mailEnabled", @mail_enabled)
                writer.write_string_value("mailNickname", @mail_nickname)
                writer.write_collection_of_object_values("memberOf", @member_of)
                writer.write_collection_of_object_values("members", @members)
                writer.write_collection_of_object_values("membersWithLicenseErrors", @members_with_license_errors)
                writer.write_string_value("membershipRule", @membership_rule)
                writer.write_string_value("membershipRuleProcessingState", @membership_rule_processing_state)
                writer.write_object_value("membershipRuleProcessingStatus", @membership_rule_processing_status)
                writer.write_string_value("onPremisesDomainName", @on_premises_domain_name)
                writer.write_date_time_value("onPremisesLastSyncDateTime", @on_premises_last_sync_date_time)
                writer.write_string_value("onPremisesNetBiosName", @on_premises_net_bios_name)
                writer.write_collection_of_object_values("onPremisesProvisioningErrors", @on_premises_provisioning_errors)
                writer.write_string_value("onPremisesSamAccountName", @on_premises_sam_account_name)
                writer.write_string_value("onPremisesSecurityIdentifier", @on_premises_security_identifier)
                writer.write_boolean_value("onPremisesSyncEnabled", @on_premises_sync_enabled)
                writer.write_object_value("onenote", @onenote)
                writer.write_string_value("organizationId", @organization_id)
                writer.write_collection_of_object_values("owners", @owners)
                writer.write_collection_of_object_values("permissionGrants", @permission_grants)
                writer.write_object_value("photo", @photo)
                writer.write_collection_of_object_values("photos", @photos)
                writer.write_object_value("planner", @planner)
                writer.write_string_value("preferredDataLocation", @preferred_data_location)
                writer.write_string_value("preferredLanguage", @preferred_language)
                writer.write_collection_of_primitive_values("proxyAddresses", @proxy_addresses)
                writer.write_collection_of_object_values("rejectedSenders", @rejected_senders)
                writer.write_date_time_value("renewedDateTime", @renewed_date_time)
                writer.write_collection_of_primitive_values("resourceBehaviorOptions", @resource_behavior_options)
                writer.write_collection_of_primitive_values("resourceProvisioningOptions", @resource_provisioning_options)
                writer.write_boolean_value("securityEnabled", @security_enabled)
                writer.write_string_value("securityIdentifier", @security_identifier)
                writer.write_collection_of_object_values("serviceProvisioningErrors", @service_provisioning_errors)
                writer.write_collection_of_object_values("settings", @settings)
                writer.write_collection_of_object_values("sites", @sites)
                writer.write_object_value("team", @team)
                writer.write_string_value("theme", @theme)
                writer.write_collection_of_object_values("threads", @threads)
                writer.write_collection_of_object_values("transitiveMemberOf", @transitive_member_of)
                writer.write_collection_of_object_values("transitiveMembers", @transitive_members)
                writer.write_string_value("uniqueName", @unique_name)
                writer.write_number_value("unseenConversationsCount", @unseen_conversations_count)
                writer.write_number_value("unseenCount", @unseen_count)
                writer.write_number_value("unseenMessagesCount", @unseen_messages_count)
                writer.write_string_value("visibility", @visibility)
                writer.write_object_value("writebackConfiguration", @writeback_configuration)
            end
            ## 
            ## Gets the serviceProvisioningErrors property value. Errors published by a federated service describing a non-transient, service-specific error regarding the properties or link from a group object .  Supports $filter (eq, not, for isResolved and serviceInstance).
            ## @return a service_provisioning_error
            ## 
            def service_provisioning_errors
                return @service_provisioning_errors
            end
            ## 
            ## Sets the serviceProvisioningErrors property value. Errors published by a federated service describing a non-transient, service-specific error regarding the properties or link from a group object .  Supports $filter (eq, not, for isResolved and serviceInstance).
            ## @param value Value to set for the serviceProvisioningErrors property.
            ## @return a void
            ## 
            def service_provisioning_errors=(value)
                @service_provisioning_errors = value
            end
            ## 
            ## Gets the settings property value. Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.
            ## @return a directory_setting
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Settings that can govern this group's behavior, like whether members can invite guest users to the group. Nullable.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the sites property value. The list of SharePoint sites in this group. Access the default site with /sites/root.
            ## @return a site
            ## 
            def sites
                return @sites
            end
            ## 
            ## Sets the sites property value. The list of SharePoint sites in this group. Access the default site with /sites/root.
            ## @param value Value to set for the sites property.
            ## @return a void
            ## 
            def sites=(value)
                @sites = value
            end
            ## 
            ## Gets the team property value. The team associated with this group.
            ## @return a team
            ## 
            def team
                return @team
            end
            ## 
            ## Sets the team property value. The team associated with this group.
            ## @param value Value to set for the team property.
            ## @return a void
            ## 
            def team=(value)
                @team = value
            end
            ## 
            ## Gets the theme property value. Specifies a Microsoft 365 group's color theme. Possible values are Teal, Purple, Green, Blue, Pink, Orange or Red. Returned by default.
            ## @return a string
            ## 
            def theme
                return @theme
            end
            ## 
            ## Sets the theme property value. Specifies a Microsoft 365 group's color theme. Possible values are Teal, Purple, Green, Blue, Pink, Orange or Red. Returned by default.
            ## @param value Value to set for the theme property.
            ## @return a void
            ## 
            def theme=(value)
                @theme = value
            end
            ## 
            ## Gets the threads property value. The group's conversation threads. Nullable.
            ## @return a conversation_thread
            ## 
            def threads
                return @threads
            end
            ## 
            ## Sets the threads property value. The group's conversation threads. Nullable.
            ## @param value Value to set for the threads property.
            ## @return a void
            ## 
            def threads=(value)
                @threads = value
            end
            ## 
            ## Gets the transitiveMemberOf property value. The groups that a group is a member of, either directly and through nested membership. Nullable.
            ## @return a directory_object
            ## 
            def transitive_member_of
                return @transitive_member_of
            end
            ## 
            ## Sets the transitiveMemberOf property value. The groups that a group is a member of, either directly and through nested membership. Nullable.
            ## @param value Value to set for the transitiveMemberOf property.
            ## @return a void
            ## 
            def transitive_member_of=(value)
                @transitive_member_of = value
            end
            ## 
            ## Gets the transitiveMembers property value. The direct and transitive members of a group. Nullable.
            ## @return a directory_object
            ## 
            def transitive_members
                return @transitive_members
            end
            ## 
            ## Sets the transitiveMembers property value. The direct and transitive members of a group. Nullable.
            ## @param value Value to set for the transitiveMembers property.
            ## @return a void
            ## 
            def transitive_members=(value)
                @transitive_members = value
            end
            ## 
            ## Gets the uniqueName property value. The uniqueName property
            ## @return a string
            ## 
            def unique_name
                return @unique_name
            end
            ## 
            ## Sets the uniqueName property value. The uniqueName property
            ## @param value Value to set for the uniqueName property.
            ## @return a void
            ## 
            def unique_name=(value)
                @unique_name = value
            end
            ## 
            ## Gets the unseenConversationsCount property value. Count of conversations that have been delivered one or more new posts since the signed-in user's last visit to the group. This property is the same as unseenCount. Returned only on $select.
            ## @return a integer
            ## 
            def unseen_conversations_count
                return @unseen_conversations_count
            end
            ## 
            ## Sets the unseenConversationsCount property value. Count of conversations that have been delivered one or more new posts since the signed-in user's last visit to the group. This property is the same as unseenCount. Returned only on $select.
            ## @param value Value to set for the unseenConversationsCount property.
            ## @return a void
            ## 
            def unseen_conversations_count=(value)
                @unseen_conversations_count = value
            end
            ## 
            ## Gets the unseenCount property value. Count of conversations that have received new posts since the signed-in user last visited the group. This property is the same as unseenConversationsCount.Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @return a integer
            ## 
            def unseen_count
                return @unseen_count
            end
            ## 
            ## Sets the unseenCount property value. Count of conversations that have received new posts since the signed-in user last visited the group. This property is the same as unseenConversationsCount.Returned only on $select. Supported only on the Get group API (GET /groups/{ID}).
            ## @param value Value to set for the unseenCount property.
            ## @return a void
            ## 
            def unseen_count=(value)
                @unseen_count = value
            end
            ## 
            ## Gets the unseenMessagesCount property value. Count of new posts that have been delivered to the group's conversations since the signed-in user's last visit to the group. Returned only on $select.
            ## @return a integer
            ## 
            def unseen_messages_count
                return @unseen_messages_count
            end
            ## 
            ## Sets the unseenMessagesCount property value. Count of new posts that have been delivered to the group's conversations since the signed-in user's last visit to the group. Returned only on $select.
            ## @param value Value to set for the unseenMessagesCount property.
            ## @return a void
            ## 
            def unseen_messages_count=(value)
                @unseen_messages_count = value
            end
            ## 
            ## Gets the visibility property value. Specifies the group join policy and group content visibility for groups. Possible values are: Private, Public, or HiddenMembership. HiddenMembership can be set only for Microsoft 365 groups, when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation. If visibility value is not specified during group creation on Microsoft Graph, a security group is created as Private by default and Microsoft 365 group is Public. Groups assignable to roles are always Private. See group visibility options to learn more. Returned by default. Nullable.
            ## @return a string
            ## 
            def visibility
                return @visibility
            end
            ## 
            ## Sets the visibility property value. Specifies the group join policy and group content visibility for groups. Possible values are: Private, Public, or HiddenMembership. HiddenMembership can be set only for Microsoft 365 groups, when the groups are created. It can't be updated later. Other values of visibility can be updated after group creation. If visibility value is not specified during group creation on Microsoft Graph, a security group is created as Private by default and Microsoft 365 group is Public. Groups assignable to roles are always Private. See group visibility options to learn more. Returned by default. Nullable.
            ## @param value Value to set for the visibility property.
            ## @return a void
            ## 
            def visibility=(value)
                @visibility = value
            end
            ## 
            ## Gets the writebackConfiguration property value. Specifies whether or not a group is configured to write back group object properties to on-premise Active Directory. These properties are used when group writeback is configured in the Azure AD Connect sync client.
            ## @return a group_writeback_configuration
            ## 
            def writeback_configuration
                return @writeback_configuration
            end
            ## 
            ## Sets the writebackConfiguration property value. Specifies whether or not a group is configured to write back group object properties to on-premise Active Directory. These properties are used when group writeback is configured in the Azure AD Connect sync client.
            ## @param value Value to set for the writebackConfiguration property.
            ## @return a void
            ## 
            def writeback_configuration=(value)
                @writeback_configuration = value
            end
        end
    end
end
