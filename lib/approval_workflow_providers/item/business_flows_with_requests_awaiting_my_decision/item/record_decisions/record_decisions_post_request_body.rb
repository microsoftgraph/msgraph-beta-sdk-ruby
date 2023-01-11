require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../approval_workflow_providers'
require_relative '../../../item'
require_relative '../../business_flows_with_requests_awaiting_my_decision'
require_relative '../item'
require_relative './record_decisions'

module MicrosoftGraphBeta::ApprovalWorkflowProviders::Item::BusinessFlowsWithRequestsAwaitingMyDecision::Item::RecordDecisions
    class RecordDecisionsPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The justification property
        @justification
        ## 
        # The reviewResult property
        @review_result
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
        ## Instantiates a new recordDecisionsPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a record_decisions_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RecordDecisionsPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "justification" => lambda {|n| @justification = n.get_string_value() },
                "reviewResult" => lambda {|n| @review_result = n.get_string_value() },
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
        ## Gets the reviewResult property value. The reviewResult property
        ## @return a string
        ## 
        def review_result
            return @review_result
        end
        ## 
        ## Sets the reviewResult property value. The reviewResult property
        ## @param value Value to set for the reviewResult property.
        ## @return a void
        ## 
        def review_result=(value)
            @review_result = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("justification", @justification)
            writer.write_string_value("reviewResult", @review_result)
            writer.write_additional_data(@additional_data)
        end
    end
end
