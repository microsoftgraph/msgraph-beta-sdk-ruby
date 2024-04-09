require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/industry_data_industry_data_root'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../external'
require_relative './data_connectors/data_connectors_request_builder'
require_relative './inbound_flows/inbound_flows_request_builder'
require_relative './industry_data'
require_relative './operations/operations_request_builder'
require_relative './reference_definitions/reference_definitions_request_builder'
require_relative './role_groups/role_groups_request_builder'
require_relative './runs/runs_request_builder'
require_relative './source_systems/source_systems_request_builder'
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
                    super(path_parameters, request_adapter, "{+baseurl}/external/industryData{?%24expand,%24select}")
                end
                ## 
                ## Get industryData from external
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of industry_data_industry_data_root
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataIndustryDataRoot.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Get industryData from external
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
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a industry_data_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return IndustryDataRequestBuilder.new(raw_url, @request_adapter)
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
