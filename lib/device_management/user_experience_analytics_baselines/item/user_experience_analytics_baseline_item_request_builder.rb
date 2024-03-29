require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../../models/user_experience_analytics_baseline'
require_relative '../../device_management'
require_relative '../user_experience_analytics_baselines'
require_relative './app_health_metrics/app_health_metrics_request_builder'
require_relative './battery_health_metrics/battery_health_metrics_request_builder'
require_relative './best_practices_metrics/best_practices_metrics_request_builder'
require_relative './device_boot_performance_metrics/device_boot_performance_metrics_request_builder'
require_relative './item'
require_relative './reboot_analytics_metrics/reboot_analytics_metrics_request_builder'
require_relative './resource_performance_metrics/resource_performance_metrics_request_builder'
require_relative './work_from_anywhere_metrics/work_from_anywhere_metrics_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module UserExperienceAnalyticsBaselines
            module Item
                ## 
                # Provides operations to manage the userExperienceAnalyticsBaselines property of the microsoft.graph.deviceManagement entity.
                class UserExperienceAnalyticsBaselineItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the appHealthMetrics property of the microsoft.graph.userExperienceAnalyticsBaseline entity.
                    def app_health_metrics()
                        return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBaselines::Item::AppHealthMetrics::AppHealthMetricsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the batteryHealthMetrics property of the microsoft.graph.userExperienceAnalyticsBaseline entity.
                    def battery_health_metrics()
                        return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBaselines::Item::BatteryHealthMetrics::BatteryHealthMetricsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the bestPracticesMetrics property of the microsoft.graph.userExperienceAnalyticsBaseline entity.
                    def best_practices_metrics()
                        return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBaselines::Item::BestPracticesMetrics::BestPracticesMetricsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceBootPerformanceMetrics property of the microsoft.graph.userExperienceAnalyticsBaseline entity.
                    def device_boot_performance_metrics()
                        return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBaselines::Item::DeviceBootPerformanceMetrics::DeviceBootPerformanceMetricsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the rebootAnalyticsMetrics property of the microsoft.graph.userExperienceAnalyticsBaseline entity.
                    def reboot_analytics_metrics()
                        return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBaselines::Item::RebootAnalyticsMetrics::RebootAnalyticsMetricsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the resourcePerformanceMetrics property of the microsoft.graph.userExperienceAnalyticsBaseline entity.
                    def resource_performance_metrics()
                        return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBaselines::Item::ResourcePerformanceMetrics::ResourcePerformanceMetricsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the workFromAnywhereMetrics property of the microsoft.graph.userExperienceAnalyticsBaseline entity.
                    def work_from_anywhere_metrics()
                        return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBaselines::Item::WorkFromAnywhereMetrics::WorkFromAnywhereMetricsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new UserExperienceAnalyticsBaselineItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/userExperienceAnalyticsBaselines/{userExperienceAnalyticsBaseline%2Did}{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete navigation property userExperienceAnalyticsBaselines for deviceManagement
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
                    ## User experience analytics baselines
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of user_experience_analytics_baseline
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBaseline.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property userExperienceAnalyticsBaselines in deviceManagement
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of user_experience_analytics_baseline
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBaseline.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property userExperienceAnalyticsBaselines for deviceManagement
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
                    ## User experience analytics baselines
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
                    ## Update the navigation property userExperienceAnalyticsBaselines in deviceManagement
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
                    # User experience analytics baselines
                    class UserExperienceAnalyticsBaselineItemRequestBuilderGetQueryParameters
                        
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
