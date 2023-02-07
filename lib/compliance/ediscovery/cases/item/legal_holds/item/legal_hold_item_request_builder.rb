require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/ediscovery/legal_hold'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../compliance'
require_relative '../../../../ediscovery'
require_relative '../../../cases'
require_relative '../../item'
require_relative '../legal_holds'
require_relative './item'
require_relative './site_sources/item/site_source_item_request_builder'
require_relative './site_sources/site_sources_request_builder'
require_relative './unified_group_sources/item/unified_group_source_item_request_builder'
require_relative './unified_group_sources/unified_group_sources_request_builder'
require_relative './user_sources/item/user_source_item_request_builder'
require_relative './user_sources/user_sources_request_builder'

module MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item
    ## 
    # Provides operations to manage the legalHolds property of the microsoft.graph.ediscovery.case entity.
    class LegalHoldItemRequestBuilder
        
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the siteSources property of the microsoft.graph.ediscovery.legalHold entity.
        def site_sources()
            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::SiteSources::SiteSourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the unifiedGroupSources property of the microsoft.graph.ediscovery.legalHold entity.
        def unified_group_sources()
            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::UnifiedGroupSources::UnifiedGroupSourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the userSources property of the microsoft.graph.ediscovery.legalHold entity.
        def user_sources()
            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::UserSources::UserSourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new LegalHoldItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/compliance/ediscovery/cases/{case%2Did}/legalHolds/{legalHold%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property legalHolds for compliance
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
        ## Returns a list of case legalHold objects for this case.  Nullable.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of legal_hold
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::LegalHold.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property legalHolds in compliance
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of legal_hold
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::LegalHold.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the siteSources property of the microsoft.graph.ediscovery.legalHold entity.
        ## @param id Unique identifier of the item
        ## @return a site_source_item_request_builder
        ## 
        def site_sources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["siteSource%2Did"] = id
            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::SiteSources::Item::SiteSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property legalHolds for compliance
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
        ## Returns a list of case legalHold objects for this case.  Nullable.
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
        ## Update the navigation property legalHolds in compliance
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
        ## Provides operations to manage the unifiedGroupSources property of the microsoft.graph.ediscovery.legalHold entity.
        ## @param id Unique identifier of the item
        ## @return a unified_group_source_item_request_builder
        ## 
        def unified_group_sources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["unifiedGroupSource%2Did"] = id
            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::UnifiedGroupSources::Item::UnifiedGroupSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the userSources property of the microsoft.graph.ediscovery.legalHold entity.
        ## @param id Unique identifier of the item
        ## @return a user_source_item_request_builder
        ## 
        def user_sources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["userSource%2Did"] = id
            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::UserSources::Item::UserSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class LegalHoldItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Returns a list of case legalHold objects for this case.  Nullable.
        class LegalHoldItemRequestBuilderGetQueryParameters
            
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
        class LegalHoldItemRequestBuilderGetRequestConfiguration
            
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
        class LegalHoldItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
