require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../models/virtual_event_registration'
require_relative '../../../../../../../solutions'
require_relative '../../../../../../virtual_events'
require_relative '../../../../../events'
require_relative '../../../../item'
require_relative '../../../sessions'
require_relative '../../item'
require_relative '../registrations'
require_relative './item'

module MicrosoftGraphBeta
    module Solutions
        module VirtualEvents
            module Events
                module Item
                    module Sessions
                        module Item
                            module Registrations
                                module Item
                                    ## 
                                    # Provides operations to manage the registrations property of the microsoft.graph.virtualEventSession entity.
                                    class VirtualEventRegistrationItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        ## Instantiates a new VirtualEventRegistrationItemRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/solutions/virtualEvents/events/{virtualEvent%2Did}/sessions/{virtualEventSession%2Did}/registrations/{virtualEventRegistration%2Did}{?%24select,%24expand}")
                                        end
                                        ## 
                                        ## Get registrations from solutions
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of virtual_event_registration
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::VirtualEventRegistration.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Get registrations from solutions
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
                                        # Get registrations from solutions
                                        class VirtualEventRegistrationItemRequestBuilderGetQueryParameters
                                            
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
                end
            end
        end
    end
end
