require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../models/string_key_string_value_pair'
require_relative '../../../../../service_principals'
require_relative '../../../../item'
require_relative '../../../synchronization'
require_relative '../../jobs'
require_relative '../item'
require_relative './provision_on_demand'

module MicrosoftGraphBeta
    module ServicePrincipals
        module Item
            module Synchronization
                module Jobs
                    module Item
                        module ProvisionOnDemand
                            ## 
                            # Provides operations to call the provisionOnDemand method.
                            class ProvisionOnDemandRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new ProvisionOnDemandRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}/synchronization/jobs/{synchronizationJob%2Did}/provisionOnDemand")
                                end
                                ## 
                                ## Select a user and provision the account on-demand. The rate limit for this API is 5 requests per 10 seconds. No user or group will be provisioned on-demand that would not have been provisioned through the regular provisioning cycles.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of string_key_string_value_pair
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::StringKeyStringValuePair.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Select a user and provision the account on-demand. The rate limit for this API is 5 requests per 10 seconds. No user or group will be provisioned on-demand that would not have been provisioned through the regular provisioning cycles.
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
