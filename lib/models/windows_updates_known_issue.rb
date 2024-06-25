require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesKnownIssue < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description of the particular known issue.
            @description
            ## 
            # The knownIssueHistories property
            @known_issue_histories
            ## 
            # The date and time when the known issue was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @last_updated_date_time
            ## 
            # Knowledge base article associated with the release when the known issue was first reported.
            @originating_knowledge_base_article
            ## 
            # The date and time when the known issue was resolved or mitigated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @resolved_date_time
            ## 
            # Knowledge base article associated with the release when the known issue was resolved or mitigated.
            @resolving_knowledge_base_article
            ## 
            # The safeguardHoldIds property
            @safeguard_hold_ids
            ## 
            # The date and time when the known issue was first reported. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @start_date_time
            ## 
            # The status property
            @status
            ## 
            # The title of the known issue.
            @title
            ## 
            # The URL to the known issue in the Windows Release Health dashboard on Microsoft 365 admin center.
            @web_view_url
            ## 
            ## Instantiates a new WindowsUpdatesKnownIssue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_known_issue
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesKnownIssue.new
            end
            ## 
            ## Gets the description property value. The description of the particular known issue.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the particular known issue.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "knownIssueHistories" => lambda {|n| @known_issue_histories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesKnownIssueHistoryItem.create_from_discriminator_value(pn) }) },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "originatingKnowledgeBaseArticle" => lambda {|n| @originating_knowledge_base_article = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesKnowledgeBaseArticle.create_from_discriminator_value(pn) }) },
                    "resolvedDateTime" => lambda {|n| @resolved_date_time = n.get_date_time_value() },
                    "resolvingKnowledgeBaseArticle" => lambda {|n| @resolving_knowledge_base_article = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesKnowledgeBaseArticle.create_from_discriminator_value(pn) }) },
                    "safeguardHoldIds" => lambda {|n| @safeguard_hold_ids = n.get_collection_of_primitive_values(Integer) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdatesWindowsReleaseHealthStatus) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "webViewUrl" => lambda {|n| @web_view_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the knownIssueHistories property value. The knownIssueHistories property
            ## @return a windows_updates_known_issue_history_item
            ## 
            def known_issue_histories
                return @known_issue_histories
            end
            ## 
            ## Sets the knownIssueHistories property value. The knownIssueHistories property
            ## @param value Value to set for the knownIssueHistories property.
            ## @return a void
            ## 
            def known_issue_histories=(value)
                @known_issue_histories = value
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. The date and time when the known issue was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. The date and time when the known issue was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the lastUpdatedDateTime property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the originatingKnowledgeBaseArticle property value. Knowledge base article associated with the release when the known issue was first reported.
            ## @return a windows_updates_knowledge_base_article
            ## 
            def originating_knowledge_base_article
                return @originating_knowledge_base_article
            end
            ## 
            ## Sets the originatingKnowledgeBaseArticle property value. Knowledge base article associated with the release when the known issue was first reported.
            ## @param value Value to set for the originatingKnowledgeBaseArticle property.
            ## @return a void
            ## 
            def originating_knowledge_base_article=(value)
                @originating_knowledge_base_article = value
            end
            ## 
            ## Gets the resolvedDateTime property value. The date and time when the known issue was resolved or mitigated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def resolved_date_time
                return @resolved_date_time
            end
            ## 
            ## Sets the resolvedDateTime property value. The date and time when the known issue was resolved or mitigated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the resolvedDateTime property.
            ## @return a void
            ## 
            def resolved_date_time=(value)
                @resolved_date_time = value
            end
            ## 
            ## Gets the resolvingKnowledgeBaseArticle property value. Knowledge base article associated with the release when the known issue was resolved or mitigated.
            ## @return a windows_updates_knowledge_base_article
            ## 
            def resolving_knowledge_base_article
                return @resolving_knowledge_base_article
            end
            ## 
            ## Sets the resolvingKnowledgeBaseArticle property value. Knowledge base article associated with the release when the known issue was resolved or mitigated.
            ## @param value Value to set for the resolvingKnowledgeBaseArticle property.
            ## @return a void
            ## 
            def resolving_knowledge_base_article=(value)
                @resolving_knowledge_base_article = value
            end
            ## 
            ## Gets the safeguardHoldIds property value. The safeguardHoldIds property
            ## @return a integer
            ## 
            def safeguard_hold_ids
                return @safeguard_hold_ids
            end
            ## 
            ## Sets the safeguardHoldIds property value. The safeguardHoldIds property
            ## @param value Value to set for the safeguardHoldIds property.
            ## @return a void
            ## 
            def safeguard_hold_ids=(value)
                @safeguard_hold_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("knownIssueHistories", @known_issue_histories)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_object_value("originatingKnowledgeBaseArticle", @originating_knowledge_base_article)
                writer.write_date_time_value("resolvedDateTime", @resolved_date_time)
                writer.write_object_value("resolvingKnowledgeBaseArticle", @resolving_knowledge_base_article)
                writer.write_collection_of_primitive_values("safeguardHoldIds", @safeguard_hold_ids)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_enum_value("status", @status)
                writer.write_string_value("title", @title)
                writer.write_string_value("webViewUrl", @web_view_url)
            end
            ## 
            ## Gets the startDateTime property value. The date and time when the known issue was first reported. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The date and time when the known issue was first reported. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a windows_updates_windows_release_health_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the title property value. The title of the known issue.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title of the known issue.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the webViewUrl property value. The URL to the known issue in the Windows Release Health dashboard on Microsoft 365 admin center.
            ## @return a string
            ## 
            def web_view_url
                return @web_view_url
            end
            ## 
            ## Sets the webViewUrl property value. The URL to the known issue in the Windows Release Health dashboard on Microsoft 365 admin center.
            ## @param value Value to set for the webViewUrl property.
            ## @return a void
            ## 
            def web_view_url=(value)
                @web_view_url = value
            end
        end
    end
end
