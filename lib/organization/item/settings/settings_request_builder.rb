require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/organization_settings'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../organization'
require_relative '../item'
require_relative './contact_insights/contact_insights_request_builder'
require_relative './item_insights/item_insights_request_builder'
require_relative './microsoft_application_data_access/microsoft_application_data_access_request_builder'
require_relative './people_insights/people_insights_request_builder'
require_relative './settings'

module MicrosoftGraphBeta
    module Organization
        module Item
            module Settings
                ## 
                # Provides operations to manage the settings property of the microsoft.graph.organization entity.
                class SettingsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the contactInsights property of the microsoft.graph.organizationSettings entity.
                    def contact_insights()
                        return MicrosoftGraphBeta::Organization::Item::Settings::ContactInsights::ContactInsightsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the itemInsights property of the microsoft.graph.organizationSettings entity.
                    def item_insights()
                        return MicrosoftGraphBeta::Organization::Item::Settings::ItemInsights::ItemInsightsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the microsoftApplicationDataAccess property of the microsoft.graph.organizationSettings entity.
                    def microsoft_application_data_access()
                        return MicrosoftGraphBeta::Organization::Item::Settings::MicrosoftApplicationDataAccess::MicrosoftApplicationDataAccessRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the peopleInsights property of the microsoft.graph.organizationSettings entity.
                    def people_insights()
                        return MicrosoftGraphBeta::Organization::Item::Settings::PeopleInsights::PeopleInsightsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new SettingsRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/organization/{organization%2Did}/settings{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete navigation property settings for organization
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Retrieve the properties and relationships of organizationSettings object. Nullable.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of organization_settings
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OrganizationSettings.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property settings in organization
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of organization_settings
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OrganizationSettings.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property settings for organization
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
                    ## Retrieve the properties and relationships of organizationSettings object. Nullable.
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
                    ## Update the navigation property settings in organization
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
                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a settings_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return SettingsRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Retrieve the properties and relationships of organizationSettings object. Nullable.
                    class SettingsRequestBuilderGetQueryParameters
                        
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
