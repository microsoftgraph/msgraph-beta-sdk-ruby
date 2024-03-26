require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../../models/virtual_endpoint'
require_relative '../device_management'
require_relative './audit_events/audit_events_request_builder'
require_relative './bulk_actions/bulk_actions_request_builder'
require_relative './cloud_p_cs/cloud_p_cs_request_builder'
require_relative './cross_cloud_government_organization_mapping/cross_cloud_government_organization_mapping_request_builder'
require_relative './device_images/device_images_request_builder'
require_relative './external_partner_settings/external_partner_settings_request_builder'
require_relative './front_line_service_plans/front_line_service_plans_request_builder'
require_relative './gallery_images/gallery_images_request_builder'
require_relative './get_effective_permissions/get_effective_permissions_request_builder'
require_relative './on_premises_connections/on_premises_connections_request_builder'
require_relative './organization_settings/organization_settings_request_builder'
require_relative './provisioning_policies/provisioning_policies_request_builder'
require_relative './reports/reports_request_builder'
require_relative './retrieve_scoped_permissions/retrieve_scoped_permissions_request_builder'
require_relative './retrieve_tenant_encryption_setting/retrieve_tenant_encryption_setting_request_builder'
require_relative './service_plans/service_plans_request_builder'
require_relative './shared_use_service_plans/shared_use_service_plans_request_builder'
require_relative './snapshots/snapshots_request_builder'
require_relative './supported_regions/supported_regions_request_builder'
require_relative './user_settings/user_settings_request_builder'
require_relative './virtual_endpoint'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            ## 
            # Provides operations to manage the virtualEndpoint property of the microsoft.graph.deviceManagement entity.
            class VirtualEndpointRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the auditEvents property of the microsoft.graph.virtualEndpoint entity.
                def audit_events()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::AuditEvents::AuditEventsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the bulkActions property of the microsoft.graph.virtualEndpoint entity.
                def bulk_actions()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::BulkActions::BulkActionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the cloudPCs property of the microsoft.graph.virtualEndpoint entity.
                def cloud_p_cs()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::CloudPCsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the crossCloudGovernmentOrganizationMapping property of the microsoft.graph.virtualEndpoint entity.
                def cross_cloud_government_organization_mapping()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CrossCloudGovernmentOrganizationMapping::CrossCloudGovernmentOrganizationMappingRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the deviceImages property of the microsoft.graph.virtualEndpoint entity.
                def device_images()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::DeviceImages::DeviceImagesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the externalPartnerSettings property of the microsoft.graph.virtualEndpoint entity.
                def external_partner_settings()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::ExternalPartnerSettings::ExternalPartnerSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the frontLineServicePlans property of the microsoft.graph.virtualEndpoint entity.
                def front_line_service_plans()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::FrontLineServicePlans::FrontLineServicePlansRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the galleryImages property of the microsoft.graph.virtualEndpoint entity.
                def gallery_images()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::GalleryImages::GalleryImagesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getEffectivePermissions method.
                def get_effective_permissions()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::GetEffectivePermissions::GetEffectivePermissionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the onPremisesConnections property of the microsoft.graph.virtualEndpoint entity.
                def on_premises_connections()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::OnPremisesConnections::OnPremisesConnectionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the organizationSettings property of the microsoft.graph.virtualEndpoint entity.
                def organization_settings()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::OrganizationSettings::OrganizationSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the provisioningPolicies property of the microsoft.graph.virtualEndpoint entity.
                def provisioning_policies()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::ProvisioningPolicies::ProvisioningPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the reports property of the microsoft.graph.virtualEndpoint entity.
                def reports()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::ReportsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the retrieveScopedPermissions method.
                def retrieve_scoped_permissions()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::RetrieveScopedPermissions::RetrieveScopedPermissionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the retrieveTenantEncryptionSetting method.
                def retrieve_tenant_encryption_setting()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::RetrieveTenantEncryptionSetting::RetrieveTenantEncryptionSettingRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the servicePlans property of the microsoft.graph.virtualEndpoint entity.
                def service_plans()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::ServicePlans::ServicePlansRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sharedUseServicePlans property of the microsoft.graph.virtualEndpoint entity.
                def shared_use_service_plans()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::SharedUseServicePlans::SharedUseServicePlansRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the snapshots property of the microsoft.graph.virtualEndpoint entity.
                def snapshots()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Snapshots::SnapshotsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the supportedRegions property of the microsoft.graph.virtualEndpoint entity.
                def supported_regions()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::SupportedRegions::SupportedRegionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the userSettings property of the microsoft.graph.virtualEndpoint entity.
                def user_settings()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::UserSettings::UserSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new VirtualEndpointRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/virtualEndpoint{?%24expand,%24select}")
                end
                ## 
                ## Delete navigation property virtualEndpoint for deviceManagement
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
                ## Get virtualEndpoint from deviceManagement
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of virtual_endpoint
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::VirtualEndpoint.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property virtualEndpoint in deviceManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of virtual_endpoint
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::VirtualEndpoint.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property virtualEndpoint for deviceManagement
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = '{+baseurl}/deviceManagement/virtualEndpoint'
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Get virtualEndpoint from deviceManagement
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
                ## Update the navigation property virtualEndpoint in deviceManagement
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
                    request_info.url_template = '{+baseurl}/deviceManagement/virtualEndpoint'
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a virtual_endpoint_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return VirtualEndpointRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Get virtualEndpoint from deviceManagement
                class VirtualEndpointRequestBuilderGetQueryParameters
                    
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
