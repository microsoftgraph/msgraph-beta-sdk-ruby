require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Office365ActiveUserCounts < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of active users in Exchange. Any user who can read and send email is considered an active user.
            @exchange
            ## 
            # The number of active users in Microsoft 365. This number includes all the active users in Exchange, OneDrive, SharePoint, Skype For Business, Yammer, and Microsoft Teams. You can find the definition of active user for each product in the respective property description.
            @office365
            ## 
            # The number of active users in OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files is considered an active user.
            @one_drive
            ## 
            # The date on which a number of users were active.
            @report_date
            ## 
            # The number of days the report covers.
            @report_period
            ## 
            # The latest date of the content.
            @report_refresh_date
            ## 
            # The number of active users in SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages is considered an active user.
            @share_point
            ## 
            # The number of active users in Skype For Business. Any user who organized or participated in conferences, or joined peer-to-peer sessions is considered an active user.
            @skype_for_business
            ## 
            # The number of active users in Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls is considered an active user.
            @teams
            ## 
            # The number of active users in Yammer. Any user who can post, read, or like messages is considered an active user.
            @yammer
            ## 
            ## Instantiates a new office365ActiveUserCounts and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a office365_active_user_counts
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Office365ActiveUserCounts.new
            end
            ## 
            ## Gets the exchange property value. The number of active users in Exchange. Any user who can read and send email is considered an active user.
            ## @return a int64
            ## 
            def exchange
                return @exchange
            end
            ## 
            ## Sets the exchange property value. The number of active users in Exchange. Any user who can read and send email is considered an active user.
            ## @param value Value to set for the exchange property.
            ## @return a void
            ## 
            def exchange=(value)
                @exchange = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "exchange" => lambda {|n| @exchange = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "office365" => lambda {|n| @office365 = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "oneDrive" => lambda {|n| @one_drive = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "reportDate" => lambda {|n| @report_date = n.get_date_value() },
                    "reportPeriod" => lambda {|n| @report_period = n.get_string_value() },
                    "reportRefreshDate" => lambda {|n| @report_refresh_date = n.get_date_value() },
                    "sharePoint" => lambda {|n| @share_point = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "skypeForBusiness" => lambda {|n| @skype_for_business = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "teams" => lambda {|n| @teams = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammer" => lambda {|n| @yammer = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the office365 property value. The number of active users in Microsoft 365. This number includes all the active users in Exchange, OneDrive, SharePoint, Skype For Business, Yammer, and Microsoft Teams. You can find the definition of active user for each product in the respective property description.
            ## @return a int64
            ## 
            def office365
                return @office365
            end
            ## 
            ## Sets the office365 property value. The number of active users in Microsoft 365. This number includes all the active users in Exchange, OneDrive, SharePoint, Skype For Business, Yammer, and Microsoft Teams. You can find the definition of active user for each product in the respective property description.
            ## @param value Value to set for the office365 property.
            ## @return a void
            ## 
            def office365=(value)
                @office365 = value
            end
            ## 
            ## Gets the oneDrive property value. The number of active users in OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files is considered an active user.
            ## @return a int64
            ## 
            def one_drive
                return @one_drive
            end
            ## 
            ## Sets the oneDrive property value. The number of active users in OneDrive. Any user who viewed or edited files, shared files internally or externally, or synced files is considered an active user.
            ## @param value Value to set for the one_drive property.
            ## @return a void
            ## 
            def one_drive=(value)
                @one_drive = value
            end
            ## 
            ## Gets the reportDate property value. The date on which a number of users were active.
            ## @return a date
            ## 
            def report_date
                return @report_date
            end
            ## 
            ## Sets the reportDate property value. The date on which a number of users were active.
            ## @param value Value to set for the report_date property.
            ## @return a void
            ## 
            def report_date=(value)
                @report_date = value
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
            ## @param value Value to set for the report_period property.
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
            ## @param value Value to set for the report_refresh_date property.
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
                writer.write_object_value("exchange", @exchange)
                writer.write_object_value("office365", @office365)
                writer.write_object_value("oneDrive", @one_drive)
                writer.write_date_value("reportDate", @report_date)
                writer.write_string_value("reportPeriod", @report_period)
                writer.write_date_value("reportRefreshDate", @report_refresh_date)
                writer.write_object_value("sharePoint", @share_point)
                writer.write_object_value("skypeForBusiness", @skype_for_business)
                writer.write_object_value("teams", @teams)
                writer.write_object_value("yammer", @yammer)
            end
            ## 
            ## Gets the sharePoint property value. The number of active users in SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages is considered an active user.
            ## @return a int64
            ## 
            def share_point
                return @share_point
            end
            ## 
            ## Sets the sharePoint property value. The number of active users in SharePoint. Any user who viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages is considered an active user.
            ## @param value Value to set for the share_point property.
            ## @return a void
            ## 
            def share_point=(value)
                @share_point = value
            end
            ## 
            ## Gets the skypeForBusiness property value. The number of active users in Skype For Business. Any user who organized or participated in conferences, or joined peer-to-peer sessions is considered an active user.
            ## @return a int64
            ## 
            def skype_for_business
                return @skype_for_business
            end
            ## 
            ## Sets the skypeForBusiness property value. The number of active users in Skype For Business. Any user who organized or participated in conferences, or joined peer-to-peer sessions is considered an active user.
            ## @param value Value to set for the skype_for_business property.
            ## @return a void
            ## 
            def skype_for_business=(value)
                @skype_for_business = value
            end
            ## 
            ## Gets the teams property value. The number of active users in Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls is considered an active user.
            ## @return a int64
            ## 
            def teams
                return @teams
            end
            ## 
            ## Sets the teams property value. The number of active users in Microsoft Teams. Any user who posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls is considered an active user.
            ## @param value Value to set for the teams property.
            ## @return a void
            ## 
            def teams=(value)
                @teams = value
            end
            ## 
            ## Gets the yammer property value. The number of active users in Yammer. Any user who can post, read, or like messages is considered an active user.
            ## @return a int64
            ## 
            def yammer
                return @yammer
            end
            ## 
            ## Sets the yammer property value. The number of active users in Yammer. Any user who can post, read, or like messages is considered an active user.
            ## @param value Value to set for the yammer property.
            ## @return a void
            ## 
            def yammer=(value)
                @yammer = value
            end
        end
    end
end
