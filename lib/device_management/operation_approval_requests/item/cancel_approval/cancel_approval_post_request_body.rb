require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/operation_approval_source'
require_relative '../../../device_management'
require_relative '../../operation_approval_requests'
require_relative '../item'
require_relative './cancel_approval'

module MicrosoftGraphBeta
    module DeviceManagement
        module OperationApprovalRequests
            module Item
                module CancelApproval
                    class CancelApprovalPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The approvalSource property
                        @approval_source
                        ## 
                        # The justification property
                        @justification
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
                        ## Gets the approvalSource property value. The approvalSource property
                        ## @return a operation_approval_source
                        ## 
                        def approval_source
                            return @approval_source
                        end
                        ## 
                        ## Sets the approvalSource property value. The approvalSource property
                        ## @param value Value to set for the approvalSource property.
                        ## @return a void
                        ## 
                        def approval_source=(value)
                            @approval_source = value
                        end
                        ## 
                        ## Instantiates a new cancelApprovalPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a cancel_approval_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return CancelApprovalPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "approvalSource" => lambda {|n| @approval_source = n.get_enum_value(MicrosoftGraphBeta::Models::OperationApprovalSource) },
                                "justification" => lambda {|n| @justification = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the justification property value. The justification property
                        ## @return a string
                        ## 
                        def justification
                            return @justification
                        end
                        ## 
                        ## Sets the justification property value. The justification property
                        ## @param value Value to set for the justification property.
                        ## @return a void
                        ## 
                        def justification=(value)
                            @justification = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_enum_value("approvalSource", @approval_source)
                            writer.write_string_value("justification", @justification)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
