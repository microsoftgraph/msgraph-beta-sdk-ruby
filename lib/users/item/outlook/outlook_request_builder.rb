require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/outlook_user'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../users'
require_relative '../item'
require_relative './master_categories/master_categories_request_builder'
require_relative './outlook'
require_relative './supported_languages/supported_languages_request_builder'
require_relative './supported_time_zones/supported_time_zones_request_builder'
require_relative './supported_time_zones_with_time_zone_standard/supported_time_zones_with_time_zone_standard_request_builder'
require_relative './task_folders/task_folders_request_builder'
require_relative './task_groups/task_groups_request_builder'
require_relative './tasks/tasks_request_builder'

module MicrosoftGraphBeta
    module Users
        module Item
            module Outlook
                ## 
                # Provides operations to manage the outlook property of the microsoft.graph.user entity.
                class OutlookRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the masterCategories property of the microsoft.graph.outlookUser entity.
                    def master_categories()
                        return MicrosoftGraphBeta::Users::Item::Outlook::MasterCategories::MasterCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the supportedLanguages method.
                    def supported_languages()
                        return MicrosoftGraphBeta::Users::Item::Outlook::SupportedLanguages::SupportedLanguagesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the supportedTimeZones method.
                    def supported_time_zones()
                        return MicrosoftGraphBeta::Users::Item::Outlook::SupportedTimeZones::SupportedTimeZonesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the taskFolders property of the microsoft.graph.outlookUser entity.
                    def task_folders()
                        return MicrosoftGraphBeta::Users::Item::Outlook::TaskFolders::TaskFoldersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the taskGroups property of the microsoft.graph.outlookUser entity.
                    def task_groups()
                        return MicrosoftGraphBeta::Users::Item::Outlook::TaskGroups::TaskGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the tasks property of the microsoft.graph.outlookUser entity.
                    def tasks()
                        return MicrosoftGraphBeta::Users::Item::Outlook::Tasks::TasksRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new OutlookRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/outlook{?%24select}")
                    end
                    ## 
                    ## Selective Outlook services available to the user. Read-only. Nullable.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of outlook_user
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OutlookUser.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to call the supportedTimeZones method.
                    ## @param time_zone_standard Usage: TimeZoneStandard='{TimeZoneStandard}'
                    ## @return a supported_time_zones_with_time_zone_standard_request_builder
                    ## 
                    def supported_time_zones_with_time_zone_standard(time_zone_standard)
                        raise StandardError, 'time_zone_standard cannot be null' if time_zone_standard.nil?
                        return SupportedTimeZonesWithTimeZoneStandardRequestBuilder.new(@path_parameters, @request_adapter, TimeZoneStandard)
                    end
                    ## 
                    ## Selective Outlook services available to the user. Read-only. Nullable.
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
                    # Selective Outlook services available to the user. Read-only. Nullable.
                    class OutlookRequestBuilderGetQueryParameters
                        
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
