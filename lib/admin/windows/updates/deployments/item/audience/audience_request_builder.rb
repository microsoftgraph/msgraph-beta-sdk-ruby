require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../models/windows_updates_deployment_audience'
require_relative '../../../../../admin'
require_relative '../../../../windows'
require_relative '../../../updates'
require_relative '../../deployments'
require_relative '../item'
require_relative './applicable_content/applicable_content_request_builder'
require_relative './audience'
require_relative './exclusions/exclusions_request_builder'
require_relative './members/members_request_builder'
require_relative './microsoft_graph_windows_updates_update_audience/microsoft_graph_windows_updates_update_audience_request_builder'
require_relative './microsoft_graph_windows_updates_update_audience_by_id/microsoft_graph_windows_updates_update_audience_by_id_request_builder'

module MicrosoftGraphBeta
    module Admin
        module Windows
            module Updates
                module Deployments
                    module Item
                        module Audience
                            ## 
                            # Provides operations to manage the audience property of the microsoft.graph.windowsUpdates.deployment entity.
                            class AudienceRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the applicableContent property of the microsoft.graph.windowsUpdates.deploymentAudience entity.
                                def applicable_content()
                                    return MicrosoftGraphBeta::Admin::Windows::Updates::Deployments::Item::Audience::ApplicableContent::ApplicableContentRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the exclusions property of the microsoft.graph.windowsUpdates.deploymentAudience entity.
                                def exclusions()
                                    return MicrosoftGraphBeta::Admin::Windows::Updates::Deployments::Item::Audience::Exclusions::ExclusionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the members property of the microsoft.graph.windowsUpdates.deploymentAudience entity.
                                def members()
                                    return MicrosoftGraphBeta::Admin::Windows::Updates::Deployments::Item::Audience::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the updateAudience method.
                                def microsoft_graph_windows_updates_update_audience()
                                    return MicrosoftGraphBeta::Admin::Windows::Updates::Deployments::Item::Audience::MicrosoftGraphWindowsUpdatesUpdateAudience::MicrosoftGraphWindowsUpdatesUpdateAudienceRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the updateAudienceById method.
                                def microsoft_graph_windows_updates_update_audience_by_id()
                                    return MicrosoftGraphBeta::Admin::Windows::Updates::Deployments::Item::Audience::MicrosoftGraphWindowsUpdatesUpdateAudienceById::MicrosoftGraphWindowsUpdatesUpdateAudienceByIdRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new AudienceRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/admin/windows/updates/deployments/{deployment%2Did}/audience{?%24expand,%24select}")
                                end
                                ## 
                                ## Delete navigation property audience for admin
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of void
                                ## 
                                def delete(request_configuration=nil)
                                    request_info = self.to_delete_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                end
                                ## 
                                ## Specifies the audience to which content is deployed.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of windows_updates_deployment_audience
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesDeploymentAudience.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the navigation property audience in admin
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of windows_updates_deployment_audience
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesDeploymentAudience.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property audience for admin
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_delete_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :DELETE
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Specifies the audience to which content is deployed.
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
                                ## Update the navigation property audience in admin
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_patch_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :PATCH
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a audience_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return AudienceRequestBuilder.new(raw_url, @request_adapter)
                                end

                                ## 
                                # Specifies the audience to which content is deployed.
                                class AudienceRequestBuilderGetQueryParameters
                                    
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
