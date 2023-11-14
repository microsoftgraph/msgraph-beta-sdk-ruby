require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/directory_object'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../devices'
require_relative '../../item'
require_relative '../transitive_member_of'
require_relative './graph_administrative_unit/graph_administrative_unit_request_builder'
require_relative './graph_group/graph_group_request_builder'
require_relative './item'

module MicrosoftGraphBeta
    module Devices
        module Item
            module TransitiveMemberOf
                module Item
                    ## 
                    # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.device entity.
                    class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Casts the previous resource to administrativeUnit.
                        def graph_administrative_unit()
                            return MicrosoftGraphBeta::Devices::Item::TransitiveMemberOf::Item::GraphAdministrativeUnit::GraphAdministrativeUnitRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Casts the previous resource to group.
                        def graph_group()
                            return MicrosoftGraphBeta::Devices::Item::TransitiveMemberOf::Item::GraphGroup::GraphGroupRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/devices/{device%2Did}/transitiveMemberOf/{directoryObject%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Groups and administrative units that this device is a member of. This operation is transitive. Supports $expand.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of directory_object
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Groups and administrative units that this device is a member of. This operation is transitive. Supports $expand.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a directory_object_item_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return DirectoryObjectItemRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Groups and administrative units that this device is a member of. This operation is transitive. Supports $expand.
                        class DirectoryObjectItemRequestBuilderGetQueryParameters
                            
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
