require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/information_protection'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../sites'
require_relative '../item'
require_relative './bitlocker/bitlocker_request_builder'
require_relative './data_loss_prevention_policies/data_loss_prevention_policies_request_builder'
require_relative './data_loss_prevention_policies/item/data_loss_prevention_policy_item_request_builder'
require_relative './decrypt_buffer/decrypt_buffer_request_builder'
require_relative './encrypt_buffer/encrypt_buffer_request_builder'
require_relative './information_protection'
require_relative './policy/policy_request_builder'
require_relative './sensitivity_labels/item/sensitivity_label_item_request_builder'
require_relative './sensitivity_labels/sensitivity_labels_request_builder'
require_relative './sensitivity_policy_settings/sensitivity_policy_settings_request_builder'
require_relative './sign_digest/sign_digest_request_builder'
require_relative './threat_assessment_requests/item/threat_assessment_request_item_request_builder'
require_relative './threat_assessment_requests/threat_assessment_requests_request_builder'
require_relative './verify_signature/verify_signature_request_builder'

module MicrosoftGraphBeta
    module Sites
        module Item
            module InformationProtection
                ## 
                # Provides operations to manage the informationProtection property of the microsoft.graph.site entity.
                class InformationProtectionRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the bitlocker property of the microsoft.graph.informationProtection entity.
                    def bitlocker()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::Bitlocker::BitlockerRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the dataLossPreventionPolicies property of the microsoft.graph.informationProtection entity.
                    def data_loss_prevention_policies()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::DataLossPreventionPolicies::DataLossPreventionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the decryptBuffer method.
                    def decrypt_buffer()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::DecryptBuffer::DecryptBufferRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the encryptBuffer method.
                    def encrypt_buffer()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::EncryptBuffer::EncryptBufferRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the policy property of the microsoft.graph.informationProtection entity.
                    def policy()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::Policy::PolicyRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the sensitivityLabels property of the microsoft.graph.informationProtection entity.
                    def sensitivity_labels()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::SensitivityLabels::SensitivityLabelsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the sensitivityPolicySettings property of the microsoft.graph.informationProtection entity.
                    def sensitivity_policy_settings()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::SensitivityPolicySettings::SensitivityPolicySettingsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the signDigest method.
                    def sign_digest()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::SignDigest::SignDigestRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the threatAssessmentRequests property of the microsoft.graph.informationProtection entity.
                    def threat_assessment_requests()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::ThreatAssessmentRequests::ThreatAssessmentRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the verifySignature method.
                    def verify_signature()
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::VerifySignature::VerifySignatureRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new InformationProtectionRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}/informationProtection{?%24select,%24expand}")
                    end
                    ## 
                    ## Provides operations to manage the dataLossPreventionPolicies property of the microsoft.graph.informationProtection entity.
                    ## @param id Unique identifier of the item
                    ## @return a data_loss_prevention_policy_item_request_builder
                    ## 
                    def data_loss_prevention_policies_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["dataLossPreventionPolicy%2Did"] = id
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::DataLossPreventionPolicies::Item::DataLossPreventionPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property informationProtection for sites
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Get informationProtection from sites
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of information_protection
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::InformationProtection.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property informationProtection in sites
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of information_protection
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::InformationProtection.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the sensitivityLabels property of the microsoft.graph.informationProtection entity.
                    ## @param id Unique identifier of the item
                    ## @return a sensitivity_label_item_request_builder
                    ## 
                    def sensitivity_labels_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["sensitivityLabel%2Did"] = id
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::SensitivityLabels::Item::SensitivityLabelItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the threatAssessmentRequests property of the microsoft.graph.informationProtection entity.
                    ## @param id Unique identifier of the item
                    ## @return a threat_assessment_request_item_request_builder
                    ## 
                    def threat_assessment_requests_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["threatAssessmentRequest%2Did"] = id
                        return MicrosoftGraphBeta::Sites::Item::InformationProtection::ThreatAssessmentRequests::Item::ThreatAssessmentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property informationProtection for sites
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        return request_info
                    end
                    ## 
                    ## Get informationProtection from sites
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.add('Accept', 'application/json')
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                            request_info.add_request_options(request_configuration.options)
                        end
                        return request_info
                    end
                    ## 
                    ## Update the navigation property informationProtection in sites
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_patch_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.add('Accept', 'application/json')
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                        return request_info
                    end

                    ## 
                    # Get informationProtection from sites
                    class InformationProtectionRequestBuilderGetQueryParameters
                        
                        ## 
                        # Expand related entities
                        attr_accessor :expand
                        ## 
                        # Select properties to be returned
                        attr_accessor :select
                        ## 
                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                        ## @param original_name The original query parameter name in the class.
                        ## @return a string
                        ## 
                        def get_query_parameter(original_name)
                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                            case original_name
                                when "expand"
                                    return "%24expand"
                                when "select"
                                    return "%24select"
                                else
                                    return original_name
                            end
                        end
                    end
                end
            end
        end
    end
end
