require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/item_body'
require_relative '../../../../../teams'
require_relative '../../../../item'
require_relative '../../../schedule'
require_relative '../../time_cards'
require_relative '../item'
require_relative './end_break'

module MicrosoftGraphBeta
    module Teams
        module Item
            module Schedule
                module TimeCards
                    module Item
                        module EndBreak
                            class EndBreakPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The atApprovedLocation property
                                @at_approved_location
                                ## 
                                # The notes property
                                @notes
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
                                ## Gets the atApprovedLocation property value. The atApprovedLocation property
                                ## @return a boolean
                                ## 
                                def at_approved_location
                                    return @at_approved_location
                                end
                                ## 
                                ## Sets the atApprovedLocation property value. The atApprovedLocation property
                                ## @param value Value to set for the at_approved_location property.
                                ## @return a void
                                ## 
                                def at_approved_location=(value)
                                    @at_approved_location = value
                                end
                                ## 
                                ## Instantiates a new endBreakPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parseNode The parse node to use to read the discriminator value and create the object
                                ## @return a end_break_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return EndBreakPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "atApprovedLocation" => lambda {|n| @at_approved_location = n.get_boolean_value() },
                                        "notes" => lambda {|n| @notes = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemBody.create_from_discriminator_value(pn) }) },
                                    }
                                end
                                ## 
                                ## Gets the notes property value. The notes property
                                ## @return a item_body
                                ## 
                                def notes
                                    return @notes
                                end
                                ## 
                                ## Sets the notes property value. The notes property
                                ## @param value Value to set for the notes property.
                                ## @return a void
                                ## 
                                def notes=(value)
                                    @notes = value
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_boolean_value("atApprovedLocation", @at_approved_location)
                                    writer.write_object_value("notes", @notes)
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
