require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/security_classification_result'
require_relative '../../../../../../models/security_content_info'
require_relative '../../../../../users'
require_relative '../../../../item'
require_relative '../../../security'
require_relative '../../information_protection'
require_relative '../sensitivity_labels'
require_relative './microsoft_graph_security_evaluate_classification_results'

module MicrosoftGraphBeta
    module Users
        module Item
            module Security
                module InformationProtection
                    module SensitivityLabels
                        module MicrosoftGraphSecurityEvaluateClassificationResults
                            class EvaluateClassificationResultsPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The classificationResults property
                                @classification_results
                                ## 
                                # The contentInfo property
                                @content_info
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
                                ## Gets the classificationResults property value. The classificationResults property
                                ## @return a security_classification_result
                                ## 
                                def classification_results
                                    return @classification_results
                                end
                                ## 
                                ## Sets the classificationResults property value. The classificationResults property
                                ## @param value Value to set for the classificationResults property.
                                ## @return a void
                                ## 
                                def classification_results=(value)
                                    @classification_results = value
                                end
                                ## 
                                ## Instantiates a new evaluateClassificationResultsPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Gets the contentInfo property value. The contentInfo property
                                ## @return a security_content_info
                                ## 
                                def content_info
                                    return @content_info
                                end
                                ## 
                                ## Sets the contentInfo property value. The contentInfo property
                                ## @param value Value to set for the contentInfo property.
                                ## @return a void
                                ## 
                                def content_info=(value)
                                    @content_info = value
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a evaluate_classification_results_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return EvaluateClassificationResultsPostRequestBody.new
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "classificationResults" => lambda {|n| @classification_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityClassificationResult.create_from_discriminator_value(pn) }) },
                                        "contentInfo" => lambda {|n| @content_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityContentInfo.create_from_discriminator_value(pn) }) },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_collection_of_object_values("classificationResults", @classification_results)
                                    writer.write_object_value("contentInfo", @content_info)
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
