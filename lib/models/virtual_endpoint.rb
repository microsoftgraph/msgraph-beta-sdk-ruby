require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualEndpoint < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Cloud PC audit event.
            @audit_events
            ## 
            # Cloud managed virtual desktops.
            @cloud_p_cs
            ## 
            # Cloud PC organization mapping between public and US Government Community Cloud (GCC) organizations.
            @cross_cloud_government_organization_mapping
            ## 
            # The image resource on Cloud PC.
            @device_images
            ## 
            # The external partner settings on a Cloud PC.
            @external_partner_settings
            ## 
            # The gallery image resource on Cloud PC.
            @gallery_images
            ## 
            # A defined collection of Azure resource information that can be used to establish on-premises network connectivity for Cloud PCs.
            @on_premises_connections
            ## 
            # The Cloud PC organization settings for a tenant.
            @organization_settings
            ## 
            # Cloud PC provisioning policy.
            @provisioning_policies
            ## 
            # Cloud PC related reports.
            @reports
            ## 
            # Cloud PC service plans.
            @service_plans
            ## 
            # Cloud PC shared-use service plans.
            @shared_use_service_plans
            ## 
            # Cloud PC snapshots.
            @snapshots
            ## 
            # Cloud PC supported regions.
            @supported_regions
            ## 
            # Cloud PC user settings.
            @user_settings
            ## 
            ## Gets the auditEvents property value. Cloud PC audit event.
            ## @return a cloud_pc_audit_event
            ## 
            def audit_events
                return @audit_events
            end
            ## 
            ## Sets the auditEvents property value. Cloud PC audit event.
            ## @param value Value to set for the audit_events property.
            ## @return a void
            ## 
            def audit_events=(value)
                @audit_events = value
            end
            ## 
            ## Gets the cloudPCs property value. Cloud managed virtual desktops.
            ## @return a cloud_p_c
            ## 
            def cloud_p_cs
                return @cloud_p_cs
            end
            ## 
            ## Sets the cloudPCs property value. Cloud managed virtual desktops.
            ## @param value Value to set for the cloud_p_cs property.
            ## @return a void
            ## 
            def cloud_p_cs=(value)
                @cloud_p_cs = value
            end
            ## 
            ## Instantiates a new VirtualEndpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_endpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEndpoint.new
            end
            ## 
            ## Gets the crossCloudGovernmentOrganizationMapping property value. Cloud PC organization mapping between public and US Government Community Cloud (GCC) organizations.
            ## @return a cloud_pc_cross_cloud_government_organization_mapping
            ## 
            def cross_cloud_government_organization_mapping
                return @cross_cloud_government_organization_mapping
            end
            ## 
            ## Sets the crossCloudGovernmentOrganizationMapping property value. Cloud PC organization mapping between public and US Government Community Cloud (GCC) organizations.
            ## @param value Value to set for the cross_cloud_government_organization_mapping property.
            ## @return a void
            ## 
            def cross_cloud_government_organization_mapping=(value)
                @cross_cloud_government_organization_mapping = value
            end
            ## 
            ## Gets the deviceImages property value. The image resource on Cloud PC.
            ## @return a cloud_pc_device_image
            ## 
            def device_images
                return @device_images
            end
            ## 
            ## Sets the deviceImages property value. The image resource on Cloud PC.
            ## @param value Value to set for the device_images property.
            ## @return a void
            ## 
            def device_images=(value)
                @device_images = value
            end
            ## 
            ## Gets the externalPartnerSettings property value. The external partner settings on a Cloud PC.
            ## @return a cloud_pc_external_partner_setting
            ## 
            def external_partner_settings
                return @external_partner_settings
            end
            ## 
            ## Sets the externalPartnerSettings property value. The external partner settings on a Cloud PC.
            ## @param value Value to set for the external_partner_settings property.
            ## @return a void
            ## 
            def external_partner_settings=(value)
                @external_partner_settings = value
            end
            ## 
            ## Gets the galleryImages property value. The gallery image resource on Cloud PC.
            ## @return a cloud_pc_gallery_image
            ## 
            def gallery_images
                return @gallery_images
            end
            ## 
            ## Sets the galleryImages property value. The gallery image resource on Cloud PC.
            ## @param value Value to set for the gallery_images property.
            ## @return a void
            ## 
            def gallery_images=(value)
                @gallery_images = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "auditEvents" => lambda {|n| @audit_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcAuditEvent.create_from_discriminator_value(pn) }) },
                    "cloudPCs" => lambda {|n| @cloud_p_cs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPC.create_from_discriminator_value(pn) }) },
                    "crossCloudGovernmentOrganizationMapping" => lambda {|n| @cross_cloud_government_organization_mapping = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcCrossCloudGovernmentOrganizationMapping.create_from_discriminator_value(pn) }) },
                    "deviceImages" => lambda {|n| @device_images = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcDeviceImage.create_from_discriminator_value(pn) }) },
                    "externalPartnerSettings" => lambda {|n| @external_partner_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcExternalPartnerSetting.create_from_discriminator_value(pn) }) },
                    "galleryImages" => lambda {|n| @gallery_images = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcGalleryImage.create_from_discriminator_value(pn) }) },
                    "onPremisesConnections" => lambda {|n| @on_premises_connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcOnPremisesConnection.create_from_discriminator_value(pn) }) },
                    "organizationSettings" => lambda {|n| @organization_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcOrganizationSettings.create_from_discriminator_value(pn) }) },
                    "provisioningPolicies" => lambda {|n| @provisioning_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcProvisioningPolicy.create_from_discriminator_value(pn) }) },
                    "reports" => lambda {|n| @reports = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcReports.create_from_discriminator_value(pn) }) },
                    "servicePlans" => lambda {|n| @service_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcServicePlan.create_from_discriminator_value(pn) }) },
                    "sharedUseServicePlans" => lambda {|n| @shared_use_service_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcSharedUseServicePlan.create_from_discriminator_value(pn) }) },
                    "snapshots" => lambda {|n| @snapshots = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcSnapshot.create_from_discriminator_value(pn) }) },
                    "supportedRegions" => lambda {|n| @supported_regions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcSupportedRegion.create_from_discriminator_value(pn) }) },
                    "userSettings" => lambda {|n| @user_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcUserSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the onPremisesConnections property value. A defined collection of Azure resource information that can be used to establish on-premises network connectivity for Cloud PCs.
            ## @return a cloud_pc_on_premises_connection
            ## 
            def on_premises_connections
                return @on_premises_connections
            end
            ## 
            ## Sets the onPremisesConnections property value. A defined collection of Azure resource information that can be used to establish on-premises network connectivity for Cloud PCs.
            ## @param value Value to set for the on_premises_connections property.
            ## @return a void
            ## 
            def on_premises_connections=(value)
                @on_premises_connections = value
            end
            ## 
            ## Gets the organizationSettings property value. The Cloud PC organization settings for a tenant.
            ## @return a cloud_pc_organization_settings
            ## 
            def organization_settings
                return @organization_settings
            end
            ## 
            ## Sets the organizationSettings property value. The Cloud PC organization settings for a tenant.
            ## @param value Value to set for the organization_settings property.
            ## @return a void
            ## 
            def organization_settings=(value)
                @organization_settings = value
            end
            ## 
            ## Gets the provisioningPolicies property value. Cloud PC provisioning policy.
            ## @return a cloud_pc_provisioning_policy
            ## 
            def provisioning_policies
                return @provisioning_policies
            end
            ## 
            ## Sets the provisioningPolicies property value. Cloud PC provisioning policy.
            ## @param value Value to set for the provisioning_policies property.
            ## @return a void
            ## 
            def provisioning_policies=(value)
                @provisioning_policies = value
            end
            ## 
            ## Gets the reports property value. Cloud PC related reports.
            ## @return a cloud_pc_reports
            ## 
            def reports
                return @reports
            end
            ## 
            ## Sets the reports property value. Cloud PC related reports.
            ## @param value Value to set for the reports property.
            ## @return a void
            ## 
            def reports=(value)
                @reports = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("auditEvents", @audit_events)
                writer.write_collection_of_object_values("cloudPCs", @cloud_p_cs)
                writer.write_object_value("crossCloudGovernmentOrganizationMapping", @cross_cloud_government_organization_mapping)
                writer.write_collection_of_object_values("deviceImages", @device_images)
                writer.write_collection_of_object_values("externalPartnerSettings", @external_partner_settings)
                writer.write_collection_of_object_values("galleryImages", @gallery_images)
                writer.write_collection_of_object_values("onPremisesConnections", @on_premises_connections)
                writer.write_object_value("organizationSettings", @organization_settings)
                writer.write_collection_of_object_values("provisioningPolicies", @provisioning_policies)
                writer.write_object_value("reports", @reports)
                writer.write_collection_of_object_values("servicePlans", @service_plans)
                writer.write_collection_of_object_values("sharedUseServicePlans", @shared_use_service_plans)
                writer.write_collection_of_object_values("snapshots", @snapshots)
                writer.write_collection_of_object_values("supportedRegions", @supported_regions)
                writer.write_collection_of_object_values("userSettings", @user_settings)
            end
            ## 
            ## Gets the servicePlans property value. Cloud PC service plans.
            ## @return a cloud_pc_service_plan
            ## 
            def service_plans
                return @service_plans
            end
            ## 
            ## Sets the servicePlans property value. Cloud PC service plans.
            ## @param value Value to set for the service_plans property.
            ## @return a void
            ## 
            def service_plans=(value)
                @service_plans = value
            end
            ## 
            ## Gets the sharedUseServicePlans property value. Cloud PC shared-use service plans.
            ## @return a cloud_pc_shared_use_service_plan
            ## 
            def shared_use_service_plans
                return @shared_use_service_plans
            end
            ## 
            ## Sets the sharedUseServicePlans property value. Cloud PC shared-use service plans.
            ## @param value Value to set for the shared_use_service_plans property.
            ## @return a void
            ## 
            def shared_use_service_plans=(value)
                @shared_use_service_plans = value
            end
            ## 
            ## Gets the snapshots property value. Cloud PC snapshots.
            ## @return a cloud_pc_snapshot
            ## 
            def snapshots
                return @snapshots
            end
            ## 
            ## Sets the snapshots property value. Cloud PC snapshots.
            ## @param value Value to set for the snapshots property.
            ## @return a void
            ## 
            def snapshots=(value)
                @snapshots = value
            end
            ## 
            ## Gets the supportedRegions property value. Cloud PC supported regions.
            ## @return a cloud_pc_supported_region
            ## 
            def supported_regions
                return @supported_regions
            end
            ## 
            ## Sets the supportedRegions property value. Cloud PC supported regions.
            ## @param value Value to set for the supported_regions property.
            ## @return a void
            ## 
            def supported_regions=(value)
                @supported_regions = value
            end
            ## 
            ## Gets the userSettings property value. Cloud PC user settings.
            ## @return a cloud_pc_user_setting
            ## 
            def user_settings
                return @user_settings
            end
            ## 
            ## Sets the userSettings property value. Cloud PC user settings.
            ## @param value Value to set for the user_settings property.
            ## @return a void
            ## 
            def user_settings=(value)
                @user_settings = value
            end
        end
    end
end
