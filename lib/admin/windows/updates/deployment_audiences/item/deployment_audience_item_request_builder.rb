require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../models/windows_updates/deployment_audience'
require_relative '../../../../admin'
require_relative '../../../windows'
require_relative '../../updates'
require_relative '../deployment_audiences'
require_relative './exclusions/exclusions_request_builder'
require_relative './exclusions/item/updatable_asset_item_request_builder'
require_relative './item'
require_relative './members/item/updatable_asset_item_request_builder'
require_relative './members/members_request_builder'
require_relative './windows_updates_update_audience/windows_updates_update_audience_request_builder'
require_relative './windows_updates_update_audience_by_id/windows_updates_update_audience_by_id_request_builder'

module MicrosoftGraphBeta
    module Admin
        module Windows
            module Updates
                module DeploymentAudiences
                    module Item
                        ## 
                        # Provides operations to manage the deploymentAudiences property of the microsoft.graph.adminWindowsUpdates entity.
                        class DeploymentAudienceItemRequestBuilder
                            
                            ## 
                            # Provides operations to manage the exclusions property of the microsoft.graph.windowsUpdates.deploymentAudience entity.
                            def exclusions()
                                return MicrosoftGraphBeta::Admin::Windows::Updates::DeploymentAudiences::Item::Exclusions::ExclusionsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the members property of the microsoft.graph.windowsUpdates.deploymentAudience entity.
                            def members()
                                return MicrosoftGraphBeta::Admin::Windows::Updates::DeploymentAudiences::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                            end
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
                            # Provides operations to call the updateAudience method.
                            def windows_updates_update_audience()
                                return MicrosoftGraphBeta::Admin::Windows::Updates::DeploymentAudiences::Item::WindowsUpdatesUpdateAudience::WindowsUpdatesUpdateAudienceRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the updateAudienceById method.
                            def windows_updates_update_audience_by_id()
                                return MicrosoftGraphBeta::Admin::Windows::Updates::DeploymentAudiences::Item::WindowsUpdatesUpdateAudienceById::WindowsUpdatesUpdateAudienceByIdRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new DeploymentAudienceItemRequestBuilder and sets the default values.
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/admin/windows/updates/deploymentAudiences/{deploymentAudience%2Did}{?%24select,%24expand}"
                                @request_adapter = request_adapter
                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                            end
                            ## 
                            ## Delete navigation property deploymentAudiences for admin
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of void
                            ## 
                            def delete(request_configuration=nil)
                                request_info = self.to_delete_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, nil, error_mapping)
                            end
                            ## 
                            ## Provides operations to manage the exclusions property of the microsoft.graph.windowsUpdates.deploymentAudience entity.
                            ## @param id Unique identifier of the item
                            ## @return a updatable_asset_item_request_builder
                            ## 
                            def exclusions_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["updatableAsset%2Did"] = id
                                return MicrosoftGraphBeta::Admin::Windows::Updates::DeploymentAudiences::Item::Exclusions::Item::UpdatableAssetItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## The set of updatableAsset resources to which a deployment can apply.
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of deployment_audience
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentAudience.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Provides operations to manage the members property of the microsoft.graph.windowsUpdates.deploymentAudience entity.
                            ## @param id Unique identifier of the item
                            ## @return a updatable_asset_item_request_builder
                            ## 
                            def members_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["updatableAsset%2Did"] = id
                                return MicrosoftGraphBeta::Admin::Windows::Updates::DeploymentAudiences::Item::Members::Item::UpdatableAssetItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Update the navigation property deploymentAudiences in admin
                            ## @param body The request body
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of deployment_audience
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentAudience.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Delete navigation property deploymentAudiences for admin
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_delete_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :DELETE
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                return request_info
                            end
                            ## 
                            ## The set of updatableAsset resources to which a deployment can apply.
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                            ## Update the navigation property deploymentAudiences in admin
                            ## @param body The request body
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_patch_request_information(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :PATCH
                                request_info.headers.add('Accept', 'application/json')
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                return request_info
                            end

                            ## 
                            # Configuration for the request such as headers, query parameters, and middleware options.
                            class DeploymentAudienceItemRequestBuilderDeleteRequestConfiguration
                                
                                ## 
                                # Request headers
                                attr_accessor :headers
                                ## 
                                # Request options
                                attr_accessor :options
                            end

                            ## 
                            # The set of updatableAsset resources to which a deployment can apply.
                            class DeploymentAudienceItemRequestBuilderGetQueryParameters
                                
                                ## 
                                # Expand related entities
                                attr_accessor :expand
                                ## 
                                # Select properties to be returned
                                attr_accessor :select
                                ## 
                                ## Maps the query parameters names to their encoded names for the URI template parsing.
                                ## @param originalName The original query parameter name in the class.
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

                            ## 
                            # Configuration for the request such as headers, query parameters, and middleware options.
                            class DeploymentAudienceItemRequestBuilderGetRequestConfiguration
                                
                                ## 
                                # Request headers
                                attr_accessor :headers
                                ## 
                                # Request options
                                attr_accessor :options
                                ## 
                                # Request query parameters
                                attr_accessor :query_parameters
                            end

                            ## 
                            # Configuration for the request such as headers, query parameters, and middleware options.
                            class DeploymentAudienceItemRequestBuilderPatchRequestConfiguration
                                
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
