require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/virtual_endpoint'
require_relative '../device_management'
require_relative './audit_events/audit_events_request_builder'
require_relative './audit_events/item/cloud_pc_audit_event_item_request_builder'
require_relative './cloud_p_cs/cloud_p_cs_request_builder'
require_relative './cloud_p_cs/item/cloud_p_c_item_request_builder'
require_relative './cross_cloud_government_organization_mapping/cross_cloud_government_organization_mapping_request_builder'
require_relative './device_images/device_images_request_builder'
require_relative './device_images/item/cloud_pc_device_image_item_request_builder'
require_relative './external_partner_settings/external_partner_settings_request_builder'
require_relative './external_partner_settings/item/cloud_pc_external_partner_setting_item_request_builder'
require_relative './gallery_images/gallery_images_request_builder'
require_relative './gallery_images/item/cloud_pc_gallery_image_item_request_builder'
require_relative './get_effective_permissions/get_effective_permissions_request_builder'
require_relative './on_premises_connections/item/cloud_pc_on_premises_connection_item_request_builder'
require_relative './on_premises_connections/on_premises_connections_request_builder'
require_relative './organization_settings/organization_settings_request_builder'
require_relative './provisioning_policies/item/cloud_pc_provisioning_policy_item_request_builder'
require_relative './provisioning_policies/provisioning_policies_request_builder'
require_relative './reports/reports_request_builder'
require_relative './service_plans/item/cloud_pc_service_plan_item_request_builder'
require_relative './service_plans/service_plans_request_builder'
require_relative './shared_use_service_plans/item/cloud_pc_shared_use_service_plan_item_request_builder'
require_relative './shared_use_service_plans/shared_use_service_plans_request_builder'
require_relative './snapshots/item/cloud_pc_snapshot_item_request_builder'
require_relative './snapshots/snapshots_request_builder'
require_relative './supported_regions/item/cloud_pc_supported_region_item_request_builder'
require_relative './supported_regions/supported_regions_request_builder'
require_relative './user_settings/item/cloud_pc_user_setting_item_request_builder'
require_relative './user_settings/user_settings_request_builder'
require_relative './virtual_endpoint'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            ## 
            # Provides operations to manage the virtualEndpoint property of the microsoft.graph.deviceManagement entity.
            class VirtualEndpointRequestBuilder
                
                ## 
                # Provides operations to manage the auditEvents property of the microsoft.graph.virtualEndpoint entity.
                def audit_events()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::AuditEvents::AuditEventsRequestBuilder.new(@path_parameters, @request_adapter)
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
                # Path parameters for the request
                @path_parameters
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
                # The request adapter to use to execute the requests.
                @request_adapter
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
                # Url template to use to build the URL for the current request builder
                @url_template
                ## 
                # Provides operations to manage the userSettings property of the microsoft.graph.virtualEndpoint entity.
                def user_settings()
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::UserSettings::UserSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to manage the auditEvents property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_audit_event_item_request_builder
                ## 
                def audit_events_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcAuditEvent%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::AuditEvents::Item::CloudPcAuditEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the cloudPCs property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_p_c_item_request_builder
                ## 
                def cloud_p_cs_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPC%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::CloudPCItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new VirtualEndpointRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/deviceManagement/virtualEndpoint{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Delete navigation property virtualEndpoint for deviceManagement
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
                ## Provides operations to manage the deviceImages property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_device_image_item_request_builder
                ## 
                def device_images_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcDeviceImage%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::DeviceImages::Item::CloudPcDeviceImageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the externalPartnerSettings property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_external_partner_setting_item_request_builder
                ## 
                def external_partner_settings_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcExternalPartnerSetting%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::ExternalPartnerSettings::Item::CloudPcExternalPartnerSettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the galleryImages property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_gallery_image_item_request_builder
                ## 
                def gallery_images_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcGalleryImage%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::GalleryImages::Item::CloudPcGalleryImageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Get virtualEndpoint from deviceManagement
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of virtual_endpoint
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::VirtualEndpoint.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the onPremisesConnections property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_on_premises_connection_item_request_builder
                ## 
                def on_premises_connections_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcOnPremisesConnection%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::OnPremisesConnections::Item::CloudPcOnPremisesConnectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update the navigation property virtualEndpoint in deviceManagement
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of virtual_endpoint
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::VirtualEndpoint.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the provisioningPolicies property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_provisioning_policy_item_request_builder
                ## 
                def provisioning_policies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcProvisioningPolicy%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::ProvisioningPolicies::Item::CloudPcProvisioningPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the servicePlans property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_service_plan_item_request_builder
                ## 
                def service_plans_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcServicePlan%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::ServicePlans::Item::CloudPcServicePlanItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the sharedUseServicePlans property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_shared_use_service_plan_item_request_builder
                ## 
                def shared_use_service_plans_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcSharedUseServicePlan%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::SharedUseServicePlans::Item::CloudPcSharedUseServicePlanItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the snapshots property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_snapshot_item_request_builder
                ## 
                def snapshots_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcSnapshot%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Snapshots::Item::CloudPcSnapshotItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the supportedRegions property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_supported_region_item_request_builder
                ## 
                def supported_regions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcSupportedRegion%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::SupportedRegions::Item::CloudPcSupportedRegionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete navigation property virtualEndpoint for deviceManagement
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
                ## Get virtualEndpoint from deviceManagement
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
                ## Update the navigation property virtualEndpoint in deviceManagement
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
                ## Provides operations to manage the userSettings property of the microsoft.graph.virtualEndpoint entity.
                ## @param id Unique identifier of the item
                ## @return a cloud_pc_user_setting_item_request_builder
                ## 
                def user_settings_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["cloudPcUserSetting%2Did"] = id
                    return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::UserSettings::Item::CloudPcUserSettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class VirtualEndpointRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
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
                class VirtualEndpointRequestBuilderGetRequestConfiguration
                    
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
                class VirtualEndpointRequestBuilderPatchRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end
            end
        end
    end
end
