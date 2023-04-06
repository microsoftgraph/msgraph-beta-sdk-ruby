require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/industry_data/industry_data_root'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../external'
require_relative './data_connectors/data_connectors_request_builder'
require_relative './data_connectors/item/industry_data_connector_item_request_builder'
require_relative './inbound_flows/inbound_flows_request_builder'
require_relative './inbound_flows/item/inbound_flow_item_request_builder'
require_relative './industry_data'
require_relative './operations/item/long_running_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './reference_definitions/item/reference_definition_item_request_builder'
require_relative './reference_definitions/reference_definitions_request_builder'
require_relative './role_groups/item/role_group_item_request_builder'
require_relative './role_groups/role_groups_request_builder'
require_relative './runs/item/industry_data_run_item_request_builder'
require_relative './runs/runs_request_builder'
require_relative './source_systems/item/source_system_definition_item_request_builder'
require_relative './source_systems/source_systems_request_builder'
require_relative './years/item/year_time_period_definition_item_request_builder'
require_relative './years/years_request_builder'

module MicrosoftGraphBeta
    module External
        module IndustryData
            ## 
            # Provides operations to manage the industryData property of the microsoft.graph.externalConnectors.external entity.
            class IndustryDataRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the dataConnectors property of the microsoft.graph.industryData.industryDataRoot entity.
                def data_connectors()
                    return MicrosoftGraphBeta::External::IndustryData::DataConnectors::DataConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the inboundFlows property of the microsoft.graph.industryData.industryDataRoot entity.
                def inbound_flows()
                    return MicrosoftGraphBeta::External::IndustryData::InboundFlows::InboundFlowsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the operations property of the microsoft.graph.industryData.industryDataRoot entity.
                def operations()
                    return MicrosoftGraphBeta::External::IndustryData::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the referenceDefinitions property of the microsoft.graph.industryData.industryDataRoot entity.
                def reference_definitions()
                    return MicrosoftGraphBeta::External::IndustryData::ReferenceDefinitions::ReferenceDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleGroups property of the microsoft.graph.industryData.industryDataRoot entity.
                def role_groups()
                    return MicrosoftGraphBeta::External::IndustryData::RoleGroups::RoleGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the runs property of the microsoft.graph.industryData.industryDataRoot entity.
                def runs()
                    return MicrosoftGraphBeta::External::IndustryData::Runs::RunsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sourceSystems property of the microsoft.graph.industryData.industryDataRoot entity.
                def source_systems()
                    return MicrosoftGraphBeta::External::IndustryData::SourceSystems::SourceSystemsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the years property of the microsoft.graph.industryData.industryDataRoot entity.
                def years()
                    return MicrosoftGraphBeta::External::IndustryData::Years::YearsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new IndustryDataRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/external/industryData{?%24select,%24expand}")
                end
                ## 
                ## Provides operations to manage the dataConnectors property of the microsoft.graph.industryData.industryDataRoot entity.
                ## @param id Unique identifier of the item
                ## @return a industry_data_connector_item_request_builder
                ## 
                def data_connectors_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["industryDataConnector%2Did"] = id
                    return MicrosoftGraphBeta::External::IndustryData::DataConnectors::Item::IndustryDataConnectorItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Get industryData from external
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of industry_data_root
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRoot.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the inboundFlows property of the microsoft.graph.industryData.industryDataRoot entity.
                ## @param id Unique identifier of the item
                ## @return a inbound_flow_item_request_builder
                ## 
                def inbound_flows_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["inboundFlow%2Did"] = id
                    return MicrosoftGraphBeta::External::IndustryData::InboundFlows::Item::InboundFlowItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the operations property of the microsoft.graph.industryData.industryDataRoot entity.
                ## @param id Unique identifier of the item
                ## @return a long_running_operation_item_request_builder
                ## 
                def operations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["longRunningOperation%2Did"] = id
                    return MicrosoftGraphBeta::External::IndustryData::Operations::Item::LongRunningOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the referenceDefinitions property of the microsoft.graph.industryData.industryDataRoot entity.
                ## @param id Unique identifier of the item
                ## @return a reference_definition_item_request_builder
                ## 
                def reference_definitions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["referenceDefinition%2Did"] = id
                    return MicrosoftGraphBeta::External::IndustryData::ReferenceDefinitions::Item::ReferenceDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleGroups property of the microsoft.graph.industryData.industryDataRoot entity.
                ## @param id Unique identifier of the item
                ## @return a role_group_item_request_builder
                ## 
                def role_groups_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["roleGroup%2Did"] = id
                    return MicrosoftGraphBeta::External::IndustryData::RoleGroups::Item::RoleGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the runs property of the microsoft.graph.industryData.industryDataRoot entity.
                ## @param id Unique identifier of the item
                ## @return a industry_data_run_item_request_builder
                ## 
                def runs_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["industryDataRun%2Did"] = id
                    return MicrosoftGraphBeta::External::IndustryData::Runs::Item::IndustryDataRunItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the sourceSystems property of the microsoft.graph.industryData.industryDataRoot entity.
                ## @param id Unique identifier of the item
                ## @return a source_system_definition_item_request_builder
                ## 
                def source_systems_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["sourceSystemDefinition%2Did"] = id
                    return MicrosoftGraphBeta::External::IndustryData::SourceSystems::Item::SourceSystemDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Get industryData from external
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
                ## Provides operations to manage the years property of the microsoft.graph.industryData.industryDataRoot entity.
                ## @param id Unique identifier of the item
                ## @return a year_time_period_definition_item_request_builder
                ## 
                def years_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["yearTimePeriodDefinition%2Did"] = id
                    return MicrosoftGraphBeta::External::IndustryData::Years::Item::YearTimePeriodDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # Get industryData from external
                class IndustryDataRequestBuilderGetQueryParameters
                    
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
