require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Windows Network Isolation Policy
    class WindowsNetworkIsolationPolicy
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Contains a list of enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy. This collection can contain a maximum of 500 elements.
        @enterprise_cloud_resources
        ## 
        # This is the comma-separated list of internal proxy servers. For example, '157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59'. These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseCloudResources policy to force traffic to the matched cloud resources through these proxies.
        @enterprise_internal_proxy_servers
        ## 
        # Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to. This collection can contain a maximum of 500 elements.
        @enterprise_i_p_ranges
        ## 
        # Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false.
        @enterprise_i_p_ranges_are_authoritative
        ## 
        # This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected. These locations will be considered a safe destination for enterprise data to be shared to.
        @enterprise_network_domain_names
        ## 
        # This is a list of proxy servers. Any server not on this list is considered non-enterprise.
        @enterprise_proxy_servers
        ## 
        # Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false
        @enterprise_proxy_servers_are_authoritative
        ## 
        # List of domain names that can used for work or personal resource.
        @neutral_domain_resources
        ## 
        # The OdataType property
        @odata_type
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new windowsNetworkIsolationPolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_network_isolation_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsNetworkIsolationPolicy.new
        end
        ## 
        ## Gets the enterpriseCloudResources property value. Contains a list of enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy. This collection can contain a maximum of 500 elements.
        ## @return a proxied_domain
        ## 
        def enterprise_cloud_resources
            return @enterprise_cloud_resources
        end
        ## 
        ## Sets the enterpriseCloudResources property value. Contains a list of enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the EnterpriseInternalProxyServers policy. This collection can contain a maximum of 500 elements.
        ## @param value Value to set for the enterpriseCloudResources property.
        ## @return a void
        ## 
        def enterprise_cloud_resources=(value)
            @enterprise_cloud_resources = value
        end
        ## 
        ## Gets the enterpriseInternalProxyServers property value. This is the comma-separated list of internal proxy servers. For example, '157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59'. These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseCloudResources policy to force traffic to the matched cloud resources through these proxies.
        ## @return a string
        ## 
        def enterprise_internal_proxy_servers
            return @enterprise_internal_proxy_servers
        end
        ## 
        ## Sets the enterpriseInternalProxyServers property value. This is the comma-separated list of internal proxy servers. For example, '157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59'. These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the EnterpriseCloudResources policy to force traffic to the matched cloud resources through these proxies.
        ## @param value Value to set for the enterpriseInternalProxyServers property.
        ## @return a void
        ## 
        def enterprise_internal_proxy_servers=(value)
            @enterprise_internal_proxy_servers = value
        end
        ## 
        ## Gets the enterpriseIPRanges property value. Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to. This collection can contain a maximum of 500 elements.
        ## @return a ip_range
        ## 
        def enterprise_i_p_ranges
            return @enterprise_i_p_ranges
        end
        ## 
        ## Sets the enterpriseIPRanges property value. Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to. This collection can contain a maximum of 500 elements.
        ## @param value Value to set for the enterpriseIPRanges property.
        ## @return a void
        ## 
        def enterprise_i_p_ranges=(value)
            @enterprise_i_p_ranges = value
        end
        ## 
        ## Gets the enterpriseIPRangesAreAuthoritative property value. Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false.
        ## @return a boolean
        ## 
        def enterprise_i_p_ranges_are_authoritative
            return @enterprise_i_p_ranges_are_authoritative
        end
        ## 
        ## Sets the enterpriseIPRangesAreAuthoritative property value. Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets. Default is false.
        ## @param value Value to set for the enterpriseIPRangesAreAuthoritative property.
        ## @return a void
        ## 
        def enterprise_i_p_ranges_are_authoritative=(value)
            @enterprise_i_p_ranges_are_authoritative = value
        end
        ## 
        ## Gets the enterpriseNetworkDomainNames property value. This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected. These locations will be considered a safe destination for enterprise data to be shared to.
        ## @return a string
        ## 
        def enterprise_network_domain_names
            return @enterprise_network_domain_names
        end
        ## 
        ## Sets the enterpriseNetworkDomainNames property value. This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected. These locations will be considered a safe destination for enterprise data to be shared to.
        ## @param value Value to set for the enterpriseNetworkDomainNames property.
        ## @return a void
        ## 
        def enterprise_network_domain_names=(value)
            @enterprise_network_domain_names = value
        end
        ## 
        ## Gets the enterpriseProxyServers property value. This is a list of proxy servers. Any server not on this list is considered non-enterprise.
        ## @return a string
        ## 
        def enterprise_proxy_servers
            return @enterprise_proxy_servers
        end
        ## 
        ## Sets the enterpriseProxyServers property value. This is a list of proxy servers. Any server not on this list is considered non-enterprise.
        ## @param value Value to set for the enterpriseProxyServers property.
        ## @return a void
        ## 
        def enterprise_proxy_servers=(value)
            @enterprise_proxy_servers = value
        end
        ## 
        ## Gets the enterpriseProxyServersAreAuthoritative property value. Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false
        ## @return a boolean
        ## 
        def enterprise_proxy_servers_are_authoritative
            return @enterprise_proxy_servers_are_authoritative
        end
        ## 
        ## Sets the enterpriseProxyServersAreAuthoritative property value. Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies. Default is false
        ## @param value Value to set for the enterpriseProxyServersAreAuthoritative property.
        ## @return a void
        ## 
        def enterprise_proxy_servers_are_authoritative=(value)
            @enterprise_proxy_servers_are_authoritative = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "enterpriseCloudResources" => lambda {|n| @enterprise_cloud_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ProxiedDomain.create_from_discriminator_value(pn) }) },
                "enterpriseInternalProxyServers" => lambda {|n| @enterprise_internal_proxy_servers = n.get_collection_of_primitive_values(String) },
                "enterpriseIPRanges" => lambda {|n| @enterprise_i_p_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IpRange.create_from_discriminator_value(pn) }) },
                "enterpriseIPRangesAreAuthoritative" => lambda {|n| @enterprise_i_p_ranges_are_authoritative = n.get_boolean_value() },
                "enterpriseNetworkDomainNames" => lambda {|n| @enterprise_network_domain_names = n.get_collection_of_primitive_values(String) },
                "enterpriseProxyServers" => lambda {|n| @enterprise_proxy_servers = n.get_collection_of_primitive_values(String) },
                "enterpriseProxyServersAreAuthoritative" => lambda {|n| @enterprise_proxy_servers_are_authoritative = n.get_boolean_value() },
                "neutralDomainResources" => lambda {|n| @neutral_domain_resources = n.get_collection_of_primitive_values(String) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the neutralDomainResources property value. List of domain names that can used for work or personal resource.
        ## @return a string
        ## 
        def neutral_domain_resources
            return @neutral_domain_resources
        end
        ## 
        ## Sets the neutralDomainResources property value. List of domain names that can used for work or personal resource.
        ## @param value Value to set for the neutralDomainResources property.
        ## @return a void
        ## 
        def neutral_domain_resources=(value)
            @neutral_domain_resources = value
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("enterpriseCloudResources", @enterprise_cloud_resources)
            writer.write_collection_of_primitive_values("enterpriseInternalProxyServers", @enterprise_internal_proxy_servers)
            writer.write_collection_of_object_values("enterpriseIPRanges", @enterprise_i_p_ranges)
            writer.write_boolean_value("enterpriseIPRangesAreAuthoritative", @enterprise_i_p_ranges_are_authoritative)
            writer.write_collection_of_primitive_values("enterpriseNetworkDomainNames", @enterprise_network_domain_names)
            writer.write_collection_of_primitive_values("enterpriseProxyServers", @enterprise_proxy_servers)
            writer.write_boolean_value("enterpriseProxyServersAreAuthoritative", @enterprise_proxy_servers_are_authoritative)
            writer.write_collection_of_primitive_values("neutralDomainResources", @neutral_domain_resources)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
