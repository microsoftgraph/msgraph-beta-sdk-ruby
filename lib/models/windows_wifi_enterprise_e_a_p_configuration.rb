require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This entity provides descriptions of the declared methods, properties and relationships exposed by the Wifi CSP.
        class WindowsWifiEnterpriseEAPConfiguration < MicrosoftGraphBeta::Models::WindowsWifiConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specify the authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential.
            @authentication_method
            ## 
            # Specify the number of seconds for the client to wait after an authentication attempt before failing. Valid range 1-3600.
            @authentication_period_in_seconds
            ## 
            # Specify the number of seconds between a failed authentication and the next authentication attempt. Valid range 1-3600.
            @authentication_retry_delay_period_in_seconds
            ## 
            # Specify whether to authenticate the user, the device, either, or to use guest authentication (none). If you’re using certificate authentication, make sure the certificate type matches the authentication type. Possible values are: none, user, machine, machineOrUser, guest.
            @authentication_type
            ## 
            # Specify whether to cache user credentials on the device so that users don’t need to keep entering them each time they connect.
            @cache_credentials
            ## 
            # Specify whether to prevent the user from being prompted to authorize new servers for trusted certification authorities when EAP type is selected as PEAP.
            @disable_user_prompt_for_server_validation
            ## 
            # Extensible Authentication Protocol (EAP) configuration types.
            @eap_type
            ## 
            # Specify the number of seconds to wait before sending an EAPOL (Extensible Authentication Protocol over LAN) Start message. Valid range 1-3600.
            @eapol_start_period_in_seconds
            ## 
            # Specify whether the wifi connection should enable pairwise master key caching.
            @enable_pairwise_master_key_caching
            ## 
            # Specify whether pre-authentication should be enabled.
            @enable_pre_authentication
            ## 
            # Specify identity certificate for client authentication.
            @identity_certificate_for_client_authentication
            ## 
            # Specify inner authentication protocol for EAP TTLS. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            @inner_authentication_protocol_for_e_a_p_t_t_l_s
            ## 
            # Specify the maximum authentication failures allowed for a set of credentials. Valid range 1-100.
            @maximum_authentication_failures
            ## 
            # Specify maximum authentication timeout (in seconds).  Valid range: 1-120
            @maximum_authentication_timeout_in_seconds
            ## 
            # Specifiy the maximum number of EAPOL (Extensible Authentication Protocol over LAN) Start messages to be sent before returning failure. Valid range 1-100.
            @maximum_e_a_p_o_l_start_messages
            ## 
            # Specify maximum number of pairwise master keys in cache.  Valid range: 1-255
            @maximum_number_of_pairwise_master_keys_in_cache
            ## 
            # Specify maximum pairwise master key cache time (in minutes).  Valid range: 5-1440
            @maximum_pairwise_master_key_cache_time_in_minutes
            ## 
            # Specify maximum pre-authentication attempts.  Valid range: 1-16
            @maximum_pre_authentication_attempts
            ## 
            # Specify the network single sign on type. Possible values are: disabled, prelogon, postlogon.
            @network_single_sign_on
            ## 
            # Specify the string to replace usernames for privacy when using EAP TTLS or PEAP.
            @outer_identity_privacy_temporary_value
            ## 
            # Specify whether to enable verification of server's identity by validating the certificate when EAP type is selected as PEAP.
            @perform_server_validation
            ## 
            # Specify whether the wifi connection should prompt for additional authentication credentials.
            @prompt_for_additional_authentication_credentials
            ## 
            # Specify whether to enable cryptographic binding when EAP type is selected as PEAP.
            @require_cryptographic_binding
            ## 
            # Specify root certificate for client validation.
            @root_certificate_for_client_validation
            ## 
            # Specify root certificate for server validation. This collection can contain a maximum of 500 elements.
            @root_certificates_for_server_validation
            ## 
            # Specify trusted server certificate names.
            @trusted_server_certificate_names
            ## 
            # Specifiy whether to change the virtual LAN used by the device based on the user’s credentials. Cannot be used when NetworkSingleSignOnType is set to ​Disabled.
            @user_based_virtual_lan
            ## 
            ## Gets the authenticationMethod property value. Specify the authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential.
            ## @return a wi_fi_authentication_method
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. Specify the authentication method. Possible values are: certificate, usernameAndPassword, derivedCredential.
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
            ## Gets the authenticationType property value. Specify whether to authenticate the user, the device, either, or to use guest authentication (none). If you’re using certificate authentication, make sure the certificate type matches the authentication type. Possible values are: none, user, machine, machineOrUser, guest.
            ## @return a wifi_authentication_type
            ## 
            def authentication_type
                return @authentication_type
            end
            ## 
            ## Sets the authenticationType property value. Specify whether to authenticate the user, the device, either, or to use guest authentication (none). If you’re using certificate authentication, make sure the certificate type matches the authentication type. Possible values are: none, user, machine, machineOrUser, guest.
            ## @param value Value to set for the authentication_type property.
            ## @return a void
            ## 
            def authentication_type=(value)
                @authentication_type = value
            end
            ## 
            ## Gets the cacheCredentials property value. Specify whether to cache user credentials on the device so that users don’t need to keep entering them each time they connect.
            ## @return a boolean
            ## 
            def cache_credentials
                return @cache_credentials
            end
            ## 
            ## Sets the cacheCredentials property value. Specify whether to cache user credentials on the device so that users don’t need to keep entering them each time they connect.
            ## @param value Value to set for the cache_credentials property.
            ## @return a void
            ## 
            def cache_credentials=(value)
                @cache_credentials = value
            end
            ## 
            ## Instantiates a new windowsWifiEnterpriseEAPConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsWifiEnterpriseEAPConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_wifi_enterprise_e_a_p_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsWifiEnterpriseEAPConfiguration.new
            end
            ## 
            ## Gets the disableUserPromptForServerValidation property value. Specify whether to prevent the user from being prompted to authorize new servers for trusted certification authorities when EAP type is selected as PEAP.
            ## @return a boolean
            ## 
            def disable_user_prompt_for_server_validation
                return @disable_user_prompt_for_server_validation
            end
            ## 
            ## Sets the disableUserPromptForServerValidation property value. Specify whether to prevent the user from being prompted to authorize new servers for trusted certification authorities when EAP type is selected as PEAP.
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
            ## Gets the enablePairwiseMasterKeyCaching property value. Specify whether the wifi connection should enable pairwise master key caching.
            ## @return a boolean
            ## 
            def enable_pairwise_master_key_caching
                return @enable_pairwise_master_key_caching
            end
            ## 
            ## Sets the enablePairwiseMasterKeyCaching property value. Specify whether the wifi connection should enable pairwise master key caching.
            ## @param value Value to set for the enable_pairwise_master_key_caching property.
            ## @return a void
            ## 
            def enable_pairwise_master_key_caching=(value)
                @enable_pairwise_master_key_caching = value
            end
            ## 
            ## Gets the enablePreAuthentication property value. Specify whether pre-authentication should be enabled.
            ## @return a boolean
            ## 
            def enable_pre_authentication
                return @enable_pre_authentication
            end
            ## 
            ## Sets the enablePreAuthentication property value. Specify whether pre-authentication should be enabled.
            ## @param value Value to set for the enable_pre_authentication property.
            ## @return a void
            ## 
            def enable_pre_authentication=(value)
                @enable_pre_authentication = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_enum_value(MicrosoftGraphBeta::Models::WiFiAuthenticationMethod) },
                    "authenticationPeriodInSeconds" => lambda {|n| @authentication_period_in_seconds = n.get_number_value() },
                    "authenticationRetryDelayPeriodInSeconds" => lambda {|n| @authentication_retry_delay_period_in_seconds = n.get_number_value() },
                    "authenticationType" => lambda {|n| @authentication_type = n.get_enum_value(MicrosoftGraphBeta::Models::WifiAuthenticationType) },
                    "cacheCredentials" => lambda {|n| @cache_credentials = n.get_boolean_value() },
                    "disableUserPromptForServerValidation" => lambda {|n| @disable_user_prompt_for_server_validation = n.get_boolean_value() },
                    "eapType" => lambda {|n| @eap_type = n.get_enum_value(MicrosoftGraphBeta::Models::EapType) },
                    "eapolStartPeriodInSeconds" => lambda {|n| @eapol_start_period_in_seconds = n.get_number_value() },
                    "enablePairwiseMasterKeyCaching" => lambda {|n| @enable_pairwise_master_key_caching = n.get_boolean_value() },
                    "enablePreAuthentication" => lambda {|n| @enable_pre_authentication = n.get_boolean_value() },
                    "identityCertificateForClientAuthentication" => lambda {|n| @identity_certificate_for_client_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "innerAuthenticationProtocolForEAPTTLS" => lambda {|n| @inner_authentication_protocol_for_e_a_p_t_t_l_s = n.get_enum_value(MicrosoftGraphBeta::Models::NonEapAuthenticationMethodForEapTtlsType) },
                    "maximumAuthenticationFailures" => lambda {|n| @maximum_authentication_failures = n.get_number_value() },
                    "maximumAuthenticationTimeoutInSeconds" => lambda {|n| @maximum_authentication_timeout_in_seconds = n.get_number_value() },
                    "maximumEAPOLStartMessages" => lambda {|n| @maximum_e_a_p_o_l_start_messages = n.get_number_value() },
                    "maximumNumberOfPairwiseMasterKeysInCache" => lambda {|n| @maximum_number_of_pairwise_master_keys_in_cache = n.get_number_value() },
                    "maximumPairwiseMasterKeyCacheTimeInMinutes" => lambda {|n| @maximum_pairwise_master_key_cache_time_in_minutes = n.get_number_value() },
                    "maximumPreAuthenticationAttempts" => lambda {|n| @maximum_pre_authentication_attempts = n.get_number_value() },
                    "networkSingleSignOn" => lambda {|n| @network_single_sign_on = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkSingleSignOnType) },
                    "outerIdentityPrivacyTemporaryValue" => lambda {|n| @outer_identity_privacy_temporary_value = n.get_string_value() },
                    "performServerValidation" => lambda {|n| @perform_server_validation = n.get_boolean_value() },
                    "promptForAdditionalAuthenticationCredentials" => lambda {|n| @prompt_for_additional_authentication_credentials = n.get_boolean_value() },
                    "requireCryptographicBinding" => lambda {|n| @require_cryptographic_binding = n.get_boolean_value() },
                    "rootCertificateForClientValidation" => lambda {|n| @root_certificate_for_client_validation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Windows81TrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "rootCertificatesForServerValidation" => lambda {|n| @root_certificates_for_server_validation = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Windows81TrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "trustedServerCertificateNames" => lambda {|n| @trusted_server_certificate_names = n.get_collection_of_primitive_values(String) },
                    "userBasedVirtualLan" => lambda {|n| @user_based_virtual_lan = n.get_boolean_value() },
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
            ## Gets the innerAuthenticationProtocolForEAPTTLS property value. Specify inner authentication protocol for EAP TTLS. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
            ## @return a non_eap_authentication_method_for_eap_ttls_type
            ## 
            def inner_authentication_protocol_for_e_a_p_t_t_l_s
                return @inner_authentication_protocol_for_e_a_p_t_t_l_s
            end
            ## 
            ## Sets the innerAuthenticationProtocolForEAPTTLS property value. Specify inner authentication protocol for EAP TTLS. Possible values are: unencryptedPassword, challengeHandshakeAuthenticationProtocol, microsoftChap, microsoftChapVersionTwo.
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
            ## Gets the maximumAuthenticationTimeoutInSeconds property value. Specify maximum authentication timeout (in seconds).  Valid range: 1-120
            ## @return a integer
            ## 
            def maximum_authentication_timeout_in_seconds
                return @maximum_authentication_timeout_in_seconds
            end
            ## 
            ## Sets the maximumAuthenticationTimeoutInSeconds property value. Specify maximum authentication timeout (in seconds).  Valid range: 1-120
            ## @param value Value to set for the maximum_authentication_timeout_in_seconds property.
            ## @return a void
            ## 
            def maximum_authentication_timeout_in_seconds=(value)
                @maximum_authentication_timeout_in_seconds = value
            end
            ## 
            ## Gets the maximumEAPOLStartMessages property value. Specifiy the maximum number of EAPOL (Extensible Authentication Protocol over LAN) Start messages to be sent before returning failure. Valid range 1-100.
            ## @return a integer
            ## 
            def maximum_e_a_p_o_l_start_messages
                return @maximum_e_a_p_o_l_start_messages
            end
            ## 
            ## Sets the maximumEAPOLStartMessages property value. Specifiy the maximum number of EAPOL (Extensible Authentication Protocol over LAN) Start messages to be sent before returning failure. Valid range 1-100.
            ## @param value Value to set for the maximum_e_a_p_o_l_start_messages property.
            ## @return a void
            ## 
            def maximum_e_a_p_o_l_start_messages=(value)
                @maximum_e_a_p_o_l_start_messages = value
            end
            ## 
            ## Gets the maximumNumberOfPairwiseMasterKeysInCache property value. Specify maximum number of pairwise master keys in cache.  Valid range: 1-255
            ## @return a integer
            ## 
            def maximum_number_of_pairwise_master_keys_in_cache
                return @maximum_number_of_pairwise_master_keys_in_cache
            end
            ## 
            ## Sets the maximumNumberOfPairwiseMasterKeysInCache property value. Specify maximum number of pairwise master keys in cache.  Valid range: 1-255
            ## @param value Value to set for the maximum_number_of_pairwise_master_keys_in_cache property.
            ## @return a void
            ## 
            def maximum_number_of_pairwise_master_keys_in_cache=(value)
                @maximum_number_of_pairwise_master_keys_in_cache = value
            end
            ## 
            ## Gets the maximumPairwiseMasterKeyCacheTimeInMinutes property value. Specify maximum pairwise master key cache time (in minutes).  Valid range: 5-1440
            ## @return a integer
            ## 
            def maximum_pairwise_master_key_cache_time_in_minutes
                return @maximum_pairwise_master_key_cache_time_in_minutes
            end
            ## 
            ## Sets the maximumPairwiseMasterKeyCacheTimeInMinutes property value. Specify maximum pairwise master key cache time (in minutes).  Valid range: 5-1440
            ## @param value Value to set for the maximum_pairwise_master_key_cache_time_in_minutes property.
            ## @return a void
            ## 
            def maximum_pairwise_master_key_cache_time_in_minutes=(value)
                @maximum_pairwise_master_key_cache_time_in_minutes = value
            end
            ## 
            ## Gets the maximumPreAuthenticationAttempts property value. Specify maximum pre-authentication attempts.  Valid range: 1-16
            ## @return a integer
            ## 
            def maximum_pre_authentication_attempts
                return @maximum_pre_authentication_attempts
            end
            ## 
            ## Sets the maximumPreAuthenticationAttempts property value. Specify maximum pre-authentication attempts.  Valid range: 1-16
            ## @param value Value to set for the maximum_pre_authentication_attempts property.
            ## @return a void
            ## 
            def maximum_pre_authentication_attempts=(value)
                @maximum_pre_authentication_attempts = value
            end
            ## 
            ## Gets the networkSingleSignOn property value. Specify the network single sign on type. Possible values are: disabled, prelogon, postlogon.
            ## @return a network_single_sign_on_type
            ## 
            def network_single_sign_on
                return @network_single_sign_on
            end
            ## 
            ## Sets the networkSingleSignOn property value. Specify the network single sign on type. Possible values are: disabled, prelogon, postlogon.
            ## @param value Value to set for the network_single_sign_on property.
            ## @return a void
            ## 
            def network_single_sign_on=(value)
                @network_single_sign_on = value
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
            ## Gets the performServerValidation property value. Specify whether to enable verification of server's identity by validating the certificate when EAP type is selected as PEAP.
            ## @return a boolean
            ## 
            def perform_server_validation
                return @perform_server_validation
            end
            ## 
            ## Sets the performServerValidation property value. Specify whether to enable verification of server's identity by validating the certificate when EAP type is selected as PEAP.
            ## @param value Value to set for the perform_server_validation property.
            ## @return a void
            ## 
            def perform_server_validation=(value)
                @perform_server_validation = value
            end
            ## 
            ## Gets the promptForAdditionalAuthenticationCredentials property value. Specify whether the wifi connection should prompt for additional authentication credentials.
            ## @return a boolean
            ## 
            def prompt_for_additional_authentication_credentials
                return @prompt_for_additional_authentication_credentials
            end
            ## 
            ## Sets the promptForAdditionalAuthenticationCredentials property value. Specify whether the wifi connection should prompt for additional authentication credentials.
            ## @param value Value to set for the prompt_for_additional_authentication_credentials property.
            ## @return a void
            ## 
            def prompt_for_additional_authentication_credentials=(value)
                @prompt_for_additional_authentication_credentials = value
            end
            ## 
            ## Gets the requireCryptographicBinding property value. Specify whether to enable cryptographic binding when EAP type is selected as PEAP.
            ## @return a boolean
            ## 
            def require_cryptographic_binding
                return @require_cryptographic_binding
            end
            ## 
            ## Sets the requireCryptographicBinding property value. Specify whether to enable cryptographic binding when EAP type is selected as PEAP.
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
            ## Gets the rootCertificatesForServerValidation property value. Specify root certificate for server validation. This collection can contain a maximum of 500 elements.
            ## @return a windows81_trusted_root_certificate
            ## 
            def root_certificates_for_server_validation
                return @root_certificates_for_server_validation
            end
            ## 
            ## Sets the rootCertificatesForServerValidation property value. Specify root certificate for server validation. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the root_certificates_for_server_validation property.
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
                writer.write_number_value("authenticationPeriodInSeconds", @authentication_period_in_seconds)
                writer.write_number_value("authenticationRetryDelayPeriodInSeconds", @authentication_retry_delay_period_in_seconds)
                writer.write_enum_value("authenticationType", @authentication_type)
                writer.write_boolean_value("cacheCredentials", @cache_credentials)
                writer.write_boolean_value("disableUserPromptForServerValidation", @disable_user_prompt_for_server_validation)
                writer.write_enum_value("eapType", @eap_type)
                writer.write_number_value("eapolStartPeriodInSeconds", @eapol_start_period_in_seconds)
                writer.write_boolean_value("enablePairwiseMasterKeyCaching", @enable_pairwise_master_key_caching)
                writer.write_boolean_value("enablePreAuthentication", @enable_pre_authentication)
                writer.write_object_value("identityCertificateForClientAuthentication", @identity_certificate_for_client_authentication)
                writer.write_enum_value("innerAuthenticationProtocolForEAPTTLS", @inner_authentication_protocol_for_e_a_p_t_t_l_s)
                writer.write_number_value("maximumAuthenticationFailures", @maximum_authentication_failures)
                writer.write_number_value("maximumAuthenticationTimeoutInSeconds", @maximum_authentication_timeout_in_seconds)
                writer.write_number_value("maximumEAPOLStartMessages", @maximum_e_a_p_o_l_start_messages)
                writer.write_number_value("maximumNumberOfPairwiseMasterKeysInCache", @maximum_number_of_pairwise_master_keys_in_cache)
                writer.write_number_value("maximumPairwiseMasterKeyCacheTimeInMinutes", @maximum_pairwise_master_key_cache_time_in_minutes)
                writer.write_number_value("maximumPreAuthenticationAttempts", @maximum_pre_authentication_attempts)
                writer.write_enum_value("networkSingleSignOn", @network_single_sign_on)
                writer.write_string_value("outerIdentityPrivacyTemporaryValue", @outer_identity_privacy_temporary_value)
                writer.write_boolean_value("performServerValidation", @perform_server_validation)
                writer.write_boolean_value("promptForAdditionalAuthenticationCredentials", @prompt_for_additional_authentication_credentials)
                writer.write_boolean_value("requireCryptographicBinding", @require_cryptographic_binding)
                writer.write_object_value("rootCertificateForClientValidation", @root_certificate_for_client_validation)
                writer.write_collection_of_object_values("rootCertificatesForServerValidation", @root_certificates_for_server_validation)
                writer.write_collection_of_primitive_values("trustedServerCertificateNames", @trusted_server_certificate_names)
                writer.write_boolean_value("userBasedVirtualLan", @user_based_virtual_lan)
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
            ## 
            ## Gets the userBasedVirtualLan property value. Specifiy whether to change the virtual LAN used by the device based on the user’s credentials. Cannot be used when NetworkSingleSignOnType is set to ​Disabled.
            ## @return a boolean
            ## 
            def user_based_virtual_lan
                return @user_based_virtual_lan
            end
            ## 
            ## Sets the userBasedVirtualLan property value. Specifiy whether to change the virtual LAN used by the device based on the user’s credentials. Cannot be used when NetworkSingleSignOnType is set to ​Disabled.
            ## @param value Value to set for the user_based_virtual_lan property.
            ## @return a void
            ## 
            def user_based_virtual_lan=(value)
                @user_based_virtual_lan = value
            end
        end
    end
end
