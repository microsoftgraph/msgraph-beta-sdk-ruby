require 'microsoft_kiota_abstractions'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../../models/organization_settings'
require_relative '../../organization'
require_relative '../item'
require_relative './contact_insights/contact_insights_request_builder'
require_relative './item_insights/item_insights_request_builder'
require_relative './microsoft_application_data_access/microsoft_application_data_access_request_builder'
require_relative './people_insights/people_insights_request_builder'
require_relative './profile_card_properties/item/profile_card_property_item_request_builder'
require_relative './profile_card_properties/profile_card_properties_request_builder'
require_relative './settings'

module MicrosoftGraphBeta::Organization::Item::Settings
    ## 
    # Provides operations to manage the settings property of the microsoft.graph.organization entity.
    class SettingsRequestBuilder
        
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
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the peopleInsights property of the microsoft.graph.organizationSettings entity.
        def people_insights()
            return MicrosoftGraphBeta::Organization::Item::Settings::PeopleInsights::PeopleInsightsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the profileCardProperties property of the microsoft.graph.organizationSettings entity.
        def profile_card_properties()
            return MicrosoftGraphBeta::Organization::Item::Settings::ProfileCardProperties::ProfileCardPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new SettingsRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/organization/{organization%2Did}/settings{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property settings for organization
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_delete_request_information(request_configuration=nil)
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
        ## Retrieve the properties and relationships of an organizationSettings object, including **profileCardProperties**. This operation does not return insightsSettings. Depending on the type of insights, you can get their settings by using list itemInsights or list peopleInsights. This operation does not return microsoftApplicationDataAccessSettings. To get microsoftApplicationDataAccessSettings, use list microsoftApplicationDataAccessSettings.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_get_request_information(request_configuration=nil)
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
        ## Update the navigation property settings in organization
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_patch_request_information(body, request_configuration=nil)
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
        ## Delete navigation property settings for organization
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.create_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Retrieve the properties and relationships of an organizationSettings object, including **profileCardProperties**. This operation does not return insightsSettings. Depending on the type of insights, you can get their settings by using list itemInsights or list peopleInsights. This operation does not return microsoftApplicationDataAccessSettings. To get microsoftApplicationDataAccessSettings, use list microsoftApplicationDataAccessSettings.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of organization_settings
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OrganizationSettings.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property settings in organization
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of organization_settings
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.create_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OrganizationSettings.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the profileCardProperties property of the microsoft.graph.organizationSettings entity.
        ## @param id Unique identifier of the item
        ## @return a profile_card_property_item_request_builder
        ## 
        def profile_card_properties_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["profileCardProperty%2Did"] = id
            return MicrosoftGraphBeta::Organization::Item::Settings::ProfileCardProperties::Item::ProfileCardPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class SettingsRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Retrieve the properties and relationships of an organizationSettings object, including **profileCardProperties**. This operation does not return insightsSettings. Depending on the type of insights, you can get their settings by using list itemInsights or list peopleInsights. This operation does not return microsoftApplicationDataAccessSettings. To get microsoftApplicationDataAccessSettings, use list microsoftApplicationDataAccessSettings.
        class SettingsRequestBuilderGetQueryParameters
            
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
        class SettingsRequestBuilderGetRequestConfiguration
            
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
        class SettingsRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
