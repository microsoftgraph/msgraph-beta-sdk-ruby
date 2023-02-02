require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/group_policy_configuration'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../device_management'
require_relative '../group_policy_configurations'
require_relative './assignments/assignments_request_builder'
require_relative './assignments/item/group_policy_configuration_assignment_item_request_builder'
require_relative './definition_values/definition_values_request_builder'
require_relative './definition_values/item/group_policy_definition_value_item_request_builder'
require_relative './item'
require_relative './microsoft_graph_assign/assign_request_builder'
require_relative './microsoft_graph_update_definition_values/update_definition_values_request_builder'

module MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::Item
    ## 
    # Provides operations to manage the groupPolicyConfigurations property of the microsoft.graph.deviceManagement entity.
    class GroupPolicyConfigurationItemRequestBuilder
        
        ## 
        # Provides operations to manage the assignments property of the microsoft.graph.groupPolicyConfiguration entity.
        def assignments()
            return MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::Item::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the definitionValues property of the microsoft.graph.groupPolicyConfiguration entity.
        def definition_values()
            return MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::Item::DefinitionValues::DefinitionValuesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the assign method.
        def microsoft_graph_assign()
            return MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::Item::MicrosoftGraphAssign::AssignRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the updateDefinitionValues method.
        def microsoft_graph_update_definition_values()
            return MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::Item::MicrosoftGraphUpdateDefinitionValues::UpdateDefinitionValuesRequestBuilder.new(@path_parameters, @request_adapter)
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
        ## Provides operations to manage the assignments property of the microsoft.graph.groupPolicyConfiguration entity.
        ## @param id Unique identifier of the item
        ## @return a group_policy_configuration_assignment_item_request_builder
        ## 
        def assignments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["groupPolicyConfigurationAssignment%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::Item::Assignments::Item::GroupPolicyConfigurationAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new GroupPolicyConfigurationItemRequestBuilder and sets the default values.
        ## @param groupPolicyConfigurationId key: id of groupPolicyConfiguration
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter, group_policy_configuration_id=nil)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/deviceManagement/groupPolicyConfigurations/{groupPolicyConfiguration%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Provides operations to manage the definitionValues property of the microsoft.graph.groupPolicyConfiguration entity.
        ## @param id Unique identifier of the item
        ## @return a group_policy_definition_value_item_request_builder
        ## 
        def definition_values_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["groupPolicyDefinitionValue%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::Item::DefinitionValues::Item::GroupPolicyDefinitionValueItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property groupPolicyConfigurations for deviceManagement
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.to_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## The group policy configurations created by this account.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of group_policy_configuration
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyConfiguration.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property groupPolicyConfigurations in deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of group_policy_configuration
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyConfiguration.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Delete navigation property groupPolicyConfigurations for deviceManagement
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
        ## The group policy configurations created by this account.
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
        ## Update the navigation property groupPolicyConfigurations in deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class GroupPolicyConfigurationItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # The group policy configurations created by this account.
        class GroupPolicyConfigurationItemRequestBuilderGetQueryParameters
            
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
        class GroupPolicyConfigurationItemRequestBuilderGetRequestConfiguration
            
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class GroupPolicyConfigurationItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
