require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsPhone81VpnConfiguration < MicrosoftGraphBeta::Models::Windows81VpnConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # VPN Authentication Method.
        @authentication_method
        ## 
        # Bypass VPN on company Wi-Fi.
        @bypass_vpn_on_company_wifi
        ## 
        # Bypass VPN on home Wi-Fi.
        @bypass_vpn_on_home_wifi
        ## 
        # DNS suffix search list.
        @dns_suffix_search_list
        ## 
        # Identity certificate for client authentication when authentication method is certificate.
        @identity_certificate
        ## 
        # Remember user credentials.
        @remember_user_credentials
        ## 
        ## Gets the authenticationMethod property value. VPN Authentication Method.
        ## @return a vpn_authentication_method
        ## 
        def authentication_method
            return @authentication_method
        end
        ## 
        ## Sets the authenticationMethod property value. VPN Authentication Method.
        ## @param value Value to set for the authenticationMethod property.
        ## @return a void
        ## 
        def authentication_method=(value)
            @authentication_method = value
        end
        ## 
        ## Gets the bypassVpnOnCompanyWifi property value. Bypass VPN on company Wi-Fi.
        ## @return a boolean
        ## 
        def bypass_vpn_on_company_wifi
            return @bypass_vpn_on_company_wifi
        end
        ## 
        ## Sets the bypassVpnOnCompanyWifi property value. Bypass VPN on company Wi-Fi.
        ## @param value Value to set for the bypassVpnOnCompanyWifi property.
        ## @return a void
        ## 
        def bypass_vpn_on_company_wifi=(value)
            @bypass_vpn_on_company_wifi = value
        end
        ## 
        ## Gets the bypassVpnOnHomeWifi property value. Bypass VPN on home Wi-Fi.
        ## @return a boolean
        ## 
        def bypass_vpn_on_home_wifi
            return @bypass_vpn_on_home_wifi
        end
        ## 
        ## Sets the bypassVpnOnHomeWifi property value. Bypass VPN on home Wi-Fi.
        ## @param value Value to set for the bypassVpnOnHomeWifi property.
        ## @return a void
        ## 
        def bypass_vpn_on_home_wifi=(value)
            @bypass_vpn_on_home_wifi = value
        end
        ## 
        ## Instantiates a new WindowsPhone81VpnConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsPhone81VpnConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_phone81_vpn_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsPhone81VpnConfiguration.new
        end
        ## 
        ## Gets the dnsSuffixSearchList property value. DNS suffix search list.
        ## @return a string
        ## 
        def dns_suffix_search_list
            return @dns_suffix_search_list
        end
        ## 
        ## Sets the dnsSuffixSearchList property value. DNS suffix search list.
        ## @param value Value to set for the dnsSuffixSearchList property.
        ## @return a void
        ## 
        def dns_suffix_search_list=(value)
            @dns_suffix_search_list = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::VpnAuthenticationMethod) },
                "bypassVpnOnCompanyWifi" => lambda {|n| @bypass_vpn_on_company_wifi = n.get_boolean_value() },
                "bypassVpnOnHomeWifi" => lambda {|n| @bypass_vpn_on_home_wifi = n.get_boolean_value() },
                "dnsSuffixSearchList" => lambda {|n| @dns_suffix_search_list = n.get_collection_of_primitive_values(String) },
                "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsPhone81CertificateProfileBase.create_from_discriminator_value(pn) }) },
                "rememberUserCredentials" => lambda {|n| @remember_user_credentials = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
        ## @return a windows_phone81_certificate_profile_base
        ## 
        def identity_certificate
            return @identity_certificate
        end
        ## 
        ## Sets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
        ## @param value Value to set for the identityCertificate property.
        ## @return a void
        ## 
        def identity_certificate=(value)
            @identity_certificate = value
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
        ## @param value Value to set for the rememberUserCredentials property.
        ## @return a void
        ## 
        def remember_user_credentials=(value)
            @remember_user_credentials = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("authenticationMethod", @authentication_method)
            writer.write_boolean_value("bypassVpnOnCompanyWifi", @bypass_vpn_on_company_wifi)
            writer.write_boolean_value("bypassVpnOnHomeWifi", @bypass_vpn_on_home_wifi)
            writer.write_collection_of_primitive_values("dnsSuffixSearchList", @dns_suffix_search_list)
            writer.write_object_value("identityCertificate", @identity_certificate)
            writer.write_boolean_value("rememberUserCredentials", @remember_user_credentials)
        end
    end
end
