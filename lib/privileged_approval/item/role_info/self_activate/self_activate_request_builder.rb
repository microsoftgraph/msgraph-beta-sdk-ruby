require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../../models/privileged_role_assignment'
require_relative '../../../privileged_approval'
require_relative '../../item'
require_relative '../role_info'
require_relative './self_activate'

module MicrosoftGraphBeta
    module PrivilegedApproval
        module Item
            module RoleInfo
                module SelfActivate
                    ## 
                    # Provides operations to call the selfActivate method.
                    class SelfActivateRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new SelfActivateRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/privilegedApproval/{privilegedApproval%2Did}/roleInfo/selfActivate")
                        end
                        ## 
                        ## Invoke action selfActivate
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of privileged_role_assignment
                        ## 
                        def post(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_post_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedRoleAssignment.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Invoke action selfActivate
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
