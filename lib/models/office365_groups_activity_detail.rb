require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Office365GroupsActivityDetail < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The storage used of the group mailbox.
            @exchange_mailbox_storage_used_in_bytes
            ## 
            # The number of items in the group mailbox.
            @exchange_mailbox_total_item_count
            ## 
            # The number of emails that the group mailbox received.
            @exchange_received_email_count
            ## 
            # The group external member count.
            @external_member_count
            ## 
            # The display name of the group.
            @group_display_name
            ## 
            # The group id.
            @group_id
            ## 
            # The group type. Possible values are: Public or Private.
            @group_type
            ## 
            # Whether this user has been deleted or soft deleted.
            @is_deleted
            ## 
            # The last activity date for the following scenarios:  group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer groups.
            @last_activity_date
            ## 
            # The group member count.
            @member_count
            ## 
            # The group owner principal name.
            @owner_principal_name
            ## 
            # The number of days the report covers.
            @report_period
            ## 
            # The latest date of the content.
            @report_refresh_date
            ## 
            # The number of active files in SharePoint Group site.
            @share_point_active_file_count
            ## 
            # The storage used by SharePoint Group site.
            @share_point_site_storage_used_in_bytes
            ## 
            # The total number of files in SharePoint Group site.
            @share_point_total_file_count
            ## 
            # The number of channel messages in Teams team.
            @teams_channel_messages_count
            ## 
            # The number of meetings organized in Teams team.
            @teams_meetings_organized_count
            ## 
            # The number of messages liked in Yammer groups.
            @yammer_liked_message_count
            ## 
            # The number of messages posted to Yammer groups.
            @yammer_posted_message_count
            ## 
            # The number of messages read in Yammer groups.
            @yammer_read_message_count
            ## 
            ## Instantiates a new Office365GroupsActivityDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a office365_groups_activity_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Office365GroupsActivityDetail.new
            end
            ## 
            ## Gets the exchangeMailboxStorageUsedInBytes property value. The storage used of the group mailbox.
            ## @return a int64
            ## 
            def exchange_mailbox_storage_used_in_bytes
                return @exchange_mailbox_storage_used_in_bytes
            end
            ## 
            ## Sets the exchangeMailboxStorageUsedInBytes property value. The storage used of the group mailbox.
            ## @param value Value to set for the exchangeMailboxStorageUsedInBytes property.
            ## @return a void
            ## 
            def exchange_mailbox_storage_used_in_bytes=(value)
                @exchange_mailbox_storage_used_in_bytes = value
            end
            ## 
            ## Gets the exchangeMailboxTotalItemCount property value. The number of items in the group mailbox.
            ## @return a int64
            ## 
            def exchange_mailbox_total_item_count
                return @exchange_mailbox_total_item_count
            end
            ## 
            ## Sets the exchangeMailboxTotalItemCount property value. The number of items in the group mailbox.
            ## @param value Value to set for the exchangeMailboxTotalItemCount property.
            ## @return a void
            ## 
            def exchange_mailbox_total_item_count=(value)
                @exchange_mailbox_total_item_count = value
            end
            ## 
            ## Gets the exchangeReceivedEmailCount property value. The number of emails that the group mailbox received.
            ## @return a int64
            ## 
            def exchange_received_email_count
                return @exchange_received_email_count
            end
            ## 
            ## Sets the exchangeReceivedEmailCount property value. The number of emails that the group mailbox received.
            ## @param value Value to set for the exchangeReceivedEmailCount property.
            ## @return a void
            ## 
            def exchange_received_email_count=(value)
                @exchange_received_email_count = value
            end
            ## 
            ## Gets the externalMemberCount property value. The group external member count.
            ## @return a int64
            ## 
            def external_member_count
                return @external_member_count
            end
            ## 
            ## Sets the externalMemberCount property value. The group external member count.
            ## @param value Value to set for the externalMemberCount property.
            ## @return a void
            ## 
            def external_member_count=(value)
                @external_member_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "exchangeMailboxStorageUsedInBytes" => lambda {|n| @exchange_mailbox_storage_used_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "exchangeMailboxTotalItemCount" => lambda {|n| @exchange_mailbox_total_item_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "exchangeReceivedEmailCount" => lambda {|n| @exchange_received_email_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "externalMemberCount" => lambda {|n| @external_member_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "groupDisplayName" => lambda {|n| @group_display_name = n.get_string_value() },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                    "groupType" => lambda {|n| @group_type = n.get_string_value() },
                    "isDeleted" => lambda {|n| @is_deleted = n.get_boolean_value() },
                    "lastActivityDate" => lambda {|n| @last_activity_date = n.get_date_value() },
                    "memberCount" => lambda {|n| @member_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "ownerPrincipalName" => lambda {|n| @owner_principal_name = n.get_string_value() },
                    "reportPeriod" => lambda {|n| @report_period = n.get_string_value() },
                    "reportRefreshDate" => lambda {|n| @report_refresh_date = n.get_date_value() },
                    "sharePointActiveFileCount" => lambda {|n| @share_point_active_file_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sharePointSiteStorageUsedInBytes" => lambda {|n| @share_point_site_storage_used_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sharePointTotalFileCount" => lambda {|n| @share_point_total_file_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "teamsChannelMessagesCount" => lambda {|n| @teams_channel_messages_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "teamsMeetingsOrganizedCount" => lambda {|n| @teams_meetings_organized_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammerLikedMessageCount" => lambda {|n| @yammer_liked_message_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammerPostedMessageCount" => lambda {|n| @yammer_posted_message_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammerReadMessageCount" => lambda {|n| @yammer_read_message_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupDisplayName property value. The display name of the group.
            ## @return a string
            ## 
            def group_display_name
                return @group_display_name
            end
            ## 
            ## Sets the groupDisplayName property value. The display name of the group.
            ## @param value Value to set for the groupDisplayName property.
            ## @return a void
            ## 
            def group_display_name=(value)
                @group_display_name = value
            end
            ## 
            ## Gets the groupId property value. The group id.
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The group id.
            ## @param value Value to set for the groupId property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Gets the groupType property value. The group type. Possible values are: Public or Private.
            ## @return a string
            ## 
            def group_type
                return @group_type
            end
            ## 
            ## Sets the groupType property value. The group type. Possible values are: Public or Private.
            ## @param value Value to set for the groupType property.
            ## @return a void
            ## 
            def group_type=(value)
                @group_type = value
            end
            ## 
            ## Gets the isDeleted property value. Whether this user has been deleted or soft deleted.
            ## @return a boolean
            ## 
            def is_deleted
                return @is_deleted
            end
            ## 
            ## Sets the isDeleted property value. Whether this user has been deleted or soft deleted.
            ## @param value Value to set for the isDeleted property.
            ## @return a void
            ## 
            def is_deleted=(value)
                @is_deleted = value
            end
            ## 
            ## Gets the lastActivityDate property value. The last activity date for the following scenarios:  group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer groups.
            ## @return a date
            ## 
            def last_activity_date
                return @last_activity_date
            end
            ## 
            ## Sets the lastActivityDate property value. The last activity date for the following scenarios:  group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer groups.
            ## @param value Value to set for the lastActivityDate property.
            ## @return a void
            ## 
            def last_activity_date=(value)
                @last_activity_date = value
            end
            ## 
            ## Gets the memberCount property value. The group member count.
            ## @return a int64
            ## 
            def member_count
                return @member_count
            end
            ## 
            ## Sets the memberCount property value. The group member count.
            ## @param value Value to set for the memberCount property.
            ## @return a void
            ## 
            def member_count=(value)
                @member_count = value
            end
            ## 
            ## Gets the ownerPrincipalName property value. The group owner principal name.
            ## @return a string
            ## 
            def owner_principal_name
                return @owner_principal_name
            end
            ## 
            ## Sets the ownerPrincipalName property value. The group owner principal name.
            ## @param value Value to set for the ownerPrincipalName property.
            ## @return a void
            ## 
            def owner_principal_name=(value)
                @owner_principal_name = value
            end
            ## 
            ## Gets the reportPeriod property value. The number of days the report covers.
            ## @return a string
            ## 
            def report_period
                return @report_period
            end
            ## 
            ## Sets the reportPeriod property value. The number of days the report covers.
            ## @param value Value to set for the reportPeriod property.
            ## @return a void
            ## 
            def report_period=(value)
                @report_period = value
            end
            ## 
            ## Gets the reportRefreshDate property value. The latest date of the content.
            ## @return a date
            ## 
            def report_refresh_date
                return @report_refresh_date
            end
            ## 
            ## Sets the reportRefreshDate property value. The latest date of the content.
            ## @param value Value to set for the reportRefreshDate property.
            ## @return a void
            ## 
            def report_refresh_date=(value)
                @report_refresh_date = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("exchangeMailboxStorageUsedInBytes", @exchange_mailbox_storage_used_in_bytes)
                writer.write_object_value("exchangeMailboxTotalItemCount", @exchange_mailbox_total_item_count)
                writer.write_object_value("exchangeReceivedEmailCount", @exchange_received_email_count)
                writer.write_object_value("externalMemberCount", @external_member_count)
                writer.write_string_value("groupDisplayName", @group_display_name)
                writer.write_string_value("groupId", @group_id)
                writer.write_string_value("groupType", @group_type)
                writer.write_boolean_value("isDeleted", @is_deleted)
                writer.write_date_value("lastActivityDate", @last_activity_date)
                writer.write_object_value("memberCount", @member_count)
                writer.write_string_value("ownerPrincipalName", @owner_principal_name)
                writer.write_string_value("reportPeriod", @report_period)
                writer.write_date_value("reportRefreshDate", @report_refresh_date)
                writer.write_object_value("sharePointActiveFileCount", @share_point_active_file_count)
                writer.write_object_value("sharePointSiteStorageUsedInBytes", @share_point_site_storage_used_in_bytes)
                writer.write_object_value("sharePointTotalFileCount", @share_point_total_file_count)
                writer.write_object_value("teamsChannelMessagesCount", @teams_channel_messages_count)
                writer.write_object_value("teamsMeetingsOrganizedCount", @teams_meetings_organized_count)
                writer.write_object_value("yammerLikedMessageCount", @yammer_liked_message_count)
                writer.write_object_value("yammerPostedMessageCount", @yammer_posted_message_count)
                writer.write_object_value("yammerReadMessageCount", @yammer_read_message_count)
            end
            ## 
            ## Gets the sharePointActiveFileCount property value. The number of active files in SharePoint Group site.
            ## @return a int64
            ## 
            def share_point_active_file_count
                return @share_point_active_file_count
            end
            ## 
            ## Sets the sharePointActiveFileCount property value. The number of active files in SharePoint Group site.
            ## @param value Value to set for the sharePointActiveFileCount property.
            ## @return a void
            ## 
            def share_point_active_file_count=(value)
                @share_point_active_file_count = value
            end
            ## 
            ## Gets the sharePointSiteStorageUsedInBytes property value. The storage used by SharePoint Group site.
            ## @return a int64
            ## 
            def share_point_site_storage_used_in_bytes
                return @share_point_site_storage_used_in_bytes
            end
            ## 
            ## Sets the sharePointSiteStorageUsedInBytes property value. The storage used by SharePoint Group site.
            ## @param value Value to set for the sharePointSiteStorageUsedInBytes property.
            ## @return a void
            ## 
            def share_point_site_storage_used_in_bytes=(value)
                @share_point_site_storage_used_in_bytes = value
            end
            ## 
            ## Gets the sharePointTotalFileCount property value. The total number of files in SharePoint Group site.
            ## @return a int64
            ## 
            def share_point_total_file_count
                return @share_point_total_file_count
            end
            ## 
            ## Sets the sharePointTotalFileCount property value. The total number of files in SharePoint Group site.
            ## @param value Value to set for the sharePointTotalFileCount property.
            ## @return a void
            ## 
            def share_point_total_file_count=(value)
                @share_point_total_file_count = value
            end
            ## 
            ## Gets the teamsChannelMessagesCount property value. The number of channel messages in Teams team.
            ## @return a int64
            ## 
            def teams_channel_messages_count
                return @teams_channel_messages_count
            end
            ## 
            ## Sets the teamsChannelMessagesCount property value. The number of channel messages in Teams team.
            ## @param value Value to set for the teamsChannelMessagesCount property.
            ## @return a void
            ## 
            def teams_channel_messages_count=(value)
                @teams_channel_messages_count = value
            end
            ## 
            ## Gets the teamsMeetingsOrganizedCount property value. The number of meetings organized in Teams team.
            ## @return a int64
            ## 
            def teams_meetings_organized_count
                return @teams_meetings_organized_count
            end
            ## 
            ## Sets the teamsMeetingsOrganizedCount property value. The number of meetings organized in Teams team.
            ## @param value Value to set for the teamsMeetingsOrganizedCount property.
            ## @return a void
            ## 
            def teams_meetings_organized_count=(value)
                @teams_meetings_organized_count = value
            end
            ## 
            ## Gets the yammerLikedMessageCount property value. The number of messages liked in Yammer groups.
            ## @return a int64
            ## 
            def yammer_liked_message_count
                return @yammer_liked_message_count
            end
            ## 
            ## Sets the yammerLikedMessageCount property value. The number of messages liked in Yammer groups.
            ## @param value Value to set for the yammerLikedMessageCount property.
            ## @return a void
            ## 
            def yammer_liked_message_count=(value)
                @yammer_liked_message_count = value
            end
            ## 
            ## Gets the yammerPostedMessageCount property value. The number of messages posted to Yammer groups.
            ## @return a int64
            ## 
            def yammer_posted_message_count
                return @yammer_posted_message_count
            end
            ## 
            ## Sets the yammerPostedMessageCount property value. The number of messages posted to Yammer groups.
            ## @param value Value to set for the yammerPostedMessageCount property.
            ## @return a void
            ## 
            def yammer_posted_message_count=(value)
                @yammer_posted_message_count = value
            end
            ## 
            ## Gets the yammerReadMessageCount property value. The number of messages read in Yammer groups.
            ## @return a int64
            ## 
            def yammer_read_message_count
                return @yammer_read_message_count
            end
            ## 
            ## Sets the yammerReadMessageCount property value. The number of messages read in Yammer groups.
            ## @param value Value to set for the yammerReadMessageCount property.
            ## @return a void
            ## 
            def yammer_read_message_count=(value)
                @yammer_read_message_count = value
            end
        end
    end
end
