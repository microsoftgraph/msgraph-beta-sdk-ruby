require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ChannelModerationSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether bots are allowed to post messages.
            @allow_new_message_from_bots
            ## 
            # Indicates whether connectors are allowed to post messages.
            @allow_new_message_from_connectors
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates who is allowed to reply to the teams channel. Possible values are: everyone, authorAndModerators, unknownFutureValue.
            @reply_restriction
            ## 
            # Indicates who is allowed to post messages to teams channel. Possible values are: everyone, everyoneExceptGuests, moderators, unknownFutureValue.
            @user_new_message_restriction
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowNewMessageFromBots property value. Indicates whether bots are allowed to post messages.
            ## @return a boolean
            ## 
            def allow_new_message_from_bots
                return @allow_new_message_from_bots
            end
            ## 
            ## Sets the allowNewMessageFromBots property value. Indicates whether bots are allowed to post messages.
            ## @param value Value to set for the allow_new_message_from_bots property.
            ## @return a void
            ## 
            def allow_new_message_from_bots=(value)
                @allow_new_message_from_bots = value
            end
            ## 
            ## Gets the allowNewMessageFromConnectors property value. Indicates whether connectors are allowed to post messages.
            ## @return a boolean
            ## 
            def allow_new_message_from_connectors
                return @allow_new_message_from_connectors
            end
            ## 
            ## Sets the allowNewMessageFromConnectors property value. Indicates whether connectors are allowed to post messages.
            ## @param value Value to set for the allow_new_message_from_connectors property.
            ## @return a void
            ## 
            def allow_new_message_from_connectors=(value)
                @allow_new_message_from_connectors = value
            end
            ## 
            ## Instantiates a new channelModerationSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a channel_moderation_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChannelModerationSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowNewMessageFromBots" => lambda {|n| @allow_new_message_from_bots = n.get_boolean_value() },
                    "allowNewMessageFromConnectors" => lambda {|n| @allow_new_message_from_connectors = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "replyRestriction" => lambda {|n| @reply_restriction = n.get_enum_value(MicrosoftGraphBeta::Models::ReplyRestriction) },
                    "userNewMessageRestriction" => lambda {|n| @user_new_message_restriction = n.get_enum_value(MicrosoftGraphBeta::Models::UserNewMessageRestriction) },
                }
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the replyRestriction property value. Indicates who is allowed to reply to the teams channel. Possible values are: everyone, authorAndModerators, unknownFutureValue.
            ## @return a reply_restriction
            ## 
            def reply_restriction
                return @reply_restriction
            end
            ## 
            ## Sets the replyRestriction property value. Indicates who is allowed to reply to the teams channel. Possible values are: everyone, authorAndModerators, unknownFutureValue.
            ## @param value Value to set for the reply_restriction property.
            ## @return a void
            ## 
            def reply_restriction=(value)
                @reply_restriction = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowNewMessageFromBots", @allow_new_message_from_bots)
                writer.write_boolean_value("allowNewMessageFromConnectors", @allow_new_message_from_connectors)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("replyRestriction", @reply_restriction)
                writer.write_enum_value("userNewMessageRestriction", @user_new_message_restriction)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userNewMessageRestriction property value. Indicates who is allowed to post messages to teams channel. Possible values are: everyone, everyoneExceptGuests, moderators, unknownFutureValue.
            ## @return a user_new_message_restriction
            ## 
            def user_new_message_restriction
                return @user_new_message_restriction
            end
            ## 
            ## Sets the userNewMessageRestriction property value. Indicates who is allowed to post messages to teams channel. Possible values are: everyone, everyoneExceptGuests, moderators, unknownFutureValue.
            ## @param value Value to set for the user_new_message_restriction property.
            ## @return a void
            ## 
            def user_new_message_restriction=(value)
                @user_new_message_restriction = value
            end
        end
    end
end
