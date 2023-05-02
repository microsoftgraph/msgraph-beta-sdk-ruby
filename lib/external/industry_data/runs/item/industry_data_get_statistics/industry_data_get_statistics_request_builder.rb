require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/industry_data/industry_data_run_statistics'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../external'
require_relative '../../../industry_data'
require_relative '../../runs'
require_relative '../item'
require_relative './industry_data_get_statistics'

module MicrosoftGraphBeta
    module External
        module IndustryData
            module Runs
                module Item
                    module IndustryDataGetStatistics
                        ## 
                        # Provides operations to call the getStatistics method.
                        class IndustryDataGetStatisticsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new IndustryDataGetStatisticsRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/external/industryData/runs/{industryDataRun%2Did}/industryData.getStatistics()")
                            end
                            ## 
                            ## Invoke function getStatistics
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of industry_data_run_statistics
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRunStatistics.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Invoke function getStatistics
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
                                    request_info.add_request_options(request_configuration.options)
                                end
                                return request_info
                            end
                        end
                    end
                end
            end
        end
    end
end
