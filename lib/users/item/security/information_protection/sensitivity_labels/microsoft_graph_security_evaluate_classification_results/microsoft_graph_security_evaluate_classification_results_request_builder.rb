require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/o_data_errors/o_data_error'
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
                            ## 
                            # Provides operations to call the evaluateClassificationResults method.
                            class MicrosoftGraphSecurityEvaluateClassificationResultsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new MicrosoftGraphSecurityEvaluateClassificationResultsRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/security/informationProtection/sensitivityLabels/microsoft.graph.security.evaluateClassificationResults")
                                end
                                ## 
                                ## Use the classification results to compute the sensitivity label that should be applied and return the set of actions that must be taken to correctly label the information. This API is useful when a label should be set automatically based on classification of the file contents, rather than labeled directly by a user or service.  To evaluate based on classification results, provide the contentInfo, which includes existing content metadata key-value pairs, and classification results. The API returns an informationProtectionAction that contains one of more of the following:
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of evaluate_classification_results_response
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Users::Item::Security::InformationProtection::SensitivityLabels::MicrosoftGraphSecurityEvaluateClassificationResults::EvaluateClassificationResultsResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Use the classification results to compute the sensitivity label that should be applied and return the set of actions that must be taken to correctly label the information. This API is useful when a label should be set automatically based on classification of the file contents, rather than labeled directly by a user or service.  To evaluate based on classification results, provide the contentInfo, which includes existing content metadata key-value pairs, and classification results. The API returns an informationProtectionAction that contains one of more of the following:
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_post_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :POST
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    return request_info
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
