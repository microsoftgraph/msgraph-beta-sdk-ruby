require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../models/directory_definition'
require_relative '../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../service_principals'
require_relative '../../../../../../../item'
require_relative '../../../../../../synchronization'
require_relative '../../../../../templates'
require_relative '../../../../item'
require_relative '../../../schema'
require_relative '../../directories'
require_relative '../item'
require_relative './discover'

module MicrosoftGraphBeta
    module ServicePrincipals
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
                                        class DiscoverRequestBuilder
                                            
                                            ## 
                                            # Path parameters for the request
                                            @path_parameters
                                            ## 
                                            # The request adapter to use to execute the requests.
                                            @request_adapter
                                            ## 
                                            # Url template to use to build the URL for the current request builder
                                            @url_template
                                            ## 
                                            ## Instantiates a new DiscoverRequestBuilder and sets the default values.
                                            ## @param pathParameters Path parameters for the request
                                            ## @param requestAdapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                @url_template = "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}/synchronization/templates/{synchronizationTemplate%2Did}/schema/directories/{directoryDefinition%2Did}/discover"
                                                @request_adapter = request_adapter
                                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                                            end
                                            ## 
                                            ## Discover the latest schema definition for provisioning to an application. 
                                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of directory_definition
                                            ## 
                                            def post(request_configuration=nil)
                                                request_info = self.to_post_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DirectoryDefinition.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Discover the latest schema definition for provisioning to an application. 
                                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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

                                            ## 
                                            # Configuration for the request such as headers, query parameters, and middleware options.
                                            class DiscoverRequestBuilderPostRequestConfiguration
                                                
                                                ## 
                                                # Request headers
                                                attr_accessor :headers
                                                ## 
                                                # Request options
                                                attr_accessor :options
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
