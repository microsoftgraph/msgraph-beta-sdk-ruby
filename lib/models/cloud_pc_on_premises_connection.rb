require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcOnPremisesConnection < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The fully qualified domain name (FQDN) of the Active Directory domain you want to join. Optional.
            @ad_domain_name
            ## 
            # The password associated with adDomainUsername.
            @ad_domain_password
            ## 
            # The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com. Optional.
            @ad_domain_username
            ## 
            # The interface URL of the partner service's resource that links to this Azure network connection. Returned only on $select.
            @alternate_resource_url
            ## 
            # Specifies the method by which a provisioned Cloud PC is joined to Microsoft Entra. The azureADJoin option indicates the absence of an on-premises Active Directory (AD) in the current tenant that results in the Cloud PC device only joining to Microsoft Entra. The hybridAzureADJoin option indicates the presence of an on-premises AD in the current tenant and that the Cloud PC joins both the on-premises AD and Microsoft Entra. The selected option also determines the types of users who can be assigned and can sign into a Cloud PC. The azureADJoin option allows both cloud-only and hybrid users to be assigned and sign in, whereas hybridAzureADJoin is restricted to hybrid users only. The default value is hybridAzureADJoin. The possible values are: hybridAzureADJoin, azureADJoin, unknownFutureValue.
            @connection_type
            ## 
            # The display name for the Azure network connection.
            @display_name
            ## 
            # The healthCheckStatus property
            @health_check_status
            ## 
            # Indicates the results of health checks performed on the on-premises connection. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            @health_check_status_detail
            ## 
            # The details of the connection's health checks and the corresponding results. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            @health_check_status_details
            ## 
            # When true, the Azure network connection is in use. When false, the connection isn't in use. You can't delete a connection that’s in use. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            @in_use
            ## 
            # The managedBy property
            @managed_by
            ## 
            # The organizational unit (OU) in which the computer account is created. If left null, the OU that’s configured as the default (a well-known computer object container) in your Active Directory domain (OU) is used. Optional.
            @organizational_unit
            ## 
            # The ID of the target resource group. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}.
            @resource_group_id
            ## 
            # The scopeIds property
            @scope_ids
            ## 
            # The ID of the target subnet. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}.
            @subnet_id
            ## 
            # The ID of the target Azure subscription associated with your tenant.
            @subscription_id
            ## 
            # The name of the target Azure subscription. Read-only.
            @subscription_name
            ## 
            # The type property
            @type
            ## 
            # The ID of the target virtual network. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}.
            @virtual_network_id
            ## 
            # Indicates the resource location of the virtual target network. Read-only, computed value.
            @virtual_network_location
            ## 
            ## Gets the adDomainName property value. The fully qualified domain name (FQDN) of the Active Directory domain you want to join. Optional.
            ## @return a string
            ## 
            def ad_domain_name
                return @ad_domain_name
            end
            ## 
            ## Sets the adDomainName property value. The fully qualified domain name (FQDN) of the Active Directory domain you want to join. Optional.
            ## @param value Value to set for the adDomainName property.
            ## @return a void
            ## 
            def ad_domain_name=(value)
                @ad_domain_name = value
            end
            ## 
            ## Gets the adDomainPassword property value. The password associated with adDomainUsername.
            ## @return a string
            ## 
            def ad_domain_password
                return @ad_domain_password
            end
            ## 
            ## Sets the adDomainPassword property value. The password associated with adDomainUsername.
            ## @param value Value to set for the adDomainPassword property.
            ## @return a void
            ## 
            def ad_domain_password=(value)
                @ad_domain_password = value
            end
            ## 
            ## Gets the adDomainUsername property value. The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com. Optional.
            ## @return a string
            ## 
            def ad_domain_username
                return @ad_domain_username
            end
            ## 
            ## Sets the adDomainUsername property value. The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: admin@contoso.com. Optional.
            ## @param value Value to set for the adDomainUsername property.
            ## @return a void
            ## 
            def ad_domain_username=(value)
                @ad_domain_username = value
            end
            ## 
            ## Gets the alternateResourceUrl property value. The interface URL of the partner service's resource that links to this Azure network connection. Returned only on $select.
            ## @return a string
            ## 
            def alternate_resource_url
                return @alternate_resource_url
            end
            ## 
            ## Sets the alternateResourceUrl property value. The interface URL of the partner service's resource that links to this Azure network connection. Returned only on $select.
            ## @param value Value to set for the alternateResourceUrl property.
            ## @return a void
            ## 
            def alternate_resource_url=(value)
                @alternate_resource_url = value
            end
            ## 
            ## Gets the connectionType property value. Specifies the method by which a provisioned Cloud PC is joined to Microsoft Entra. The azureADJoin option indicates the absence of an on-premises Active Directory (AD) in the current tenant that results in the Cloud PC device only joining to Microsoft Entra. The hybridAzureADJoin option indicates the presence of an on-premises AD in the current tenant and that the Cloud PC joins both the on-premises AD and Microsoft Entra. The selected option also determines the types of users who can be assigned and can sign into a Cloud PC. The azureADJoin option allows both cloud-only and hybrid users to be assigned and sign in, whereas hybridAzureADJoin is restricted to hybrid users only. The default value is hybridAzureADJoin. The possible values are: hybridAzureADJoin, azureADJoin, unknownFutureValue.
            ## @return a cloud_pc_on_premises_connection_type
            ## 
            def connection_type
                return @connection_type
            end
            ## 
            ## Sets the connectionType property value. Specifies the method by which a provisioned Cloud PC is joined to Microsoft Entra. The azureADJoin option indicates the absence of an on-premises Active Directory (AD) in the current tenant that results in the Cloud PC device only joining to Microsoft Entra. The hybridAzureADJoin option indicates the presence of an on-premises AD in the current tenant and that the Cloud PC joins both the on-premises AD and Microsoft Entra. The selected option also determines the types of users who can be assigned and can sign into a Cloud PC. The azureADJoin option allows both cloud-only and hybrid users to be assigned and sign in, whereas hybridAzureADJoin is restricted to hybrid users only. The default value is hybridAzureADJoin. The possible values are: hybridAzureADJoin, azureADJoin, unknownFutureValue.
            ## @param value Value to set for the connectionType property.
            ## @return a void
            ## 
            def connection_type=(value)
                @connection_type = value
            end
            ## 
            ## Instantiates a new CloudPcOnPremisesConnection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_on_premises_connection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcOnPremisesConnection.new
            end
            ## 
            ## Gets the displayName property value. The display name for the Azure network connection.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the Azure network connection.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "adDomainName" => lambda {|n| @ad_domain_name = n.get_string_value() },
                    "adDomainPassword" => lambda {|n| @ad_domain_password = n.get_string_value() },
                    "adDomainUsername" => lambda {|n| @ad_domain_username = n.get_string_value() },
                    "alternateResourceUrl" => lambda {|n| @alternate_resource_url = n.get_string_value() },
                    "connectionType" => lambda {|n| @connection_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcOnPremisesConnectionType) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "healthCheckStatus" => lambda {|n| @health_check_status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcOnPremisesConnectionStatus) },
                    "healthCheckStatusDetail" => lambda {|n| @health_check_status_detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcOnPremisesConnectionStatusDetail.create_from_discriminator_value(pn) }) },
                    "healthCheckStatusDetails" => lambda {|n| @health_check_status_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcOnPremisesConnectionStatusDetails.create_from_discriminator_value(pn) }) },
                    "inUse" => lambda {|n| @in_use = n.get_boolean_value() },
                    "managedBy" => lambda {|n| @managed_by = n.get_enum_values(MicrosoftGraphBeta::Models::CloudPcManagementService) },
                    "organizationalUnit" => lambda {|n| @organizational_unit = n.get_string_value() },
                    "resourceGroupId" => lambda {|n| @resource_group_id = n.get_string_value() },
                    "scopeIds" => lambda {|n| @scope_ids = n.get_collection_of_primitive_values(String) },
                    "subnetId" => lambda {|n| @subnet_id = n.get_string_value() },
                    "subscriptionId" => lambda {|n| @subscription_id = n.get_string_value() },
                    "subscriptionName" => lambda {|n| @subscription_name = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcOnPremisesConnectionType) },
                    "virtualNetworkId" => lambda {|n| @virtual_network_id = n.get_string_value() },
                    "virtualNetworkLocation" => lambda {|n| @virtual_network_location = n.get_string_value() },
                })
            end
            ## 
            ## Gets the healthCheckStatus property value. The healthCheckStatus property
            ## @return a cloud_pc_on_premises_connection_status
            ## 
            def health_check_status
                return @health_check_status
            end
            ## 
            ## Sets the healthCheckStatus property value. The healthCheckStatus property
            ## @param value Value to set for the healthCheckStatus property.
            ## @return a void
            ## 
            def health_check_status=(value)
                @health_check_status = value
            end
            ## 
            ## Gets the healthCheckStatusDetail property value. Indicates the results of health checks performed on the on-premises connection. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            ## @return a cloud_pc_on_premises_connection_status_detail
            ## 
            def health_check_status_detail
                return @health_check_status_detail
            end
            ## 
            ## Sets the healthCheckStatusDetail property value. Indicates the results of health checks performed on the on-premises connection. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            ## @param value Value to set for the healthCheckStatusDetail property.
            ## @return a void
            ## 
            def health_check_status_detail=(value)
                @health_check_status_detail = value
            end
            ## 
            ## Gets the healthCheckStatusDetails property value. The details of the connection's health checks and the corresponding results. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            ## @return a cloud_pc_on_premises_connection_status_details
            ## 
            def health_check_status_details
                return @health_check_status_details
            end
            ## 
            ## Sets the healthCheckStatusDetails property value. The details of the connection's health checks and the corresponding results. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            ## @param value Value to set for the healthCheckStatusDetails property.
            ## @return a void
            ## 
            def health_check_status_details=(value)
                @health_check_status_details = value
            end
            ## 
            ## Gets the inUse property value. When true, the Azure network connection is in use. When false, the connection isn't in use. You can't delete a connection that’s in use. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            ## @return a boolean
            ## 
            def in_use
                return @in_use
            end
            ## 
            ## Sets the inUse property value. When true, the Azure network connection is in use. When false, the connection isn't in use. You can't delete a connection that’s in use. Returned only on $select. For an example that shows how to get the inUse property, see Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails. Read-only.
            ## @param value Value to set for the inUse property.
            ## @return a void
            ## 
            def in_use=(value)
                @in_use = value
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
            ## @param value Value to set for the managedBy property.
            ## @return a void
            ## 
            def managed_by=(value)
                @managed_by = value
            end
            ## 
            ## Gets the organizationalUnit property value. The organizational unit (OU) in which the computer account is created. If left null, the OU that’s configured as the default (a well-known computer object container) in your Active Directory domain (OU) is used. Optional.
            ## @return a string
            ## 
            def organizational_unit
                return @organizational_unit
            end
            ## 
            ## Sets the organizationalUnit property value. The organizational unit (OU) in which the computer account is created. If left null, the OU that’s configured as the default (a well-known computer object container) in your Active Directory domain (OU) is used. Optional.
            ## @param value Value to set for the organizationalUnit property.
            ## @return a void
            ## 
            def organizational_unit=(value)
                @organizational_unit = value
            end
            ## 
            ## Gets the resourceGroupId property value. The ID of the target resource group. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}.
            ## @return a string
            ## 
            def resource_group_id
                return @resource_group_id
            end
            ## 
            ## Sets the resourceGroupId property value. The ID of the target resource group. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}.
            ## @param value Value to set for the resourceGroupId property.
            ## @return a void
            ## 
            def resource_group_id=(value)
                @resource_group_id = value
            end
            ## 
            ## Gets the scopeIds property value. The scopeIds property
            ## @return a string
            ## 
            def scope_ids
                return @scope_ids
            end
            ## 
            ## Sets the scopeIds property value. The scopeIds property
            ## @param value Value to set for the scopeIds property.
            ## @return a void
            ## 
            def scope_ids=(value)
                @scope_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("adDomainName", @ad_domain_name)
                writer.write_string_value("adDomainPassword", @ad_domain_password)
                writer.write_string_value("adDomainUsername", @ad_domain_username)
                writer.write_string_value("alternateResourceUrl", @alternate_resource_url)
                writer.write_enum_value("connectionType", @connection_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("healthCheckStatus", @health_check_status)
                writer.write_object_value("healthCheckStatusDetail", @health_check_status_detail)
                writer.write_object_value("healthCheckStatusDetails", @health_check_status_details)
                writer.write_boolean_value("inUse", @in_use)
                writer.write_enum_value("managedBy", @managed_by)
                writer.write_string_value("organizationalUnit", @organizational_unit)
                writer.write_string_value("resourceGroupId", @resource_group_id)
                writer.write_collection_of_primitive_values("scopeIds", @scope_ids)
                writer.write_string_value("subnetId", @subnet_id)
                writer.write_string_value("subscriptionId", @subscription_id)
                writer.write_string_value("subscriptionName", @subscription_name)
                writer.write_enum_value("type", @type)
                writer.write_string_value("virtualNetworkId", @virtual_network_id)
                writer.write_string_value("virtualNetworkLocation", @virtual_network_location)
            end
            ## 
            ## Gets the subnetId property value. The ID of the target subnet. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}.
            ## @return a string
            ## 
            def subnet_id
                return @subnet_id
            end
            ## 
            ## Sets the subnetId property value. The ID of the target subnet. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}.
            ## @param value Value to set for the subnetId property.
            ## @return a void
            ## 
            def subnet_id=(value)
                @subnet_id = value
            end
            ## 
            ## Gets the subscriptionId property value. The ID of the target Azure subscription associated with your tenant.
            ## @return a string
            ## 
            def subscription_id
                return @subscription_id
            end
            ## 
            ## Sets the subscriptionId property value. The ID of the target Azure subscription associated with your tenant.
            ## @param value Value to set for the subscriptionId property.
            ## @return a void
            ## 
            def subscription_id=(value)
                @subscription_id = value
            end
            ## 
            ## Gets the subscriptionName property value. The name of the target Azure subscription. Read-only.
            ## @return a string
            ## 
            def subscription_name
                return @subscription_name
            end
            ## 
            ## Sets the subscriptionName property value. The name of the target Azure subscription. Read-only.
            ## @param value Value to set for the subscriptionName property.
            ## @return a void
            ## 
            def subscription_name=(value)
                @subscription_name = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a cloud_pc_on_premises_connection_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the virtualNetworkId property value. The ID of the target virtual network. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}.
            ## @return a string
            ## 
            def virtual_network_id
                return @virtual_network_id
            end
            ## 
            ## Sets the virtualNetworkId property value. The ID of the target virtual network. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}.
            ## @param value Value to set for the virtualNetworkId property.
            ## @return a void
            ## 
            def virtual_network_id=(value)
                @virtual_network_id = value
            end
            ## 
            ## Gets the virtualNetworkLocation property value. Indicates the resource location of the virtual target network. Read-only, computed value.
            ## @return a string
            ## 
            def virtual_network_location
                return @virtual_network_location
            end
            ## 
            ## Sets the virtualNetworkLocation property value. Indicates the resource location of the virtual target network. Read-only, computed value.
            ## @param value Value to set for the virtualNetworkLocation property.
            ## @return a void
            ## 
            def virtual_network_location=(value)
                @virtual_network_location = value
            end
        end
    end
end
