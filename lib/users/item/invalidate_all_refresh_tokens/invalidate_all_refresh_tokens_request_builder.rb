require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../users'
require_relative '../item'
require_relative './invalidate_all_refresh_tokens'

module MicrosoftGraphBeta
    module Users
        module Item
            module InvalidateAllRefreshTokens
                ## 
                # Provides operations to call the invalidateAllRefreshTokens method.
                class InvalidateAllRefreshTokensRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new InvalidateAllRefreshTokensRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/invalidateAllRefreshTokens")
                    end
                    ## 
                    ## Invalidates all of the user's refresh tokens issued to applications (as well as session cookies in a user's browser), by resetting the refreshTokensValidFromDateTime user property to the current date-time. Typically, this operation is performed (by the user or an administrator) if the user has a lost or stolen device.  This operation would prevent access to any of the organization's data accessed through applications on the device without the user first being required to sign in again. In fact, this operation would force the user to sign in again for all applications that they have previously consented to, independent of device. For developers, if the application attempts to redeem a delegated access token for this user by using an invalidated refresh token, the application will get an error. If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint, which will force the user to sign in.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of invalidate_all_refresh_tokens_response
                    ## 
                    def post(request_configuration=nil)
                        request_info = self.to_post_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Users::Item::InvalidateAllRefreshTokens::InvalidateAllRefreshTokensResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Invalidates all of the user's refresh tokens issued to applications (as well as session cookies in a user's browser), by resetting the refreshTokensValidFromDateTime user property to the current date-time. Typically, this operation is performed (by the user or an administrator) if the user has a lost or stolen device.  This operation would prevent access to any of the organization's data accessed through applications on the device without the user first being required to sign in again. In fact, this operation would force the user to sign in again for all applications that they have previously consented to, independent of device. For developers, if the application attempts to redeem a delegated access token for this user by using an invalidated refresh token, the application will get an error. If this happens, the application will need to acquire a new refresh token by making a request to the authorize endpoint, which will force the user to sign in.
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
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a invalidate_all_refresh_tokens_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return InvalidateAllRefreshTokensRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
