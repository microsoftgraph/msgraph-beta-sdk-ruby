require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # By providing the configurations in this profile you can instruct the iOS device to connect to desired Wi-Fi endpoint. By specifying the authentication method and security types expected by Wi-Fi endpoint you can make the Wi-Fi connection seamless for end user.
        class IosEnterpriseWiFiConfiguration < MicrosoftGraphBeta::Models::IosWiFiConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Authentication Method when EAP Type is configured to PEAP or EAP-TTLS. Possible values are: certificate, usernameAndPassword, derivedCredential.
            @authentication_method
            ## 
            # Tenant level settings for the Derived Credentials to be used for authentication.
            @derived_credential_settings
            ## 
            # EAP-FAST Configuration Option when EAP-FAST is the selected EAP Type. Possible values are: noProtectedAccessCredential, useProtectedAccessCredential, useProtectedAccessCredentialAndProvision, useProtectedAccessCredentialAndProvisionAnonymously.
            @eap_fast_configuration
            ## 
            # Extensible Authentication Protocol (EAP) configuration types.
            @eap_type
            ## 
            # Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication).
            @identity_certificate_for_client_authentication
            ## 
            # Non-EAP Method for Authentication when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            @inner_authentication_protocol_for_eap_ttls
            ## 
            # Enable identity privacy (Outer Identity) when EAP Type is configured to EAP - TTLS, EAP - FAST or PEAP. This property masks usernames with the text you enter. For example, if you use 'anonymous', each user that authenticates with this Wi-Fi connection using their real username is displayed as 'anonymous'.
            @outer_identity_privacy_temporary_value
            ## 
            # Password format string used to build the password to connect to wifi
            @password_format_string
            ## 
            # Trusted Root Certificates for Server Validation when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. If you provide this value you do not need to provide trustedServerCertificateNames, and vice versa. This collection can contain a maximum of 500 elements.
            @root_certificates_for_server_validation
            ## 
            # Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users' devices when they connect to this Wi-Fi network.
            @trusted_server_certificate_names
            ## 
            # Username format string used to build the username to connect to wifi
            @username_format_string
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
            ## Instantiates a new IosEnterpriseWiFiConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosEnterpriseWiFiConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_enterprise_wi_fi_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosEnterpriseWiFiConfiguration.new
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
            ## @param value Value to set for the derivedCredentialSettings property.
            ## @return a void
            ## 
            def derived_credential_settings=(value)
                @derived_credential_settings = value
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::WiFiAuthenticationMethod) },
                    "derivedCredentialSettings" => lambda {|n| @derived_credential_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementDerivedCredentialSettings.create_from_discriminator_value(pn) }) },
                    "eapFastConfiguration" => lambda {|n| @eap_fast_configuration = n.get_enum_value(MicrosoftGraphBeta::Models::EapFastConfiguration) },
                    "eapType" => lambda {|n| @eap_type = n.get_enum_value(MicrosoftGraphBeta::Models::EapType) },
                    "identityCertificateForClientAuthentication" => lambda {|n| @identity_certificate_for_client_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "innerAuthenticationProtocolForEapTtls" => lambda {|n| @inner_authentication_protocol_for_eap_ttls = n.get_enum_value(MicrosoftGraphBeta::Models::NonEapAuthenticationMethodForEapTtlsType) },
                    "outerIdentityPrivacyTemporaryValue" => lambda {|n| @outer_identity_privacy_temporary_value = n.get_string_value() },
                    "passwordFormatString" => lambda {|n| @password_format_string = n.get_string_value() },
                    "rootCertificatesForServerValidation" => lambda {|n| @root_certificates_for_server_validation = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosTrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "trustedServerCertificateNames" => lambda {|n| @trusted_server_certificate_names = n.get_collection_of_primitive_values(String) },
                    "usernameFormatString" => lambda {|n| @username_format_string = n.get_string_value() },
                })
            end
            ## 
            ## Gets the identityCertificateForClientAuthentication property value. Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication).
            ## @return a ios_certificate_profile_base
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
            ## Gets the innerAuthenticationProtocolForEapTtls property value. Non-EAP Method for Authentication when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @return a non_eap_authentication_method_for_eap_ttls_type
            ## 
            def inner_authentication_protocol_for_eap_ttls
                return @inner_authentication_protocol_for_eap_ttls
            end
            ## 
            ## Sets the innerAuthenticationProtocolForEapTtls property value. Non-EAP Method for Authentication when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @param value Value to set for the innerAuthenticationProtocolForEapTtls property.
            ## @return a void
            ## 
            def inner_authentication_protocol_for_eap_ttls=(value)
                @inner_authentication_protocol_for_eap_ttls = value
            end
            ## 
            ## Gets the outerIdentityPrivacyTemporaryValue property value. Enable identity privacy (Outer Identity) when EAP Type is configured to EAP - TTLS, EAP - FAST or PEAP. This property masks usernames with the text you enter. For example, if you use 'anonymous', each user that authenticates with this Wi-Fi connection using their real username is displayed as 'anonymous'.
            ## @return a string
            ## 
            def outer_identity_privacy_temporary_value
                return @outer_identity_privacy_temporary_value
            end
            ## 
            ## Sets the outerIdentityPrivacyTemporaryValue property value. Enable identity privacy (Outer Identity) when EAP Type is configured to EAP - TTLS, EAP - FAST or PEAP. This property masks usernames with the text you enter. For example, if you use 'anonymous', each user that authenticates with this Wi-Fi connection using their real username is displayed as 'anonymous'.
            ## @param value Value to set for the outerIdentityPrivacyTemporaryValue property.
            ## @return a void
            ## 
            def outer_identity_privacy_temporary_value=(value)
                @outer_identity_privacy_temporary_value = value
            end
            ## 
            ## Gets the passwordFormatString property value. Password format string used to build the password to connect to wifi
            ## @return a string
            ## 
            def password_format_string
                return @password_format_string
            end
            ## 
            ## Sets the passwordFormatString property value. Password format string used to build the password to connect to wifi
            ## @param value Value to set for the passwordFormatString property.
            ## @return a void
            ## 
            def password_format_string=(value)
                @password_format_string = value
            end
            ## 
            ## Gets the rootCertificatesForServerValidation property value. Trusted Root Certificates for Server Validation when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. If you provide this value you do not need to provide trustedServerCertificateNames, and vice versa. This collection can contain a maximum of 500 elements.
            ## @return a ios_trusted_root_certificate
            ## 
            def root_certificates_for_server_validation
                return @root_certificates_for_server_validation
            end
            ## 
            ## Sets the rootCertificatesForServerValidation property value. Trusted Root Certificates for Server Validation when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. If you provide this value you do not need to provide trustedServerCertificateNames, and vice versa. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the rootCertificatesForServerValidation property.
            ## @return a void
            ## 
            def root_certificates_for_server_validation=(value)
                @root_certificates_for_server_validation = value
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
                writer.write_object_value("derivedCredentialSettings", @derived_credential_settings)
                writer.write_enum_value("eapFastConfiguration", @eap_fast_configuration)
                writer.write_enum_value("eapType", @eap_type)
                writer.write_object_value("identityCertificateForClientAuthentication", @identity_certificate_for_client_authentication)
                writer.write_enum_value("innerAuthenticationProtocolForEapTtls", @inner_authentication_protocol_for_eap_ttls)
                writer.write_string_value("outerIdentityPrivacyTemporaryValue", @outer_identity_privacy_temporary_value)
                writer.write_string_value("passwordFormatString", @password_format_string)
                writer.write_collection_of_object_values("rootCertificatesForServerValidation", @root_certificates_for_server_validation)
                writer.write_collection_of_primitive_values("trustedServerCertificateNames", @trusted_server_certificate_names)
                writer.write_string_value("usernameFormatString", @username_format_string)
            end
            ## 
            ## Gets the trustedServerCertificateNames property value. Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users' devices when they connect to this Wi-Fi network.
            ## @return a string
            ## 
            def trusted_server_certificate_names
                return @trusted_server_certificate_names
            end
            ## 
            ## Sets the trustedServerCertificateNames property value. Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users' devices when they connect to this Wi-Fi network.
            ## @param value Value to set for the trustedServerCertificateNames property.
            ## @return a void
            ## 
            def trusted_server_certificate_names=(value)
                @trusted_server_certificate_names = value
            end
            ## 
            ## Gets the usernameFormatString property value. Username format string used to build the username to connect to wifi
            ## @return a string
            ## 
            def username_format_string
                return @username_format_string
            end
            ## 
            ## Sets the usernameFormatString property value. Username format string used to build the username to connect to wifi
            ## @param value Value to set for the usernameFormatString property.
            ## @return a void
            ## 
            def username_format_string=(value)
                @username_format_string = value
            end
        end
    end
end
