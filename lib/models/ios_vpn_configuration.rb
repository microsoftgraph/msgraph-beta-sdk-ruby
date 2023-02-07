require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class IosVpnConfiguration < MicrosoftGraphBeta::Models::AppleVpnConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Zscaler only. Zscaler cloud which the user is assigned to.
        @cloud_name
        ## 
        # Tenant level settings for the Derived Credentials to be used for authentication.
        @derived_credential_settings
        ## 
        # Zscaler only. List of network addresses which are not sent through the Zscaler cloud.
        @exclude_list
        ## 
        # Identity certificate for client authentication when authentication method is certificate.
        @identity_certificate
        ## 
        # Microsoft Tunnel site ID.
        @microsoft_tunnel_site_id
        ## 
        # Zscaler only. Blocks network traffic until the user signs into Zscaler app. 'True' means traffic is blocked.
        @strict_enforcement
        ## 
        # Targeted mobile apps. This collection can contain a maximum of 500 elements.
        @targeted_mobile_apps
        ## 
        # Zscaler only. Enter a static domain to pre-populate the login field with in the Zscaler app. If this is left empty, the user's Azure Active Directory domain will be used instead.
        @user_domain
        ## 
        ## Gets the cloudName property value. Zscaler only. Zscaler cloud which the user is assigned to.
        ## @return a string
        ## 
        def cloud_name
            return @cloud_name
        end
        ## 
        ## Sets the cloudName property value. Zscaler only. Zscaler cloud which the user is assigned to.
        ## @param value Value to set for the cloud_name property.
        ## @return a void
        ## 
        def cloud_name=(value)
            @cloud_name = value
        end
        ## 
        ## Instantiates a new IosVpnConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.iosVpnConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ios_vpn_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.iosikEv2VpnConfiguration"
                        return IosikEv2VpnConfiguration.new
                end
            end
            return IosVpnConfiguration.new
        end
        ## 
        ## Gets the derivedCredentialSettings property value. Tenant level settings for the Derived Credentials to be used for authentication.
        ## @return a device_management_derived_credential_settings
        ## 
        def derived_credential_settings
            return @derived_credential_settings
        end
        ## 
        ## Sets the derivedCredentialSettings property value. Tenant level settings for the Derived Credentials to be used for authentication.
        ## @param value Value to set for the derived_credential_settings property.
        ## @return a void
        ## 
        def derived_credential_settings=(value)
            @derived_credential_settings = value
        end
        ## 
        ## Gets the excludeList property value. Zscaler only. List of network addresses which are not sent through the Zscaler cloud.
        ## @return a string
        ## 
        def exclude_list
            return @exclude_list
        end
        ## 
        ## Sets the excludeList property value. Zscaler only. List of network addresses which are not sent through the Zscaler cloud.
        ## @param value Value to set for the exclude_list property.
        ## @return a void
        ## 
        def exclude_list=(value)
            @exclude_list = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "cloudName" => lambda {|n| @cloud_name = n.get_string_value() },
                "derivedCredentialSettings" => lambda {|n| @derived_credential_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementDerivedCredentialSettings.create_from_discriminator_value(pn) }) },
                "excludeList" => lambda {|n| @exclude_list = n.get_collection_of_primitive_values(String) },
                "identityCertificate" => lambda {|n| @identity_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosCertificateProfileBase.create_from_discriminator_value(pn) }) },
                "microsoftTunnelSiteId" => lambda {|n| @microsoft_tunnel_site_id = n.get_string_value() },
                "strictEnforcement" => lambda {|n| @strict_enforcement = n.get_boolean_value() },
                "targetedMobileApps" => lambda {|n| @targeted_mobile_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppListItem.create_from_discriminator_value(pn) }) },
                "userDomain" => lambda {|n| @user_domain = n.get_string_value() },
            })
        end
        ## 
        ## Gets the identityCertificate property value. Identity certificate for client authentication when authentication method is certificate.
        ## @return a ios_certificate_profile_base
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
        ## Gets the microsoftTunnelSiteId property value. Microsoft Tunnel site ID.
        ## @return a string
        ## 
        def microsoft_tunnel_site_id
            return @microsoft_tunnel_site_id
        end
        ## 
        ## Sets the microsoftTunnelSiteId property value. Microsoft Tunnel site ID.
        ## @param value Value to set for the microsoft_tunnel_site_id property.
        ## @return a void
        ## 
        def microsoft_tunnel_site_id=(value)
            @microsoft_tunnel_site_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("cloudName", @cloud_name)
            writer.write_object_value("derivedCredentialSettings", @derived_credential_settings)
            writer.write_collection_of_primitive_values("excludeList", @exclude_list)
            writer.write_object_value("identityCertificate", @identity_certificate)
            writer.write_string_value("microsoftTunnelSiteId", @microsoft_tunnel_site_id)
            writer.write_boolean_value("strictEnforcement", @strict_enforcement)
            writer.write_collection_of_object_values("targetedMobileApps", @targeted_mobile_apps)
            writer.write_string_value("userDomain", @user_domain)
        end
        ## 
        ## Gets the strictEnforcement property value. Zscaler only. Blocks network traffic until the user signs into Zscaler app. 'True' means traffic is blocked.
        ## @return a boolean
        ## 
        def strict_enforcement
            return @strict_enforcement
        end
        ## 
        ## Sets the strictEnforcement property value. Zscaler only. Blocks network traffic until the user signs into Zscaler app. 'True' means traffic is blocked.
        ## @param value Value to set for the strict_enforcement property.
        ## @return a void
        ## 
        def strict_enforcement=(value)
            @strict_enforcement = value
        end
        ## 
        ## Gets the targetedMobileApps property value. Targeted mobile apps. This collection can contain a maximum of 500 elements.
        ## @return a app_list_item
        ## 
        def targeted_mobile_apps
            return @targeted_mobile_apps
        end
        ## 
        ## Sets the targetedMobileApps property value. Targeted mobile apps. This collection can contain a maximum of 500 elements.
        ## @param value Value to set for the targeted_mobile_apps property.
        ## @return a void
        ## 
        def targeted_mobile_apps=(value)
            @targeted_mobile_apps = value
        end
        ## 
        ## Gets the userDomain property value. Zscaler only. Enter a static domain to pre-populate the login field with in the Zscaler app. If this is left empty, the user's Azure Active Directory domain will be used instead.
        ## @return a string
        ## 
        def user_domain
            return @user_domain
        end
        ## 
        ## Sets the userDomain property value. Zscaler only. Enter a static domain to pre-populate the login field with in the Zscaler app. If this is left empty, the user's Azure Active Directory domain will be used instead.
        ## @param value Value to set for the user_domain property.
        ## @return a void
        ## 
        def user_domain=(value)
            @user_domain = value
        end
    end
end
