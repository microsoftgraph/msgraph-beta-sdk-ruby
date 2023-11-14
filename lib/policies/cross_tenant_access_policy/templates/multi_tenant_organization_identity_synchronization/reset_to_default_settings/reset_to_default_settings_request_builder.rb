require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../policies'
require_relative '../../../cross_tenant_access_policy'
require_relative '../../templates'
require_relative '../multi_tenant_organization_identity_synchronization'
require_relative './reset_to_default_settings'

module MicrosoftGraphBeta
    module Policies
        module CrossTenantAccessPolicy
            module Templates
                module MultiTenantOrganizationIdentitySynchronization
                    module ResetToDefaultSettings
                        ## 
                        # Provides operations to call the resetToDefaultSettings method.
                        class ResetToDefaultSettingsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new ResetToDefaultSettingsRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationIdentitySynchronization/resetToDefaultSettings")
                            end
                            ## 
                            ## Reset the cross-tenant access policy template with user synchronization settings for a multitenant organization to the default values. In its reset state, the template has no impact on user synchronization settings, other than that unconfigured user synchronization settings are created if needed, for every multitenant organization tenant. This API is available in the following national cloud deployments.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of void
                            ## 
                            def post(request_configuration=nil)
                                request_info = self.to_post_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, nil, error_mapping)
                            end
                            ## 
                            ## Reset the cross-tenant access policy template with user synchronization settings for a multitenant organization to the default values. In its reset state, the template has no impact on user synchronization settings, other than that unconfigured user synchronization settings are created if needed, for every multitenant organization tenant. This API is available in the following national cloud deployments.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_post_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :POST
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a reset_to_default_settings_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return ResetToDefaultSettingsRequestBuilder.new(raw_url, @request_adapter)
                            end
                        end
                    end
                end
            end
        end
    end
end
