require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../../models/windows_updates_updatable_asset'
require_relative '../../../../models/windows_updates_updatable_asset_collection_response'
require_relative '../../../admin'
require_relative '../../windows'
require_relative '../updates'
require_relative './count/count_request_builder'
require_relative './item/updatable_asset_item_request_builder'
require_relative './microsoft_graph_windows_updates_enroll_assets/microsoft_graph_windows_updates_enroll_assets_request_builder'
require_relative './microsoft_graph_windows_updates_enroll_assets_by_id/microsoft_graph_windows_updates_enroll_assets_by_id_request_builder'
require_relative './microsoft_graph_windows_updates_unenroll_assets/microsoft_graph_windows_updates_unenroll_assets_request_builder'
require_relative './microsoft_graph_windows_updates_unenroll_assets_by_id/microsoft_graph_windows_updates_unenroll_assets_by_id_request_builder'
require_relative './updatable_assets'

module MicrosoftGraphBeta
    module Admin
        module Windows
            module Updates
                module UpdatableAssets
                    ## 
                    # Provides operations to manage the updatableAssets property of the microsoft.graph.adminWindowsUpdates entity.
                    class UpdatableAssetsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to count the resources in the collection.
                        def count()
                            return MicrosoftGraphBeta::Admin::Windows::Updates::UpdatableAssets::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the enrollAssets method.
                        def microsoft_graph_windows_updates_enroll_assets()
                            return MicrosoftGraphBeta::Admin::Windows::Updates::UpdatableAssets::MicrosoftGraphWindowsUpdatesEnrollAssets::MicrosoftGraphWindowsUpdatesEnrollAssetsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the enrollAssetsById method.
                        def microsoft_graph_windows_updates_enroll_assets_by_id()
                            return MicrosoftGraphBeta::Admin::Windows::Updates::UpdatableAssets::MicrosoftGraphWindowsUpdatesEnrollAssetsById::MicrosoftGraphWindowsUpdatesEnrollAssetsByIdRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the unenrollAssets method.
                        def microsoft_graph_windows_updates_unenroll_assets()
                            return MicrosoftGraphBeta::Admin::Windows::Updates::UpdatableAssets::MicrosoftGraphWindowsUpdatesUnenrollAssets::MicrosoftGraphWindowsUpdatesUnenrollAssetsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the unenrollAssetsById method.
                        def microsoft_graph_windows_updates_unenroll_assets_by_id()
                            return MicrosoftGraphBeta::Admin::Windows::Updates::UpdatableAssets::MicrosoftGraphWindowsUpdatesUnenrollAssetsById::MicrosoftGraphWindowsUpdatesUnenrollAssetsByIdRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the updatableAssets property of the microsoft.graph.adminWindowsUpdates entity.
                        ## @param updatable_asset_id The unique identifier of updatableAsset
                        ## @return a updatable_asset_item_request_builder
                        ## 
                        def by_updatable_asset_id(updatable_asset_id)
                            raise StandardError, 'updatable_asset_id cannot be null' if updatable_asset_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["updatableAsset%2Did"] = updatable_asset_id
                            return MicrosoftGraphBeta::Admin::Windows::Updates::UpdatableAssets::Item::UpdatableAssetItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new UpdatableAssetsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/admin/windows/updates/updatableAssets{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                        end
                        ## 
                        ## Get a list of updatableAsset objects and their properties. Listing updatable assets returns updatableAsset resources of the following derived types: azureADDevice and updatableAssetGroup. Use list azureADDevice resources or list updatableAssetGroup resources to filter and get resources of only one of the derived types. This API is available in the following national cloud deployments.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of windows_updates_updatable_asset_collection_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdatableAssetCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Create a new updatableAssetGroup object. The updatableAssetGroup resource inherits from updatableAsset. This API is available in the following national cloud deployments.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of windows_updates_updatable_asset
                        ## 
                        def post(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_post_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdatableAsset.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Get a list of updatableAsset objects and their properties. Listing updatable assets returns updatableAsset resources of the following derived types: azureADDevice and updatableAssetGroup. Use list azureADDevice resources or list updatableAssetGroup resources to filter and get resources of only one of the derived types. This API is available in the following national cloud deployments.
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
                            request_info.headers.try_add('Accept', 'application/json;q=1')
                            return request_info
                        end
                        ## 
                        ## Create a new updatableAssetGroup object. The updatableAssetGroup resource inherits from updatableAsset. This API is available in the following national cloud deployments.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_post_request_information(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :POST
                            request_info.headers.try_add('Accept', 'application/json;q=1')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a updatable_assets_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return UpdatableAssetsRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Get a list of updatableAsset objects and their properties. Listing updatable assets returns updatableAsset resources of the following derived types: azureADDevice and updatableAssetGroup. Use list azureADDevice resources or list updatableAssetGroup resources to filter and get resources of only one of the derived types. This API is available in the following national cloud deployments.
                        class UpdatableAssetsRequestBuilderGetQueryParameters
                            
                            ## 
                            # Include count of items
                            attr_accessor :count
                            ## 
                            # Expand related entities
                            attr_accessor :expand
                            ## 
                            # Filter items by property values
                            attr_accessor :filter
                            ## 
                            # Order items by property values
                            attr_accessor :orderby
                            ## 
                            # Search items by search phrases
                            attr_accessor :search
                            ## 
                            # Select properties to be returned
                            attr_accessor :select
                            ## 
                            # Skip the first n items
                            attr_accessor :skip
                            ## 
                            # Show only the first n items
                            attr_accessor :top
                            ## 
                            ## Maps the query parameters names to their encoded names for the URI template parsing.
                            ## @param original_name The original query parameter name in the class.
                            ## @return a string
                            ## 
                            def get_query_parameter(original_name)
                                raise StandardError, 'original_name cannot be null' if original_name.nil?
                                case original_name
                                    when "count"
                                        return "%24count"
                                    when "expand"
                                        return "%24expand"
                                    when "filter"
                                        return "%24filter"
                                    when "orderby"
                                        return "%24orderby"
                                    when "search"
                                        return "%24search"
                                    when "select"
                                        return "%24select"
                                    when "skip"
                                        return "%24skip"
                                    when "top"
                                        return "%24top"
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
