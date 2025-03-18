require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/chat_message'
require_relative '../../../../teams'
require_relative '../../../item'
require_relative '../../primary_channel'
require_relative '../messages'
require_relative './forward_to_chat'

module MicrosoftGraphBeta
    module Teams
        module Item
            module PrimaryChannel
                module Messages
                    module ForwardToChat
                        class ForwardToChatPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # The additionalMessage property
                            @additional_message
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The messageIds property
                            @message_ids
                            ## 
                            # The targetChatIds property
                            @target_chat_ids
                            ## 
                            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            ## @return a i_dictionary
                            ## 
                            def additional_data
                                return @additional_data
                            end
                            ## 
                            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            ## @param value Value to set for the AdditionalData property.
                            ## @return a void
                            ## 
                            def additional_data=(value)
                                @additional_data = value
                            end
                            ## 
                            ## Gets the additionalMessage property value. The additionalMessage property
                            ## @return a chat_message
                            ## 
                            def additional_message
                                return @additional_message
                            end
                            ## 
                            ## Sets the additionalMessage property value. The additionalMessage property
                            ## @param value Value to set for the additionalMessage property.
                            ## @return a void
                            ## 
                            def additional_message=(value)
                                @additional_message = value
                            end
                            ## 
                            ## Instantiates a new ForwardToChatPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a forward_to_chat_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ForwardToChatPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "additionalMessage" => lambda {|n| @additional_message = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ChatMessage.create_from_discriminator_value(pn) }) },
                                    "messageIds" => lambda {|n| @message_ids = n.get_collection_of_primitive_values(String) },
                                    "targetChatIds" => lambda {|n| @target_chat_ids = n.get_collection_of_primitive_values(String) },
                                }
                            end
                            ## 
                            ## Gets the messageIds property value. The messageIds property
                            ## @return a string
                            ## 
                            def message_ids
                                return @message_ids
                            end
                            ## 
                            ## Sets the messageIds property value. The messageIds property
                            ## @param value Value to set for the messageIds property.
                            ## @return a void
                            ## 
                            def message_ids=(value)
                                @message_ids = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_object_value("additionalMessage", @additional_message)
                                writer.write_collection_of_primitive_values("messageIds", @message_ids)
                                writer.write_collection_of_primitive_values("targetChatIds", @target_chat_ids)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the targetChatIds property value. The targetChatIds property
                            ## @return a string
                            ## 
                            def target_chat_ids
                                return @target_chat_ids
                            end
                            ## 
                            ## Sets the targetChatIds property value. The targetChatIds property
                            ## @param value Value to set for the targetChatIds property.
                            ## @return a void
                            ## 
                            def target_chat_ids=(value)
                                @target_chat_ids = value
                            end
                        end
                    end
                end
            end
        end
    end
end
