require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/custom_access_package_workflow_extension'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../identity_governance'
require_relative '../../../../entitlement_management'
require_relative '../../../access_package_catalogs'
require_relative '../../item'
require_relative '../custom_access_package_workflow_extensions'
require_relative './item'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageCatalogs
                module Item
                    module CustomAccessPackageWorkflowExtensions
                        module Item
                            ## 
                            # Provides operations to manage the customAccessPackageWorkflowExtensions property of the microsoft.graph.accessPackageCatalog entity.
                            class CustomAccessPackageWorkflowExtensionItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new CustomAccessPackageWorkflowExtensionItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalog%2Did}/customAccessPackageWorkflowExtensions/{customAccessPackageWorkflowExtension%2Did}{?%24select,%24expand}")
                                end
                                ## 
                                ## Delete an accessPackageAssignmentWorkflowExtension object. The custom workflow extension must first be removed from any associated policies before it can be deleted. Follow these steps to remove the custom workflow extension from any associated policies:1. First retrieve the accessPackageCatalogId by calling the Get accessPackageAssignmentPolicies operation and appending ?$expand=accessPackage($expand=accessPackageCatalog) to the query. For example, https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies?$expand=accessPackage($expand=accessPackageCatalog).2. Use the access package catalog ID and retrieve the ID of the accessPackageCustomWorkflowExtension object that you want to delete by running the List accessPackageCustomWorkflowExtensions operation.3. Call the Update accessPackageAssignmentPolicy operation to remove the custom workflow extension object from the policy. For an example, see Example 3: Remove the customExtensionStageSettings from a policy.
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
                                ## Read the properties and relationships of a customAccessPackageWorkflowExtension object for an accessPackageCatalog object.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of custom_access_package_workflow_extension
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CustomAccessPackageWorkflowExtension.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the properties of an existing customAccessPackageWorkflowExtension object.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of custom_access_package_workflow_extension
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CustomAccessPackageWorkflowExtension.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete an accessPackageAssignmentWorkflowExtension object. The custom workflow extension must first be removed from any associated policies before it can be deleted. Follow these steps to remove the custom workflow extension from any associated policies:1. First retrieve the accessPackageCatalogId by calling the Get accessPackageAssignmentPolicies operation and appending ?$expand=accessPackage($expand=accessPackageCatalog) to the query. For example, https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies?$expand=accessPackage($expand=accessPackageCatalog).2. Use the access package catalog ID and retrieve the ID of the accessPackageCustomWorkflowExtension object that you want to delete by running the List accessPackageCustomWorkflowExtensions operation.3. Call the Update accessPackageAssignmentPolicy operation to remove the custom workflow extension object from the policy. For an example, see Example 3: Remove the customExtensionStageSettings from a policy.
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
                                ## Read the properties and relationships of a customAccessPackageWorkflowExtension object for an accessPackageCatalog object.
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
                                ## Update the properties of an existing customAccessPackageWorkflowExtension object.
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
                                # Read the properties and relationships of a customAccessPackageWorkflowExtension object for an accessPackageCatalog object.
                                class CustomAccessPackageWorkflowExtensionItemRequestBuilderGetQueryParameters
                                    
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
        end
    end
end
