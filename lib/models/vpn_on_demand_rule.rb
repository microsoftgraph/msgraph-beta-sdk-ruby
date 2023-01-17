require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # VPN On-Demand Rule definition.
    class VpnOnDemandRule
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # VPN On-Demand Rule Connection Action.
        @action
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # DNS Search Domains.
        @dns_search_domains
        ## 
        # DNS Search Server Address.
        @dns_server_address_match
        ## 
        # VPN On-Demand Rule Connection Domain Action.
        @domain_action
        ## 
        # Domains (Only applicable when Action is evaluate connection).
        @domains
        ## 
        # VPN On-Demand Rule Connection network interface type.
        @interface_type_match
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Probe Required Url (Only applicable when Action is evaluate connection and DomainAction is connect if needed).
        @probe_required_url
        ## 
        # A URL to probe. If this URL is successfully fetched (returning a 200 HTTP status code) without redirection, this rule matches.
        @probe_url
        ## 
        # Network Service Set Identifiers (SSIDs).
        @ssids
        ## 
        ## Gets the action property value. VPN On-Demand Rule Connection Action.
        ## @return a vpn_on_demand_rule_connection_action
        ## 
        def action
            return @action
        end
        ## 
        ## Sets the action property value. VPN On-Demand Rule Connection Action.
        ## @param value Value to set for the action property.
        ## @return a void
        ## 
        def action=(value)
            @action = value
        end
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
        ## Instantiates a new vpnOnDemandRule and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a vpn_on_demand_rule
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return VpnOnDemandRule.new
        end
        ## 
        ## Gets the dnsSearchDomains property value. DNS Search Domains.
        ## @return a string
        ## 
        def dns_search_domains
            return @dns_search_domains
        end
        ## 
        ## Sets the dnsSearchDomains property value. DNS Search Domains.
        ## @param value Value to set for the dnsSearchDomains property.
        ## @return a void
        ## 
        def dns_search_domains=(value)
            @dns_search_domains = value
        end
        ## 
        ## Gets the dnsServerAddressMatch property value. DNS Search Server Address.
        ## @return a string
        ## 
        def dns_server_address_match
            return @dns_server_address_match
        end
        ## 
        ## Sets the dnsServerAddressMatch property value. DNS Search Server Address.
        ## @param value Value to set for the dnsServerAddressMatch property.
        ## @return a void
        ## 
        def dns_server_address_match=(value)
            @dns_server_address_match = value
        end
        ## 
        ## Gets the domainAction property value. VPN On-Demand Rule Connection Domain Action.
        ## @return a vpn_on_demand_rule_connection_domain_action
        ## 
        def domain_action
            return @domain_action
        end
        ## 
        ## Sets the domainAction property value. VPN On-Demand Rule Connection Domain Action.
        ## @param value Value to set for the domainAction property.
        ## @return a void
        ## 
        def domain_action=(value)
            @domain_action = value
        end
        ## 
        ## Gets the domains property value. Domains (Only applicable when Action is evaluate connection).
        ## @return a string
        ## 
        def domains
            return @domains
        end
        ## 
        ## Sets the domains property value. Domains (Only applicable when Action is evaluate connection).
        ## @param value Value to set for the domains property.
        ## @return a void
        ## 
        def domains=(value)
            @domains = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::VpnOnDemandRuleConnectionAction) },
                "dnsSearchDomains" => lambda {|n| @dns_search_domains = n.get_collection_of_primitive_values(String) },
                "dnsServerAddressMatch" => lambda {|n| @dns_server_address_match = n.get_collection_of_primitive_values(String) },
                "domainAction" => lambda {|n| @domain_action = n.get_enum_value(MicrosoftGraphBeta::Models::VpnOnDemandRuleConnectionDomainAction) },
                "domains" => lambda {|n| @domains = n.get_collection_of_primitive_values(String) },
                "interfaceTypeMatch" => lambda {|n| @interface_type_match = n.get_enum_value(MicrosoftGraphBeta::Models::VpnOnDemandRuleInterfaceTypeMatch) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "probeRequiredUrl" => lambda {|n| @probe_required_url = n.get_string_value() },
                "probeUrl" => lambda {|n| @probe_url = n.get_string_value() },
                "ssids" => lambda {|n| @ssids = n.get_collection_of_primitive_values(String) },
            }
        end
        ## 
        ## Gets the interfaceTypeMatch property value. VPN On-Demand Rule Connection network interface type.
        ## @return a vpn_on_demand_rule_interface_type_match
        ## 
        def interface_type_match
            return @interface_type_match
        end
        ## 
        ## Sets the interfaceTypeMatch property value. VPN On-Demand Rule Connection network interface type.
        ## @param value Value to set for the interfaceTypeMatch property.
        ## @return a void
        ## 
        def interface_type_match=(value)
            @interface_type_match = value
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
        ## Gets the probeRequiredUrl property value. Probe Required Url (Only applicable when Action is evaluate connection and DomainAction is connect if needed).
        ## @return a string
        ## 
        def probe_required_url
            return @probe_required_url
        end
        ## 
        ## Sets the probeRequiredUrl property value. Probe Required Url (Only applicable when Action is evaluate connection and DomainAction is connect if needed).
        ## @param value Value to set for the probeRequiredUrl property.
        ## @return a void
        ## 
        def probe_required_url=(value)
            @probe_required_url = value
        end
        ## 
        ## Gets the probeUrl property value. A URL to probe. If this URL is successfully fetched (returning a 200 HTTP status code) without redirection, this rule matches.
        ## @return a string
        ## 
        def probe_url
            return @probe_url
        end
        ## 
        ## Sets the probeUrl property value. A URL to probe. If this URL is successfully fetched (returning a 200 HTTP status code) without redirection, this rule matches.
        ## @param value Value to set for the probeUrl property.
        ## @return a void
        ## 
        def probe_url=(value)
            @probe_url = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("action", @action)
            writer.write_collection_of_primitive_values("dnsSearchDomains", @dns_search_domains)
            writer.write_collection_of_primitive_values("dnsServerAddressMatch", @dns_server_address_match)
            writer.write_enum_value("domainAction", @domain_action)
            writer.write_collection_of_primitive_values("domains", @domains)
            writer.write_enum_value("interfaceTypeMatch", @interface_type_match)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("probeRequiredUrl", @probe_required_url)
            writer.write_string_value("probeUrl", @probe_url)
            writer.write_collection_of_primitive_values("ssids", @ssids)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the ssids property value. Network Service Set Identifiers (SSIDs).
        ## @return a string
        ## 
        def ssids
            return @ssids
        end
        ## 
        ## Sets the ssids property value. Network Service Set Identifiers (SSIDs).
        ## @param value Value to set for the ssids property.
        ## @return a void
        ## 
        def ssids=(value)
            @ssids = value
        end
    end
end
