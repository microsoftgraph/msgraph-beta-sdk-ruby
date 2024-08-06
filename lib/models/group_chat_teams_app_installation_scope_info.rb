require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GroupChatTeamsAppInstallationScopeInfo < MicrosoftGraphBeta::Models::TeamsAppInstallationScopeInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The chatId property
            @chat_id
            ## 
            ## Gets the chatId property value. The chatId property
            ## @return a string
            ## 
            def chat_id
                return @chat_id
            end
            ## 
            ## Sets the chatId property value. The chatId property
            ## @param value Value to set for the chatId property.
            ## @return a void
            ## 
            def chat_id=(value)
                @chat_id = value
            end
            ## 
            ## Instantiates a new GroupChatTeamsAppInstallationScopeInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.groupChatTeamsAppInstallationScopeInfo"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_chat_teams_app_installation_scope_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupChatTeamsAppInstallationScopeInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "chatId" => lambda {|n| @chat_id = n.get_string_value() },
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
                writer.write_string_value("chatId", @chat_id)
            end
        end
    end
end
