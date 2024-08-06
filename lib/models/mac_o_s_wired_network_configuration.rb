require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # MacOS wired network configuration profile.
        class MacOSWiredNetworkConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Authentication Method when EAP Type is configured to PEAP or EAP-TTLS. Possible values are: certificate, usernameAndPassword, derivedCredential.
            @authentication_method
            ## 
            # Indicates the deployment channel type used to deploy the configuration profile. Possible values are deviceChannel, userChannel. Possible values are: deviceChannel, userChannel, unknownFutureValue.
            @deployment_channel
            ## 
            # EAP-FAST Configuration Option when EAP-FAST is the selected EAP Type. Possible values are: noProtectedAccessCredential, useProtectedAccessCredential, useProtectedAccessCredentialAndProvision, useProtectedAccessCredentialAndProvisionAnonymously.
            @eap_fast_configuration
            ## 
            # Extensible Authentication Protocol (EAP) configuration types.
            @eap_type
            ## 
            # Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS, EAP-FAST or PEAP. This property masks usernames with the text you enter. For example, if you use 'anonymous', each user that authenticates with this wired network using their real username is displayed as 'anonymous'.
            @enable_outer_identity_privacy
            ## 
            # Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication).
            @identity_certificate_for_client_authentication
            ## 
            # Apple network interface type.
            @network_interface
            ## 
            # Network Name
            @network_name
            ## 
            # Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            @non_eap_authentication_method_for_eap_ttls
            ## 
            # Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP.
            @root_certificate_for_server_validation
            ## 
            # Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users devices when they connect to this wired network.
            @trusted_server_certificate_names
            ## 
            ## Gets the authenticationMethod property value. Authentication Method when EAP Type is configured to PEAP or EAP-TTLS. Possible values are: certificate, usernameAndPassword, derivedCredential.
            ## @return a wi_fi_authentication_method
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. Authentication Method when EAP Type is configured to PEAP or EAP-TTLS. Possible values are: certificate, usernameAndPassword, derivedCredential.
            ## @param value Value to set for the authenticationMethod property.
            ## @return a void
            ## 
            def authentication_method=(value)
                @authentication_method = value
            end
            ## 
            ## Instantiates a new MacOSWiredNetworkConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSWiredNetworkConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_wired_network_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSWiredNetworkConfiguration.new
            end
            ## 
            ## Gets the deploymentChannel property value. Indicates the deployment channel type used to deploy the configuration profile. Possible values are deviceChannel, userChannel. Possible values are: deviceChannel, userChannel, unknownFutureValue.
            ## @return a apple_deployment_channel
            ## 
            def deployment_channel
                return @deployment_channel
            end
            ## 
            ## Sets the deploymentChannel property value. Indicates the deployment channel type used to deploy the configuration profile. Possible values are deviceChannel, userChannel. Possible values are: deviceChannel, userChannel, unknownFutureValue.
            ## @param value Value to set for the deploymentChannel property.
            ## @return a void
            ## 
            def deployment_channel=(value)
                @deployment_channel = value
            end
            ## 
            ## Gets the eapFastConfiguration property value. EAP-FAST Configuration Option when EAP-FAST is the selected EAP Type. Possible values are: noProtectedAccessCredential, useProtectedAccessCredential, useProtectedAccessCredentialAndProvision, useProtectedAccessCredentialAndProvisionAnonymously.
            ## @return a eap_fast_configuration
            ## 
            def eap_fast_configuration
                return @eap_fast_configuration
            end
            ## 
            ## Sets the eapFastConfiguration property value. EAP-FAST Configuration Option when EAP-FAST is the selected EAP Type. Possible values are: noProtectedAccessCredential, useProtectedAccessCredential, useProtectedAccessCredentialAndProvision, useProtectedAccessCredentialAndProvisionAnonymously.
            ## @param value Value to set for the eapFastConfiguration property.
            ## @return a void
            ## 
            def eap_fast_configuration=(value)
                @eap_fast_configuration = value
            end
            ## 
            ## Gets the eapType property value. Extensible Authentication Protocol (EAP) configuration types.
            ## @return a eap_type
            ## 
            def eap_type
                return @eap_type
            end
            ## 
            ## Sets the eapType property value. Extensible Authentication Protocol (EAP) configuration types.
            ## @param value Value to set for the eapType property.
            ## @return a void
            ## 
            def eap_type=(value)
                @eap_type = value
            end
            ## 
            ## Gets the enableOuterIdentityPrivacy property value. Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS, EAP-FAST or PEAP. This property masks usernames with the text you enter. For example, if you use 'anonymous', each user that authenticates with this wired network using their real username is displayed as 'anonymous'.
            ## @return a string
            ## 
            def enable_outer_identity_privacy
                return @enable_outer_identity_privacy
            end
            ## 
            ## Sets the enableOuterIdentityPrivacy property value. Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS, EAP-FAST or PEAP. This property masks usernames with the text you enter. For example, if you use 'anonymous', each user that authenticates with this wired network using their real username is displayed as 'anonymous'.
            ## @param value Value to set for the enableOuterIdentityPrivacy property.
            ## @return a void
            ## 
            def enable_outer_identity_privacy=(value)
                @enable_outer_identity_privacy = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::WiFiAuthenticationMethod) },
                    "deploymentChannel" => lambda {|n| @deployment_channel = n.get_enum_value(MicrosoftGraphBeta::Models::AppleDeploymentChannel) },
                    "eapFastConfiguration" => lambda {|n| @eap_fast_configuration = n.get_enum_value(MicrosoftGraphBeta::Models::EapFastConfiguration) },
                    "eapType" => lambda {|n| @eap_type = n.get_enum_value(MicrosoftGraphBeta::Models::EapType) },
                    "enableOuterIdentityPrivacy" => lambda {|n| @enable_outer_identity_privacy = n.get_string_value() },
                    "identityCertificateForClientAuthentication" => lambda {|n| @identity_certificate_for_client_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MacOSCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "networkInterface" => lambda {|n| @network_interface = n.get_enum_value(MicrosoftGraphBeta::Models::WiredNetworkInterface) },
                    "networkName" => lambda {|n| @network_name = n.get_string_value() },
                    "nonEapAuthenticationMethodForEapTtls" => lambda {|n| @non_eap_authentication_method_for_eap_ttls = n.get_enum_value(MicrosoftGraphBeta::Models::NonEapAuthenticationMethodForEapTtlsType) },
                    "rootCertificateForServerValidation" => lambda {|n| @root_certificate_for_server_validation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MacOSTrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "trustedServerCertificateNames" => lambda {|n| @trusted_server_certificate_names = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the identityCertificateForClientAuthentication property value. Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication).
            ## @return a mac_o_s_certificate_profile_base
            ## 
            def identity_certificate_for_client_authentication
                return @identity_certificate_for_client_authentication
            end
            ## 
            ## Sets the identityCertificateForClientAuthentication property value. Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication).
            ## @param value Value to set for the identityCertificateForClientAuthentication property.
            ## @return a void
            ## 
            def identity_certificate_for_client_authentication=(value)
                @identity_certificate_for_client_authentication = value
            end
            ## 
            ## Gets the networkInterface property value. Apple network interface type.
            ## @return a wired_network_interface
            ## 
            def network_interface
                return @network_interface
            end
            ## 
            ## Sets the networkInterface property value. Apple network interface type.
            ## @param value Value to set for the networkInterface property.
            ## @return a void
            ## 
            def network_interface=(value)
                @network_interface = value
            end
            ## 
            ## Gets the networkName property value. Network Name
            ## @return a string
            ## 
            def network_name
                return @network_name
            end
            ## 
            ## Sets the networkName property value. Network Name
            ## @param value Value to set for the networkName property.
            ## @return a void
            ## 
            def network_name=(value)
                @network_name = value
            end
            ## 
            ## Gets the nonEapAuthenticationMethodForEapTtls property value. Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @return a non_eap_authentication_method_for_eap_ttls_type
            ## 
            def non_eap_authentication_method_for_eap_ttls
                return @non_eap_authentication_method_for_eap_ttls
            end
            ## 
            ## Sets the nonEapAuthenticationMethodForEapTtls property value. Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @param value Value to set for the nonEapAuthenticationMethodForEapTtls property.
            ## @return a void
            ## 
            def non_eap_authentication_method_for_eap_ttls=(value)
                @non_eap_authentication_method_for_eap_ttls = value
            end
            ## 
            ## Gets the rootCertificateForServerValidation property value. Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP.
            ## @return a mac_o_s_trusted_root_certificate
            ## 
            def root_certificate_for_server_validation
                return @root_certificate_for_server_validation
            end
            ## 
            ## Sets the rootCertificateForServerValidation property value. Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP.
            ## @param value Value to set for the rootCertificateForServerValidation property.
            ## @return a void
            ## 
            def root_certificate_for_server_validation=(value)
                @root_certificate_for_server_validation = value
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
                writer.write_enum_value("deploymentChannel", @deployment_channel)
                writer.write_enum_value("eapFastConfiguration", @eap_fast_configuration)
                writer.write_enum_value("eapType", @eap_type)
                writer.write_string_value("enableOuterIdentityPrivacy", @enable_outer_identity_privacy)
                writer.write_object_value("identityCertificateForClientAuthentication", @identity_certificate_for_client_authentication)
                writer.write_enum_value("networkInterface", @network_interface)
                writer.write_string_value("networkName", @network_name)
                writer.write_enum_value("nonEapAuthenticationMethodForEapTtls", @non_eap_authentication_method_for_eap_ttls)
                writer.write_object_value("rootCertificateForServerValidation", @root_certificate_for_server_validation)
                writer.write_collection_of_primitive_values("trustedServerCertificateNames", @trusted_server_certificate_names)
            end
            ## 
            ## Gets the trustedServerCertificateNames property value. Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users devices when they connect to this wired network.
            ## @return a string
            ## 
            def trusted_server_certificate_names
                return @trusted_server_certificate_names
            end
            ## 
            ## Sets the trustedServerCertificateNames property value. Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users devices when they connect to this wired network.
            ## @param value Value to set for the trustedServerCertificateNames property.
            ## @return a void
            ## 
            def trusted_server_certificate_names=(value)
                @trusted_server_certificate_names = value
            end
        end
    end
end
