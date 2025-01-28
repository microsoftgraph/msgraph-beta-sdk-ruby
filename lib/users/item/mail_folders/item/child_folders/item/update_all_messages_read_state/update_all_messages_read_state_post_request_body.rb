require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../users'
require_relative '../../../../../item'
require_relative '../../../../mail_folders'
require_relative '../../../item'
require_relative '../../child_folders'
require_relative '../item'
require_relative './update_all_messages_read_state'

module MicrosoftGraphBeta
    module Users
        module Item
            module MailFolders
                module Item
                    module ChildFolders
                        module Item
                            module UpdateAllMessagesReadState
                                class UpdateAllMessagesReadStatePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The isRead property
                                    @is_read
                                    ## 
                                    # The suppressReadReceipts property
                                    @suppress_read_receipts
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
                                    ## Instantiates a new UpdateAllMessagesReadStatePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a update_all_messages_read_state_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return UpdateAllMessagesReadStatePostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "isRead" => lambda {|n| @is_read = n.get_boolean_value() },
                                            "suppressReadReceipts" => lambda {|n| @suppress_read_receipts = n.get_boolean_value() },
                                        }
                                    end
                                    ## 
                                    ## Gets the isRead property value. The isRead property
                                    ## @return a boolean
                                    ## 
                                    def is_read
                                        return @is_read
                                    end
                                    ## 
                                    ## Sets the isRead property value. The isRead property
                                    ## @param value Value to set for the isRead property.
                                    ## @return a void
                                    ## 
                                    def is_read=(value)
                                        @is_read = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_boolean_value("isRead", @is_read)
                                        writer.write_boolean_value("suppressReadReceipts", @suppress_read_receipts)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the suppressReadReceipts property value. The suppressReadReceipts property
                                    ## @return a boolean
                                    ## 
                                    def suppress_read_receipts
                                        return @suppress_read_receipts
                                    end
                                    ## 
                                    ## Sets the suppressReadReceipts property value. The suppressReadReceipts property
                                    ## @param value Value to set for the suppressReadReceipts property.
                                    ## @return a void
                                    ## 
                                    def suppress_read_receipts=(value)
                                        @suppress_read_receipts = value
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
