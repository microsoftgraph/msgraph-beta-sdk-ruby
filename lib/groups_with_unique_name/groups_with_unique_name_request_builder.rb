require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/group'
require_relative '../models/o_data_errors_o_data_error'
require_relative './groups_with_unique_name'

module MicrosoftGraphBeta
    module GroupsWithUniqueName
        ## 
        # Provides operations to manage the collection of group entities.
        class GroupsWithUniqueNameRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            ## Instantiates a new GroupsWithUniqueNameRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @param unique_name Alternate key of group
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter, unique_name=nil)
                super(path_parameters, request_adapter, "{+baseurl}/groups(uniqueName='{uniqueName}'){?%24select,%24expand}")
            end
            ## 
            ## Deletes a group. When deleted, Microsoft 365 groups are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted. This isn't applicable to Security groups and Distribution groups which are permanently deleted immediately. To learn more, see deletedItems.
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
            ## Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are not returned by default, specify them in a $select OData query option. The hasMembersWithLicenseErrors and isArchived properties are an exception and are not returned in the $select query. Because the group resource supports extensions, you can also use the GET operation to get custom properties and extension data in a group instance.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of group
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Group.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update the properties of a group object.
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of group
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Group.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Deletes a group. When deleted, Microsoft 365 groups are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted. This isn't applicable to Security groups and Distribution groups which are permanently deleted immediately. To learn more, see deletedItems.
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
            ## Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are not returned by default, specify them in a $select OData query option. The hasMembersWithLicenseErrors and isArchived properties are an exception and are not returned in the $select query. Because the group resource supports extensions, you can also use the GET operation to get custom properties and extension data in a group instance.
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
            ## Update the properties of a group object.
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
            # Get the properties and relationships of a group object. This operation returns by default only a subset of all the available properties, as noted in the Properties section. To get properties that are not returned by default, specify them in a $select OData query option. The hasMembersWithLicenseErrors and isArchived properties are an exception and are not returned in the $select query. Because the group resource supports extensions, you can also use the GET operation to get custom properties and extension data in a group instance.
            class GroupsWithUniqueNameRequestBuilderGetQueryParameters
                
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
