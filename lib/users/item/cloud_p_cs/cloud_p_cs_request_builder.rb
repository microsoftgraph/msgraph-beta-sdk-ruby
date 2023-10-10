require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/cloud_p_c'
require_relative '../../../models/cloud_p_c_collection_response'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../users'
require_relative '../item'
require_relative './bulk_resize/bulk_resize_request_builder'
require_relative './cloud_p_cs'
require_relative './count/count_request_builder'
require_relative './get_provisioned_cloud_p_cs_with_group_id_with_service_plan_id/get_provisioned_cloud_p_cs_with_group_id_with_service_plan_id_request_builder'
require_relative './item/cloud_p_c_item_request_builder'
require_relative './validate_bulk_resize/validate_bulk_resize_request_builder'

module MicrosoftGraphBeta
    module Users
        module Item
            module CloudPCs
                ## 
                # Provides operations to manage the cloudPCs property of the microsoft.graph.user entity.
                class CloudPCsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to call the bulkResize method.
                    def bulk_resize()
                        return MicrosoftGraphBeta::Users::Item::CloudPCs::BulkResize::BulkResizeRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to count the resources in the collection.
                    def count()
                        return MicrosoftGraphBeta::Users::Item::CloudPCs::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the validateBulkResize method.
                    def validate_bulk_resize()
                        return MicrosoftGraphBeta::Users::Item::CloudPCs::ValidateBulkResize::ValidateBulkResizeRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the cloudPCs property of the microsoft.graph.user entity.
                    ## @param cloud_p_c_id The unique identifier of cloudPC
                    ## @return a cloud_p_c_item_request_builder
                    ## 
                    def by_cloud_p_c_id(cloud_p_c_id)
                        raise StandardError, 'cloud_p_c_id cannot be null' if cloud_p_c_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["cloudPC%2Did"] = cloud_p_c_id
                        return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::CloudPCItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new CloudPCsRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/cloudPCs{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                    end
                    ## 
                    ## List the cloudPC devices that are attributed to the signed-in user.  This API is available in the following national cloud deployments.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of cloud_p_c_collection_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPCCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to call the getProvisionedCloudPCs method.
                    ## @param group_id Usage: groupId='{groupId}'
                    ## @param service_plan_id Usage: servicePlanId='{servicePlanId}'
                    ## @return a get_provisioned_cloud_p_cs_with_group_id_with_service_plan_id_request_builder
                    ## 
                    def get_provisioned_cloud_p_cs_with_group_id_with_service_plan_id(group_id, service_plan_id)
                        raise StandardError, 'group_id cannot be null' if group_id.nil?
                        raise StandardError, 'service_plan_id cannot be null' if service_plan_id.nil?
                        return GetProvisionedCloudPCsWithGroupIdWithServicePlanIdRequestBuilder.new(@path_parameters, @request_adapter, groupId, servicePlanId)
                    end
                    ## 
                    ## Create new navigation property to cloudPCs for users
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of cloud_p_c
                    ## 
                    def post(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_post_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPC.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## List the cloudPC devices that are attributed to the signed-in user.  This API is available in the following national cloud deployments.
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
                    ## Create new navigation property to cloudPCs for users
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_post_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :POST
                        request_info.headers.add('Accept', 'application/json')
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a cloud_p_cs_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return CloudPCsRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # List the cloudPC devices that are attributed to the signed-in user.  This API is available in the following national cloud deployments.
                    class CloudPCsRequestBuilderGetQueryParameters
                        
                        ## 
                        # Include count of items
                        attr_accessor :count
                        ## 
                        # Expand related entities
                        attr_accessor :expand
                        ## 
                        # Filter items by property values
                        attr_accessor :filter
                        ## 
                        # Order items by property values
                        attr_accessor :orderby
                        ## 
                        # Search items by search phrases
                        attr_accessor :search
                        ## 
                        # Select properties to be returned
                        attr_accessor :select
                        ## 
                        # Skip the first n items
                        attr_accessor :skip
                        ## 
                        # Show only the first n items
                        attr_accessor :top
                        ## 
                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                        ## @param original_name The original query parameter name in the class.
                        ## @return a string
                        ## 
                        def get_query_parameter(original_name)
                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                            case original_name
                                when "count"
                                    return "%24count"
                                when "expand"
                                    return "%24expand"
                                when "filter"
                                    return "%24filter"
                                when "orderby"
                                    return "%24orderby"
                                when "search"
                                    return "%24search"
                                when "select"
                                    return "%24select"
                                when "skip"
                                    return "%24skip"
                                when "top"
                                    return "%24top"
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
