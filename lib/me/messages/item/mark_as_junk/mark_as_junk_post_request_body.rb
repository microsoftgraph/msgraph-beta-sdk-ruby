require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../me'
require_relative '../../messages'
require_relative '../item'
require_relative './mark_as_junk'

module MicrosoftGraphBeta
    module Me
        module Messages
            module Item
                module MarkAsJunk
                    class MarkAsJunkPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The MoveToJunk property
                        @move_to_junk
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
                        ## Instantiates a new markAsJunkPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a mark_as_junk_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return MarkAsJunkPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "MoveToJunk" => lambda {|n| @move_to_junk = n.get_boolean_value() },
                            }
                        end
                        ## 
                        ## Gets the MoveToJunk property value. The MoveToJunk property
                        ## @return a boolean
                        ## 
                        def move_to_junk
                            return @move_to_junk
                        end
                        ## 
                        ## Sets the MoveToJunk property value. The MoveToJunk property
                        ## @param value Value to set for the MoveToJunk property.
                        ## @return a void
                        ## 
                        def move_to_junk=(value)
                            @move_to_junk = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_boolean_value("MoveToJunk", @move_to_junk)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
