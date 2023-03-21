require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/industry_data/industry_data_run'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../external'
require_relative '../../industry_data'
require_relative '../runs'
require_relative './activities/activities_request_builder'
require_relative './activities/item/industry_data_run_activity_item_request_builder'
require_relative './industry_data_get_statistics/industry_data_get_statistics_request_builder'
require_relative './item'

module MicrosoftGraphBeta
    module External
        module IndustryData
            module Runs
                module Item
                    ## 
                    # Provides operations to manage the runs property of the microsoft.graph.industryData.industryDataRoot entity.
                    class IndustryDataRunItemRequestBuilder
                        
                        ## 
                        # Provides operations to manage the activities property of the microsoft.graph.industryData.industryDataRun entity.
                        def activities()
                            return MicrosoftGraphBeta::External::IndustryData::Runs::Item::Activities::ActivitiesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getStatistics method.
                        def industry_data_get_statistics()
                            return MicrosoftGraphBeta::External::IndustryData::Runs::Item::IndustryDataGetStatistics::IndustryDataGetStatisticsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Provides operations to manage the activities property of the microsoft.graph.industryData.industryDataRun entity.
                        ## @param id Unique identifier of the item
                        ## @return a industry_data_run_activity_item_request_builder
                        ## 
                        def activities_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["industryDataRunActivity%2Did"] = id
                            return MicrosoftGraphBeta::External::IndustryData::Runs::Item::Activities::Item::IndustryDataRunActivityItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new IndustryDataRunItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/external/industryData/runs/{industryDataRun%2Did}{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Set of ephemeral runs which present the point-in-time that diagnostic state of activities performed by the system. Read-only.
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of industry_data_run
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRun.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Set of ephemeral runs which present the point-in-time that diagnostic state of activities performed by the system. Read-only.
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
                        # Set of ephemeral runs which present the point-in-time that diagnostic state of activities performed by the system. Read-only.
                        class IndustryDataRunItemRequestBuilderGetQueryParameters
                            
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
                        class IndustryDataRunItemRequestBuilderGetRequestConfiguration
                            
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
                    end
                end
            end
        end
    end
end
