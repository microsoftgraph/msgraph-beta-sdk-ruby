require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RemoteAssistanceSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates if sessions to unenrolled devices are allowed for the account. This setting is configurable by the admin. Default value is false.
            @allow_sessions_to_unenrolled_devices
            ## 
            # Indicates if sessions to block chat function. This setting is configurable by the admin. Default value is false.
            @block_chat
            ## 
            # State of remote assistance for the account
            @remote_assistance_state
            ## 
            ## Gets the allowSessionsToUnenrolledDevices property value. Indicates if sessions to unenrolled devices are allowed for the account. This setting is configurable by the admin. Default value is false.
            ## @return a boolean
            ## 
            def allow_sessions_to_unenrolled_devices
                return @allow_sessions_to_unenrolled_devices
            end
            ## 
            ## Sets the allowSessionsToUnenrolledDevices property value. Indicates if sessions to unenrolled devices are allowed for the account. This setting is configurable by the admin. Default value is false.
            ## @param value Value to set for the allow_sessions_to_unenrolled_devices property.
            ## @return a void
            ## 
            def allow_sessions_to_unenrolled_devices=(value)
                @allow_sessions_to_unenrolled_devices = value
            end
            ## 
            ## Gets the blockChat property value. Indicates if sessions to block chat function. This setting is configurable by the admin. Default value is false.
            ## @return a boolean
            ## 
            def block_chat
                return @block_chat
            end
            ## 
            ## Sets the blockChat property value. Indicates if sessions to block chat function. This setting is configurable by the admin. Default value is false.
            ## @param value Value to set for the block_chat property.
            ## @return a void
            ## 
            def block_chat=(value)
                @block_chat = value
            end
            ## 
            ## Instantiates a new remoteAssistanceSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a remote_assistance_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RemoteAssistanceSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowSessionsToUnenrolledDevices" => lambda {|n| @allow_sessions_to_unenrolled_devices = n.get_boolean_value() },
                    "blockChat" => lambda {|n| @block_chat = n.get_boolean_value() },
                    "remoteAssistanceState" => lambda {|n| @remote_assistance_state = n.get_enum_value(MicrosoftGraphBeta::Models::RemoteAssistanceState) },
                })
            end
            ## 
            ## Gets the remoteAssistanceState property value. State of remote assistance for the account
            ## @return a remote_assistance_state
            ## 
            def remote_assistance_state
                return @remote_assistance_state
            end
            ## 
            ## Sets the remoteAssistanceState property value. State of remote assistance for the account
            ## @param value Value to set for the remote_assistance_state property.
            ## @return a void
            ## 
            def remote_assistance_state=(value)
                @remote_assistance_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowSessionsToUnenrolledDevices", @allow_sessions_to_unenrolled_devices)
                writer.write_boolean_value("blockChat", @block_chat)
                writer.write_enum_value("remoteAssistanceState", @remote_assistance_state)
            end
        end
    end
end
