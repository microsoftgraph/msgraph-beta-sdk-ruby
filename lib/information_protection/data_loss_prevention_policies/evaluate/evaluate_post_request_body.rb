require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/dlp_evaluation_input'
require_relative '../../../models/dlp_notification'
require_relative '../../information_protection'
require_relative '../data_loss_prevention_policies'
require_relative './evaluate'

module MicrosoftGraphBeta
    module InformationProtection
        module DataLossPreventionPolicies
            module Evaluate
                class EvaluatePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The evaluationInput property
                    @evaluation_input
                    ## 
                    # The notificationInfo property
                    @notification_info
                    ## 
                    # The target property
                    @target
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
                    ## Instantiates a new EvaluatePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a evaluate_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return EvaluatePostRequestBody.new
                    end
                    ## 
                    ## Gets the evaluationInput property value. The evaluationInput property
                    ## @return a dlp_evaluation_input
                    ## 
                    def evaluation_input
                        return @evaluation_input
                    end
                    ## 
                    ## Sets the evaluationInput property value. The evaluationInput property
                    ## @param value Value to set for the evaluationInput property.
                    ## @return a void
                    ## 
                    def evaluation_input=(value)
                        @evaluation_input = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "evaluationInput" => lambda {|n| @evaluation_input = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DlpEvaluationInput.create_from_discriminator_value(pn) }) },
                            "notificationInfo" => lambda {|n| @notification_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DlpNotification.create_from_discriminator_value(pn) }) },
                            "target" => lambda {|n| @target = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the notificationInfo property value. The notificationInfo property
                    ## @return a dlp_notification
                    ## 
                    def notification_info
                        return @notification_info
                    end
                    ## 
                    ## Sets the notificationInfo property value. The notificationInfo property
                    ## @param value Value to set for the notificationInfo property.
                    ## @return a void
                    ## 
                    def notification_info=(value)
                        @notification_info = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("evaluationInput", @evaluation_input)
                        writer.write_object_value("notificationInfo", @notification_info)
                        writer.write_string_value("target", @target)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the target property value. The target property
                    ## @return a string
                    ## 
                    def target
                        return @target
                    end
                    ## 
                    ## Sets the target property value. The target property
                    ## @param value Value to set for the target property.
                    ## @return a void
                    ## 
                    def target=(value)
                        @target = value
                    end
                end
            end
        end
    end
end
