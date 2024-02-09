require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/monthly_user_insight_metrics_root'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../reports'
require_relative '../user_insights'
require_relative './active_users/active_users_request_builder'
require_relative './active_users_breakdown/active_users_breakdown_request_builder'
require_relative './authentications/authentications_request_builder'
require_relative './inactive_users/inactive_users_request_builder'
require_relative './inactive_users_by_application/inactive_users_by_application_request_builder'
require_relative './mfa_completions/mfa_completions_request_builder'
require_relative './monthly'
require_relative './requests/requests_request_builder'
require_relative './sign_ups/sign_ups_request_builder'
require_relative './summary/summary_request_builder'

module MicrosoftGraphBeta
    module Reports
        module UserInsights
            module Monthly
                ## 
                # Provides operations to manage the monthly property of the microsoft.graph.userInsightsRoot entity.
                class MonthlyRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the activeUsers property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def active_users()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::ActiveUsers::ActiveUsersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the activeUsersBreakdown property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def active_users_breakdown()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::ActiveUsersBreakdown::ActiveUsersBreakdownRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the authentications property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def authentications()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::Authentications::AuthenticationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the inactiveUsers property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def inactive_users()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::InactiveUsers::InactiveUsersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the inactiveUsersByApplication property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def inactive_users_by_application()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::InactiveUsersByApplication::InactiveUsersByApplicationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the mfaCompletions property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def mfa_completions()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::MfaCompletions::MfaCompletionsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the requests property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def requests()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::Requests::RequestsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the signUps property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def sign_ups()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::SignUps::SignUpsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the summary property of the microsoft.graph.monthlyUserInsightMetricsRoot entity.
                    def summary()
                        return MicrosoftGraphBeta::Reports::UserInsights::Monthly::Summary::SummaryRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new MonthlyRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/reports/userInsights/monthly{?%24expand,%24select}")
                    end
                    ## 
                    ## Delete navigation property monthly for reports
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of monthly_user_insight_metrics_root
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::MonthlyUserInsightMetricsRoot.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property monthly in reports
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of monthly_user_insight_metrics_root
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::MonthlyUserInsightMetricsRoot.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property monthly for reports
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = '{+baseurl}/reports/userInsights/monthly'
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
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
                    ## Update the navigation property monthly in reports
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
                        request_info.url_template = '{+baseurl}/reports/userInsights/monthly'
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a monthly_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return MonthlyRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
                    class MonthlyRequestBuilderGetQueryParameters
                        
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
