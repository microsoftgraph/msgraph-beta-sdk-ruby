require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesPublishing
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If you're configuring a traffic manager in front of multiple App Proxy applications, the alternateUrl is the user-friendly URL that points to the traffic manager.
            @alternate_url
            ## 
            # The duration the connector waits for a response from the backend application before closing the connection. Possible values are default, long. When set to default, the backend application timeout has a length of 85 seconds. When set to long, the backend timeout is increased to 180 seconds. Use long if your server takes more than 85 seconds to respond to requests or if you are unable to access the application and the error status is 'Backend Timeout'. Default value is default.
            @application_server_timeout
            ## 
            # Indicates if this application is an Application Proxy configured application. This is pre-set by the system. Read-only.
            @application_type
            ## 
            # Details the pre-authentication setting for the application. Pre-authentication enforces that users must authenticate before accessing the app. Pass through doesn't require authentication. Possible values are: passthru, aadPreAuthentication.
            @external_authentication_type
            ## 
            # The published external url for the application. For example, https://intranet-contoso.msappproxy.net/.
            @external_url
            ## 
            # The internal url of the application. For example, https://intranet/.
            @internal_url
            ## 
            # The isAccessibleViaZTNAClient property
            @is_accessible_via_z_t_n_a_client
            ## 
            # Indicates whether backend SSL certificate validation is enabled for the application. For all new Application Proxy apps, the property is set to true by default. For all existing apps, the property is set to false.
            @is_backend_certificate_validation_enabled
            ## 
            # Indicates if the HTTPOnly cookie flag should be set in the HTTP response headers. Set this value to true to have Application Proxy cookies include the HTTPOnly flag in the HTTP response headers. If using Remote Desktop Services, set this value to False. Default value is false.
            @is_http_only_cookie_enabled
            ## 
            # Indicates if the application is currently being published via Application Proxy or not. This is preset by the system. Read-only.
            @is_on_prem_publishing_enabled
            ## 
            # Indicates if the Persistent cookie flag should be set in the HTTP response headers. Keep this value set to false. Only use this setting for applications that can't share cookies between processes. For more information about cookie settings, see Cookie settings for accessing on-premises applications in Azure Active Directory. Default value is false.
            @is_persistent_cookie_enabled
            ## 
            # Indicates if the Secure cookie flag should be set in the HTTP response headers. Set this value to true to transmit cookies over a secure channel such as an encrypted HTTPS request. Default value is true.
            @is_secure_cookie_enabled
            ## 
            # Indicates whether validation of the state parameter when the client uses the OAuth 2.0 authorization code grant flow is enabled. This setting allows admins to specify whether they want to enable CSRF protection for their apps.
            @is_state_session_enabled
            ## 
            # Indicates if the application should translate urls in the response headers. Keep this value as true unless your application required the original host header in the authentication request. Default value is true.
            @is_translate_host_header_enabled
            ## 
            # Indicates if the application should translate urls in the application body. Keep this value as false unless you have hardcoded HTML links to other on-premises applications and don't use custom domains. For more information, see Link translation with Application Proxy. Default value is false.
            @is_translate_links_in_body_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The onPremisesApplicationSegments property
            @on_premises_application_segments
            ## 
            # Represents the collection of application segments for an on-premises wildcard application that's published through Azure AD Application Proxy.
            @segments_configuration
            ## 
            # Represents the single sign-on configuration for the on-premises application.
            @single_sign_on_settings
            ## 
            # The useAlternateUrlForTranslationAndRedirect property
            @use_alternate_url_for_translation_and_redirect
            ## 
            # Details of the certificate associated with the application when a custom domain is in use. null when using the default domain. Read-only.
            @verified_custom_domain_certificates_metadata
            ## 
            # The associated key credential for the custom domain used.
            @verified_custom_domain_key_credential
            ## 
            # The associated password credential for the custom domain used.
            @verified_custom_domain_password_credential
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the alternateUrl property value. If you're configuring a traffic manager in front of multiple App Proxy applications, the alternateUrl is the user-friendly URL that points to the traffic manager.
            ## @return a string
            ## 
            def alternate_url
                return @alternate_url
            end
            ## 
            ## Sets the alternateUrl property value. If you're configuring a traffic manager in front of multiple App Proxy applications, the alternateUrl is the user-friendly URL that points to the traffic manager.
            ## @param value Value to set for the alternateUrl property.
            ## @return a void
            ## 
            def alternate_url=(value)
                @alternate_url = value
            end
            ## 
            ## Gets the applicationServerTimeout property value. The duration the connector waits for a response from the backend application before closing the connection. Possible values are default, long. When set to default, the backend application timeout has a length of 85 seconds. When set to long, the backend timeout is increased to 180 seconds. Use long if your server takes more than 85 seconds to respond to requests or if you are unable to access the application and the error status is 'Backend Timeout'. Default value is default.
            ## @return a string
            ## 
            def application_server_timeout
                return @application_server_timeout
            end
            ## 
            ## Sets the applicationServerTimeout property value. The duration the connector waits for a response from the backend application before closing the connection. Possible values are default, long. When set to default, the backend application timeout has a length of 85 seconds. When set to long, the backend timeout is increased to 180 seconds. Use long if your server takes more than 85 seconds to respond to requests or if you are unable to access the application and the error status is 'Backend Timeout'. Default value is default.
            ## @param value Value to set for the applicationServerTimeout property.
            ## @return a void
            ## 
            def application_server_timeout=(value)
                @application_server_timeout = value
            end
            ## 
            ## Gets the applicationType property value. Indicates if this application is an Application Proxy configured application. This is pre-set by the system. Read-only.
            ## @return a string
            ## 
            def application_type
                return @application_type
            end
            ## 
            ## Sets the applicationType property value. Indicates if this application is an Application Proxy configured application. This is pre-set by the system. Read-only.
            ## @param value Value to set for the applicationType property.
            ## @return a void
            ## 
            def application_type=(value)
                @application_type = value
            end
            ## 
            ## Instantiates a new onPremisesPublishing and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_publishing
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesPublishing.new
            end
            ## 
            ## Gets the externalAuthenticationType property value. Details the pre-authentication setting for the application. Pre-authentication enforces that users must authenticate before accessing the app. Pass through doesn't require authentication. Possible values are: passthru, aadPreAuthentication.
            ## @return a external_authentication_type
            ## 
            def external_authentication_type
                return @external_authentication_type
            end
            ## 
            ## Sets the externalAuthenticationType property value. Details the pre-authentication setting for the application. Pre-authentication enforces that users must authenticate before accessing the app. Pass through doesn't require authentication. Possible values are: passthru, aadPreAuthentication.
            ## @param value Value to set for the externalAuthenticationType property.
            ## @return a void
            ## 
            def external_authentication_type=(value)
                @external_authentication_type = value
            end
            ## 
            ## Gets the externalUrl property value. The published external url for the application. For example, https://intranet-contoso.msappproxy.net/.
            ## @return a string
            ## 
            def external_url
                return @external_url
            end
            ## 
            ## Sets the externalUrl property value. The published external url for the application. For example, https://intranet-contoso.msappproxy.net/.
            ## @param value Value to set for the externalUrl property.
            ## @return a void
            ## 
            def external_url=(value)
                @external_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alternateUrl" => lambda {|n| @alternate_url = n.get_string_value() },
                    "applicationServerTimeout" => lambda {|n| @application_server_timeout = n.get_string_value() },
                    "applicationType" => lambda {|n| @application_type = n.get_string_value() },
                    "externalAuthenticationType" => lambda {|n| @external_authentication_type = n.get_enum_value(MicrosoftGraphBeta::Models::ExternalAuthenticationType) },
                    "externalUrl" => lambda {|n| @external_url = n.get_string_value() },
                    "internalUrl" => lambda {|n| @internal_url = n.get_string_value() },
                    "isAccessibleViaZTNAClient" => lambda {|n| @is_accessible_via_z_t_n_a_client = n.get_boolean_value() },
                    "isBackendCertificateValidationEnabled" => lambda {|n| @is_backend_certificate_validation_enabled = n.get_boolean_value() },
                    "isHttpOnlyCookieEnabled" => lambda {|n| @is_http_only_cookie_enabled = n.get_boolean_value() },
                    "isOnPremPublishingEnabled" => lambda {|n| @is_on_prem_publishing_enabled = n.get_boolean_value() },
                    "isPersistentCookieEnabled" => lambda {|n| @is_persistent_cookie_enabled = n.get_boolean_value() },
                    "isSecureCookieEnabled" => lambda {|n| @is_secure_cookie_enabled = n.get_boolean_value() },
                    "isStateSessionEnabled" => lambda {|n| @is_state_session_enabled = n.get_boolean_value() },
                    "isTranslateHostHeaderEnabled" => lambda {|n| @is_translate_host_header_enabled = n.get_boolean_value() },
                    "isTranslateLinksInBodyEnabled" => lambda {|n| @is_translate_links_in_body_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onPremisesApplicationSegments" => lambda {|n| @on_premises_application_segments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesApplicationSegment.create_from_discriminator_value(pn) }) },
                    "segmentsConfiguration" => lambda {|n| @segments_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SegmentConfiguration.create_from_discriminator_value(pn) }) },
                    "singleSignOnSettings" => lambda {|n| @single_sign_on_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesPublishingSingleSignOn.create_from_discriminator_value(pn) }) },
                    "useAlternateUrlForTranslationAndRedirect" => lambda {|n| @use_alternate_url_for_translation_and_redirect = n.get_boolean_value() },
                    "verifiedCustomDomainCertificatesMetadata" => lambda {|n| @verified_custom_domain_certificates_metadata = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VerifiedCustomDomainCertificatesMetadata.create_from_discriminator_value(pn) }) },
                    "verifiedCustomDomainKeyCredential" => lambda {|n| @verified_custom_domain_key_credential = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::KeyCredential.create_from_discriminator_value(pn) }) },
                    "verifiedCustomDomainPasswordCredential" => lambda {|n| @verified_custom_domain_password_credential = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PasswordCredential.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the internalUrl property value. The internal url of the application. For example, https://intranet/.
            ## @return a string
            ## 
            def internal_url
                return @internal_url
            end
            ## 
            ## Sets the internalUrl property value. The internal url of the application. For example, https://intranet/.
            ## @param value Value to set for the internalUrl property.
            ## @return a void
            ## 
            def internal_url=(value)
                @internal_url = value
            end
            ## 
            ## Gets the isAccessibleViaZTNAClient property value. The isAccessibleViaZTNAClient property
            ## @return a boolean
            ## 
            def is_accessible_via_z_t_n_a_client
                return @is_accessible_via_z_t_n_a_client
            end
            ## 
            ## Sets the isAccessibleViaZTNAClient property value. The isAccessibleViaZTNAClient property
            ## @param value Value to set for the isAccessibleViaZTNAClient property.
            ## @return a void
            ## 
            def is_accessible_via_z_t_n_a_client=(value)
                @is_accessible_via_z_t_n_a_client = value
            end
            ## 
            ## Gets the isBackendCertificateValidationEnabled property value. Indicates whether backend SSL certificate validation is enabled for the application. For all new Application Proxy apps, the property is set to true by default. For all existing apps, the property is set to false.
            ## @return a boolean
            ## 
            def is_backend_certificate_validation_enabled
                return @is_backend_certificate_validation_enabled
            end
            ## 
            ## Sets the isBackendCertificateValidationEnabled property value. Indicates whether backend SSL certificate validation is enabled for the application. For all new Application Proxy apps, the property is set to true by default. For all existing apps, the property is set to false.
            ## @param value Value to set for the isBackendCertificateValidationEnabled property.
            ## @return a void
            ## 
            def is_backend_certificate_validation_enabled=(value)
                @is_backend_certificate_validation_enabled = value
            end
            ## 
            ## Gets the isHttpOnlyCookieEnabled property value. Indicates if the HTTPOnly cookie flag should be set in the HTTP response headers. Set this value to true to have Application Proxy cookies include the HTTPOnly flag in the HTTP response headers. If using Remote Desktop Services, set this value to False. Default value is false.
            ## @return a boolean
            ## 
            def is_http_only_cookie_enabled
                return @is_http_only_cookie_enabled
            end
            ## 
            ## Sets the isHttpOnlyCookieEnabled property value. Indicates if the HTTPOnly cookie flag should be set in the HTTP response headers. Set this value to true to have Application Proxy cookies include the HTTPOnly flag in the HTTP response headers. If using Remote Desktop Services, set this value to False. Default value is false.
            ## @param value Value to set for the isHttpOnlyCookieEnabled property.
            ## @return a void
            ## 
            def is_http_only_cookie_enabled=(value)
                @is_http_only_cookie_enabled = value
            end
            ## 
            ## Gets the isOnPremPublishingEnabled property value. Indicates if the application is currently being published via Application Proxy or not. This is preset by the system. Read-only.
            ## @return a boolean
            ## 
            def is_on_prem_publishing_enabled
                return @is_on_prem_publishing_enabled
            end
            ## 
            ## Sets the isOnPremPublishingEnabled property value. Indicates if the application is currently being published via Application Proxy or not. This is preset by the system. Read-only.
            ## @param value Value to set for the isOnPremPublishingEnabled property.
            ## @return a void
            ## 
            def is_on_prem_publishing_enabled=(value)
                @is_on_prem_publishing_enabled = value
            end
            ## 
            ## Gets the isPersistentCookieEnabled property value. Indicates if the Persistent cookie flag should be set in the HTTP response headers. Keep this value set to false. Only use this setting for applications that can't share cookies between processes. For more information about cookie settings, see Cookie settings for accessing on-premises applications in Azure Active Directory. Default value is false.
            ## @return a boolean
            ## 
            def is_persistent_cookie_enabled
                return @is_persistent_cookie_enabled
            end
            ## 
            ## Sets the isPersistentCookieEnabled property value. Indicates if the Persistent cookie flag should be set in the HTTP response headers. Keep this value set to false. Only use this setting for applications that can't share cookies between processes. For more information about cookie settings, see Cookie settings for accessing on-premises applications in Azure Active Directory. Default value is false.
            ## @param value Value to set for the isPersistentCookieEnabled property.
            ## @return a void
            ## 
            def is_persistent_cookie_enabled=(value)
                @is_persistent_cookie_enabled = value
            end
            ## 
            ## Gets the isSecureCookieEnabled property value. Indicates if the Secure cookie flag should be set in the HTTP response headers. Set this value to true to transmit cookies over a secure channel such as an encrypted HTTPS request. Default value is true.
            ## @return a boolean
            ## 
            def is_secure_cookie_enabled
                return @is_secure_cookie_enabled
            end
            ## 
            ## Sets the isSecureCookieEnabled property value. Indicates if the Secure cookie flag should be set in the HTTP response headers. Set this value to true to transmit cookies over a secure channel such as an encrypted HTTPS request. Default value is true.
            ## @param value Value to set for the isSecureCookieEnabled property.
            ## @return a void
            ## 
            def is_secure_cookie_enabled=(value)
                @is_secure_cookie_enabled = value
            end
            ## 
            ## Gets the isStateSessionEnabled property value. Indicates whether validation of the state parameter when the client uses the OAuth 2.0 authorization code grant flow is enabled. This setting allows admins to specify whether they want to enable CSRF protection for their apps.
            ## @return a boolean
            ## 
            def is_state_session_enabled
                return @is_state_session_enabled
            end
            ## 
            ## Sets the isStateSessionEnabled property value. Indicates whether validation of the state parameter when the client uses the OAuth 2.0 authorization code grant flow is enabled. This setting allows admins to specify whether they want to enable CSRF protection for their apps.
            ## @param value Value to set for the isStateSessionEnabled property.
            ## @return a void
            ## 
            def is_state_session_enabled=(value)
                @is_state_session_enabled = value
            end
            ## 
            ## Gets the isTranslateHostHeaderEnabled property value. Indicates if the application should translate urls in the response headers. Keep this value as true unless your application required the original host header in the authentication request. Default value is true.
            ## @return a boolean
            ## 
            def is_translate_host_header_enabled
                return @is_translate_host_header_enabled
            end
            ## 
            ## Sets the isTranslateHostHeaderEnabled property value. Indicates if the application should translate urls in the response headers. Keep this value as true unless your application required the original host header in the authentication request. Default value is true.
            ## @param value Value to set for the isTranslateHostHeaderEnabled property.
            ## @return a void
            ## 
            def is_translate_host_header_enabled=(value)
                @is_translate_host_header_enabled = value
            end
            ## 
            ## Gets the isTranslateLinksInBodyEnabled property value. Indicates if the application should translate urls in the application body. Keep this value as false unless you have hardcoded HTML links to other on-premises applications and don't use custom domains. For more information, see Link translation with Application Proxy. Default value is false.
            ## @return a boolean
            ## 
            def is_translate_links_in_body_enabled
                return @is_translate_links_in_body_enabled
            end
            ## 
            ## Sets the isTranslateLinksInBodyEnabled property value. Indicates if the application should translate urls in the application body. Keep this value as false unless you have hardcoded HTML links to other on-premises applications and don't use custom domains. For more information, see Link translation with Application Proxy. Default value is false.
            ## @param value Value to set for the isTranslateLinksInBodyEnabled property.
            ## @return a void
            ## 
            def is_translate_links_in_body_enabled=(value)
                @is_translate_links_in_body_enabled = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the onPremisesApplicationSegments property value. The onPremisesApplicationSegments property
            ## @return a on_premises_application_segment
            ## 
            def on_premises_application_segments
                return @on_premises_application_segments
            end
            ## 
            ## Sets the onPremisesApplicationSegments property value. The onPremisesApplicationSegments property
            ## @param value Value to set for the onPremisesApplicationSegments property.
            ## @return a void
            ## 
            def on_premises_application_segments=(value)
                @on_premises_application_segments = value
            end
            ## 
            ## Gets the segmentsConfiguration property value. Represents the collection of application segments for an on-premises wildcard application that's published through Azure AD Application Proxy.
            ## @return a segment_configuration
            ## 
            def segments_configuration
                return @segments_configuration
            end
            ## 
            ## Sets the segmentsConfiguration property value. Represents the collection of application segments for an on-premises wildcard application that's published through Azure AD Application Proxy.
            ## @param value Value to set for the segmentsConfiguration property.
            ## @return a void
            ## 
            def segments_configuration=(value)
                @segments_configuration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("alternateUrl", @alternate_url)
                writer.write_string_value("applicationServerTimeout", @application_server_timeout)
                writer.write_string_value("applicationType", @application_type)
                writer.write_enum_value("externalAuthenticationType", @external_authentication_type)
                writer.write_string_value("externalUrl", @external_url)
                writer.write_string_value("internalUrl", @internal_url)
                writer.write_boolean_value("isAccessibleViaZTNAClient", @is_accessible_via_z_t_n_a_client)
                writer.write_boolean_value("isBackendCertificateValidationEnabled", @is_backend_certificate_validation_enabled)
                writer.write_boolean_value("isHttpOnlyCookieEnabled", @is_http_only_cookie_enabled)
                writer.write_boolean_value("isOnPremPublishingEnabled", @is_on_prem_publishing_enabled)
                writer.write_boolean_value("isPersistentCookieEnabled", @is_persistent_cookie_enabled)
                writer.write_boolean_value("isSecureCookieEnabled", @is_secure_cookie_enabled)
                writer.write_boolean_value("isStateSessionEnabled", @is_state_session_enabled)
                writer.write_boolean_value("isTranslateHostHeaderEnabled", @is_translate_host_header_enabled)
                writer.write_boolean_value("isTranslateLinksInBodyEnabled", @is_translate_links_in_body_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("onPremisesApplicationSegments", @on_premises_application_segments)
                writer.write_object_value("segmentsConfiguration", @segments_configuration)
                writer.write_object_value("singleSignOnSettings", @single_sign_on_settings)
                writer.write_boolean_value("useAlternateUrlForTranslationAndRedirect", @use_alternate_url_for_translation_and_redirect)
                writer.write_object_value("verifiedCustomDomainCertificatesMetadata", @verified_custom_domain_certificates_metadata)
                writer.write_object_value("verifiedCustomDomainKeyCredential", @verified_custom_domain_key_credential)
                writer.write_object_value("verifiedCustomDomainPasswordCredential", @verified_custom_domain_password_credential)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the singleSignOnSettings property value. Represents the single sign-on configuration for the on-premises application.
            ## @return a on_premises_publishing_single_sign_on
            ## 
            def single_sign_on_settings
                return @single_sign_on_settings
            end
            ## 
            ## Sets the singleSignOnSettings property value. Represents the single sign-on configuration for the on-premises application.
            ## @param value Value to set for the singleSignOnSettings property.
            ## @return a void
            ## 
            def single_sign_on_settings=(value)
                @single_sign_on_settings = value
            end
            ## 
            ## Gets the useAlternateUrlForTranslationAndRedirect property value. The useAlternateUrlForTranslationAndRedirect property
            ## @return a boolean
            ## 
            def use_alternate_url_for_translation_and_redirect
                return @use_alternate_url_for_translation_and_redirect
            end
            ## 
            ## Sets the useAlternateUrlForTranslationAndRedirect property value. The useAlternateUrlForTranslationAndRedirect property
            ## @param value Value to set for the useAlternateUrlForTranslationAndRedirect property.
            ## @return a void
            ## 
            def use_alternate_url_for_translation_and_redirect=(value)
                @use_alternate_url_for_translation_and_redirect = value
            end
            ## 
            ## Gets the verifiedCustomDomainCertificatesMetadata property value. Details of the certificate associated with the application when a custom domain is in use. null when using the default domain. Read-only.
            ## @return a verified_custom_domain_certificates_metadata
            ## 
            def verified_custom_domain_certificates_metadata
                return @verified_custom_domain_certificates_metadata
            end
            ## 
            ## Sets the verifiedCustomDomainCertificatesMetadata property value. Details of the certificate associated with the application when a custom domain is in use. null when using the default domain. Read-only.
            ## @param value Value to set for the verifiedCustomDomainCertificatesMetadata property.
            ## @return a void
            ## 
            def verified_custom_domain_certificates_metadata=(value)
                @verified_custom_domain_certificates_metadata = value
            end
            ## 
            ## Gets the verifiedCustomDomainKeyCredential property value. The associated key credential for the custom domain used.
            ## @return a key_credential
            ## 
            def verified_custom_domain_key_credential
                return @verified_custom_domain_key_credential
            end
            ## 
            ## Sets the verifiedCustomDomainKeyCredential property value. The associated key credential for the custom domain used.
            ## @param value Value to set for the verifiedCustomDomainKeyCredential property.
            ## @return a void
            ## 
            def verified_custom_domain_key_credential=(value)
                @verified_custom_domain_key_credential = value
            end
            ## 
            ## Gets the verifiedCustomDomainPasswordCredential property value. The associated password credential for the custom domain used.
            ## @return a password_credential
            ## 
            def verified_custom_domain_password_credential
                return @verified_custom_domain_password_credential
            end
            ## 
            ## Sets the verifiedCustomDomainPasswordCredential property value. The associated password credential for the custom domain used.
            ## @param value Value to set for the verifiedCustomDomainPasswordCredential property.
            ## @return a void
            ## 
            def verified_custom_domain_password_credential=(value)
                @verified_custom_domain_password_credential = value
            end
        end
    end
end
