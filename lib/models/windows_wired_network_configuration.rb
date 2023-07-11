require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This entity provides descriptions of the declared methods, properties and relationships exposed by the Wired Network CSP.
        class WindowsWiredNetworkConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specify the duration for which automatic authentication attempts will be blocked from occuring after a failed authentication attempt.
            @authentication_block_period_in_minutes
            ## 
            # Specify the authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential. Possible values are: certificate, usernameAndPassword, derivedCredential, unknownFutureValue.
            @authentication_method
            ## 
            # Specify the number of seconds for the client to wait after an authentication attempt before failing. Valid range 1-3600.
            @authentication_period_in_seconds
            ## 
            # Specify the number of seconds between a failed authentication and the next authentication attempt. Valid range 1-3600.
            @authentication_retry_delay_period_in_seconds
            ## 
            # Specify whether to authenticate the user, the device, either, or to use guest authentication (none). If you're using certificate authentication, make sure the certificate type matches the authentication type. Possible values are: none, user, machine, machineOrUser, guest. Possible values are: none, user, machine, machineOrUser, guest, unknownFutureValue.
            @authentication_type
            ## 
            # When TRUE, caches user credentials on the device so that users don't need to keep entering them each time they connect. When FALSE, do not cache credentials. Default value is FALSE.
            @cache_credentials
            ## 
            # When TRUE, prevents the user from being prompted to authorize new servers for trusted certification authorities when EAP type is selected as PEAP. When FALSE, does not prevent the user from being prompted. Default value is FALSE.
            @disable_user_prompt_for_server_validation
            ## 
            # Extensible Authentication Protocol (EAP) configuration types.
            @eap_type
            ## 
            # Specify the number of seconds to wait before sending an EAPOL (Extensible Authentication Protocol over LAN) Start message. Valid range 1-3600.
            @eapol_start_period_in_seconds
            ## 
            # When TRUE, the automatic configuration service for wired networks requires the use of 802.1X for port authentication. When FALSE, 802.1X is not required. Default value is FALSE.
            @enforce8021_x
            ## 
            # When TRUE, forces FIPS compliance. When FALSE, does not enable FIPS compliance. Default value is FALSE.
            @force_f_i_p_s_compliance
            ## 
            # Specify identity certificate for client authentication.
            @identity_certificate_for_client_authentication
            ## 
            # Specify inner authentication protocol for EAP TTLS. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            @inner_authentication_protocol_for_e_a_p_t_t_l_s
            ## 
            # Specify the maximum authentication failures allowed for a set of credentials. Valid range 1-100.
            @maximum_authentication_failures
            ## 
            # Specify the maximum number of EAPOL (Extensible Authentication Protocol over LAN) Start messages to be sent before returning failure. Valid range 1-100.
            @maximum_e_a_p_o_l_start_messages
            ## 
            # Specify the string to replace usernames for privacy when using EAP TTLS or PEAP.
            @outer_identity_privacy_temporary_value
            ## 
            # When TRUE, enables verification of server's identity by validating the certificate when EAP type is selected as PEAP. When FALSE, the certificate is not validated. Default value is TRUE.
            @perform_server_validation
            ## 
            # When TRUE, enables cryptographic binding when EAP type is selected as PEAP. When FALSE, does not enable cryptogrpahic binding. Default value is TRUE.
            @require_cryptographic_binding
            ## 
            # Specify root certificate for client validation.
            @root_certificate_for_client_validation
            ## 
            # Specify root certificates for server validation. This collection can contain a maximum of 500 elements.
            @root_certificates_for_server_validation
            ## 
            # Specify the secondary authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential. Possible values are: certificate, usernameAndPassword, derivedCredential, unknownFutureValue.
            @secondary_authentication_method
            ## 
            # Specify secondary identity certificate for client authentication.
            @secondary_identity_certificate_for_client_authentication
            ## 
            # Specify secondary root certificate for client validation.
            @secondary_root_certificate_for_client_validation
            ## 
            # Specify trusted server certificate names.
            @trusted_server_certificate_names
            ## 
            ## Gets the authenticationBlockPeriodInMinutes property value. Specify the duration for which automatic authentication attempts will be blocked from occuring after a failed authentication attempt.
            ## @return a integer
            ## 
            def authentication_block_period_in_minutes
                return @authentication_block_period_in_minutes
            end
            ## 
            ## Sets the authenticationBlockPeriodInMinutes property value. Specify the duration for which automatic authentication attempts will be blocked from occuring after a failed authentication attempt.
            ## @param value Value to set for the authentication_block_period_in_minutes property.
            ## @return a void
            ## 
            def authentication_block_period_in_minutes=(value)
                @authentication_block_period_in_minutes = value
            end
            ## 
            ## Gets the authenticationMethod property value. Specify the authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential. Possible values are: certificate, usernameAndPassword, derivedCredential, unknownFutureValue.
            ## @return a wired_network_authentication_method
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. Specify the authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential. Possible values are: certificate, usernameAndPassword, derivedCredential, unknownFutureValue.
            ## @param value Value to set for the authentication_method property.
            ## @return a void
            ## 
            def authentication_method=(value)
                @authentication_method = value
            end
            ## 
            ## Gets the authenticationPeriodInSeconds property value. Specify the number of seconds for the client to wait after an authentication attempt before failing. Valid range 1-3600.
            ## @return a integer
            ## 
            def authentication_period_in_seconds
                return @authentication_period_in_seconds
            end
            ## 
            ## Sets the authenticationPeriodInSeconds property value. Specify the number of seconds for the client to wait after an authentication attempt before failing. Valid range 1-3600.
            ## @param value Value to set for the authentication_period_in_seconds property.
            ## @return a void
            ## 
            def authentication_period_in_seconds=(value)
                @authentication_period_in_seconds = value
            end
            ## 
            ## Gets the authenticationRetryDelayPeriodInSeconds property value. Specify the number of seconds between a failed authentication and the next authentication attempt. Valid range 1-3600.
            ## @return a integer
            ## 
            def authentication_retry_delay_period_in_seconds
                return @authentication_retry_delay_period_in_seconds
            end
            ## 
            ## Sets the authenticationRetryDelayPeriodInSeconds property value. Specify the number of seconds between a failed authentication and the next authentication attempt. Valid range 1-3600.
            ## @param value Value to set for the authentication_retry_delay_period_in_seconds property.
            ## @return a void
            ## 
            def authentication_retry_delay_period_in_seconds=(value)
                @authentication_retry_delay_period_in_seconds = value
            end
            ## 
            ## Gets the authenticationType property value. Specify whether to authenticate the user, the device, either, or to use guest authentication (none). If you're using certificate authentication, make sure the certificate type matches the authentication type. Possible values are: none, user, machine, machineOrUser, guest. Possible values are: none, user, machine, machineOrUser, guest, unknownFutureValue.
            ## @return a wired_network_authentication_type
            ## 
            def authentication_type
                return @authentication_type
            end
            ## 
            ## Sets the authenticationType property value. Specify whether to authenticate the user, the device, either, or to use guest authentication (none). If you're using certificate authentication, make sure the certificate type matches the authentication type. Possible values are: none, user, machine, machineOrUser, guest. Possible values are: none, user, machine, machineOrUser, guest, unknownFutureValue.
            ## @param value Value to set for the authentication_type property.
            ## @return a void
            ## 
            def authentication_type=(value)
                @authentication_type = value
            end
            ## 
            ## Gets the cacheCredentials property value. When TRUE, caches user credentials on the device so that users don't need to keep entering them each time they connect. When FALSE, do not cache credentials. Default value is FALSE.
            ## @return a boolean
            ## 
            def cache_credentials
                return @cache_credentials
            end
            ## 
            ## Sets the cacheCredentials property value. When TRUE, caches user credentials on the device so that users don't need to keep entering them each time they connect. When FALSE, do not cache credentials. Default value is FALSE.
            ## @param value Value to set for the cache_credentials property.
            ## @return a void
            ## 
            def cache_credentials=(value)
                @cache_credentials = value
            end
            ## 
            ## Instantiates a new windowsWiredNetworkConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsWiredNetworkConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_wired_network_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsWiredNetworkConfiguration.new
            end
            ## 
            ## Gets the disableUserPromptForServerValidation property value. When TRUE, prevents the user from being prompted to authorize new servers for trusted certification authorities when EAP type is selected as PEAP. When FALSE, does not prevent the user from being prompted. Default value is FALSE.
            ## @return a boolean
            ## 
            def disable_user_prompt_for_server_validation
                return @disable_user_prompt_for_server_validation
            end
            ## 
            ## Sets the disableUserPromptForServerValidation property value. When TRUE, prevents the user from being prompted to authorize new servers for trusted certification authorities when EAP type is selected as PEAP. When FALSE, does not prevent the user from being prompted. Default value is FALSE.
            ## @param value Value to set for the disable_user_prompt_for_server_validation property.
            ## @return a void
            ## 
            def disable_user_prompt_for_server_validation=(value)
                @disable_user_prompt_for_server_validation = value
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
            ## @param value Value to set for the eap_type property.
            ## @return a void
            ## 
            def eap_type=(value)
                @eap_type = value
            end
            ## 
            ## Gets the eapolStartPeriodInSeconds property value. Specify the number of seconds to wait before sending an EAPOL (Extensible Authentication Protocol over LAN) Start message. Valid range 1-3600.
            ## @return a integer
            ## 
            def eapol_start_period_in_seconds
                return @eapol_start_period_in_seconds
            end
            ## 
            ## Sets the eapolStartPeriodInSeconds property value. Specify the number of seconds to wait before sending an EAPOL (Extensible Authentication Protocol over LAN) Start message. Valid range 1-3600.
            ## @param value Value to set for the eapol_start_period_in_seconds property.
            ## @return a void
            ## 
            def eapol_start_period_in_seconds=(value)
                @eapol_start_period_in_seconds = value
            end
            ## 
            ## Gets the enforce8021X property value. When TRUE, the automatic configuration service for wired networks requires the use of 802.1X for port authentication. When FALSE, 802.1X is not required. Default value is FALSE.
            ## @return a boolean
            ## 
            def enforce8021_x
                return @enforce8021_x
            end
            ## 
            ## Sets the enforce8021X property value. When TRUE, the automatic configuration service for wired networks requires the use of 802.1X for port authentication. When FALSE, 802.1X is not required. Default value is FALSE.
            ## @param value Value to set for the enforce8021_x property.
            ## @return a void
            ## 
            def enforce8021_x=(value)
                @enforce8021_x = value
            end
            ## 
            ## Gets the forceFIPSCompliance property value. When TRUE, forces FIPS compliance. When FALSE, does not enable FIPS compliance. Default value is FALSE.
            ## @return a boolean
            ## 
            def force_f_i_p_s_compliance
                return @force_f_i_p_s_compliance
            end
            ## 
            ## Sets the forceFIPSCompliance property value. When TRUE, forces FIPS compliance. When FALSE, does not enable FIPS compliance. Default value is FALSE.
            ## @param value Value to set for the force_f_i_p_s_compliance property.
            ## @return a void
            ## 
            def force_f_i_p_s_compliance=(value)
                @force_f_i_p_s_compliance = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationBlockPeriodInMinutes" => lambda {|n| @authentication_block_period_in_minutes = n.get_number_value() },
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::WiredNetworkAuthenticationMethod) },
                    "authenticationPeriodInSeconds" => lambda {|n| @authentication_period_in_seconds = n.get_number_value() },
                    "authenticationRetryDelayPeriodInSeconds" => lambda {|n| @authentication_retry_delay_period_in_seconds = n.get_number_value() },
                    "authenticationType" => lambda {|n| @authentication_type = n.get_enum_value(MicrosoftGraphBeta::Models::WiredNetworkAuthenticationType) },
                    "cacheCredentials" => lambda {|n| @cache_credentials = n.get_boolean_value() },
                    "disableUserPromptForServerValidation" => lambda {|n| @disable_user_prompt_for_server_validation = n.get_boolean_value() },
                    "eapType" => lambda {|n| @eap_type = n.get_enum_value(MicrosoftGraphBeta::Models::EapType) },
                    "eapolStartPeriodInSeconds" => lambda {|n| @eapol_start_period_in_seconds = n.get_number_value() },
                    "enforce8021X" => lambda {|n| @enforce8021_x = n.get_boolean_value() },
                    "forceFIPSCompliance" => lambda {|n| @force_f_i_p_s_compliance = n.get_boolean_value() },
                    "identityCertificateForClientAuthentication" => lambda {|n| @identity_certificate_for_client_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "innerAuthenticationProtocolForEAPTTLS" => lambda {|n| @inner_authentication_protocol_for_e_a_p_t_t_l_s = n.get_enum_value(MicrosoftGraphBeta::Models::NonEapAuthenticationMethodForEapTtlsType) },
                    "maximumAuthenticationFailures" => lambda {|n| @maximum_authentication_failures = n.get_number_value() },
                    "maximumEAPOLStartMessages" => lambda {|n| @maximum_e_a_p_o_l_start_messages = n.get_number_value() },
                    "outerIdentityPrivacyTemporaryValue" => lambda {|n| @outer_identity_privacy_temporary_value = n.get_string_value() },
                    "performServerValidation" => lambda {|n| @perform_server_validation = n.get_boolean_value() },
                    "requireCryptographicBinding" => lambda {|n| @require_cryptographic_binding = n.get_boolean_value() },
                    "rootCertificateForClientValidation" => lambda {|n| @root_certificate_for_client_validation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Windows81TrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "rootCertificatesForServerValidation" => lambda {|n| @root_certificates_for_server_validation = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Windows81TrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "secondaryAuthenticationMethod" => lambda {|n| @secondary_authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::WiredNetworkAuthenticationMethod) },
                    "secondaryIdentityCertificateForClientAuthentication" => lambda {|n| @secondary_identity_certificate_for_client_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "secondaryRootCertificateForClientValidation" => lambda {|n| @secondary_root_certificate_for_client_validation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Windows81TrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "trustedServerCertificateNames" => lambda {|n| @trusted_server_certificate_names = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the identityCertificateForClientAuthentication property value. Specify identity certificate for client authentication.
            ## @return a windows_certificate_profile_base
            ## 
            def identity_certificate_for_client_authentication
                return @identity_certificate_for_client_authentication
            end
            ## 
            ## Sets the identityCertificateForClientAuthentication property value. Specify identity certificate for client authentication.
            ## @param value Value to set for the identity_certificate_for_client_authentication property.
            ## @return a void
            ## 
            def identity_certificate_for_client_authentication=(value)
                @identity_certificate_for_client_authentication = value
            end
            ## 
            ## Gets the innerAuthenticationProtocolForEAPTTLS property value. Specify inner authentication protocol for EAP TTLS. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @return a non_eap_authentication_method_for_eap_ttls_type
            ## 
            def inner_authentication_protocol_for_e_a_p_t_t_l_s
                return @inner_authentication_protocol_for_e_a_p_t_t_l_s
            end
            ## 
            ## Sets the innerAuthenticationProtocolForEAPTTLS property value. Specify inner authentication protocol for EAP TTLS. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @param value Value to set for the inner_authentication_protocol_for_e_a_p_t_t_l_s property.
            ## @return a void
            ## 
            def inner_authentication_protocol_for_e_a_p_t_t_l_s=(value)
                @inner_authentication_protocol_for_e_a_p_t_t_l_s = value
            end
            ## 
            ## Gets the maximumAuthenticationFailures property value. Specify the maximum authentication failures allowed for a set of credentials. Valid range 1-100.
            ## @return a integer
            ## 
            def maximum_authentication_failures
                return @maximum_authentication_failures
            end
            ## 
            ## Sets the maximumAuthenticationFailures property value. Specify the maximum authentication failures allowed for a set of credentials. Valid range 1-100.
            ## @param value Value to set for the maximum_authentication_failures property.
            ## @return a void
            ## 
            def maximum_authentication_failures=(value)
                @maximum_authentication_failures = value
            end
            ## 
            ## Gets the maximumEAPOLStartMessages property value. Specify the maximum number of EAPOL (Extensible Authentication Protocol over LAN) Start messages to be sent before returning failure. Valid range 1-100.
            ## @return a integer
            ## 
            def maximum_e_a_p_o_l_start_messages
                return @maximum_e_a_p_o_l_start_messages
            end
            ## 
            ## Sets the maximumEAPOLStartMessages property value. Specify the maximum number of EAPOL (Extensible Authentication Protocol over LAN) Start messages to be sent before returning failure. Valid range 1-100.
            ## @param value Value to set for the maximum_e_a_p_o_l_start_messages property.
            ## @return a void
            ## 
            def maximum_e_a_p_o_l_start_messages=(value)
                @maximum_e_a_p_o_l_start_messages = value
            end
            ## 
            ## Gets the outerIdentityPrivacyTemporaryValue property value. Specify the string to replace usernames for privacy when using EAP TTLS or PEAP.
            ## @return a string
            ## 
            def outer_identity_privacy_temporary_value
                return @outer_identity_privacy_temporary_value
            end
            ## 
            ## Sets the outerIdentityPrivacyTemporaryValue property value. Specify the string to replace usernames for privacy when using EAP TTLS or PEAP.
            ## @param value Value to set for the outer_identity_privacy_temporary_value property.
            ## @return a void
            ## 
            def outer_identity_privacy_temporary_value=(value)
                @outer_identity_privacy_temporary_value = value
            end
            ## 
            ## Gets the performServerValidation property value. When TRUE, enables verification of server's identity by validating the certificate when EAP type is selected as PEAP. When FALSE, the certificate is not validated. Default value is TRUE.
            ## @return a boolean
            ## 
            def perform_server_validation
                return @perform_server_validation
            end
            ## 
            ## Sets the performServerValidation property value. When TRUE, enables verification of server's identity by validating the certificate when EAP type is selected as PEAP. When FALSE, the certificate is not validated. Default value is TRUE.
            ## @param value Value to set for the perform_server_validation property.
            ## @return a void
            ## 
            def perform_server_validation=(value)
                @perform_server_validation = value
            end
            ## 
            ## Gets the requireCryptographicBinding property value. When TRUE, enables cryptographic binding when EAP type is selected as PEAP. When FALSE, does not enable cryptogrpahic binding. Default value is TRUE.
            ## @return a boolean
            ## 
            def require_cryptographic_binding
                return @require_cryptographic_binding
            end
            ## 
            ## Sets the requireCryptographicBinding property value. When TRUE, enables cryptographic binding when EAP type is selected as PEAP. When FALSE, does not enable cryptogrpahic binding. Default value is TRUE.
            ## @param value Value to set for the require_cryptographic_binding property.
            ## @return a void
            ## 
            def require_cryptographic_binding=(value)
                @require_cryptographic_binding = value
            end
            ## 
            ## Gets the rootCertificateForClientValidation property value. Specify root certificate for client validation.
            ## @return a windows81_trusted_root_certificate
            ## 
            def root_certificate_for_client_validation
                return @root_certificate_for_client_validation
            end
            ## 
            ## Sets the rootCertificateForClientValidation property value. Specify root certificate for client validation.
            ## @param value Value to set for the root_certificate_for_client_validation property.
            ## @return a void
            ## 
            def root_certificate_for_client_validation=(value)
                @root_certificate_for_client_validation = value
            end
            ## 
            ## Gets the rootCertificatesForServerValidation property value. Specify root certificates for server validation. This collection can contain a maximum of 500 elements.
            ## @return a windows81_trusted_root_certificate
            ## 
            def root_certificates_for_server_validation
                return @root_certificates_for_server_validation
            end
            ## 
            ## Sets the rootCertificatesForServerValidation property value. Specify root certificates for server validation. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the root_certificates_for_server_validation property.
            ## @return a void
            ## 
            def root_certificates_for_server_validation=(value)
                @root_certificates_for_server_validation = value
            end
            ## 
            ## Gets the secondaryAuthenticationMethod property value. Specify the secondary authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential. Possible values are: certificate, usernameAndPassword, derivedCredential, unknownFutureValue.
            ## @return a wired_network_authentication_method
            ## 
            def secondary_authentication_method
                return @secondary_authentication_method
            end
            ## 
            ## Sets the secondaryAuthenticationMethod property value. Specify the secondary authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential. Possible values are: certificate, usernameAndPassword, derivedCredential, unknownFutureValue.
            ## @param value Value to set for the secondary_authentication_method property.
            ## @return a void
            ## 
            def secondary_authentication_method=(value)
                @secondary_authentication_method = value
            end
            ## 
            ## Gets the secondaryIdentityCertificateForClientAuthentication property value. Specify secondary identity certificate for client authentication.
            ## @return a windows_certificate_profile_base
            ## 
            def secondary_identity_certificate_for_client_authentication
                return @secondary_identity_certificate_for_client_authentication
            end
            ## 
            ## Sets the secondaryIdentityCertificateForClientAuthentication property value. Specify secondary identity certificate for client authentication.
            ## @param value Value to set for the secondary_identity_certificate_for_client_authentication property.
            ## @return a void
            ## 
            def secondary_identity_certificate_for_client_authentication=(value)
                @secondary_identity_certificate_for_client_authentication = value
            end
            ## 
            ## Gets the secondaryRootCertificateForClientValidation property value. Specify secondary root certificate for client validation.
            ## @return a windows81_trusted_root_certificate
            ## 
            def secondary_root_certificate_for_client_validation
                return @secondary_root_certificate_for_client_validation
            end
            ## 
            ## Sets the secondaryRootCertificateForClientValidation property value. Specify secondary root certificate for client validation.
            ## @param value Value to set for the secondary_root_certificate_for_client_validation property.
            ## @return a void
            ## 
            def secondary_root_certificate_for_client_validation=(value)
                @secondary_root_certificate_for_client_validation = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("authenticationBlockPeriodInMinutes", @authentication_block_period_in_minutes)
                writer.write_enum_value("authenticationMethod", @authentication_method)
                writer.write_number_value("authenticationPeriodInSeconds", @authentication_period_in_seconds)
                writer.write_number_value("authenticationRetryDelayPeriodInSeconds", @authentication_retry_delay_period_in_seconds)
                writer.write_enum_value("authenticationType", @authentication_type)
                writer.write_boolean_value("cacheCredentials", @cache_credentials)
                writer.write_boolean_value("disableUserPromptForServerValidation", @disable_user_prompt_for_server_validation)
                writer.write_enum_value("eapType", @eap_type)
                writer.write_number_value("eapolStartPeriodInSeconds", @eapol_start_period_in_seconds)
                writer.write_boolean_value("enforce8021X", @enforce8021_x)
                writer.write_boolean_value("forceFIPSCompliance", @force_f_i_p_s_compliance)
                writer.write_object_value("identityCertificateForClientAuthentication", @identity_certificate_for_client_authentication)
                writer.write_enum_value("innerAuthenticationProtocolForEAPTTLS", @inner_authentication_protocol_for_e_a_p_t_t_l_s)
                writer.write_number_value("maximumAuthenticationFailures", @maximum_authentication_failures)
                writer.write_number_value("maximumEAPOLStartMessages", @maximum_e_a_p_o_l_start_messages)
                writer.write_string_value("outerIdentityPrivacyTemporaryValue", @outer_identity_privacy_temporary_value)
                writer.write_boolean_value("performServerValidation", @perform_server_validation)
                writer.write_boolean_value("requireCryptographicBinding", @require_cryptographic_binding)
                writer.write_object_value("rootCertificateForClientValidation", @root_certificate_for_client_validation)
                writer.write_collection_of_object_values("rootCertificatesForServerValidation", @root_certificates_for_server_validation)
                writer.write_enum_value("secondaryAuthenticationMethod", @secondary_authentication_method)
                writer.write_object_value("secondaryIdentityCertificateForClientAuthentication", @secondary_identity_certificate_for_client_authentication)
                writer.write_object_value("secondaryRootCertificateForClientValidation", @secondary_root_certificate_for_client_validation)
                writer.write_collection_of_primitive_values("trustedServerCertificateNames", @trusted_server_certificate_names)
            end
            ## 
            ## Gets the trustedServerCertificateNames property value. Specify trusted server certificate names.
            ## @return a string
            ## 
            def trusted_server_certificate_names
                return @trusted_server_certificate_names
            end
            ## 
            ## Sets the trustedServerCertificateNames property value. Specify trusted server certificate names.
            ## @param value Value to set for the trusted_server_certificate_names property.
            ## @return a void
            ## 
            def trusted_server_certificate_names=(value)
                @trusted_server_certificate_names = value
            end
        end
    end
end
