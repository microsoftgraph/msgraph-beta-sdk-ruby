require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HostSecurityProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The azureSubscriptionId property
            @azure_subscription_id
            ## 
            # The azureTenantId property
            @azure_tenant_id
            ## 
            # The firstSeenDateTime property
            @first_seen_date_time
            ## 
            # The fqdn property
            @fqdn
            ## 
            # The isAzureAdJoined property
            @is_azure_ad_joined
            ## 
            # The isAzureAdRegistered property
            @is_azure_ad_registered
            ## 
            # The isHybridAzureDomainJoined property
            @is_hybrid_azure_domain_joined
            ## 
            # The lastSeenDateTime property
            @last_seen_date_time
            ## 
            # The logonUsers property
            @logon_users
            ## 
            # The netBiosName property
            @net_bios_name
            ## 
            # The networkInterfaces property
            @network_interfaces
            ## 
            # The os property
            @os
            ## 
            # The osVersion property
            @os_version
            ## 
            # The parentHost property
            @parent_host
            ## 
            # The relatedHostIds property
            @related_host_ids
            ## 
            # The riskScore property
            @risk_score
            ## 
            # The tags property
            @tags
            ## 
            # The vendorInformation property
            @vendor_information
            ## 
            ## Gets the azureSubscriptionId property value. The azureSubscriptionId property
            ## @return a string
            ## 
            def azure_subscription_id
                return @azure_subscription_id
            end
            ## 
            ## Sets the azureSubscriptionId property value. The azureSubscriptionId property
            ## @param value Value to set for the azure_subscription_id property.
            ## @return a void
            ## 
            def azure_subscription_id=(value)
                @azure_subscription_id = value
            end
            ## 
            ## Gets the azureTenantId property value. The azureTenantId property
            ## @return a string
            ## 
            def azure_tenant_id
                return @azure_tenant_id
            end
            ## 
            ## Sets the azureTenantId property value. The azureTenantId property
            ## @param value Value to set for the azure_tenant_id property.
            ## @return a void
            ## 
            def azure_tenant_id=(value)
                @azure_tenant_id = value
            end
            ## 
            ## Instantiates a new hostSecurityProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a host_security_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HostSecurityProfile.new
            end
            ## 
            ## Gets the firstSeenDateTime property value. The firstSeenDateTime property
            ## @return a date_time
            ## 
            def first_seen_date_time
                return @first_seen_date_time
            end
            ## 
            ## Sets the firstSeenDateTime property value. The firstSeenDateTime property
            ## @param value Value to set for the first_seen_date_time property.
            ## @return a void
            ## 
            def first_seen_date_time=(value)
                @first_seen_date_time = value
            end
            ## 
            ## Gets the fqdn property value. The fqdn property
            ## @return a string
            ## 
            def fqdn
                return @fqdn
            end
            ## 
            ## Sets the fqdn property value. The fqdn property
            ## @param value Value to set for the fqdn property.
            ## @return a void
            ## 
            def fqdn=(value)
                @fqdn = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureSubscriptionId" => lambda {|n| @azure_subscription_id = n.get_string_value() },
                    "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                    "firstSeenDateTime" => lambda {|n| @first_seen_date_time = n.get_date_time_value() },
                    "fqdn" => lambda {|n| @fqdn = n.get_string_value() },
                    "isAzureAdJoined" => lambda {|n| @is_azure_ad_joined = n.get_boolean_value() },
                    "isAzureAdRegistered" => lambda {|n| @is_azure_ad_registered = n.get_boolean_value() },
                    "isHybridAzureDomainJoined" => lambda {|n| @is_hybrid_azure_domain_joined = n.get_boolean_value() },
                    "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                    "logonUsers" => lambda {|n| @logon_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LogonUser.create_from_discriminator_value(pn) }) },
                    "netBiosName" => lambda {|n| @net_bios_name = n.get_string_value() },
                    "networkInterfaces" => lambda {|n| @network_interfaces = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkInterface.create_from_discriminator_value(pn) }) },
                    "os" => lambda {|n| @os = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "parentHost" => lambda {|n| @parent_host = n.get_string_value() },
                    "relatedHostIds" => lambda {|n| @related_host_ids = n.get_collection_of_primitive_values(String) },
                    "riskScore" => lambda {|n| @risk_score = n.get_string_value() },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isAzureAdJoined property value. The isAzureAdJoined property
            ## @return a boolean
            ## 
            def is_azure_ad_joined
                return @is_azure_ad_joined
            end
            ## 
            ## Sets the isAzureAdJoined property value. The isAzureAdJoined property
            ## @param value Value to set for the is_azure_ad_joined property.
            ## @return a void
            ## 
            def is_azure_ad_joined=(value)
                @is_azure_ad_joined = value
            end
            ## 
            ## Gets the isAzureAdRegistered property value. The isAzureAdRegistered property
            ## @return a boolean
            ## 
            def is_azure_ad_registered
                return @is_azure_ad_registered
            end
            ## 
            ## Sets the isAzureAdRegistered property value. The isAzureAdRegistered property
            ## @param value Value to set for the is_azure_ad_registered property.
            ## @return a void
            ## 
            def is_azure_ad_registered=(value)
                @is_azure_ad_registered = value
            end
            ## 
            ## Gets the isHybridAzureDomainJoined property value. The isHybridAzureDomainJoined property
            ## @return a boolean
            ## 
            def is_hybrid_azure_domain_joined
                return @is_hybrid_azure_domain_joined
            end
            ## 
            ## Sets the isHybridAzureDomainJoined property value. The isHybridAzureDomainJoined property
            ## @param value Value to set for the is_hybrid_azure_domain_joined property.
            ## @return a void
            ## 
            def is_hybrid_azure_domain_joined=(value)
                @is_hybrid_azure_domain_joined = value
            end
            ## 
            ## Gets the lastSeenDateTime property value. The lastSeenDateTime property
            ## @return a date_time
            ## 
            def last_seen_date_time
                return @last_seen_date_time
            end
            ## 
            ## Sets the lastSeenDateTime property value. The lastSeenDateTime property
            ## @param value Value to set for the last_seen_date_time property.
            ## @return a void
            ## 
            def last_seen_date_time=(value)
                @last_seen_date_time = value
            end
            ## 
            ## Gets the logonUsers property value. The logonUsers property
            ## @return a logon_user
            ## 
            def logon_users
                return @logon_users
            end
            ## 
            ## Sets the logonUsers property value. The logonUsers property
            ## @param value Value to set for the logon_users property.
            ## @return a void
            ## 
            def logon_users=(value)
                @logon_users = value
            end
            ## 
            ## Gets the netBiosName property value. The netBiosName property
            ## @return a string
            ## 
            def net_bios_name
                return @net_bios_name
            end
            ## 
            ## Sets the netBiosName property value. The netBiosName property
            ## @param value Value to set for the net_bios_name property.
            ## @return a void
            ## 
            def net_bios_name=(value)
                @net_bios_name = value
            end
            ## 
            ## Gets the networkInterfaces property value. The networkInterfaces property
            ## @return a network_interface
            ## 
            def network_interfaces
                return @network_interfaces
            end
            ## 
            ## Sets the networkInterfaces property value. The networkInterfaces property
            ## @param value Value to set for the network_interfaces property.
            ## @return a void
            ## 
            def network_interfaces=(value)
                @network_interfaces = value
            end
            ## 
            ## Gets the os property value. The os property
            ## @return a string
            ## 
            def os
                return @os
            end
            ## 
            ## Sets the os property value. The os property
            ## @param value Value to set for the os property.
            ## @return a void
            ## 
            def os=(value)
                @os = value
            end
            ## 
            ## Gets the osVersion property value. The osVersion property
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The osVersion property
            ## @param value Value to set for the os_version property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the parentHost property value. The parentHost property
            ## @return a string
            ## 
            def parent_host
                return @parent_host
            end
            ## 
            ## Sets the parentHost property value. The parentHost property
            ## @param value Value to set for the parent_host property.
            ## @return a void
            ## 
            def parent_host=(value)
                @parent_host = value
            end
            ## 
            ## Gets the relatedHostIds property value. The relatedHostIds property
            ## @return a string
            ## 
            def related_host_ids
                return @related_host_ids
            end
            ## 
            ## Sets the relatedHostIds property value. The relatedHostIds property
            ## @param value Value to set for the related_host_ids property.
            ## @return a void
            ## 
            def related_host_ids=(value)
                @related_host_ids = value
            end
            ## 
            ## Gets the riskScore property value. The riskScore property
            ## @return a string
            ## 
            def risk_score
                return @risk_score
            end
            ## 
            ## Sets the riskScore property value. The riskScore property
            ## @param value Value to set for the risk_score property.
            ## @return a void
            ## 
            def risk_score=(value)
                @risk_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("azureSubscriptionId", @azure_subscription_id)
                writer.write_string_value("azureTenantId", @azure_tenant_id)
                writer.write_date_time_value("firstSeenDateTime", @first_seen_date_time)
                writer.write_string_value("fqdn", @fqdn)
                writer.write_boolean_value("isAzureAdJoined", @is_azure_ad_joined)
                writer.write_boolean_value("isAzureAdRegistered", @is_azure_ad_registered)
                writer.write_boolean_value("isHybridAzureDomainJoined", @is_hybrid_azure_domain_joined)
                writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
                writer.write_collection_of_object_values("logonUsers", @logon_users)
                writer.write_string_value("netBiosName", @net_bios_name)
                writer.write_collection_of_object_values("networkInterfaces", @network_interfaces)
                writer.write_string_value("os", @os)
                writer.write_string_value("osVersion", @os_version)
                writer.write_string_value("parentHost", @parent_host)
                writer.write_collection_of_primitive_values("relatedHostIds", @related_host_ids)
                writer.write_string_value("riskScore", @risk_score)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_object_value("vendorInformation", @vendor_information)
            end
            ## 
            ## Gets the tags property value. The tags property
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. The tags property
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the vendorInformation property value. The vendorInformation property
            ## @return a security_vendor_information
            ## 
            def vendor_information
                return @vendor_information
            end
            ## 
            ## Sets the vendorInformation property value. The vendorInformation property
            ## @param value Value to set for the vendor_information property.
            ## @return a void
            ## 
            def vendor_information=(value)
                @vendor_information = value
            end
        end
    end
end
