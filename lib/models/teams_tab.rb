require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamsTab < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Container for custom settings applied to a tab. The tab is considered configured only once this property is set.
            @configuration
            ## 
            # Name of the tab.
            @display_name
            ## 
            # The messageId property
            @message_id
            ## 
            # Index of the order used for sorting tabs.
            @sort_order_index
            ## 
            # The application that is linked to the tab.
            @teams_app
            ## 
            # The teamsAppId property
            @teams_app_id
            ## 
            # Deep link URL of the tab instance. Read only.
            @web_url
            ## 
            ## Gets the configuration property value. Container for custom settings applied to a tab. The tab is considered configured only once this property is set.
            ## @return a teams_tab_configuration
            ## 
            def configuration
                return @configuration
            end
            ## 
            ## Sets the configuration property value. Container for custom settings applied to a tab. The tab is considered configured only once this property is set.
            ## @param value Value to set for the configuration property.
            ## @return a void
            ## 
            def configuration=(value)
                @configuration = value
            end
            ## 
            ## Instantiates a new TeamsTab and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_tab
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsTab.new
            end
            ## 
            ## Gets the displayName property value. Name of the tab.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the tab.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamsTabConfiguration.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "messageId" => lambda {|n| @message_id = n.get_string_value() },
                    "sortOrderIndex" => lambda {|n| @sort_order_index = n.get_string_value() },
                    "teamsApp" => lambda {|n| @teams_app = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamsApp.create_from_discriminator_value(pn) }) },
                    "teamsAppId" => lambda {|n| @teams_app_id = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the messageId property value. The messageId property
            ## @return a string
            ## 
            def message_id
                return @message_id
            end
            ## 
            ## Sets the messageId property value. The messageId property
            ## @param value Value to set for the messageId property.
            ## @return a void
            ## 
            def message_id=(value)
                @message_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("configuration", @configuration)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("messageId", @message_id)
                writer.write_string_value("sortOrderIndex", @sort_order_index)
                writer.write_object_value("teamsApp", @teams_app)
                writer.write_string_value("teamsAppId", @teams_app_id)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the sortOrderIndex property value. Index of the order used for sorting tabs.
            ## @return a string
            ## 
            def sort_order_index
                return @sort_order_index
            end
            ## 
            ## Sets the sortOrderIndex property value. Index of the order used for sorting tabs.
            ## @param value Value to set for the sortOrderIndex property.
            ## @return a void
            ## 
            def sort_order_index=(value)
                @sort_order_index = value
            end
            ## 
            ## Gets the teamsApp property value. The application that is linked to the tab.
            ## @return a teams_app
            ## 
            def teams_app
                return @teams_app
            end
            ## 
            ## Sets the teamsApp property value. The application that is linked to the tab.
            ## @param value Value to set for the teamsApp property.
            ## @return a void
            ## 
            def teams_app=(value)
                @teams_app = value
            end
            ## 
            ## Gets the teamsAppId property value. The teamsAppId property
            ## @return a string
            ## 
            def teams_app_id
                return @teams_app_id
            end
            ## 
            ## Sets the teamsAppId property value. The teamsAppId property
            ## @param value Value to set for the teamsAppId property.
            ## @return a void
            ## 
            def teams_app_id=(value)
                @teams_app_id = value
            end
            ## 
            ## Gets the webUrl property value. Deep link URL of the tab instance. Read only.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Deep link URL of the tab instance. Read only.
            ## @param value Value to set for the webUrl property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
