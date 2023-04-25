require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/identity_governance/task_report_summary'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../identity_governance'
require_relative '../../../../lifecycle_workflows'
require_relative '../../../workflows'
require_relative '../../item'
require_relative '../task_reports'
require_relative './identity_governance_summary_with_start_date_time_with_end_date_time'

module MicrosoftGraphBeta
    module IdentityGovernance
        module LifecycleWorkflows
            module Workflows
                module Item
                    module TaskReports
                        module IdentityGovernanceSummaryWithStartDateTimeWithEndDateTime
                            ## 
                            # Provides operations to call the summary method.
                            class IdentityGovernanceSummaryWithStartDateTimeWithEndDateTimeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new IdentityGovernanceSummaryWithStartDateTimeWithEndDateTimeRequestBuilder and sets the default values.
                                ## @param end_date_time Usage: endDateTime={endDateTime}
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @param start_date_time Usage: startDateTime={startDateTime}
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter, end_date_time=nil, start_date_time=nil)
                                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/workflows/{workflow%2Did}/taskReports/identityGovernance.summary(startDateTime={startDateTime},endDateTime={endDateTime})")
                                end
                                ## 
                                ## Invoke function summary
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of task_report_summary
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernance::TaskReportSummary.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Invoke function summary
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
end
