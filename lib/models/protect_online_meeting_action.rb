require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ProtectOnlineMeetingAction < MicrosoftGraphBeta::Models::LabelActionBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The allowedForwarders property
        @allowed_forwarders
        ## 
        # The allowedPresenters property
        @allowed_presenters
        ## 
        # The isCopyToClipboardEnabled property
        @is_copy_to_clipboard_enabled
        ## 
        # The isLobbyEnabled property
        @is_lobby_enabled
        ## 
        # The lobbyBypassSettings property
        @lobby_bypass_settings
        ## 
        ## Gets the allowedForwarders property value. The allowedForwarders property
        ## @return a online_meeting_forwarders
        ## 
        def allowed_forwarders
            return @allowed_forwarders
        end
        ## 
        ## Sets the allowedForwarders property value. The allowedForwarders property
        ## @param value Value to set for the allowedForwarders property.
        ## @return a void
        ## 
        def allowed_forwarders=(value)
            @allowed_forwarders = value
        end
        ## 
        ## Gets the allowedPresenters property value. The allowedPresenters property
        ## @return a online_meeting_presenters
        ## 
        def allowed_presenters
            return @allowed_presenters
        end
        ## 
        ## Sets the allowedPresenters property value. The allowedPresenters property
        ## @param value Value to set for the allowedPresenters property.
        ## @return a void
        ## 
        def allowed_presenters=(value)
            @allowed_presenters = value
        end
        ## 
        ## Instantiates a new ProtectOnlineMeetingAction and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.protectOnlineMeetingAction"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a protect_online_meeting_action
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ProtectOnlineMeetingAction.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowedForwarders" => lambda {|n| @allowed_forwarders = n.get_enum_value(MicrosoftGraphBeta::Models::OnlineMeetingForwarders) },
                "allowedPresenters" => lambda {|n| @allowed_presenters = n.get_enum_value(MicrosoftGraphBeta::Models::OnlineMeetingPresenters) },
                "isCopyToClipboardEnabled" => lambda {|n| @is_copy_to_clipboard_enabled = n.get_boolean_value() },
                "isLobbyEnabled" => lambda {|n| @is_lobby_enabled = n.get_boolean_value() },
                "lobbyBypassSettings" => lambda {|n| @lobby_bypass_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LobbyBypassSettings.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the isCopyToClipboardEnabled property value. The isCopyToClipboardEnabled property
        ## @return a boolean
        ## 
        def is_copy_to_clipboard_enabled
            return @is_copy_to_clipboard_enabled
        end
        ## 
        ## Sets the isCopyToClipboardEnabled property value. The isCopyToClipboardEnabled property
        ## @param value Value to set for the isCopyToClipboardEnabled property.
        ## @return a void
        ## 
        def is_copy_to_clipboard_enabled=(value)
            @is_copy_to_clipboard_enabled = value
        end
        ## 
        ## Gets the isLobbyEnabled property value. The isLobbyEnabled property
        ## @return a boolean
        ## 
        def is_lobby_enabled
            return @is_lobby_enabled
        end
        ## 
        ## Sets the isLobbyEnabled property value. The isLobbyEnabled property
        ## @param value Value to set for the isLobbyEnabled property.
        ## @return a void
        ## 
        def is_lobby_enabled=(value)
            @is_lobby_enabled = value
        end
        ## 
        ## Gets the lobbyBypassSettings property value. The lobbyBypassSettings property
        ## @return a lobby_bypass_settings
        ## 
        def lobby_bypass_settings
            return @lobby_bypass_settings
        end
        ## 
        ## Sets the lobbyBypassSettings property value. The lobbyBypassSettings property
        ## @param value Value to set for the lobbyBypassSettings property.
        ## @return a void
        ## 
        def lobby_bypass_settings=(value)
            @lobby_bypass_settings = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("allowedForwarders", @allowed_forwarders)
            writer.write_enum_value("allowedPresenters", @allowed_presenters)
            writer.write_boolean_value("isCopyToClipboardEnabled", @is_copy_to_clipboard_enabled)
            writer.write_boolean_value("isLobbyEnabled", @is_lobby_enabled)
            writer.write_object_value("lobbyBypassSettings", @lobby_bypass_settings)
        end
    end
end
