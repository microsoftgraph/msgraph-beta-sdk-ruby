require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/o_data_errors_o_data_error'
require_relative '../models/tenant_relationship'
require_relative './delegated_admin_customers/delegated_admin_customers_request_builder'
require_relative './delegated_admin_relationships/delegated_admin_relationships_request_builder'
require_relative './find_tenant_information_by_domain_name_with_domain_name/find_tenant_information_by_domain_name_with_domain_name_request_builder'
require_relative './find_tenant_information_by_tenant_id_with_tenant_id/find_tenant_information_by_tenant_id_with_tenant_id_request_builder'
require_relative './managed_tenants/managed_tenants_request_builder'
require_relative './multi_tenant_organization/multi_tenant_organization_request_builder'
require_relative './tenant_relationships'

module MicrosoftGraphBeta
    module TenantRelationships
        ## 
        # Provides operations to manage the tenantRelationship singleton.
        class TenantRelationshipsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the delegatedAdminCustomers property of the microsoft.graph.tenantRelationship entity.
            def delegated_admin_customers()
                return MicrosoftGraphBeta::TenantRelationships::DelegatedAdminCustomers::DelegatedAdminCustomersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the delegatedAdminRelationships property of the microsoft.graph.tenantRelationship entity.
            def delegated_admin_relationships()
                return MicrosoftGraphBeta::TenantRelationships::DelegatedAdminRelationships::DelegatedAdminRelationshipsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedTenants property of the microsoft.graph.tenantRelationship entity.
            def managed_tenants()
                return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the multiTenantOrganization property of the microsoft.graph.tenantRelationship entity.
            def multi_tenant_organization()
                return MicrosoftGraphBeta::TenantRelationships::MultiTenantOrganization::MultiTenantOrganizationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new TenantRelationshipsRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/tenantRelationships{?%24select,%24expand}")
            end
            ## 
            ## Provides operations to call the findTenantInformationByDomainName method.
            ## @param domain_name Usage: domainName='{domainName}'
            ## @return a find_tenant_information_by_domain_name_with_domain_name_request_builder
            ## 
            def find_tenant_information_by_domain_name_with_domain_name(domain_name)
                raise StandardError, 'domain_name cannot be null' if domain_name.nil?
                return FindTenantInformationByDomainNameWithDomainNameRequestBuilder.new(@path_parameters, @request_adapter, domainName)
            end
            ## 
            ## Provides operations to call the findTenantInformationByTenantId method.
            ## @param tenant_id Usage: tenantId='{tenantId}'
            ## @return a find_tenant_information_by_tenant_id_with_tenant_id_request_builder
            ## 
            def find_tenant_information_by_tenant_id_with_tenant_id(tenant_id)
                raise StandardError, 'tenant_id cannot be null' if tenant_id.nil?
                return FindTenantInformationByTenantIdWithTenantIdRequestBuilder.new(@path_parameters, @request_adapter, tenantId)
            end
            ## 
            ## Get tenantRelationships
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of tenant_relationship
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::TenantRelationship.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update tenantRelationships
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of tenant_relationship
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::TenantRelationship.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get tenantRelationships
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
            ## Update tenantRelationships
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
            # Get tenantRelationships
            class TenantRelationshipsRequestBuilderGetQueryParameters
                
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
