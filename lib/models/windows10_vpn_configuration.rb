require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Windows10VpnConfiguration < MicrosoftGraphBeta::Models::WindowsVpnConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Associated Apps. This collection can contain a maximum of 10000 elements.
            @associated_apps
            ## 
            # Windows 10 VPN connection types.
            @authentication_method
            ## 
            # VPN connection types.
            @connection_type
            ## 
            # Cryptography Suite security settings for IKEv2 VPN in Windows10 and above
            @cryptography_suite
            ## 
            # DNS rules. This collection can contain a maximum of 1000 elements.
            @dns_rules
            ## 
            # Specify DNS suffixes to add to the DNS search list to properly route short names.
            @dns_suffixes
            ## 
            # Extensible Authentication Protocol (EAP) XML. (UTF8 encoded byte array)
            @eap_xml
            ## 
            # Enable Always On mode.
            @enable_always_on
            ## 
            # Enable conditional access.
            @enable_conditional_access
            ## 
            # Enable device tunnel.
            @enable_device_tunnel
            ## 
            # Enable IP address registration with internal DNS.
            @enable_dns_registration
            ## 
            # Enable single sign-on (SSO) with alternate certificate.
            @enable_single_sign_on_with_alternate_certificate
            ## 
            # Enable split tunneling.
            @enable_split_tunneling
            ## 
            # Identity certificate for client authentication when authentication method is certificate.
            @identity_certificate
            ## 
            # ID of the Microsoft Tunnel site associated with the VPN profile.
            @microsoft_tunnel_site_id
            ## 
            # Only associated Apps can use connection (per-app VPN).
            @only_associated_apps_can_use_connection
            ## 
            # Profile target type. Possible values are: user, device, autoPilotDevice.
            @profile_target
            ## 
            # Proxy Server.
            @proxy_server
            ## 
            # Remember user credentials.
            @remember_user_credentials
            ## 
            # Routes (optional for third-party providers). This collection can contain a maximum of 1000 elements.
            @routes
            ## 
            # Single sign-on Extended Key Usage (EKU).
            @single_sign_on_eku
            ## 
            # Single sign-on issuer hash.
            @single_sign_on_issuer_hash
            ## 
            # Traffic rules. This collection can contain a maximum of 1000 elements.
            @traffic_rules
            ## 
            # Trusted Network Domains
            @trusted_network_domains
            ## 
            # Windows Information Protection (WIP) domain to associate with this connection.
            @windows_information_protection_domain
            ## 
            ## Gets the associatedApps property value. Associated Apps. This collection can contain a maximum of 10000 elements.
            ## @return a windows10_associated_apps
            ## 
            def associated_apps
                return @associated_apps
            end
            ## 
            ## Sets the associatedApps property value. Associated Apps. This collection can contain a maximum of 10000 elements.
            ## @param value Value to set for the associated_apps property.
            ## @return a void
            ## 
            def associated_apps=(value)
                @associated_apps = value
            end
            ## 
            ## Gets the authenticationMethod property value. Windows 10 VPN connection types.
            ## @return a windows10_vpn_authentication_method
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. Windows 10 VPN connection types.
            ## @param value Value to set for the authentication_method property.
            ## @return a void
            ## 
            def authentication_method=(value)
                @authentication_method = value
            end
            ## 
            ## Gets the connectionType property value. VPN connection types.
            ## @return a windows10_vpn_connection_type
            ## 
            def connection_type
                return @connection_type
            end
            ## 
            ## Sets the connectionType property value. VPN connection types.
            ## @param value Value to set for the connection_type property.
            ## @return a void
            ## 
            def connection_type=(value)
                @connection_type = value
            end
            ## 
            ## Instantiates a new Windows10VpnConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10VpnConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_vpn_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10VpnConfiguration.new
            end
            ## 
            ## Gets the cryptographySuite property value. Cryptography Suite security settings for IKEv2 VPN in Windows10 and above
            ## @return a cryptography_suite
            ## 
            def cryptography_suite
                return @cryptography_suite
            end
            ## 
            ## Sets the cryptographySuite property value. Cryptography Suite security settings for IKEv2 VPN in Windows10 and above
            ## @param value Value to set for the cryptography_suite property.
            ## @return a void
            ## 
            def cryptography_suite=(value)
                @cryptography_suite = value
            end
            ## 
            ## Gets the dnsRules property value. DNS rules. This collection can contain a maximum of 1000 elements.
            ## @return a vpn_dns_rule
            ## 
            def dns_rules
                return @dns_rules
            end
            ## 
            ## Sets the dnsRules property value. DNS rules. This collection can contain a maximum of 1000 elements.
            ## @param value Value to set for the dns_rules property.
            ## @return a void
            ## 
            def dns_rules=(value)
                @dns_rules = value
            end
            ## 
            ## Gets the dnsSuffixes property value. Specify DNS suffixes to add to the DNS search list to properly route short names.
            ## @return a string
            ## 
            def dns_suffixes
                return @dns_suffixes
            end
            ## 
            ## Sets the dnsSuffixes property value. Specify DNS suffixes to add to the DNS search list to properly route short names.
            ## @param value Value to set for the dns_suffixes property.
            ## @return a void
            ## 
            def dns_suffixes=(value)
                @dns_suffixes = value
            end
            ## 
            ## Gets the eapXml property value. Extensible Authentication Protocol (EAP) XML. (UTF8 encoded byte array)
            ## @return a binary
            ## 
            def eap_xml
                return @eap_xml
            end
            ## 
            ## Sets the eapXml property value. Extensible Authentication Protocol (EAP) XML. (UTF8 encoded byte array)
            ## @param value Value to set for the eap_xml property.
            ## @return a void
            ## 
            def eap_xml=(value)
                @eap_xml = value
            end
            ## 
            ## Gets the enableAlwaysOn property value. Enable Always On mode.
            ## @return a boolean
            ## 
            def enable_always_on
                return @enable_always_on
            end
            ## 
            ## Sets the enableAlwaysOn property value. Enable Always On mode.
            ## @param value Value to set for the enable_always_on property.
            ## @return a void
            ## 
            def enable_always_on=(value)
                @enable_always_on = value
            end
            ## 
            ## Gets the enableConditionalAccess property value. Enable conditional access.
            ## @return a boolean
            ## 
            def enable_conditional_access
                return @enable_conditional_access
            end
            ## 
            ## Sets the enableConditionalAccess property value. Enable conditional access.
            ## @param value Value to set for the enable_conditional_access property.
            ## @return a void
            ## 
            def enable_conditional_access=(value)
                @enable_conditional_access = value
            end
            ## 
            ## Gets the enableDeviceTunnel property value. Enable device tunnel.
            ## @return a boolean
            ## 
            def enable_device_tunnel
                return @enable_device_tunnel
            end
            ## 
            ## Sets the enableDeviceTunnel property value. Enable device tunnel.
            ## @param value Value to set for the enable_device_tunnel property.
            ## @return a void
            ## 
            def enable_device_tunnel=(value)
                @enable_device_tunnel = value
            end
            ## 
            ## Gets the enableDnsRegistration property value. Enable IP address registration with internal DNS.
            ## @return a boolean
            ## 
            def enable_dns_registration
                return @enable_dns_registration
            end
            ## 
            ## Sets the enableDnsRegistration property value. Enable IP address registration with internal DNS.
            ## @param value Value to set for the enable_dns_registration property.
            ## @return a void
            ## 
            def enable_dns_registration=(value)
                @enable_dns_registration = value
            end
            ## 
            ## Gets the enableSingleSignOnWithAlternateCertificate property value. Enable single sign-on (SSO) with alternate certificate.
            ## @return a boolean
            ## 
            def enable_single_sign_on_with_alternate_certificate
                return @enable_single_sign_on_with_alternate_certificate
            end
            ## 
            ## Sets the enableSingleSignOnWithAlternateCertificate property value. Enable single sign-on (SSO) with alternate certificate.
            ## @param value Value to set for the enable_single_sign_on_with_alternate_certificate property.
            ## @return a void
            ## 
            def enable_single_sign_on_with_alternate_certificate=(value)
                @enable_single_sign_on_with_alternate_certificate = value
            end
            ## 
            ## Gets the enableSplitTunneling property value. Enable split tunneling.
            ## @return a boolean
            ## 
            def enable_split_tunneling
                return @enable_split_tunneling
            end
            ## 
            ## Sets the enableSplitTunneling property value. Enable split tunneling.
            ## @param value Value to set for the enable_split_tunneling property.
            ## @return a void
            ## 
            def enable_split_tunneling=(value)
                @enable_split_tunneling = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "associatedApps" => lambda {|n| @associated_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Windows10AssociatedApps.create_from_discriminator_value(pn) }) },
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::Windows10VpnAuthenticationMethod) },
                    "connectionType" => lambda {|n| @connection_type = n.get_enum_value(MicrosoftGraphBeta::Models::Windows10VpnConnectionType) },
                    "cryptographySuite" => lambda {|n| @cryptography_suite = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CryptographySuite.create_from_discriminator_value(pn) }) },
                    "dnsRules" => lambda {|n| @dns_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VpnDnsRule.create_from_discriminator_value(pn) }) },
                    "dnsSuffixes" => lambda {|n| @dns_suffixes = n.get_collection_of_primitive_values(String) },
                    "eapXml" => lambda {|n| @eap_xml = n.get_string_value() },
                    "enableAlwaysOn" => lambda {|n| @enable_always_on = n.get_boolean_value() },
                    "enableConditionalAccess" => lambda {|n| @enable_conditional_access = n.get_boolean_value() },
                    "enableDeviceTunnel" => lambda {|n| @enable_device_tunnel = n.get_boolean_value() },
                    "enableDnsRegistration" => lambda {|n| @enable_dns_registration = n.get_boolean_value() },
                    "enableSingleSignOnWithAlternateCertificate" => lambda {|n| @enable_single_sign_on_with_alternate_certificate = n.get_boolean_value() },
                    "enableSplitTunneling" => lambda {|n| @enable_split_tunneling = n.get_boolean_value() },
                    "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "microsoftTunnelSiteId" => lambda {|n| @microsoft_tunnel_site_id = n.get_string_value() },
                    "onlyAssociatedAppsCanUseConnection" => lambda {|n| @only_associated_apps_can_use_connection = n.get_boolean_value() },
                    "profileTarget" => lambda {|n| @profile_target = n.get_enum_value(MicrosoftGraphBeta::Models::Windows10VpnProfileTarget) },
                    "proxyServer" => lambda {|n| @proxy_server = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Windows10VpnProxyServer.create_from_discriminator_value(pn) }) },
                    "rememberUserCredentials" => lambda {|n| @remember_user_credentials = n.get_boolean_value() },
                    "routes" => lambda {|n| @routes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VpnRoute.create_from_discriminator_value(pn) }) },
                    "singleSignOnEku" => lambda {|n| @single_sign_on_eku = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ExtendedKeyUsage.create_from_discriminator_value(pn) }) },
                    "singleSignOnIssuerHash" => lambda {|n| @single_sign_on_issuer_hash = n.get_string_value() },
                    "trafficRules" => lambda {|n| @traffic_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VpnTrafficRule.create_from_discriminator_value(pn) }) },
                    "trustedNetworkDomains" => lambda {|n| @trusted_network_domains = n.get_collection_of_primitive_values(String) },
                    "windowsInformationProtectionDomain" => lambda {|n| @windows_information_protection_domain = n.get_string_value() },
                })
            end
            ## 
            ## Gets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
            ## @return a windows_certificate_profile_base
            ## 
            def identity_certificate
                return @identity_certificate
            end
            ## 
            ## Sets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
            ## @param value Value to set for the identity_certificate property.
            ## @return a void
            ## 
            def identity_certificate=(value)
                @identity_certificate = value
            end
            ## 
            ## Gets the microsoftTunnelSiteId property value. ID of the Microsoft Tunnel site associated with the VPN profile.
            ## @return a string
            ## 
            def microsoft_tunnel_site_id
                return @microsoft_tunnel_site_id
            end
            ## 
            ## Sets the microsoftTunnelSiteId property value. ID of the Microsoft Tunnel site associated with the VPN profile.
            ## @param value Value to set for the microsoft_tunnel_site_id property.
            ## @return a void
            ## 
            def microsoft_tunnel_site_id=(value)
                @microsoft_tunnel_site_id = value
            end
            ## 
            ## Gets the onlyAssociatedAppsCanUseConnection property value. Only associated Apps can use connection (per-app VPN).
            ## @return a boolean
            ## 
            def only_associated_apps_can_use_connection
                return @only_associated_apps_can_use_connection
            end
            ## 
            ## Sets the onlyAssociatedAppsCanUseConnection property value. Only associated Apps can use connection (per-app VPN).
            ## @param value Value to set for the only_associated_apps_can_use_connection property.
            ## @return a void
            ## 
            def only_associated_apps_can_use_connection=(value)
                @only_associated_apps_can_use_connection = value
            end
            ## 
            ## Gets the profileTarget property value. Profile target type. Possible values are: user, device, autoPilotDevice.
            ## @return a windows10_vpn_profile_target
            ## 
            def profile_target
                return @profile_target
            end
            ## 
            ## Sets the profileTarget property value. Profile target type. Possible values are: user, device, autoPilotDevice.
            ## @param value Value to set for the profile_target property.
            ## @return a void
            ## 
            def profile_target=(value)
                @profile_target = value
            end
            ## 
            ## Gets the proxyServer property value. Proxy Server.
            ## @return a windows10_vpn_proxy_server
            ## 
            def proxy_server
                return @proxy_server
            end
            ## 
            ## Sets the proxyServer property value. Proxy Server.
            ## @param value Value to set for the proxy_server property.
            ## @return a void
            ## 
            def proxy_server=(value)
                @proxy_server = value
            end
            ## 
            ## Gets the rememberUserCredentials property value. Remember user credentials.
            ## @return a boolean
            ## 
            def remember_user_credentials
                return @remember_user_credentials
            end
            ## 
            ## Sets the rememberUserCredentials property value. Remember user credentials.
            ## @param value Value to set for the remember_user_credentials property.
            ## @return a void
            ## 
            def remember_user_credentials=(value)
                @remember_user_credentials = value
            end
            ## 
            ## Gets the routes property value. Routes (optional for third-party providers). This collection can contain a maximum of 1000 elements.
            ## @return a vpn_route
            ## 
            def routes
                return @routes
            end
            ## 
            ## Sets the routes property value. Routes (optional for third-party providers). This collection can contain a maximum of 1000 elements.
            ## @param value Value to set for the routes property.
            ## @return a void
            ## 
            def routes=(value)
                @routes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("associatedApps", @associated_apps)
                writer.write_enum_value("authenticationMethod", @authentication_method)
                writer.write_enum_value("connectionType", @connection_type)
                writer.write_object_value("cryptographySuite", @cryptography_suite)
                writer.write_collection_of_object_values("dnsRules", @dns_rules)
                writer.write_collection_of_primitive_values("dnsSuffixes", @dns_suffixes)
                writer.write_object_value("eapXml", @eap_xml)
                writer.write_boolean_value("enableAlwaysOn", @enable_always_on)
                writer.write_boolean_value("enableConditionalAccess", @enable_conditional_access)
                writer.write_boolean_value("enableDeviceTunnel", @enable_device_tunnel)
                writer.write_boolean_value("enableDnsRegistration", @enable_dns_registration)
                writer.write_boolean_value("enableSingleSignOnWithAlternateCertificate", @enable_single_sign_on_with_alternate_certificate)
                writer.write_boolean_value("enableSplitTunneling", @enable_split_tunneling)
                writer.write_object_value("identityCertificate", @identity_certificate)
                writer.write_string_value("microsoftTunnelSiteId", @microsoft_tunnel_site_id)
                writer.write_boolean_value("onlyAssociatedAppsCanUseConnection", @only_associated_apps_can_use_connection)
                writer.write_enum_value("profileTarget", @profile_target)
                writer.write_object_value("proxyServer", @proxy_server)
                writer.write_boolean_value("rememberUserCredentials", @remember_user_credentials)
                writer.write_collection_of_object_values("routes", @routes)
                writer.write_object_value("singleSignOnEku", @single_sign_on_eku)
                writer.write_string_value("singleSignOnIssuerHash", @single_sign_on_issuer_hash)
                writer.write_collection_of_object_values("trafficRules", @traffic_rules)
                writer.write_collection_of_primitive_values("trustedNetworkDomains", @trusted_network_domains)
                writer.write_string_value("windowsInformationProtectionDomain", @windows_information_protection_domain)
            end
            ## 
            ## Gets the singleSignOnEku property value. Single sign-on Extended Key Usage (EKU).
            ## @return a extended_key_usage
            ## 
            def single_sign_on_eku
                return @single_sign_on_eku
            end
            ## 
            ## Sets the singleSignOnEku property value. Single sign-on Extended Key Usage (EKU).
            ## @param value Value to set for the single_sign_on_eku property.
            ## @return a void
            ## 
            def single_sign_on_eku=(value)
                @single_sign_on_eku = value
            end
            ## 
            ## Gets the singleSignOnIssuerHash property value. Single sign-on issuer hash.
            ## @return a string
            ## 
            def single_sign_on_issuer_hash
                return @single_sign_on_issuer_hash
            end
            ## 
            ## Sets the singleSignOnIssuerHash property value. Single sign-on issuer hash.
            ## @param value Value to set for the single_sign_on_issuer_hash property.
            ## @return a void
            ## 
            def single_sign_on_issuer_hash=(value)
                @single_sign_on_issuer_hash = value
            end
            ## 
            ## Gets the trafficRules property value. Traffic rules. This collection can contain a maximum of 1000 elements.
            ## @return a vpn_traffic_rule
            ## 
            def traffic_rules
                return @traffic_rules
            end
            ## 
            ## Sets the trafficRules property value. Traffic rules. This collection can contain a maximum of 1000 elements.
            ## @param value Value to set for the traffic_rules property.
            ## @return a void
            ## 
            def traffic_rules=(value)
                @traffic_rules = value
            end
            ## 
            ## Gets the trustedNetworkDomains property value. Trusted Network Domains
            ## @return a string
            ## 
            def trusted_network_domains
                return @trusted_network_domains
            end
            ## 
            ## Sets the trustedNetworkDomains property value. Trusted Network Domains
            ## @param value Value to set for the trusted_network_domains property.
            ## @return a void
            ## 
            def trusted_network_domains=(value)
                @trusted_network_domains = value
            end
            ## 
            ## Gets the windowsInformationProtectionDomain property value. Windows Information Protection (WIP) domain to associate with this connection.
            ## @return a string
            ## 
            def windows_information_protection_domain
                return @windows_information_protection_domain
            end
            ## 
            ## Sets the windowsInformationProtectionDomain property value. Windows Information Protection (WIP) domain to associate with this connection.
            ## @param value Value to set for the windows_information_protection_domain property.
            ## @return a void
            ## 
            def windows_information_protection_domain=(value)
                @windows_information_protection_domain = value
            end
        end
    end
end
