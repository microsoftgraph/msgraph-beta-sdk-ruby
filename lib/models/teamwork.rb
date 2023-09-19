require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Teamwork < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of deleted chats.
            @deleted_chats
            ## 
            # A collection of deleted teams.
            @deleted_teams
            ## 
            # The Teams devices provisioned for the tenant.
            @devices
            ## 
            # The templates associated with a team.
            @team_templates
            ## 
            # Represents tenant-wide settings for all Teams apps in the tenant.
            @teams_app_settings
            ## 
            # A workforce integration with shifts.
            @workforce_integrations
            ## 
            ## Instantiates a new teamwork and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Teamwork.new
            end
            ## 
            ## Gets the deletedChats property value. A collection of deleted chats.
            ## @return a deleted_chat
            ## 
            def deleted_chats
                return @deleted_chats
            end
            ## 
            ## Sets the deletedChats property value. A collection of deleted chats.
            ## @param value Value to set for the deletedChats property.
            ## @return a void
            ## 
            def deleted_chats=(value)
                @deleted_chats = value
            end
            ## 
            ## Gets the deletedTeams property value. A collection of deleted teams.
            ## @return a deleted_team
            ## 
            def deleted_teams
                return @deleted_teams
            end
            ## 
            ## Sets the deletedTeams property value. A collection of deleted teams.
            ## @param value Value to set for the deletedTeams property.
            ## @return a void
            ## 
            def deleted_teams=(value)
                @deleted_teams = value
            end
            ## 
            ## Gets the devices property value. The Teams devices provisioned for the tenant.
            ## @return a teamwork_device
            ## 
            def devices
                return @devices
            end
            ## 
            ## Sets the devices property value. The Teams devices provisioned for the tenant.
            ## @param value Value to set for the devices property.
            ## @return a void
            ## 
            def devices=(value)
                @devices = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deletedChats" => lambda {|n| @deleted_chats = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeletedChat.create_from_discriminator_value(pn) }) },
                    "deletedTeams" => lambda {|n| @deleted_teams = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeletedTeam.create_from_discriminator_value(pn) }) },
                    "devices" => lambda {|n| @devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDevice.create_from_discriminator_value(pn) }) },
                    "teamTemplates" => lambda {|n| @team_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamTemplate.create_from_discriminator_value(pn) }) },
                    "teamsAppSettings" => lambda {|n| @teams_app_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamsAppSettings.create_from_discriminator_value(pn) }) },
                    "workforceIntegrations" => lambda {|n| @workforce_integrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WorkforceIntegration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("deletedChats", @deleted_chats)
                writer.write_collection_of_object_values("deletedTeams", @deleted_teams)
                writer.write_collection_of_object_values("devices", @devices)
                writer.write_collection_of_object_values("teamTemplates", @team_templates)
                writer.write_object_value("teamsAppSettings", @teams_app_settings)
                writer.write_collection_of_object_values("workforceIntegrations", @workforce_integrations)
            end
            ## 
            ## Gets the teamTemplates property value. The templates associated with a team.
            ## @return a team_template
            ## 
            def team_templates
                return @team_templates
            end
            ## 
            ## Sets the teamTemplates property value. The templates associated with a team.
            ## @param value Value to set for the teamTemplates property.
            ## @return a void
            ## 
            def team_templates=(value)
                @team_templates = value
            end
            ## 
            ## Gets the teamsAppSettings property value. Represents tenant-wide settings for all Teams apps in the tenant.
            ## @return a teams_app_settings
            ## 
            def teams_app_settings
                return @teams_app_settings
            end
            ## 
            ## Sets the teamsAppSettings property value. Represents tenant-wide settings for all Teams apps in the tenant.
            ## @param value Value to set for the teamsAppSettings property.
            ## @return a void
            ## 
            def teams_app_settings=(value)
                @teams_app_settings = value
            end
            ## 
            ## Gets the workforceIntegrations property value. A workforce integration with shifts.
            ## @return a workforce_integration
            ## 
            def workforce_integrations
                return @workforce_integrations
            end
            ## 
            ## Sets the workforceIntegrations property value. A workforce integration with shifts.
            ## @param value Value to set for the workforceIntegrations property.
            ## @return a void
            ## 
            def workforce_integrations=(value)
                @workforce_integrations = value
            end
        end
    end
end
