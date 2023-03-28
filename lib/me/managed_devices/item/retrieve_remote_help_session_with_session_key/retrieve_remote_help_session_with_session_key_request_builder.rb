require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../../models/retrieve_remote_help_session_response'
require_relative '../../../me'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './retrieve_remote_help_session_with_session_key'

module MicrosoftGraphBeta
    module Me
        module ManagedDevices
            module Item
                module RetrieveRemoteHelpSessionWithSessionKey
                    ## 
                    # Provides operations to call the retrieveRemoteHelpSession method.
                    class RetrieveRemoteHelpSessionWithSessionKeyRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new RetrieveRemoteHelpSessionWithSessionKeyRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @param session_key Usage: sessionKey='{sessionKey}'
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter, session_key=nil)
                            super(path_parameters, request_adapter, "{+baseurl}/me/managedDevices/{managedDevice%2Did}/retrieveRemoteHelpSession(sessionKey='{sessionKey}')")
                        end
                        ## 
                        ## Invoke function retrieveRemoteHelpSession
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of retrieve_remote_help_session_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::RetrieveRemoteHelpSessionResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Invoke function retrieveRemoteHelpSession
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
                                request_info.add_request_options(request_configuration.options)
                            end
                            return request_info
                        end
                    end
                end
            end
        end
    end
end
