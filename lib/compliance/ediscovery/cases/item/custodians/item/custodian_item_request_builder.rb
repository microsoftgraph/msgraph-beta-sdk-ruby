require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/ediscovery_custodian'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../compliance'
require_relative '../../../../ediscovery'
require_relative '../../../cases'
require_relative '../../item'
require_relative '../custodians'
require_relative './item'
require_relative './last_index_operation/last_index_operation_request_builder'
require_relative './microsoft_graph_ediscovery_activate/microsoft_graph_ediscovery_activate_request_builder'
require_relative './microsoft_graph_ediscovery_apply_hold/microsoft_graph_ediscovery_apply_hold_request_builder'
require_relative './microsoft_graph_ediscovery_release/microsoft_graph_ediscovery_release_request_builder'
require_relative './microsoft_graph_ediscovery_remove_hold/microsoft_graph_ediscovery_remove_hold_request_builder'
require_relative './microsoft_graph_ediscovery_update_index/microsoft_graph_ediscovery_update_index_request_builder'
require_relative './site_sources/site_sources_request_builder'
require_relative './unified_group_sources/unified_group_sources_request_builder'
require_relative './user_sources/user_sources_request_builder'

module MicrosoftGraphBeta
    module Compliance
        module Ediscovery
            module Cases
                module Item
                    module Custodians
                        module Item
                            ## 
                            # Provides operations to manage the custodians property of the microsoft.graph.ediscovery.case entity.
                            class CustodianItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the lastIndexOperation property of the microsoft.graph.ediscovery.dataSourceContainer entity.
                                def last_index_operation()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::LastIndexOperation::LastIndexOperationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the activate method.
                                def microsoft_graph_ediscovery_activate()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::MicrosoftGraphEdiscoveryActivate::MicrosoftGraphEdiscoveryActivateRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the applyHold method.
                                def microsoft_graph_ediscovery_apply_hold()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::MicrosoftGraphEdiscoveryApplyHold::MicrosoftGraphEdiscoveryApplyHoldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the release method.
                                def microsoft_graph_ediscovery_release()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::MicrosoftGraphEdiscoveryRelease::MicrosoftGraphEdiscoveryReleaseRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the removeHold method.
                                def microsoft_graph_ediscovery_remove_hold()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::MicrosoftGraphEdiscoveryRemoveHold::MicrosoftGraphEdiscoveryRemoveHoldRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the updateIndex method.
                                def microsoft_graph_ediscovery_update_index()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::MicrosoftGraphEdiscoveryUpdateIndex::MicrosoftGraphEdiscoveryUpdateIndexRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the siteSources property of the microsoft.graph.ediscovery.custodian entity.
                                def site_sources()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::SiteSources::SiteSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the unifiedGroupSources property of the microsoft.graph.ediscovery.custodian entity.
                                def unified_group_sources()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::UnifiedGroupSources::UnifiedGroupSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the userSources property of the microsoft.graph.ediscovery.custodian entity.
                                def user_sources()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::Custodians::Item::UserSources::UserSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new CustodianItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/compliance/ediscovery/cases/{case%2Did}/custodians/{custodian%2Did}{?%24select,%24expand}")
                                end
                                ## 
                                ## Delete navigation property custodians for compliance
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
                                ## Read the properties and relationships of a custodian object.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of ediscovery_custodian
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryCustodian.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the properties of a custodian object.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of ediscovery_custodian
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryCustodian.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property custodians for compliance
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                                ## Read the properties and relationships of a custodian object.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                                ## Update the properties of a custodian object.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    return request_info
                                end

                                ## 
                                # Read the properties and relationships of a custodian object.
                                class CustodianItemRequestBuilderGetQueryParameters
                                    
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
