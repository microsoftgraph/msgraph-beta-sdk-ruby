require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerTeamsPublicationInfo < MicrosoftGraphBeta::Models::PlannerTaskCreation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when this task was last modified by the publication process. Read-only.
            @last_modified_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The identifier of the publication. Read-only.
            @publication_id
            ## 
            # The identifier of the plannerPlan this task was originally placed in. Read-only.
            @published_to_plan_id
            ## 
            # The identifier of the team that initiated the publication process. Read-only.
            @publishing_team_id
            ## 
            # The display name of the team that initiated the publication process. This display name is for reference only, and might not represent the most up-to-date name of the team. Read-only.
            @publishing_team_name
            ## 
            ## Instantiates a new plannerTeamsPublicationInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerTeamsPublicationInfo"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_teams_publication_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerTeamsPublicationInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "publicationId" => lambda {|n| @publication_id = n.get_string_value() },
                    "publishedToPlanId" => lambda {|n| @published_to_plan_id = n.get_string_value() },
                    "publishingTeamId" => lambda {|n| @publishing_team_id = n.get_string_value() },
                    "publishingTeamName" => lambda {|n| @publishing_team_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when this task was last modified by the publication process. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when this task was last modified by the publication process. Read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the publicationId property value. The identifier of the publication. Read-only.
            ## @return a string
            ## 
            def publication_id
                return @publication_id
            end
            ## 
            ## Sets the publicationId property value. The identifier of the publication. Read-only.
            ## @param value Value to set for the publicationId property.
            ## @return a void
            ## 
            def publication_id=(value)
                @publication_id = value
            end
            ## 
            ## Gets the publishedToPlanId property value. The identifier of the plannerPlan this task was originally placed in. Read-only.
            ## @return a string
            ## 
            def published_to_plan_id
                return @published_to_plan_id
            end
            ## 
            ## Sets the publishedToPlanId property value. The identifier of the plannerPlan this task was originally placed in. Read-only.
            ## @param value Value to set for the publishedToPlanId property.
            ## @return a void
            ## 
            def published_to_plan_id=(value)
                @published_to_plan_id = value
            end
            ## 
            ## Gets the publishingTeamId property value. The identifier of the team that initiated the publication process. Read-only.
            ## @return a string
            ## 
            def publishing_team_id
                return @publishing_team_id
            end
            ## 
            ## Sets the publishingTeamId property value. The identifier of the team that initiated the publication process. Read-only.
            ## @param value Value to set for the publishingTeamId property.
            ## @return a void
            ## 
            def publishing_team_id=(value)
                @publishing_team_id = value
            end
            ## 
            ## Gets the publishingTeamName property value. The display name of the team that initiated the publication process. This display name is for reference only, and might not represent the most up-to-date name of the team. Read-only.
            ## @return a string
            ## 
            def publishing_team_name
                return @publishing_team_name
            end
            ## 
            ## Sets the publishingTeamName property value. The display name of the team that initiated the publication process. This display name is for reference only, and might not represent the most up-to-date name of the team. Read-only.
            ## @param value Value to set for the publishingTeamName property.
            ## @return a void
            ## 
            def publishing_team_name=(value)
                @publishing_team_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("publicationId", @publication_id)
                writer.write_string_value("publishedToPlanId", @published_to_plan_id)
                writer.write_string_value("publishingTeamId", @publishing_team_id)
                writer.write_string_value("publishingTeamName", @publishing_team_name)
            end
        end
    end
end
