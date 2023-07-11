require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Office365GroupsActivityCounts < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of emails received by Group mailboxes.
            @exchange_emails_received
            ## 
            # The date on which a number of emails were sent to a group mailbox or a number of messages were posted, read, or liked in a Yammer group
            @report_date
            ## 
            # The number of days the report covers.
            @report_period
            ## 
            # The latest date of the content.
            @report_refresh_date
            ## 
            # The number of channel messages in Teams team.
            @teams_channel_messages
            ## 
            # The number of meetings organized in Teams team.
            @teams_meetings_organized
            ## 
            # The number of messages liked in Yammer groups.
            @yammer_messages_liked
            ## 
            # The number of messages posted to Yammer groups.
            @yammer_messages_posted
            ## 
            # The number of messages read in Yammer groups.
            @yammer_messages_read
            ## 
            ## Instantiates a new office365GroupsActivityCounts and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a office365_groups_activity_counts
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Office365GroupsActivityCounts.new
            end
            ## 
            ## Gets the exchangeEmailsReceived property value. The number of emails received by Group mailboxes.
            ## @return a int64
            ## 
            def exchange_emails_received
                return @exchange_emails_received
            end
            ## 
            ## Sets the exchangeEmailsReceived property value. The number of emails received by Group mailboxes.
            ## @param value Value to set for the exchange_emails_received property.
            ## @return a void
            ## 
            def exchange_emails_received=(value)
                @exchange_emails_received = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "exchangeEmailsReceived" => lambda {|n| @exchange_emails_received = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "reportDate" => lambda {|n| @report_date = n.get_date_value() },
                    "reportPeriod" => lambda {|n| @report_period = n.get_string_value() },
                    "reportRefreshDate" => lambda {|n| @report_refresh_date = n.get_date_value() },
                    "teamsChannelMessages" => lambda {|n| @teams_channel_messages = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "teamsMeetingsOrganized" => lambda {|n| @teams_meetings_organized = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammerMessagesLiked" => lambda {|n| @yammer_messages_liked = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammerMessagesPosted" => lambda {|n| @yammer_messages_posted = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "yammerMessagesRead" => lambda {|n| @yammer_messages_read = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the reportDate property value. The date on which a number of emails were sent to a group mailbox or a number of messages were posted, read, or liked in a Yammer group
            ## @return a date
            ## 
            def report_date
                return @report_date
            end
            ## 
            ## Sets the reportDate property value. The date on which a number of emails were sent to a group mailbox or a number of messages were posted, read, or liked in a Yammer group
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
                writer.write_object_value("exchangeEmailsReceived", @exchange_emails_received)
                writer.write_date_value("reportDate", @report_date)
                writer.write_string_value("reportPeriod", @report_period)
                writer.write_date_value("reportRefreshDate", @report_refresh_date)
                writer.write_object_value("teamsChannelMessages", @teams_channel_messages)
                writer.write_object_value("teamsMeetingsOrganized", @teams_meetings_organized)
                writer.write_object_value("yammerMessagesLiked", @yammer_messages_liked)
                writer.write_object_value("yammerMessagesPosted", @yammer_messages_posted)
                writer.write_object_value("yammerMessagesRead", @yammer_messages_read)
            end
            ## 
            ## Gets the teamsChannelMessages property value. The number of channel messages in Teams team.
            ## @return a int64
            ## 
            def teams_channel_messages
                return @teams_channel_messages
            end
            ## 
            ## Sets the teamsChannelMessages property value. The number of channel messages in Teams team.
            ## @param value Value to set for the teams_channel_messages property.
            ## @return a void
            ## 
            def teams_channel_messages=(value)
                @teams_channel_messages = value
            end
            ## 
            ## Gets the teamsMeetingsOrganized property value. The number of meetings organized in Teams team.
            ## @return a int64
            ## 
            def teams_meetings_organized
                return @teams_meetings_organized
            end
            ## 
            ## Sets the teamsMeetingsOrganized property value. The number of meetings organized in Teams team.
            ## @param value Value to set for the teams_meetings_organized property.
            ## @return a void
            ## 
            def teams_meetings_organized=(value)
                @teams_meetings_organized = value
            end
            ## 
            ## Gets the yammerMessagesLiked property value. The number of messages liked in Yammer groups.
            ## @return a int64
            ## 
            def yammer_messages_liked
                return @yammer_messages_liked
            end
            ## 
            ## Sets the yammerMessagesLiked property value. The number of messages liked in Yammer groups.
            ## @param value Value to set for the yammer_messages_liked property.
            ## @return a void
            ## 
            def yammer_messages_liked=(value)
                @yammer_messages_liked = value
            end
            ## 
            ## Gets the yammerMessagesPosted property value. The number of messages posted to Yammer groups.
            ## @return a int64
            ## 
            def yammer_messages_posted
                return @yammer_messages_posted
            end
            ## 
            ## Sets the yammerMessagesPosted property value. The number of messages posted to Yammer groups.
            ## @param value Value to set for the yammer_messages_posted property.
            ## @return a void
            ## 
            def yammer_messages_posted=(value)
                @yammer_messages_posted = value
            end
            ## 
            ## Gets the yammerMessagesRead property value. The number of messages read in Yammer groups.
            ## @return a int64
            ## 
            def yammer_messages_read
                return @yammer_messages_read
            end
            ## 
            ## Sets the yammerMessagesRead property value. The number of messages read in Yammer groups.
            ## @param value Value to set for the yammer_messages_read property.
            ## @return a void
            ## 
            def yammer_messages_read=(value)
                @yammer_messages_read = value
            end
        end
    end
end
