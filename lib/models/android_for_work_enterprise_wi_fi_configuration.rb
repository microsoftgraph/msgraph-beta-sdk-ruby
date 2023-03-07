require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidForWorkEnterpriseWiFiConfiguration < MicrosoftGraphBeta::Models::AndroidForWorkWiFiConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the Authentication Method the client (device) needs to use when the EAP Type is configured to PEAP or EAP-TTLS. Possible values are: certificate, usernameAndPassword, derivedCredential.
            @authentication_method
            ## 
            # Extensible Authentication Protocol (EAP) Configuration Types.
            @eap_type
            ## 
            # Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication). This is the certificate presented by client to the Wi-Fi endpoint. The authentication server sitting behind the Wi-Fi endpoint must accept this certificate to successfully establish a Wi-Fi connection.
            @identity_certificate_for_client_authentication
            ## 
            # Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            @inner_authentication_protocol_for_eap_ttls
            ## 
            # Non-EAP Method for Authentication (Inner Identity) when EAP Type is PEAP and Authenticationmethod is Username and Password. Possible values are: none, microsoftChapVersionTwo.
            @inner_authentication_protocol_for_peap
            ## 
            # Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS or PEAP. The String provided here is used to mask the username of individual users when they attempt to connect to Wi-Fi network.
            @outer_identity_privacy_temporary_value
            ## 
            # Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS, EAP-TTLS or PEAP. This is the certificate presented by the Wi-Fi endpoint when the device attempts to connect to Wi-Fi endpoint. The device (or user) must accept this certificate to continue the connection attempt.
            @root_certificate_for_server_validation
            ## 
            # Trusted server certificate names when EAP Type is configured to EAP-TLS/TTLS/FAST or PEAP. This is the common name used in the certificates issued by your trusted certificate authority (CA). If you provide this information, you can bypass the dynamic trust dialog that is displayed on end users' devices when they connect to this Wi-Fi network.
            @trusted_server_certificate_names
            ## 
            ## Gets the authenticationMethod property value. Indicates the Authentication Method the client (device) needs to use when the EAP Type is configured to PEAP or EAP-TTLS. Possible values are: certificate, usernameAndPassword, derivedCredential.
            ## @return a wi_fi_authentication_method
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. Indicates the Authentication Method the client (device) needs to use when the EAP Type is configured to PEAP or EAP-TTLS. Possible values are: certificate, usernameAndPassword, derivedCredential.
            ## @param value Value to set for the authentication_method property.
            ## @return a void
            ## 
            def authentication_method=(value)
                @authentication_method = value
            end
            ## 
            ## Instantiates a new AndroidForWorkEnterpriseWiFiConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidForWorkEnterpriseWiFiConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_for_work_enterprise_wi_fi_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidForWorkEnterpriseWiFiConfiguration.new
            end
            ## 
            ## Gets the eapType property value. Extensible Authentication Protocol (EAP) Configuration Types.
            ## @return a android_eap_type
            ## 
            def eap_type
                return @eap_type
            end
            ## 
            ## Sets the eapType property value. Extensible Authentication Protocol (EAP) Configuration Types.
            ## @param value Value to set for the eap_type property.
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
                    "eapType" => lambda {|n| @eap_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidEapType) },
                    "identityCertificateForClientAuthentication" => lambda {|n| @identity_certificate_for_client_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "innerAuthenticationProtocolForEapTtls" => lambda {|n| @inner_authentication_protocol_for_eap_ttls = n.get_enum_value(MicrosoftGraphBeta::Models::NonEapAuthenticationMethodForEapTtlsType) },
                    "innerAuthenticationProtocolForPeap" => lambda {|n| @inner_authentication_protocol_for_peap = n.get_enum_value(MicrosoftGraphBeta::Models::NonEapAuthenticationMethodForPeap) },
                    "outerIdentityPrivacyTemporaryValue" => lambda {|n| @outer_identity_privacy_temporary_value = n.get_string_value() },
                    "rootCertificateForServerValidation" => lambda {|n| @root_certificate_for_server_validation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkTrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "trustedServerCertificateNames" => lambda {|n| @trusted_server_certificate_names = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the identityCertificateForClientAuthentication property value. Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication). This is the certificate presented by client to the Wi-Fi endpoint. The authentication server sitting behind the Wi-Fi endpoint must accept this certificate to successfully establish a Wi-Fi connection.
            ## @return a android_for_work_certificate_profile_base
            ## 
            def identity_certificate_for_client_authentication
                return @identity_certificate_for_client_authentication
            end
            ## 
            ## Sets the identityCertificateForClientAuthentication property value. Identity Certificate for client authentication when EAP Type is configured to EAP-TLS, EAP-TTLS (with Certificate Authentication), or PEAP (with Certificate Authentication). This is the certificate presented by client to the Wi-Fi endpoint. The authentication server sitting behind the Wi-Fi endpoint must accept this certificate to successfully establish a Wi-Fi connection.
            ## @param value Value to set for the identity_certificate_for_client_authentication property.
            ## @return a void
            ## 
            def identity_certificate_for_client_authentication=(value)
                @identity_certificate_for_client_authentication = value
            end
            ## 
            ## Gets the innerAuthenticationProtocolForEapTtls property value. Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @return a non_eap_authentication_method_for_eap_ttls_type
            ## 
            def inner_authentication_protocol_for_eap_ttls
                return @inner_authentication_protocol_for_eap_ttls
            end
            ## 
            ## Sets the innerAuthenticationProtocolForEapTtls property value. Non-EAP Method for Authentication (Inner Identity) when EAP Type is EAP-TTLS and Authenticationmethod is Username and Password. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @param value Value to set for the inner_authentication_protocol_for_eap_ttls property.
            ## @return a void
            ## 
            def inner_authentication_protocol_for_eap_ttls=(value)
                @inner_authentication_protocol_for_eap_ttls = value
            end
            ## 
            ## Gets the innerAuthenticationProtocolForPeap property value. Non-EAP Method for Authentication (Inner Identity) when EAP Type is PEAP and Authenticationmethod is Username and Password. Possible values are: none, microsoftChapVersionTwo.
            ## @return a non_eap_authentication_method_for_peap
            ## 
            def inner_authentication_protocol_for_peap
                return @inner_authentication_protocol_for_peap
            end
            ## 
            ## Sets the innerAuthenticationProtocolForPeap property value. Non-EAP Method for Authentication (Inner Identity) when EAP Type is PEAP and Authenticationmethod is Username and Password. Possible values are: none, microsoftChapVersionTwo.
            ## @param value Value to set for the inner_authentication_protocol_for_peap property.
            ## @return a void
            ## 
            def inner_authentication_protocol_for_peap=(value)
                @inner_authentication_protocol_for_peap = value
            end
            ## 
            ## Gets the outerIdentityPrivacyTemporaryValue property value. Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS or PEAP. The String provided here is used to mask the username of individual users when they attempt to connect to Wi-Fi network.
            ## @return a string
            ## 
            def outer_identity_privacy_temporary_value
                return @outer_identity_privacy_temporary_value
            end
            ## 
            ## Sets the outerIdentityPrivacyTemporaryValue property value. Enable identity privacy (Outer Identity) when EAP Type is configured to EAP-TTLS or PEAP. The String provided here is used to mask the username of individual users when they attempt to connect to Wi-Fi network.
            ## @param value Value to set for the outer_identity_privacy_temporary_value property.
            ## @return a void
            ## 
            def outer_identity_privacy_temporary_value=(value)
                @outer_identity_privacy_temporary_value = value
            end
            ## 
            ## Gets the rootCertificateForServerValidation property value. Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS, EAP-TTLS or PEAP. This is the certificate presented by the Wi-Fi endpoint when the device attempts to connect to Wi-Fi endpoint. The device (or user) must accept this certificate to continue the connection attempt.
            ## @return a android_for_work_trusted_root_certificate
            ## 
            def root_certificate_for_server_validation
                return @root_certificate_for_server_validation
            end
            ## 
            ## Sets the rootCertificateForServerValidation property value. Trusted Root Certificate for Server Validation when EAP Type is configured to EAP-TLS, EAP-TTLS or PEAP. This is the certificate presented by the Wi-Fi endpoint when the device attempts to connect to Wi-Fi endpoint. The device (or user) must accept this certificate to continue the connection attempt.
            ## @param value Value to set for the root_certificate_for_server_validation property.
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
                writer.write_enum_value("eapType", @eap_type)
                writer.write_object_value("identityCertificateForClientAuthentication", @identity_certificate_for_client_authentication)
                writer.write_enum_value("innerAuthenticationProtocolForEapTtls", @inner_authentication_protocol_for_eap_ttls)
                writer.write_enum_value("innerAuthenticationProtocolForPeap", @inner_authentication_protocol_for_peap)
                writer.write_string_value("outerIdentityPrivacyTemporaryValue", @outer_identity_privacy_temporary_value)
                writer.write_object_value("rootCertificateForServerValidation", @root_certificate_for_server_validation)
                writer.write_collection_of_primitive_values("trustedServerCertificateNames", @trusted_server_certificate_names)
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
            ## @param value Value to set for the trusted_server_certificate_names property.
            ## @return a void
            ## 
            def trusted_server_certificate_names=(value)
                @trusted_server_certificate_names = value
            end
        end
    end
end
