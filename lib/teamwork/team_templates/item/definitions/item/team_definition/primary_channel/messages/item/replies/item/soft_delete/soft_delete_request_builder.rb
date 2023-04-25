require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../teamwork'
require_relative '../../../../../../../../../../team_templates'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../definitions'
require_relative '../../../../../../../item'
require_relative '../../../../../../team_definition'
require_relative '../../../../../primary_channel'
require_relative '../../../../messages'
require_relative '../../../item'
require_relative '../../replies'
require_relative '../item'
require_relative './soft_delete'

module MicrosoftGraphBeta
    module Teamwork
        module TeamTemplates
            module Item
                module Definitions
                    module Item
                        module TeamDefinition
                            module PrimaryChannel
                                module Messages
                                    module Item
                                        module Replies
                                            module Item
                                                module SoftDelete
                                                    ## 
                                                    # Provides operations to call the softDelete method.
                                                    class SoftDeleteRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                        
                                                        ## 
                                                        ## Instantiates a new SoftDeleteRequestBuilder and sets the default values.
                                                        ## @param path_parameters Path parameters for the request
                                                        ## @param request_adapter The request adapter to use to execute the requests.
                                                        ## @return a void
                                                        ## 
                                                        def initialize(path_parameters, request_adapter)
                                                            super(path_parameters, request_adapter, "{+baseurl}/teamwork/teamTemplates/{teamTemplate%2Did}/definitions/{teamTemplateDefinition%2Did}/teamDefinition/primaryChannel/messages/{chatMessage%2Did}/replies/{chatMessage%2Did1}/softDelete")
                                                        end
                                                        ## 
                                                        ## Invoke action softDelete
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of void
                                                        ## 
                                                        def post(request_configuration=nil)
                                                            request_info = self.to_post_request_information(
                                                                request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, nil, error_mapping)
                                                        end
                                                        ## 
                                                        ## Invoke action softDelete
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a request_information
                                                        ## 
                                                        def to_post_request_information(request_configuration=nil)
                                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                            request_info.url_template = @url_template
                                                            request_info.path_parameters = @path_parameters
                                                            request_info.http_method = :POST
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
                            end
                        end
                    end
                end
            end
        end
    end
end
