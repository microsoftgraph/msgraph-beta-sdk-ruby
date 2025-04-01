require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/chat_message'
require_relative '../../../../../../teams'
require_relative '../../../../../item'
require_relative '../../../../primary_channel'
require_relative '../../../messages'
require_relative '../../item'
require_relative '../replies'
require_relative './reply_with_quote'

module MicrosoftGraphBeta
    module Teams
        module Item
            module PrimaryChannel
                module Messages
                    module Item
                        module Replies
                            module ReplyWithQuote
                                class ReplyWithQuotePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The messageIds property
                                    @message_ids
                                    ## 
                                    # The replyMessage property
                                    @reply_message
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
                                    ## Instantiates a new ReplyWithQuotePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a reply_with_quote_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ReplyWithQuotePostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "messageIds" => lambda {|n| @message_ids = n.get_collection_of_primitive_values(String) },
                                            "replyMessage" => lambda {|n| @reply_message = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ChatMessage.create_from_discriminator_value(pn) }) },
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
                                    ## Gets the replyMessage property value. The replyMessage property
                                    ## @return a chat_message
                                    ## 
                                    def reply_message
                                        return @reply_message
                                    end
                                    ## 
                                    ## Sets the replyMessage property value. The replyMessage property
                                    ## @param value Value to set for the replyMessage property.
                                    ## @return a void
                                    ## 
                                    def reply_message=(value)
                                        @reply_message = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_collection_of_primitive_values("messageIds", @message_ids)
                                        writer.write_object_value("replyMessage", @reply_message)
                                        writer.write_additional_data(@additional_data)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
