require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../models/directory_definition'
require_relative '../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../applications'
require_relative '../../../../../../../item'
require_relative '../../../../../../synchronization'
require_relative '../../../../../templates'
require_relative '../../../../item'
require_relative '../../../schema'
require_relative '../../directories'
require_relative '../item'
require_relative './discover'

module MicrosoftGraphBeta
    module Applications
        module Item
            module Synchronization
                module Templates
                    module Item
                        module Schema
                            module Directories
                                module Item
                                    module Discover
                                        ## 
                                        # Provides operations to call the discover method.
                                        class DiscoverRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            ## Instantiates a new DiscoverRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/applications/{application%2Did}/synchronization/templates/{synchronizationTemplate%2Did}/schema/directories/{directoryDefinition%2Did}/discover")
                                            end
                                            ## 
                                            ## Discover the latest schema definition for provisioning to an application. 
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of directory_definition
                                            ## 
                                            def post(request_configuration=nil)
                                                request_info = self.to_post_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DirectoryDefinition.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Discover the latest schema definition for provisioning to an application. 
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a request_information
                                            ## 
                                            def to_post_request_information(request_configuration=nil)
                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                request_info.url_template = @url_template
                                                request_info.path_parameters = @path_parameters
                                                request_info.http_method = :POST
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
                end
            end
        end
    end
end
