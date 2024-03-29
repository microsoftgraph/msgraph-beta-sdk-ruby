require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/o_data_errors_o_data_error'
require_relative '../models/security_threat_submission_root'
require_relative './email_threats/email_threats_request_builder'
require_relative './email_threat_submission_policies/email_threat_submission_policies_request_builder'
require_relative './file_threats/file_threats_request_builder'
require_relative './threat_submission'
require_relative './url_threats/url_threats_request_builder'

module MicrosoftGraphBeta
    module ThreatSubmission
        ## 
        # Provides operations to manage the threatSubmissionRoot singleton.
        class ThreatSubmissionRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the emailThreats property of the microsoft.graph.security.threatSubmissionRoot entity.
            def email_threats()
                return MicrosoftGraphBeta::ThreatSubmission::EmailThreats::EmailThreatsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the emailThreatSubmissionPolicies property of the microsoft.graph.security.threatSubmissionRoot entity.
            def email_threat_submission_policies()
                return MicrosoftGraphBeta::ThreatSubmission::EmailThreatSubmissionPolicies::EmailThreatSubmissionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the fileThreats property of the microsoft.graph.security.threatSubmissionRoot entity.
            def file_threats()
                return MicrosoftGraphBeta::ThreatSubmission::FileThreats::FileThreatsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the urlThreats property of the microsoft.graph.security.threatSubmissionRoot entity.
            def url_threats()
                return MicrosoftGraphBeta::ThreatSubmission::UrlThreats::UrlThreatsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new ThreatSubmissionRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/threatSubmission{?%24select,%24expand}")
            end
            ## 
            ## Get threatSubmission
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of security_threat_submission_root
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SecurityThreatSubmissionRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update threatSubmission
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of security_threat_submission_root
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SecurityThreatSubmissionRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get threatSubmission
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
            ## Update threatSubmission
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
            # Get threatSubmission
            class ThreatSubmissionRequestBuilderGetQueryParameters
                
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
