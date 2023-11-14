require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/android_lob_app'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../device_app_management'
require_relative '../../mobile_apps'
require_relative '../item'
require_relative './assignments/assignments_request_builder'
require_relative './categories/categories_request_builder'
require_relative './content_versions/content_versions_request_builder'
require_relative './graph_android_lob_app'
require_relative './relationships/relationships_request_builder'

module MicrosoftGraphBeta
    module DeviceAppManagement
        module MobileApps
            module Item
                module GraphAndroidLobApp
                    ## 
                    # Casts the previous resource to androidLobApp.
                    class GraphAndroidLobAppRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the assignments property of the microsoft.graph.mobileApp entity.
                        def assignments()
                            return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::GraphAndroidLobApp::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the categories property of the microsoft.graph.mobileApp entity.
                        def categories()
                            return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::GraphAndroidLobApp::Categories::CategoriesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the contentVersions property of the microsoft.graph.mobileLobApp entity.
                        def content_versions()
                            return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::GraphAndroidLobApp::ContentVersions::ContentVersionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the relationships property of the microsoft.graph.mobileApp entity.
                        def relationships()
                            return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::GraphAndroidLobApp::Relationships::RelationshipsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new GraphAndroidLobAppRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/deviceAppManagement/mobileApps/{mobileApp%2Did}/graph.androidLobApp{?%24select,%24expand}")
                        end
                        ## 
                        ## Get the item of type microsoft.graph.mobileApp as microsoft.graph.androidLobApp
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of android_lob_app
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AndroidLobApp.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Get the item of type microsoft.graph.mobileApp as microsoft.graph.androidLobApp
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
                        ## @return a graph_android_lob_app_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return GraphAndroidLobAppRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Get the item of type microsoft.graph.mobileApp as microsoft.graph.androidLobApp
                        class GraphAndroidLobAppRequestBuilderGetQueryParameters
                            
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
