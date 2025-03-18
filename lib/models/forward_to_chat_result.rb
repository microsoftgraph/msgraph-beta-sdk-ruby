require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ForwardToChatResult < MicrosoftGraphBeta::Models::ActionResultPart
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The chatMessage ID generated after a message is successfully forwarded to the target chat ID.
            @forwarded_message_id
            ## 
            # The target chat ID where the message was forwarded.
            @target_chat_id
            ## 
            ## Instantiates a new ForwardToChatResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.forwardToChatResult"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a forward_to_chat_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ForwardToChatResult.new
            end
            ## 
            ## Gets the forwardedMessageId property value. The chatMessage ID generated after a message is successfully forwarded to the target chat ID.
            ## @return a string
            ## 
            def forwarded_message_id
                return @forwarded_message_id
            end
            ## 
            ## Sets the forwardedMessageId property value. The chatMessage ID generated after a message is successfully forwarded to the target chat ID.
            ## @param value Value to set for the forwardedMessageId property.
            ## @return a void
            ## 
            def forwarded_message_id=(value)
                @forwarded_message_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "forwardedMessageId" => lambda {|n| @forwarded_message_id = n.get_string_value() },
                    "targetChatId" => lambda {|n| @target_chat_id = n.get_string_value() },
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
                writer.write_string_value("forwardedMessageId", @forwarded_message_id)
                writer.write_string_value("targetChatId", @target_chat_id)
            end
            ## 
            ## Gets the targetChatId property value. The target chat ID where the message was forwarded.
            ## @return a string
            ## 
            def target_chat_id
                return @target_chat_id
            end
            ## 
            ## Sets the targetChatId property value. The target chat ID where the message was forwarded.
            ## @param value Value to set for the targetChatId property.
            ## @return a void
            ## 
            def target_chat_id=(value)
                @target_chat_id = value
            end
        end
    end
end
