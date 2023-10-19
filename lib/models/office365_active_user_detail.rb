require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Office365ActiveUserDetail < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # All the products assigned for the user.
            @assigned_products
            ## 
            # The date when the delete operation happened. Default value is 'null' when the user hasn't been deleted.
            @deleted_date
            ## 
            # The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it can't be cleared during updates.
            @display_name
            ## 
            # The date when user last read or sent email.
            @exchange_last_activity_date
            ## 
            # The last date when the user was assigned an Exchange license.
            @exchange_license_assign_date
            ## 
            # Whether the user has been assigned an Exchange license.
            @has_exchange_license
            ## 
            # Whether the user has been assigned a OneDrive license.
            @has_one_drive_license
            ## 
            # Whether the user has been assigned a SharePoint license.
            @has_share_point_license
            ## 
            # Whether the user has been assigned a Skype For Business license.
            @has_skype_for_business_license
            ## 
            # Whether the user has been assigned a Teams license.
            @has_teams_license
            ## 
            # Whether the user has been assigned a Yammer license.
            @has_yammer_license
            ## 
            # Whether this user has been deleted or soft deleted.
            @is_deleted
            ## 
            # The date when user last viewed or edited files, shared files internally or externally, or synced files.
            @one_drive_last_activity_date
            ## 
            # The last date when the user was assigned a OneDrive license.
            @one_drive_license_assign_date
            ## 
            # The latest date of the content.
            @report_refresh_date
            ## 
            # The date when user last viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages.
            @share_point_last_activity_date
            ## 
            # The last date when the user was assigned a SharePoint license.
            @share_point_license_assign_date
            ## 
            # The date when user last organized or participated in conferences, or joined peer-to-peer sessions.
            @skype_for_business_last_activity_date
            ## 
            # The last date when the user was assigned a Skype For Business license.
            @skype_for_business_license_assign_date
            ## 
            # The date when user last posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls.
            @teams_last_activity_date
            ## 
            # The last date when the user was assigned a Teams license.
            @teams_license_assign_date
            ## 
            # The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created.
            @user_principal_name
            ## 
            # The date when user last posted, read, or liked message.
            @yammer_last_activity_date
            ## 
            # The last date when the user was assigned a Yammer license.
            @yammer_license_assign_date
            ## 
            ## Gets the assignedProducts property value. All the products assigned for the user.
            ## @return a string
            ## 
            def assigned_products
                return @assigned_products
            end
            ## 
            ## Sets the assignedProducts property value. All the products assigned for the user.
            ## @param value Value to set for the assignedProducts property.
            ## @return a void
            ## 
            def assigned_products=(value)
                @assigned_products = value
            end
            ## 
            ## Instantiates a new office365ActiveUserDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a office365_active_user_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Office365ActiveUserDetail.new
            end
            ## 
            ## Gets the deletedDate property value. The date when the delete operation happened. Default value is 'null' when the user hasn't been deleted.
            ## @return a date
            ## 
            def deleted_date
                return @deleted_date
            end
            ## 
            ## Sets the deletedDate property value. The date when the delete operation happened. Default value is 'null' when the user hasn't been deleted.
            ## @param value Value to set for the deletedDate property.
            ## @return a void
            ## 
            def deleted_date=(value)
                @deleted_date = value
            end
            ## 
            ## Gets the displayName property value. The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it can't be cleared during updates.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it can't be cleared during updates.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the exchangeLastActivityDate property value. The date when user last read or sent email.
            ## @return a date
            ## 
            def exchange_last_activity_date
                return @exchange_last_activity_date
            end
            ## 
            ## Sets the exchangeLastActivityDate property value. The date when user last read or sent email.
            ## @param value Value to set for the exchangeLastActivityDate property.
            ## @return a void
            ## 
            def exchange_last_activity_date=(value)
                @exchange_last_activity_date = value
            end
            ## 
            ## Gets the exchangeLicenseAssignDate property value. The last date when the user was assigned an Exchange license.
            ## @return a date
            ## 
            def exchange_license_assign_date
                return @exchange_license_assign_date
            end
            ## 
            ## Sets the exchangeLicenseAssignDate property value. The last date when the user was assigned an Exchange license.
            ## @param value Value to set for the exchangeLicenseAssignDate property.
            ## @return a void
            ## 
            def exchange_license_assign_date=(value)
                @exchange_license_assign_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedProducts" => lambda {|n| @assigned_products = n.get_collection_of_primitive_values(String) },
                    "deletedDate" => lambda {|n| @deleted_date = n.get_date_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "exchangeLastActivityDate" => lambda {|n| @exchange_last_activity_date = n.get_date_value() },
                    "exchangeLicenseAssignDate" => lambda {|n| @exchange_license_assign_date = n.get_date_value() },
                    "hasExchangeLicense" => lambda {|n| @has_exchange_license = n.get_boolean_value() },
                    "hasOneDriveLicense" => lambda {|n| @has_one_drive_license = n.get_boolean_value() },
                    "hasSharePointLicense" => lambda {|n| @has_share_point_license = n.get_boolean_value() },
                    "hasSkypeForBusinessLicense" => lambda {|n| @has_skype_for_business_license = n.get_boolean_value() },
                    "hasTeamsLicense" => lambda {|n| @has_teams_license = n.get_boolean_value() },
                    "hasYammerLicense" => lambda {|n| @has_yammer_license = n.get_boolean_value() },
                    "isDeleted" => lambda {|n| @is_deleted = n.get_boolean_value() },
                    "oneDriveLastActivityDate" => lambda {|n| @one_drive_last_activity_date = n.get_date_value() },
                    "oneDriveLicenseAssignDate" => lambda {|n| @one_drive_license_assign_date = n.get_date_value() },
                    "reportRefreshDate" => lambda {|n| @report_refresh_date = n.get_date_value() },
                    "sharePointLastActivityDate" => lambda {|n| @share_point_last_activity_date = n.get_date_value() },
                    "sharePointLicenseAssignDate" => lambda {|n| @share_point_license_assign_date = n.get_date_value() },
                    "skypeForBusinessLastActivityDate" => lambda {|n| @skype_for_business_last_activity_date = n.get_date_value() },
                    "skypeForBusinessLicenseAssignDate" => lambda {|n| @skype_for_business_license_assign_date = n.get_date_value() },
                    "teamsLastActivityDate" => lambda {|n| @teams_last_activity_date = n.get_date_value() },
                    "teamsLicenseAssignDate" => lambda {|n| @teams_license_assign_date = n.get_date_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "yammerLastActivityDate" => lambda {|n| @yammer_last_activity_date = n.get_date_value() },
                    "yammerLicenseAssignDate" => lambda {|n| @yammer_license_assign_date = n.get_date_value() },
                })
            end
            ## 
            ## Gets the hasExchangeLicense property value. Whether the user has been assigned an Exchange license.
            ## @return a boolean
            ## 
            def has_exchange_license
                return @has_exchange_license
            end
            ## 
            ## Sets the hasExchangeLicense property value. Whether the user has been assigned an Exchange license.
            ## @param value Value to set for the hasExchangeLicense property.
            ## @return a void
            ## 
            def has_exchange_license=(value)
                @has_exchange_license = value
            end
            ## 
            ## Gets the hasOneDriveLicense property value. Whether the user has been assigned a OneDrive license.
            ## @return a boolean
            ## 
            def has_one_drive_license
                return @has_one_drive_license
            end
            ## 
            ## Sets the hasOneDriveLicense property value. Whether the user has been assigned a OneDrive license.
            ## @param value Value to set for the hasOneDriveLicense property.
            ## @return a void
            ## 
            def has_one_drive_license=(value)
                @has_one_drive_license = value
            end
            ## 
            ## Gets the hasSharePointLicense property value. Whether the user has been assigned a SharePoint license.
            ## @return a boolean
            ## 
            def has_share_point_license
                return @has_share_point_license
            end
            ## 
            ## Sets the hasSharePointLicense property value. Whether the user has been assigned a SharePoint license.
            ## @param value Value to set for the hasSharePointLicense property.
            ## @return a void
            ## 
            def has_share_point_license=(value)
                @has_share_point_license = value
            end
            ## 
            ## Gets the hasSkypeForBusinessLicense property value. Whether the user has been assigned a Skype For Business license.
            ## @return a boolean
            ## 
            def has_skype_for_business_license
                return @has_skype_for_business_license
            end
            ## 
            ## Sets the hasSkypeForBusinessLicense property value. Whether the user has been assigned a Skype For Business license.
            ## @param value Value to set for the hasSkypeForBusinessLicense property.
            ## @return a void
            ## 
            def has_skype_for_business_license=(value)
                @has_skype_for_business_license = value
            end
            ## 
            ## Gets the hasTeamsLicense property value. Whether the user has been assigned a Teams license.
            ## @return a boolean
            ## 
            def has_teams_license
                return @has_teams_license
            end
            ## 
            ## Sets the hasTeamsLicense property value. Whether the user has been assigned a Teams license.
            ## @param value Value to set for the hasTeamsLicense property.
            ## @return a void
            ## 
            def has_teams_license=(value)
                @has_teams_license = value
            end
            ## 
            ## Gets the hasYammerLicense property value. Whether the user has been assigned a Yammer license.
            ## @return a boolean
            ## 
            def has_yammer_license
                return @has_yammer_license
            end
            ## 
            ## Sets the hasYammerLicense property value. Whether the user has been assigned a Yammer license.
            ## @param value Value to set for the hasYammerLicense property.
            ## @return a void
            ## 
            def has_yammer_license=(value)
                @has_yammer_license = value
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
            ## Gets the oneDriveLastActivityDate property value. The date when user last viewed or edited files, shared files internally or externally, or synced files.
            ## @return a date
            ## 
            def one_drive_last_activity_date
                return @one_drive_last_activity_date
            end
            ## 
            ## Sets the oneDriveLastActivityDate property value. The date when user last viewed or edited files, shared files internally or externally, or synced files.
            ## @param value Value to set for the oneDriveLastActivityDate property.
            ## @return a void
            ## 
            def one_drive_last_activity_date=(value)
                @one_drive_last_activity_date = value
            end
            ## 
            ## Gets the oneDriveLicenseAssignDate property value. The last date when the user was assigned a OneDrive license.
            ## @return a date
            ## 
            def one_drive_license_assign_date
                return @one_drive_license_assign_date
            end
            ## 
            ## Sets the oneDriveLicenseAssignDate property value. The last date when the user was assigned a OneDrive license.
            ## @param value Value to set for the oneDriveLicenseAssignDate property.
            ## @return a void
            ## 
            def one_drive_license_assign_date=(value)
                @one_drive_license_assign_date = value
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
                writer.write_collection_of_primitive_values("assignedProducts", @assigned_products)
                writer.write_date_value("deletedDate", @deleted_date)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_value("exchangeLastActivityDate", @exchange_last_activity_date)
                writer.write_date_value("exchangeLicenseAssignDate", @exchange_license_assign_date)
                writer.write_boolean_value("hasExchangeLicense", @has_exchange_license)
                writer.write_boolean_value("hasOneDriveLicense", @has_one_drive_license)
                writer.write_boolean_value("hasSharePointLicense", @has_share_point_license)
                writer.write_boolean_value("hasSkypeForBusinessLicense", @has_skype_for_business_license)
                writer.write_boolean_value("hasTeamsLicense", @has_teams_license)
                writer.write_boolean_value("hasYammerLicense", @has_yammer_license)
                writer.write_boolean_value("isDeleted", @is_deleted)
                writer.write_date_value("oneDriveLastActivityDate", @one_drive_last_activity_date)
                writer.write_date_value("oneDriveLicenseAssignDate", @one_drive_license_assign_date)
                writer.write_date_value("reportRefreshDate", @report_refresh_date)
                writer.write_date_value("sharePointLastActivityDate", @share_point_last_activity_date)
                writer.write_date_value("sharePointLicenseAssignDate", @share_point_license_assign_date)
                writer.write_date_value("skypeForBusinessLastActivityDate", @skype_for_business_last_activity_date)
                writer.write_date_value("skypeForBusinessLicenseAssignDate", @skype_for_business_license_assign_date)
                writer.write_date_value("teamsLastActivityDate", @teams_last_activity_date)
                writer.write_date_value("teamsLicenseAssignDate", @teams_license_assign_date)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_date_value("yammerLastActivityDate", @yammer_last_activity_date)
                writer.write_date_value("yammerLicenseAssignDate", @yammer_license_assign_date)
            end
            ## 
            ## Gets the sharePointLastActivityDate property value. The date when user last viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages.
            ## @return a date
            ## 
            def share_point_last_activity_date
                return @share_point_last_activity_date
            end
            ## 
            ## Sets the sharePointLastActivityDate property value. The date when user last viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages.
            ## @param value Value to set for the sharePointLastActivityDate property.
            ## @return a void
            ## 
            def share_point_last_activity_date=(value)
                @share_point_last_activity_date = value
            end
            ## 
            ## Gets the sharePointLicenseAssignDate property value. The last date when the user was assigned a SharePoint license.
            ## @return a date
            ## 
            def share_point_license_assign_date
                return @share_point_license_assign_date
            end
            ## 
            ## Sets the sharePointLicenseAssignDate property value. The last date when the user was assigned a SharePoint license.
            ## @param value Value to set for the sharePointLicenseAssignDate property.
            ## @return a void
            ## 
            def share_point_license_assign_date=(value)
                @share_point_license_assign_date = value
            end
            ## 
            ## Gets the skypeForBusinessLastActivityDate property value. The date when user last organized or participated in conferences, or joined peer-to-peer sessions.
            ## @return a date
            ## 
            def skype_for_business_last_activity_date
                return @skype_for_business_last_activity_date
            end
            ## 
            ## Sets the skypeForBusinessLastActivityDate property value. The date when user last organized or participated in conferences, or joined peer-to-peer sessions.
            ## @param value Value to set for the skypeForBusinessLastActivityDate property.
            ## @return a void
            ## 
            def skype_for_business_last_activity_date=(value)
                @skype_for_business_last_activity_date = value
            end
            ## 
            ## Gets the skypeForBusinessLicenseAssignDate property value. The last date when the user was assigned a Skype For Business license.
            ## @return a date
            ## 
            def skype_for_business_license_assign_date
                return @skype_for_business_license_assign_date
            end
            ## 
            ## Sets the skypeForBusinessLicenseAssignDate property value. The last date when the user was assigned a Skype For Business license.
            ## @param value Value to set for the skypeForBusinessLicenseAssignDate property.
            ## @return a void
            ## 
            def skype_for_business_license_assign_date=(value)
                @skype_for_business_license_assign_date = value
            end
            ## 
            ## Gets the teamsLastActivityDate property value. The date when user last posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls.
            ## @return a date
            ## 
            def teams_last_activity_date
                return @teams_last_activity_date
            end
            ## 
            ## Sets the teamsLastActivityDate property value. The date when user last posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls.
            ## @param value Value to set for the teamsLastActivityDate property.
            ## @return a void
            ## 
            def teams_last_activity_date=(value)
                @teams_last_activity_date = value
            end
            ## 
            ## Gets the teamsLicenseAssignDate property value. The last date when the user was assigned a Teams license.
            ## @return a date
            ## 
            def teams_license_assign_date
                return @teams_license_assign_date
            end
            ## 
            ## Sets the teamsLicenseAssignDate property value. The last date when the user was assigned a Teams license.
            ## @param value Value to set for the teamsLicenseAssignDate property.
            ## @return a void
            ## 
            def teams_license_assign_date=(value)
                @teams_license_assign_date = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the yammerLastActivityDate property value. The date when user last posted, read, or liked message.
            ## @return a date
            ## 
            def yammer_last_activity_date
                return @yammer_last_activity_date
            end
            ## 
            ## Sets the yammerLastActivityDate property value. The date when user last posted, read, or liked message.
            ## @param value Value to set for the yammerLastActivityDate property.
            ## @return a void
            ## 
            def yammer_last_activity_date=(value)
                @yammer_last_activity_date = value
            end
            ## 
            ## Gets the yammerLicenseAssignDate property value. The last date when the user was assigned a Yammer license.
            ## @return a date
            ## 
            def yammer_license_assign_date
                return @yammer_license_assign_date
            end
            ## 
            ## Sets the yammerLicenseAssignDate property value. The last date when the user was assigned a Yammer license.
            ## @param value Value to set for the yammerLicenseAssignDate property.
            ## @return a void
            ## 
            def yammer_license_assign_date=(value)
                @yammer_license_assign_date = value
            end
        end
    end
end
