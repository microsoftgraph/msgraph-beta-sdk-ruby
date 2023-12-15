require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Office365ServicesUserCounts < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of active users on Exchange. Any user who can read and send email is considered an active user.
            @exchange_active
            ## 
            # The number of inactive users on Exchange.
            @exchange_inactive
            ## 
            # The number of active users on Microsoft 365.
            @office365_active
            ## 
            # The number of inactive users on Microsoft 365.
            @office365_inactive
            ## 
            # The number of active users on OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files is considered an active user.
            @one_drive_active
            ## 
            # The number of inactive users on OneDrive.
            @one_drive_inactive
            ## 
            # The number of days the report covers.
            @report_period
            ## 
            # The latest date of the content.
            @report_refresh_date
            ## 
            # The number of active users on SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages is considered an active user.
            @share_point_active
            ## 
            # The number of inactive users on SharePoint.
            @share_point_inactive
            ## 
            # The number of active users on Skype For Business. Any user who organized or participated in conferences, or joined peer-to-peer sessions is considered an active user.
            @skype_for_business_active
            ## 
            # The number of inactive users on Skype For Business.
            @skype_for_business_inactive
            ## 
            # The number of active users on Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls is considered an active user.
            @teams_active
            ## 
            # The number of inactive users on Microsoft Teams.
            @teams_inactive
            ## 
            # The number of active users on Yammer. Any user who can post, read, or like messages is considered an active user.
            @yammer_active
            ## 
            # The number of inactive users on Yammer.
            @yammer_inactive
            ## 
            ## Instantiates a new office365ServicesUserCounts and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a office365_services_user_counts
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Office365ServicesUserCounts.new
            end
            ## 
            ## Gets the exchangeActive property value. The number of active users on Exchange. Any user who can read and send email is considered an active user.
            ## @return a int64
            ## 
            def exchange_active
                return @exchange_active
            end
            ## 
            ## Sets the exchangeActive property value. The number of active users on Exchange. Any user who can read and send email is considered an active user.
            ## @param value Value to set for the exchangeActive property.
            ## @return a void
            ## 
            def exchange_active=(value)
                @exchange_active = value
            end
            ## 
            ## Gets the exchangeInactive property value. The number of inactive users on Exchange.
            ## @return a int64
            ## 
            def exchange_inactive
                return @exchange_inactive
            end
            ## 
            ## Sets the exchangeInactive property value. The number of inactive users on Exchange.
            ## @param value Value to set for the exchangeInactive property.
            ## @return a void
            ## 
            def exchange_inactive=(value)
                @exchange_inactive = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "exchangeActive" => lambda {|n| @exchange_active = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "exchangeInactive" => lambda {|n| @exchange_inactive = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "office365Active" => lambda {|n| @office365_active = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "office365Inactive" => lambda {|n| @office365_inactive = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "oneDriveActive" => lambda {|n| @one_drive_active = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "oneDriveInactive" => lambda {|n| @one_drive_inactive = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "reportPeriod" => lambda {|n| @report_period = n.get_string_value() },
                    "reportRefreshDate" => lambda {|n| @report_refresh_date = n.get_date_value() },
                    "sharePointActive" => lambda {|n| @share_point_active = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sharePointInactive" => lambda {|n| @share_point_inactive = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "skypeForBusinessActive" => lambda {|n| @skype_for_business_active = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "skypeForBusinessInactive" => lambda {|n| @skype_for_business_inactive = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "teamsActive" => lambda {|n| @teams_active = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "teamsInactive" => lambda {|n| @teams_inactive = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammerActive" => lambda {|n| @yammer_active = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammerInactive" => lambda {|n| @yammer_inactive = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the office365Active property value. The number of active users on Microsoft 365.
            ## @return a int64
            ## 
            def office365_active
                return @office365_active
            end
            ## 
            ## Sets the office365Active property value. The number of active users on Microsoft 365.
            ## @param value Value to set for the office365Active property.
            ## @return a void
            ## 
            def office365_active=(value)
                @office365_active = value
            end
            ## 
            ## Gets the office365Inactive property value. The number of inactive users on Microsoft 365.
            ## @return a int64
            ## 
            def office365_inactive
                return @office365_inactive
            end
            ## 
            ## Sets the office365Inactive property value. The number of inactive users on Microsoft 365.
            ## @param value Value to set for the office365Inactive property.
            ## @return a void
            ## 
            def office365_inactive=(value)
                @office365_inactive = value
            end
            ## 
            ## Gets the oneDriveActive property value. The number of active users on OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files is considered an active user.
            ## @return a int64
            ## 
            def one_drive_active
                return @one_drive_active
            end
            ## 
            ## Sets the oneDriveActive property value. The number of active users on OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files is considered an active user.
            ## @param value Value to set for the oneDriveActive property.
            ## @return a void
            ## 
            def one_drive_active=(value)
                @one_drive_active = value
            end
            ## 
            ## Gets the oneDriveInactive property value. The number of inactive users on OneDrive.
            ## @return a int64
            ## 
            def one_drive_inactive
                return @one_drive_inactive
            end
            ## 
            ## Sets the oneDriveInactive property value. The number of inactive users on OneDrive.
            ## @param value Value to set for the oneDriveInactive property.
            ## @return a void
            ## 
            def one_drive_inactive=(value)
                @one_drive_inactive = value
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
                writer.write_object_value("exchangeActive", @exchange_active)
                writer.write_object_value("exchangeInactive", @exchange_inactive)
                writer.write_object_value("office365Active", @office365_active)
                writer.write_object_value("office365Inactive", @office365_inactive)
                writer.write_object_value("oneDriveActive", @one_drive_active)
                writer.write_object_value("oneDriveInactive", @one_drive_inactive)
                writer.write_string_value("reportPeriod", @report_period)
                writer.write_date_value("reportRefreshDate", @report_refresh_date)
                writer.write_object_value("sharePointActive", @share_point_active)
                writer.write_object_value("sharePointInactive", @share_point_inactive)
                writer.write_object_value("skypeForBusinessActive", @skype_for_business_active)
                writer.write_object_value("skypeForBusinessInactive", @skype_for_business_inactive)
                writer.write_object_value("teamsActive", @teams_active)
                writer.write_object_value("teamsInactive", @teams_inactive)
                writer.write_object_value("yammerActive", @yammer_active)
                writer.write_object_value("yammerInactive", @yammer_inactive)
            end
            ## 
            ## Gets the sharePointActive property value. The number of active users on SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages is considered an active user.
            ## @return a int64
            ## 
            def share_point_active
                return @share_point_active
            end
            ## 
            ## Sets the sharePointActive property value. The number of active users on SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages is considered an active user.
            ## @param value Value to set for the sharePointActive property.
            ## @return a void
            ## 
            def share_point_active=(value)
                @share_point_active = value
            end
            ## 
            ## Gets the sharePointInactive property value. The number of inactive users on SharePoint.
            ## @return a int64
            ## 
            def share_point_inactive
                return @share_point_inactive
            end
            ## 
            ## Sets the sharePointInactive property value. The number of inactive users on SharePoint.
            ## @param value Value to set for the sharePointInactive property.
            ## @return a void
            ## 
            def share_point_inactive=(value)
                @share_point_inactive = value
            end
            ## 
            ## Gets the skypeForBusinessActive property value. The number of active users on Skype For Business. Any user who organized or participated in conferences, or joined peer-to-peer sessions is considered an active user.
            ## @return a int64
            ## 
            def skype_for_business_active
                return @skype_for_business_active
            end
            ## 
            ## Sets the skypeForBusinessActive property value. The number of active users on Skype For Business. Any user who organized or participated in conferences, or joined peer-to-peer sessions is considered an active user.
            ## @param value Value to set for the skypeForBusinessActive property.
            ## @return a void
            ## 
            def skype_for_business_active=(value)
                @skype_for_business_active = value
            end
            ## 
            ## Gets the skypeForBusinessInactive property value. The number of inactive users on Skype For Business.
            ## @return a int64
            ## 
            def skype_for_business_inactive
                return @skype_for_business_inactive
            end
            ## 
            ## Sets the skypeForBusinessInactive property value. The number of inactive users on Skype For Business.
            ## @param value Value to set for the skypeForBusinessInactive property.
            ## @return a void
            ## 
            def skype_for_business_inactive=(value)
                @skype_for_business_inactive = value
            end
            ## 
            ## Gets the teamsActive property value. The number of active users on Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls is considered an active user.
            ## @return a int64
            ## 
            def teams_active
                return @teams_active
            end
            ## 
            ## Sets the teamsActive property value. The number of active users on Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls is considered an active user.
            ## @param value Value to set for the teamsActive property.
            ## @return a void
            ## 
            def teams_active=(value)
                @teams_active = value
            end
            ## 
            ## Gets the teamsInactive property value. The number of inactive users on Microsoft Teams.
            ## @return a int64
            ## 
            def teams_inactive
                return @teams_inactive
            end
            ## 
            ## Sets the teamsInactive property value. The number of inactive users on Microsoft Teams.
            ## @param value Value to set for the teamsInactive property.
            ## @return a void
            ## 
            def teams_inactive=(value)
                @teams_inactive = value
            end
            ## 
            ## Gets the yammerActive property value. The number of active users on Yammer. Any user who can post, read, or like messages is considered an active user.
            ## @return a int64
            ## 
            def yammer_active
                return @yammer_active
            end
            ## 
            ## Sets the yammerActive property value. The number of active users on Yammer. Any user who can post, read, or like messages is considered an active user.
            ## @param value Value to set for the yammerActive property.
            ## @return a void
            ## 
            def yammer_active=(value)
                @yammer_active = value
            end
            ## 
            ## Gets the yammerInactive property value. The number of inactive users on Yammer.
            ## @return a int64
            ## 
            def yammer_inactive
                return @yammer_inactive
            end
            ## 
            ## Sets the yammerInactive property value. The number of inactive users on Yammer.
            ## @param value Value to set for the yammerInactive property.
            ## @return a void
            ## 
            def yammer_inactive=(value)
                @yammer_inactive = value
            end
        end
    end
end
