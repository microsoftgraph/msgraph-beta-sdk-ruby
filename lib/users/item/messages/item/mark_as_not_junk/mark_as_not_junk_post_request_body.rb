require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../messages'
require_relative '../item'
require_relative './mark_as_not_junk'

module MicrosoftGraphBeta
    module Users
        module Item
            module Messages
                module Item
                    module MarkAsNotJunk
                        class MarkAsNotJunkPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The MoveToInbox property
                            @move_to_inbox
                            ## 
                            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            ## @return a i_dictionary
                            ## 
                            def additional_data
                                return @additional_data
                            end
                            ## 
                            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            ## @param value Value to set for the additionalData property.
                            ## @return a void
                            ## 
                            def additional_data=(value)
                                @additional_data = value
                            end
                            ## 
                            ## Instantiates a new markAsNotJunkPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a mark_as_not_junk_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return MarkAsNotJunkPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "MoveToInbox" => lambda {|n| @move_to_inbox = n.get_boolean_value() },
                                }
                            end
                            ## 
                            ## Gets the MoveToInbox property value. The MoveToInbox property
                            ## @return a boolean
                            ## 
                            def move_to_inbox
                                return @move_to_inbox
                            end
                            ## 
                            ## Sets the MoveToInbox property value. The MoveToInbox property
                            ## @param value Value to set for the MoveToInbox property.
                            ## @return a void
                            ## 
                            def move_to_inbox=(value)
                                @move_to_inbox = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_boolean_value("MoveToInbox", @move_to_inbox)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
