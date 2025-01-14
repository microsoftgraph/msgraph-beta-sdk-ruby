require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/governance_role_assignment_request'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../governance_role_assignment_requests'
require_relative './cancel/cancel_request_builder'
require_relative './item'
require_relative './resource/resource_request_builder'
require_relative './role_definition/role_definition_request_builder'
require_relative './subject/subject_request_builder'
require_relative './update_request/update_request_request_builder'

module MicrosoftGraphBeta
    module GovernanceRoleAssignmentRequests
        module Item
            ## 
            # Provides operations to manage the collection of governanceRoleAssignmentRequest entities.
            class GovernanceRoleAssignmentRequestItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to call the cancel method.
                def cancel()
                    return MicrosoftGraphBeta::GovernanceRoleAssignmentRequests::Item::Cancel::CancelRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the resource property of the microsoft.graph.governanceRoleAssignmentRequest entity.
                def resource()
                    return MicrosoftGraphBeta::GovernanceRoleAssignmentRequests::Item::Resource::ResourceRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleDefinition property of the microsoft.graph.governanceRoleAssignmentRequest entity.
                def role_definition()
                    return MicrosoftGraphBeta::GovernanceRoleAssignmentRequests::Item::RoleDefinition::RoleDefinitionRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the subject property of the microsoft.graph.governanceRoleAssignmentRequest entity.
                def subject()
                    return MicrosoftGraphBeta::GovernanceRoleAssignmentRequests::Item::Subject::SubjectRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the updateRequest method.
                def update_request()
                    return MicrosoftGraphBeta::GovernanceRoleAssignmentRequests::Item::UpdateRequest::UpdateRequestRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new GovernanceRoleAssignmentRequestItemRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/governanceRoleAssignmentRequests/{governanceRoleAssignmentRequest%2Did}{?%24expand,%24select}")
                end
                ## 
                ## Delete entity from governanceRoleAssignmentRequests
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
                ## Get entity from governanceRoleAssignmentRequests by key
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of governance_role_assignment_request
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleAssignmentRequest.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update entity in governanceRoleAssignmentRequests
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of governance_role_assignment_request
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleAssignmentRequest.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete entity from governanceRoleAssignmentRequests
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Get entity from governanceRoleAssignmentRequests by key
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
                ## Update entity in governanceRoleAssignmentRequests
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
                    request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a governance_role_assignment_request_item_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return GovernanceRoleAssignmentRequestItemRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Get entity from governanceRoleAssignmentRequests by key
                class GovernanceRoleAssignmentRequestItemRequestBuilderGetQueryParameters
                    
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
