require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcProvisioningPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The URL of the alternate resource that links to this provisioning policy. Read-only.
            @alternate_resource_url
            ## 
            # A defined collection of provisioning policy assignments. Represents the set of Microsoft 365 groups and security groups in Azure AD that have provisioning policy assigned. Returned only on $expand. For an example about how to get the assignments relationship, see Get cloudPcProvisioningPolicy.
            @assignments
            ## 
            # The display name of the Cloud PC group that the Cloud PCs reside in. Read-only.
            @cloud_pc_group_display_name
            ## 
            # The cloudPcNamingTemplate property
            @cloud_pc_naming_template
            ## 
            # The provisioning policy description.
            @description
            ## 
            # The display name for the provisioning policy.
            @display_name
            ## 
            # Specifies how Cloud PCs will join Azure Active Directory.
            @domain_join_configuration
            ## 
            # The domainJoinConfigurations property
            @domain_join_configurations
            ## 
            # True if the provisioned Cloud PC can be accessed by single sign-on. False indicates that the provisioned Cloud PC doesn't support this feature. Default value is false. Windows 365 users can use single sign-on to authenticate to Azure Active Directory (Azure AD) with passwordless options (for example, FIDO keys) to access their Cloud PC. Optional.
            @enable_single_sign_on
            ## 
            # The number of hours to wait before reprovisioning/deprovisioning happens. Read-only.
            @grace_period_in_hours
            ## 
            # The display name for the OS image you’re provisioning.
            @image_display_name
            ## 
            # The ID of the OS image you want to provision on Cloud PCs. The format for a gallery type image is: {publisher_offer_sku}. Supported values for each of the parameters are as follows:publisher: Microsoftwindowsdesktop. offer: windows-ent-cpc. sku: 21h1-ent-cpc-m365, 21h1-ent-cpc-os, 20h2-ent-cpc-m365, 20h2-ent-cpc-os, 20h1-ent-cpc-m365, 20h1-ent-cpc-os, 19h2-ent-cpc-m365 and 19h2-ent-cpc-os.
            @image_id
            ## 
            # The imageType property
            @image_type
            ## 
            # Indicates whether the local admin option is enabled. If the local admin option is enabled, the end user can be an admin of the Cloud PC device. Read-only.
            @local_admin_enabled
            ## 
            # The managedBy property
            @managed_by
            ## 
            # The specific settings for the Microsoft Managed Desktop, which enables customers to get a managed device experience for the Cloud PC. Before you can enable Microsoft Managed Desktop, an admin must configure it.
            @microsoft_managed_desktop
            ## 
            # The ID of the cloudPcOnPremisesConnection. To ensure that Cloud PCs have network connectivity and that they domain join, choose a connection with a virtual network that’s validated by the Cloud PC service.
            @on_premises_connection_id
            ## 
            # Specifies the type of license used when provisioning Cloud PCs using this policy. By default, the license type is dedicated if the provisioningType isn't specified when you create the cloudPcProvisioningPolicy. You can't change this property after the cloudPcProvisioningPolicy was created. Possible values are: dedicated, shared, unknownFutureValue.
            @provisioning_type
            ## 
            # Specific Windows settings to configure while creating Cloud PCs for this provisioning policy.
            @windows_settings
            ## 
            ## Gets the alternateResourceUrl property value. The URL of the alternate resource that links to this provisioning policy. Read-only.
            ## @return a string
            ## 
            def alternate_resource_url
                return @alternate_resource_url
            end
            ## 
            ## Sets the alternateResourceUrl property value. The URL of the alternate resource that links to this provisioning policy. Read-only.
            ## @param value Value to set for the alternate_resource_url property.
            ## @return a void
            ## 
            def alternate_resource_url=(value)
                @alternate_resource_url = value
            end
            ## 
            ## Gets the assignments property value. A defined collection of provisioning policy assignments. Represents the set of Microsoft 365 groups and security groups in Azure AD that have provisioning policy assigned. Returned only on $expand. For an example about how to get the assignments relationship, see Get cloudPcProvisioningPolicy.
            ## @return a cloud_pc_provisioning_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. A defined collection of provisioning policy assignments. Represents the set of Microsoft 365 groups and security groups in Azure AD that have provisioning policy assigned. Returned only on $expand. For an example about how to get the assignments relationship, see Get cloudPcProvisioningPolicy.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the cloudPcGroupDisplayName property value. The display name of the Cloud PC group that the Cloud PCs reside in. Read-only.
            ## @return a string
            ## 
            def cloud_pc_group_display_name
                return @cloud_pc_group_display_name
            end
            ## 
            ## Sets the cloudPcGroupDisplayName property value. The display name of the Cloud PC group that the Cloud PCs reside in. Read-only.
            ## @param value Value to set for the cloud_pc_group_display_name property.
            ## @return a void
            ## 
            def cloud_pc_group_display_name=(value)
                @cloud_pc_group_display_name = value
            end
            ## 
            ## Gets the cloudPcNamingTemplate property value. The cloudPcNamingTemplate property
            ## @return a string
            ## 
            def cloud_pc_naming_template
                return @cloud_pc_naming_template
            end
            ## 
            ## Sets the cloudPcNamingTemplate property value. The cloudPcNamingTemplate property
            ## @param value Value to set for the cloud_pc_naming_template property.
            ## @return a void
            ## 
            def cloud_pc_naming_template=(value)
                @cloud_pc_naming_template = value
            end
            ## 
            ## Instantiates a new CloudPcProvisioningPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_provisioning_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcProvisioningPolicy.new
            end
            ## 
            ## Gets the description property value. The provisioning policy description.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The provisioning policy description.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the provisioning policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the provisioning policy.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the domainJoinConfiguration property value. Specifies how Cloud PCs will join Azure Active Directory.
            ## @return a cloud_pc_domain_join_configuration
            ## 
            def domain_join_configuration
                return @domain_join_configuration
            end
            ## 
            ## Sets the domainJoinConfiguration property value. Specifies how Cloud PCs will join Azure Active Directory.
            ## @param value Value to set for the domain_join_configuration property.
            ## @return a void
            ## 
            def domain_join_configuration=(value)
                @domain_join_configuration = value
            end
            ## 
            ## Gets the domainJoinConfigurations property value. The domainJoinConfigurations property
            ## @return a cloud_pc_domain_join_configuration
            ## 
            def domain_join_configurations
                return @domain_join_configurations
            end
            ## 
            ## Sets the domainJoinConfigurations property value. The domainJoinConfigurations property
            ## @param value Value to set for the domain_join_configurations property.
            ## @return a void
            ## 
            def domain_join_configurations=(value)
                @domain_join_configurations = value
            end
            ## 
            ## Gets the enableSingleSignOn property value. True if the provisioned Cloud PC can be accessed by single sign-on. False indicates that the provisioned Cloud PC doesn't support this feature. Default value is false. Windows 365 users can use single sign-on to authenticate to Azure Active Directory (Azure AD) with passwordless options (for example, FIDO keys) to access their Cloud PC. Optional.
            ## @return a boolean
            ## 
            def enable_single_sign_on
                return @enable_single_sign_on
            end
            ## 
            ## Sets the enableSingleSignOn property value. True if the provisioned Cloud PC can be accessed by single sign-on. False indicates that the provisioned Cloud PC doesn't support this feature. Default value is false. Windows 365 users can use single sign-on to authenticate to Azure Active Directory (Azure AD) with passwordless options (for example, FIDO keys) to access their Cloud PC. Optional.
            ## @param value Value to set for the enable_single_sign_on property.
            ## @return a void
            ## 
            def enable_single_sign_on=(value)
                @enable_single_sign_on = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alternateResourceUrl" => lambda {|n| @alternate_resource_url = n.get_string_value() },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcProvisioningPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "cloudPcGroupDisplayName" => lambda {|n| @cloud_pc_group_display_name = n.get_string_value() },
                    "cloudPcNamingTemplate" => lambda {|n| @cloud_pc_naming_template = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "domainJoinConfiguration" => lambda {|n| @domain_join_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcDomainJoinConfiguration.create_from_discriminator_value(pn) }) },
                    "domainJoinConfigurations" => lambda {|n| @domain_join_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcDomainJoinConfiguration.create_from_discriminator_value(pn) }) },
                    "enableSingleSignOn" => lambda {|n| @enable_single_sign_on = n.get_boolean_value() },
                    "gracePeriodInHours" => lambda {|n| @grace_period_in_hours = n.get_number_value() },
                    "imageDisplayName" => lambda {|n| @image_display_name = n.get_string_value() },
                    "imageId" => lambda {|n| @image_id = n.get_string_value() },
                    "imageType" => lambda {|n| @image_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcProvisioningPolicyImageType) },
                    "localAdminEnabled" => lambda {|n| @local_admin_enabled = n.get_boolean_value() },
                    "managedBy" => lambda {|n| @managed_by = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcManagementService) },
                    "microsoftManagedDesktop" => lambda {|n| @microsoft_managed_desktop = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MicrosoftManagedDesktop.create_from_discriminator_value(pn) }) },
                    "onPremisesConnectionId" => lambda {|n| @on_premises_connection_id = n.get_string_value() },
                    "provisioningType" => lambda {|n| @provisioning_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcProvisioningType) },
                    "windowsSettings" => lambda {|n| @windows_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcWindowsSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the gracePeriodInHours property value. The number of hours to wait before reprovisioning/deprovisioning happens. Read-only.
            ## @return a integer
            ## 
            def grace_period_in_hours
                return @grace_period_in_hours
            end
            ## 
            ## Sets the gracePeriodInHours property value. The number of hours to wait before reprovisioning/deprovisioning happens. Read-only.
            ## @param value Value to set for the grace_period_in_hours property.
            ## @return a void
            ## 
            def grace_period_in_hours=(value)
                @grace_period_in_hours = value
            end
            ## 
            ## Gets the imageDisplayName property value. The display name for the OS image you’re provisioning.
            ## @return a string
            ## 
            def image_display_name
                return @image_display_name
            end
            ## 
            ## Sets the imageDisplayName property value. The display name for the OS image you’re provisioning.
            ## @param value Value to set for the image_display_name property.
            ## @return a void
            ## 
            def image_display_name=(value)
                @image_display_name = value
            end
            ## 
            ## Gets the imageId property value. The ID of the OS image you want to provision on Cloud PCs. The format for a gallery type image is: {publisher_offer_sku}. Supported values for each of the parameters are as follows:publisher: Microsoftwindowsdesktop. offer: windows-ent-cpc. sku: 21h1-ent-cpc-m365, 21h1-ent-cpc-os, 20h2-ent-cpc-m365, 20h2-ent-cpc-os, 20h1-ent-cpc-m365, 20h1-ent-cpc-os, 19h2-ent-cpc-m365 and 19h2-ent-cpc-os.
            ## @return a string
            ## 
            def image_id
                return @image_id
            end
            ## 
            ## Sets the imageId property value. The ID of the OS image you want to provision on Cloud PCs. The format for a gallery type image is: {publisher_offer_sku}. Supported values for each of the parameters are as follows:publisher: Microsoftwindowsdesktop. offer: windows-ent-cpc. sku: 21h1-ent-cpc-m365, 21h1-ent-cpc-os, 20h2-ent-cpc-m365, 20h2-ent-cpc-os, 20h1-ent-cpc-m365, 20h1-ent-cpc-os, 19h2-ent-cpc-m365 and 19h2-ent-cpc-os.
            ## @param value Value to set for the image_id property.
            ## @return a void
            ## 
            def image_id=(value)
                @image_id = value
            end
            ## 
            ## Gets the imageType property value. The imageType property
            ## @return a cloud_pc_provisioning_policy_image_type
            ## 
            def image_type
                return @image_type
            end
            ## 
            ## Sets the imageType property value. The imageType property
            ## @param value Value to set for the image_type property.
            ## @return a void
            ## 
            def image_type=(value)
                @image_type = value
            end
            ## 
            ## Gets the localAdminEnabled property value. Indicates whether the local admin option is enabled. If the local admin option is enabled, the end user can be an admin of the Cloud PC device. Read-only.
            ## @return a boolean
            ## 
            def local_admin_enabled
                return @local_admin_enabled
            end
            ## 
            ## Sets the localAdminEnabled property value. Indicates whether the local admin option is enabled. If the local admin option is enabled, the end user can be an admin of the Cloud PC device. Read-only.
            ## @param value Value to set for the local_admin_enabled property.
            ## @return a void
            ## 
            def local_admin_enabled=(value)
                @local_admin_enabled = value
            end
            ## 
            ## Gets the managedBy property value. The managedBy property
            ## @return a cloud_pc_management_service
            ## 
            def managed_by
                return @managed_by
            end
            ## 
            ## Sets the managedBy property value. The managedBy property
            ## @param value Value to set for the managed_by property.
            ## @return a void
            ## 
            def managed_by=(value)
                @managed_by = value
            end
            ## 
            ## Gets the microsoftManagedDesktop property value. The specific settings for the Microsoft Managed Desktop, which enables customers to get a managed device experience for the Cloud PC. Before you can enable Microsoft Managed Desktop, an admin must configure it.
            ## @return a microsoft_managed_desktop
            ## 
            def microsoft_managed_desktop
                return @microsoft_managed_desktop
            end
            ## 
            ## Sets the microsoftManagedDesktop property value. The specific settings for the Microsoft Managed Desktop, which enables customers to get a managed device experience for the Cloud PC. Before you can enable Microsoft Managed Desktop, an admin must configure it.
            ## @param value Value to set for the microsoft_managed_desktop property.
            ## @return a void
            ## 
            def microsoft_managed_desktop=(value)
                @microsoft_managed_desktop = value
            end
            ## 
            ## Gets the onPremisesConnectionId property value. The ID of the cloudPcOnPremisesConnection. To ensure that Cloud PCs have network connectivity and that they domain join, choose a connection with a virtual network that’s validated by the Cloud PC service.
            ## @return a string
            ## 
            def on_premises_connection_id
                return @on_premises_connection_id
            end
            ## 
            ## Sets the onPremisesConnectionId property value. The ID of the cloudPcOnPremisesConnection. To ensure that Cloud PCs have network connectivity and that they domain join, choose a connection with a virtual network that’s validated by the Cloud PC service.
            ## @param value Value to set for the on_premises_connection_id property.
            ## @return a void
            ## 
            def on_premises_connection_id=(value)
                @on_premises_connection_id = value
            end
            ## 
            ## Gets the provisioningType property value. Specifies the type of license used when provisioning Cloud PCs using this policy. By default, the license type is dedicated if the provisioningType isn't specified when you create the cloudPcProvisioningPolicy. You can't change this property after the cloudPcProvisioningPolicy was created. Possible values are: dedicated, shared, unknownFutureValue.
            ## @return a cloud_pc_provisioning_type
            ## 
            def provisioning_type
                return @provisioning_type
            end
            ## 
            ## Sets the provisioningType property value. Specifies the type of license used when provisioning Cloud PCs using this policy. By default, the license type is dedicated if the provisioningType isn't specified when you create the cloudPcProvisioningPolicy. You can't change this property after the cloudPcProvisioningPolicy was created. Possible values are: dedicated, shared, unknownFutureValue.
            ## @param value Value to set for the provisioning_type property.
            ## @return a void
            ## 
            def provisioning_type=(value)
                @provisioning_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("alternateResourceUrl", @alternate_resource_url)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_string_value("cloudPcGroupDisplayName", @cloud_pc_group_display_name)
                writer.write_string_value("cloudPcNamingTemplate", @cloud_pc_naming_template)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("domainJoinConfiguration", @domain_join_configuration)
                writer.write_collection_of_object_values("domainJoinConfigurations", @domain_join_configurations)
                writer.write_boolean_value("enableSingleSignOn", @enable_single_sign_on)
                writer.write_number_value("gracePeriodInHours", @grace_period_in_hours)
                writer.write_string_value("imageDisplayName", @image_display_name)
                writer.write_string_value("imageId", @image_id)
                writer.write_enum_value("imageType", @image_type)
                writer.write_boolean_value("localAdminEnabled", @local_admin_enabled)
                writer.write_enum_value("managedBy", @managed_by)
                writer.write_object_value("microsoftManagedDesktop", @microsoft_managed_desktop)
                writer.write_string_value("onPremisesConnectionId", @on_premises_connection_id)
                writer.write_enum_value("provisioningType", @provisioning_type)
                writer.write_object_value("windowsSettings", @windows_settings)
            end
            ## 
            ## Gets the windowsSettings property value. Specific Windows settings to configure while creating Cloud PCs for this provisioning policy.
            ## @return a cloud_pc_windows_settings
            ## 
            def windows_settings
                return @windows_settings
            end
            ## 
            ## Sets the windowsSettings property value. Specific Windows settings to configure while creating Cloud PCs for this provisioning policy.
            ## @param value Value to set for the windows_settings property.
            ## @return a void
            ## 
            def windows_settings=(value)
                @windows_settings = value
            end
        end
    end
end
