require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/ediscovery/case_escaped'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../compliance'
require_relative '../../ediscovery'
require_relative '../cases'
require_relative './custodians/custodians_request_builder'
require_relative './custodians/item/custodian_item_request_builder'
require_relative './ediscovery_close/ediscovery_close_request_builder'
require_relative './ediscovery_reopen/ediscovery_reopen_request_builder'
require_relative './item'
require_relative './legal_holds/item/legal_hold_item_request_builder'
require_relative './legal_holds/legal_holds_request_builder'
require_relative './noncustodial_data_sources/item/noncustodial_data_source_item_request_builder'
require_relative './noncustodial_data_sources/noncustodial_data_sources_request_builder'
require_relative './operations/item/case_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './review_sets/item/review_set_item_request_builder'
require_relative './review_sets/review_sets_request_builder'
require_relative './settings/settings_request_builder'
require_relative './source_collections/item/source_collection_item_request_builder'
require_relative './source_collections/source_collections_request_builder'
require_relative './tags/item/tag_item_request_builder'
require_relative './tags/tags_request_builder'

module MicrosoftGraphBeta
    module Compliance
        module Ediscovery
            module Cases
                module Item
                    ## 
                    # Provides operations to manage the cases property of the microsoft.graph.ediscovery.ediscoveryroot entity.
                    class CaseItemRequestBuilder
                        
                        ## 
                        # Provides operations to manage the custodians property of the microsoft.graph.ediscovery.case entity.
                        def custodians()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::CustodiansRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the close method.
                        def ediscovery_close()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::EdiscoveryClose::EdiscoveryCloseRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the reopen method.
                        def ediscovery_reopen()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::EdiscoveryReopen::EdiscoveryReopenRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the legalHolds property of the microsoft.graph.ediscovery.case entity.
                        def legal_holds()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::LegalHoldsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the noncustodialDataSources property of the microsoft.graph.ediscovery.case entity.
                        def noncustodial_data_sources()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::NoncustodialDataSources::NoncustodialDataSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the operations property of the microsoft.graph.ediscovery.case entity.
                        def operations()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Provides operations to manage the reviewSets property of the microsoft.graph.ediscovery.case entity.
                        def review_sets()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::ReviewSets::ReviewSetsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the settings property of the microsoft.graph.ediscovery.case entity.
                        def settings()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the sourceCollections property of the microsoft.graph.ediscovery.case entity.
                        def source_collections()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::SourceCollectionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the tags property of the microsoft.graph.ediscovery.case entity.
                        def tags()
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Tags::TagsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Instantiates a new CaseItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/compliance/ediscovery/cases/{case%2Did}{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Provides operations to manage the custodians property of the microsoft.graph.ediscovery.case entity.
                        ## @param id Unique identifier of the item
                        ## @return a custodian_item_request_builder
                        ## 
                        def custodians_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["custodian%2Did"] = id
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::CustodianItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property cases for compliance
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
                        ## Get cases from compliance
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of case_escaped
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::Case_escaped.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the legalHolds property of the microsoft.graph.ediscovery.case entity.
                        ## @param id Unique identifier of the item
                        ## @return a legal_hold_item_request_builder
                        ## 
                        def legal_holds_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["legalHold%2Did"] = id
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::LegalHoldItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the noncustodialDataSources property of the microsoft.graph.ediscovery.case entity.
                        ## @param id Unique identifier of the item
                        ## @return a noncustodial_data_source_item_request_builder
                        ## 
                        def noncustodial_data_sources_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["noncustodialDataSource%2Did"] = id
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::NoncustodialDataSources::Item::NoncustodialDataSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the operations property of the microsoft.graph.ediscovery.case entity.
                        ## @param id Unique identifier of the item
                        ## @return a case_operation_item_request_builder
                        ## 
                        def operations_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["caseOperation%2Did"] = id
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Operations::Item::CaseOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Update the navigation property cases in compliance
                        ## @param body The request body
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of case_escaped
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Ediscovery::Case_escaped.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the reviewSets property of the microsoft.graph.ediscovery.case entity.
                        ## @param id Unique identifier of the item
                        ## @return a review_set_item_request_builder
                        ## 
                        def review_sets_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["reviewSet%2Did"] = id
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::ReviewSets::Item::ReviewSetItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the sourceCollections property of the microsoft.graph.ediscovery.case entity.
                        ## @param id Unique identifier of the item
                        ## @return a source_collection_item_request_builder
                        ## 
                        def source_collections_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["sourceCollection%2Did"] = id
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::Item::SourceCollectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the tags property of the microsoft.graph.ediscovery.case entity.
                        ## @param id Unique identifier of the item
                        ## @return a tag_item_request_builder
                        ## 
                        def tags_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["tag%2Did"] = id
                            return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Tags::Item::TagItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property cases for compliance
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
                        ## Get cases from compliance
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
                        ## Update the navigation property cases in compliance
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
                        class CaseItemRequestBuilderDeleteRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                        end

                        ## 
                        # Get cases from compliance
                        class CaseItemRequestBuilderGetQueryParameters
                            
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
                        class CaseItemRequestBuilderGetRequestConfiguration
                            
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
                        class CaseItemRequestBuilderPatchRequestConfiguration
                            
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
