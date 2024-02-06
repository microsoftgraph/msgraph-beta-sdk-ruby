require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SignIn < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The application name displayed in the Microsoft Entra admin center.  Supports $filter (eq, startsWith).
            @app_display_name
            ## 
            # The application identifier in Microsoft Entra ID.  Supports $filter (eq).
            @app_id
            ## 
            # The appTokenProtectionStatus property
            @app_token_protection_status
            ## 
            # A list of conditional access policies that are triggered by the corresponding sign-in activity. Apps need additional Conditional Access-related privileges to read the details of this property. For more information, see Viewing applied conditional access (CA) policies in sign-ins.
            @applied_conditional_access_policies
            ## 
            # Detailed information about the listeners, such as Azure Logic Apps and Azure Functions, which were triggered by the corresponding events in the sign-in event.
            @applied_event_listeners
            ## 
            # Provides details about the app and device used during a Microsoft Entra authentication step.
            @authentication_app_device_details
            ## 
            # Provides details of the Microsoft Entra policies applied to a user and client authentication app during an authentication step.
            @authentication_app_policy_evaluation_details
            ## 
            # Contains a collection of values that represent the conditional access authentication contexts applied to the sign-in.
            @authentication_context_class_references
            ## 
            # The result of the authentication attempt and more details on the authentication method.
            @authentication_details
            ## 
            # The authentication methods used. Possible values: SMS, Authenticator App, App Verification code, Password, FIDO, PTA, or PHS.
            @authentication_methods_used
            ## 
            # More authentication processing details, such as the agent name for  PTA and PHS, or a server or farm name for federated authentication.
            @authentication_processing_details
            ## 
            # Lists the protocol type or grant type used in the authentication. The possible values are: oAuth2, ropc, wsFederation, saml20, deviceCode, unknownFutureValue, authenticationTransfer, and none. Use none for all authentications that don't have a specific value in that list.
            @authentication_protocol
            ## 
            # This holds the highest level of authentication needed through all the sign-in steps, for sign-in to succeed.  Supports $filter (eq, startsWith).
            @authentication_requirement
            ## 
            # Sources of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults.
            @authentication_requirement_policies
            ## 
            # The Autonomous System Number (ASN) of the network used by the actor.
            @autonomous_system_number
            ## 
            # Contains a fully qualified Azure Resource Manager ID of an Azure resource accessed during the sign-in.
            @azure_resource_id
            ## 
            # The legacy client used for sign-in activity. For example: Browser, Exchange ActiveSync, Modern clients, IMAP, MAPI, SMTP, or POP.  Supports $filter (eq).
            @client_app_used
            ## 
            # Describes the credential type that a user client or service principal provided to Microsoft Entra ID to authenticate itself. You can review this property to track and eliminate less secure credential types or to watch for clients and service principals using anomalous credential types. The possible values are: none, clientSecret, clientAssertion, federatedIdentityCredential, managedIdentity, certificate, unknownFutureValue.
            @client_credential_type
            ## 
            # The status of the conditional access policy triggered. Possible values: success, failure, notApplied, or unknownFutureValue.  Supports $filter (eq).
            @conditional_access_status
            ## 
            # The identifier that's sent from the client when sign-in is initiated. This is used for troubleshooting the corresponding sign-in activity when calling for support.  Supports $filter (eq).
            @correlation_id
            ## 
            # The date and time the sign-in was initiated. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  Supports $orderby, $filter (eq, le, and ge).
            @created_date_time
            ## 
            # Describes the type of cross-tenant access used by the actor to access the resource. Possible values are: none, b2bCollaboration, b2bDirectConnect, microsoftSupport, serviceProvider, unknownFutureValue, passthrough. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: passthrough. If the sign in didn't cross tenant boundaries, the value is none.
            @cross_tenant_access_type
            ## 
            # The device information from where the sign-in occurred. Includes information such as deviceId, OS, and browser.  Supports $filter (eq, startsWith) on browser and operatingSystem properties.
            @device_detail
            ## 
            # Contains the identifier of an application's federated identity credential, if a federated identity credential was used to sign in.
            @federated_credential_id
            ## 
            # During a failed sign-in, a user can select a button in the Azure portal to mark the failed event for tenant admins. If a user selects the button to flag the failed sign-in, this value is true.
            @flagged_for_review
            ## 
            # The tenant identifier of the user initiating the sign-in. Not applicable in Managed Identity or service principal sign ins.
            @home_tenant_id
            ## 
            # For user sign ins, the identifier of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Microsoft Entra ID to show the tenant content.
            @home_tenant_name
            ## 
            # Indicates the token types that were presented to Microsoft Entra ID to authenticate the actor in the sign in. The possible values are: none, primaryRefreshToken, saml11, saml20, unknownFutureValue, remoteDesktopToken.  NOTE Microsoft Entra ID might have also used token types not listed in this enum type to authenticate the actor. Don't infer the lack of a token if it isn't one of the types listed. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: remoteDesktopToken.
            @incoming_token_type
            ## 
            # The IP address of the client from where the sign-in occurred.  Supports $filter (eq, startsWith).
            @ip_address
            ## 
            # The IP address a user used to reach a resource provider, used to determine Conditional Access compliance for some policies. For example, when a user interacts with Exchange Online, the IP address that Microsoft Exchange receives from the user can be recorded here. This value is often null.
            @ip_address_from_resource_provider
            ## 
            # Indicates whether a user sign in is interactive. In interactive sign in, the user provides an authentication factor to Microsoft Entra ID. These factors include passwords, responses to MFA challenges, biometric factors, or QR codes that a user provides to Microsoft Entra ID or an associated app. In non-interactive sign in, the user doesn't provide an authentication factor. Instead, the client app uses a token or code to authenticate or access a resource on behalf of a user. Non-interactive sign ins are commonly used for a client to sign in on a user's behalf in a process transparent to the user.
            @is_interactive
            ## 
            # Shows whether the sign in event was subject to a Microsoft Entra tenant restriction policy.
            @is_tenant_restricted
            ## 
            # The city, state, and two letter country code from where the sign-in occurred.  Supports $filter (eq, startsWith) on city, state, and countryOrRegion properties.
            @location
            ## 
            # Contains information about the managed identity used for the sign in, including its type, associated Azure Resource Manager (ARM) resource ID, and federated token information.
            @managed_service_identity
            ## 
            # The mfaDetail property
            @mfa_detail
            ## 
            # The network location details including the type of network used and its names.
            @network_location_details
            ## 
            # The request identifier of the first request in the authentication sequence.  Supports $filter (eq).
            @original_request_id
            ## 
            # Transfer method used to initiate a session throughout all subsequent request. The possible values are: none, deviceCodeFlow, authenticationTransfer, unknownFutureValue.
            @original_transfer_method
            ## 
            # Contains information about the Microsoft Entra Private Link policy that is associated with the sign in event.
            @private_link_details
            ## 
            # The request processing time in milliseconds in AD STS.
            @processing_time_in_milliseconds
            ## 
            # The name of the resource that the user signed in to.  Supports $filter (eq).
            @resource_display_name
            ## 
            # The identifier of the resource that the user signed in to.  Supports $filter (eq).
            @resource_id
            ## 
            # The identifier of the service principal representing the target resource in the sign-in event.
            @resource_service_principal_id
            ## 
            # The tenant identifier of the resource referenced in the sign in.
            @resource_tenant_id
            ## 
            # The reason behind a specific state of a risky user, sign-in, or a risk event. Possible values: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, or unknownFutureValue. The value none means that Microsoft Entra risk detection has not flagged the user or the sign-in as a risky event so far.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            @risk_detail
            ## 
            # The list of risk event types associated with the sign-in. Possible values: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, or unknownFutureValue.  Supports $filter (eq, startsWith).
            @risk_event_types_v2
            ## 
            # The aggregated risk level. Possible values: none, low, medium, high, hidden, or unknownFutureValue. The value hidden means the user or sign-in wasn't enabled for Microsoft Entra ID Protection.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            @risk_level_aggregated
            ## 
            # The risk level during sign-in. Possible values: none, low, medium, high, hidden, or unknownFutureValue. The value hidden means the user or sign-in wasn't enabled for Microsoft Entra ID Protection.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            @risk_level_during_sign_in
            ## 
            # The risk state of a risky user, sign-in, or a risk event. Possible values: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, or unknownFutureValue.  Supports $filter (eq).
            @risk_state
            ## 
            # The unique identifier of the key credential used by the service principal to authenticate.
            @service_principal_credential_key_id
            ## 
            # The certificate thumbprint of the certificate used by the service principal to authenticate.
            @service_principal_credential_thumbprint
            ## 
            # The application identifier used for sign-in. This field is populated when you're signing in using an application.  Supports $filter (eq, startsWith).
            @service_principal_id
            ## 
            # The application name used for sign-in. This field is populated when you're signing in using an application.  Supports $filter (eq, startsWith).
            @service_principal_name
            ## 
            # Any conditional access session management policies that were applied during the sign-in event.
            @session_lifetime_policies
            ## 
            # Indicates the category of sign in that the event represents. For user sign ins, the category can be interactiveUser or nonInteractiveUser and corresponds to the value for the isInteractive property on the signin resource. For managed identity sign ins, the category is managedIdentity. For service principal sign-ins, the category is servicePrincipal. Possible values are: interactiveUser, nonInteractiveUser, servicePrincipal, managedIdentity, unknownFutureValue.  Supports $filter (eq, ne).
            @sign_in_event_types
            ## 
            # The identification that the user provided to sign in. It can be the userPrincipalName, but is also populated when a user signs in using other identifiers.
            @sign_in_identifier
            ## 
            # The type of sign in identifier. Possible values are: userPrincipalName, phoneNumber, proxyAddress, qrCode, onPremisesUserPrincipalName, unknownFutureValue.
            @sign_in_identifier_type
            ## 
            # Token protection creates a cryptographically secure tie between the token and the device it is issued to. This field indicates whether the signin token was bound to the device or not. The possible values are: none, bound, unbound, unknownFutureValue.
            @sign_in_token_protection_status
            ## 
            # The sign-in status. Includes the error code and description of the error (for a sign-in failure).  Supports $filter (eq) on errorCode property.
            @status
            ## 
            # The name of the identity provider. For example, sts.microsoft.com.  Supports $filter (eq).
            @token_issuer_name
            ## 
            # The type of identity provider. The possible values are: AzureAD, ADFederationServices, UnknownFutureValue, AzureADBackupAuth, ADFederationServicesMFAAdapter, NPSExtension. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: AzureADBackupAuth , ADFederationServicesMFAAdapter , NPSExtension.
            @token_issuer_type
            ## 
            # A unique base64 encoded request identifier used to track tokens issued by Microsoft Entra ID as they're redeemed at resource providers.
            @unique_token_identifier
            ## 
            # The user agent information related to sign-in.  Supports $filter (eq, startsWith).
            @user_agent
            ## 
            # The display name of the user.  Supports $filter (eq, startsWith).
            @user_display_name
            ## 
            # The identifier of the user.  Supports $filter (eq).
            @user_id
            ## 
            # The UPN of the user.  Supports $filter (eq, startsWith).
            @user_principal_name
            ## 
            # Identifies whether the user is a member or guest in the tenant. Possible values are: member, guest, unknownFutureValue.
            @user_type
            ## 
            ## Gets the appDisplayName property value. The application name displayed in the Microsoft Entra admin center.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. The application name displayed in the Microsoft Entra admin center.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the appDisplayName property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Gets the appId property value. The application identifier in Microsoft Entra ID.  Supports $filter (eq).
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The application identifier in Microsoft Entra ID.  Supports $filter (eq).
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appTokenProtectionStatus property value. The appTokenProtectionStatus property
            ## @return a token_protection_status
            ## 
            def app_token_protection_status
                return @app_token_protection_status
            end
            ## 
            ## Sets the appTokenProtectionStatus property value. The appTokenProtectionStatus property
            ## @param value Value to set for the appTokenProtectionStatus property.
            ## @return a void
            ## 
            def app_token_protection_status=(value)
                @app_token_protection_status = value
            end
            ## 
            ## Gets the appliedConditionalAccessPolicies property value. A list of conditional access policies that are triggered by the corresponding sign-in activity. Apps need additional Conditional Access-related privileges to read the details of this property. For more information, see Viewing applied conditional access (CA) policies in sign-ins.
            ## @return a applied_conditional_access_policy
            ## 
            def applied_conditional_access_policies
                return @applied_conditional_access_policies
            end
            ## 
            ## Sets the appliedConditionalAccessPolicies property value. A list of conditional access policies that are triggered by the corresponding sign-in activity. Apps need additional Conditional Access-related privileges to read the details of this property. For more information, see Viewing applied conditional access (CA) policies in sign-ins.
            ## @param value Value to set for the appliedConditionalAccessPolicies property.
            ## @return a void
            ## 
            def applied_conditional_access_policies=(value)
                @applied_conditional_access_policies = value
            end
            ## 
            ## Gets the appliedEventListeners property value. Detailed information about the listeners, such as Azure Logic Apps and Azure Functions, which were triggered by the corresponding events in the sign-in event.
            ## @return a applied_authentication_event_listener
            ## 
            def applied_event_listeners
                return @applied_event_listeners
            end
            ## 
            ## Sets the appliedEventListeners property value. Detailed information about the listeners, such as Azure Logic Apps and Azure Functions, which were triggered by the corresponding events in the sign-in event.
            ## @param value Value to set for the appliedEventListeners property.
            ## @return a void
            ## 
            def applied_event_listeners=(value)
                @applied_event_listeners = value
            end
            ## 
            ## Gets the authenticationAppDeviceDetails property value. Provides details about the app and device used during a Microsoft Entra authentication step.
            ## @return a authentication_app_device_details
            ## 
            def authentication_app_device_details
                return @authentication_app_device_details
            end
            ## 
            ## Sets the authenticationAppDeviceDetails property value. Provides details about the app and device used during a Microsoft Entra authentication step.
            ## @param value Value to set for the authenticationAppDeviceDetails property.
            ## @return a void
            ## 
            def authentication_app_device_details=(value)
                @authentication_app_device_details = value
            end
            ## 
            ## Gets the authenticationAppPolicyEvaluationDetails property value. Provides details of the Microsoft Entra policies applied to a user and client authentication app during an authentication step.
            ## @return a authentication_app_policy_details
            ## 
            def authentication_app_policy_evaluation_details
                return @authentication_app_policy_evaluation_details
            end
            ## 
            ## Sets the authenticationAppPolicyEvaluationDetails property value. Provides details of the Microsoft Entra policies applied to a user and client authentication app during an authentication step.
            ## @param value Value to set for the authenticationAppPolicyEvaluationDetails property.
            ## @return a void
            ## 
            def authentication_app_policy_evaluation_details=(value)
                @authentication_app_policy_evaluation_details = value
            end
            ## 
            ## Gets the authenticationContextClassReferences property value. Contains a collection of values that represent the conditional access authentication contexts applied to the sign-in.
            ## @return a authentication_context
            ## 
            def authentication_context_class_references
                return @authentication_context_class_references
            end
            ## 
            ## Sets the authenticationContextClassReferences property value. Contains a collection of values that represent the conditional access authentication contexts applied to the sign-in.
            ## @param value Value to set for the authenticationContextClassReferences property.
            ## @return a void
            ## 
            def authentication_context_class_references=(value)
                @authentication_context_class_references = value
            end
            ## 
            ## Gets the authenticationDetails property value. The result of the authentication attempt and more details on the authentication method.
            ## @return a authentication_detail
            ## 
            def authentication_details
                return @authentication_details
            end
            ## 
            ## Sets the authenticationDetails property value. The result of the authentication attempt and more details on the authentication method.
            ## @param value Value to set for the authenticationDetails property.
            ## @return a void
            ## 
            def authentication_details=(value)
                @authentication_details = value
            end
            ## 
            ## Gets the authenticationMethodsUsed property value. The authentication methods used. Possible values: SMS, Authenticator App, App Verification code, Password, FIDO, PTA, or PHS.
            ## @return a string
            ## 
            def authentication_methods_used
                return @authentication_methods_used
            end
            ## 
            ## Sets the authenticationMethodsUsed property value. The authentication methods used. Possible values: SMS, Authenticator App, App Verification code, Password, FIDO, PTA, or PHS.
            ## @param value Value to set for the authenticationMethodsUsed property.
            ## @return a void
            ## 
            def authentication_methods_used=(value)
                @authentication_methods_used = value
            end
            ## 
            ## Gets the authenticationProcessingDetails property value. More authentication processing details, such as the agent name for  PTA and PHS, or a server or farm name for federated authentication.
            ## @return a key_value
            ## 
            def authentication_processing_details
                return @authentication_processing_details
            end
            ## 
            ## Sets the authenticationProcessingDetails property value. More authentication processing details, such as the agent name for  PTA and PHS, or a server or farm name for federated authentication.
            ## @param value Value to set for the authenticationProcessingDetails property.
            ## @return a void
            ## 
            def authentication_processing_details=(value)
                @authentication_processing_details = value
            end
            ## 
            ## Gets the authenticationProtocol property value. Lists the protocol type or grant type used in the authentication. The possible values are: oAuth2, ropc, wsFederation, saml20, deviceCode, unknownFutureValue, authenticationTransfer, and none. Use none for all authentications that don't have a specific value in that list.
            ## @return a protocol_type
            ## 
            def authentication_protocol
                return @authentication_protocol
            end
            ## 
            ## Sets the authenticationProtocol property value. Lists the protocol type or grant type used in the authentication. The possible values are: oAuth2, ropc, wsFederation, saml20, deviceCode, unknownFutureValue, authenticationTransfer, and none. Use none for all authentications that don't have a specific value in that list.
            ## @param value Value to set for the authenticationProtocol property.
            ## @return a void
            ## 
            def authentication_protocol=(value)
                @authentication_protocol = value
            end
            ## 
            ## Gets the authenticationRequirement property value. This holds the highest level of authentication needed through all the sign-in steps, for sign-in to succeed.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def authentication_requirement
                return @authentication_requirement
            end
            ## 
            ## Sets the authenticationRequirement property value. This holds the highest level of authentication needed through all the sign-in steps, for sign-in to succeed.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the authenticationRequirement property.
            ## @return a void
            ## 
            def authentication_requirement=(value)
                @authentication_requirement = value
            end
            ## 
            ## Gets the authenticationRequirementPolicies property value. Sources of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults.
            ## @return a authentication_requirement_policy
            ## 
            def authentication_requirement_policies
                return @authentication_requirement_policies
            end
            ## 
            ## Sets the authenticationRequirementPolicies property value. Sources of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults.
            ## @param value Value to set for the authenticationRequirementPolicies property.
            ## @return a void
            ## 
            def authentication_requirement_policies=(value)
                @authentication_requirement_policies = value
            end
            ## 
            ## Gets the autonomousSystemNumber property value. The Autonomous System Number (ASN) of the network used by the actor.
            ## @return a integer
            ## 
            def autonomous_system_number
                return @autonomous_system_number
            end
            ## 
            ## Sets the autonomousSystemNumber property value. The Autonomous System Number (ASN) of the network used by the actor.
            ## @param value Value to set for the autonomousSystemNumber property.
            ## @return a void
            ## 
            def autonomous_system_number=(value)
                @autonomous_system_number = value
            end
            ## 
            ## Gets the azureResourceId property value. Contains a fully qualified Azure Resource Manager ID of an Azure resource accessed during the sign-in.
            ## @return a string
            ## 
            def azure_resource_id
                return @azure_resource_id
            end
            ## 
            ## Sets the azureResourceId property value. Contains a fully qualified Azure Resource Manager ID of an Azure resource accessed during the sign-in.
            ## @param value Value to set for the azureResourceId property.
            ## @return a void
            ## 
            def azure_resource_id=(value)
                @azure_resource_id = value
            end
            ## 
            ## Gets the clientAppUsed property value. The legacy client used for sign-in activity. For example: Browser, Exchange ActiveSync, Modern clients, IMAP, MAPI, SMTP, or POP.  Supports $filter (eq).
            ## @return a string
            ## 
            def client_app_used
                return @client_app_used
            end
            ## 
            ## Sets the clientAppUsed property value. The legacy client used for sign-in activity. For example: Browser, Exchange ActiveSync, Modern clients, IMAP, MAPI, SMTP, or POP.  Supports $filter (eq).
            ## @param value Value to set for the clientAppUsed property.
            ## @return a void
            ## 
            def client_app_used=(value)
                @client_app_used = value
            end
            ## 
            ## Gets the clientCredentialType property value. Describes the credential type that a user client or service principal provided to Microsoft Entra ID to authenticate itself. You can review this property to track and eliminate less secure credential types or to watch for clients and service principals using anomalous credential types. The possible values are: none, clientSecret, clientAssertion, federatedIdentityCredential, managedIdentity, certificate, unknownFutureValue.
            ## @return a client_credential_type
            ## 
            def client_credential_type
                return @client_credential_type
            end
            ## 
            ## Sets the clientCredentialType property value. Describes the credential type that a user client or service principal provided to Microsoft Entra ID to authenticate itself. You can review this property to track and eliminate less secure credential types or to watch for clients and service principals using anomalous credential types. The possible values are: none, clientSecret, clientAssertion, federatedIdentityCredential, managedIdentity, certificate, unknownFutureValue.
            ## @param value Value to set for the clientCredentialType property.
            ## @return a void
            ## 
            def client_credential_type=(value)
                @client_credential_type = value
            end
            ## 
            ## Gets the conditionalAccessStatus property value. The status of the conditional access policy triggered. Possible values: success, failure, notApplied, or unknownFutureValue.  Supports $filter (eq).
            ## @return a conditional_access_status
            ## 
            def conditional_access_status
                return @conditional_access_status
            end
            ## 
            ## Sets the conditionalAccessStatus property value. The status of the conditional access policy triggered. Possible values: success, failure, notApplied, or unknownFutureValue.  Supports $filter (eq).
            ## @param value Value to set for the conditionalAccessStatus property.
            ## @return a void
            ## 
            def conditional_access_status=(value)
                @conditional_access_status = value
            end
            ## 
            ## Instantiates a new signIn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. The identifier that's sent from the client when sign-in is initiated. This is used for troubleshooting the corresponding sign-in activity when calling for support.  Supports $filter (eq).
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. The identifier that's sent from the client when sign-in is initiated. This is used for troubleshooting the corresponding sign-in activity when calling for support.  Supports $filter (eq).
            ## @param value Value to set for the correlationId property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Gets the createdDateTime property value. The date and time the sign-in was initiated. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  Supports $orderby, $filter (eq, le, and ge).
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time the sign-in was initiated. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.  Supports $orderby, $filter (eq, le, and ge).
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sign_in
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignIn.new
            end
            ## 
            ## Gets the crossTenantAccessType property value. Describes the type of cross-tenant access used by the actor to access the resource. Possible values are: none, b2bCollaboration, b2bDirectConnect, microsoftSupport, serviceProvider, unknownFutureValue, passthrough. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: passthrough. If the sign in didn't cross tenant boundaries, the value is none.
            ## @return a sign_in_access_type
            ## 
            def cross_tenant_access_type
                return @cross_tenant_access_type
            end
            ## 
            ## Sets the crossTenantAccessType property value. Describes the type of cross-tenant access used by the actor to access the resource. Possible values are: none, b2bCollaboration, b2bDirectConnect, microsoftSupport, serviceProvider, unknownFutureValue, passthrough. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: passthrough. If the sign in didn't cross tenant boundaries, the value is none.
            ## @param value Value to set for the crossTenantAccessType property.
            ## @return a void
            ## 
            def cross_tenant_access_type=(value)
                @cross_tenant_access_type = value
            end
            ## 
            ## Gets the deviceDetail property value. The device information from where the sign-in occurred. Includes information such as deviceId, OS, and browser.  Supports $filter (eq, startsWith) on browser and operatingSystem properties.
            ## @return a device_detail
            ## 
            def device_detail
                return @device_detail
            end
            ## 
            ## Sets the deviceDetail property value. The device information from where the sign-in occurred. Includes information such as deviceId, OS, and browser.  Supports $filter (eq, startsWith) on browser and operatingSystem properties.
            ## @param value Value to set for the deviceDetail property.
            ## @return a void
            ## 
            def device_detail=(value)
                @device_detail = value
            end
            ## 
            ## Gets the federatedCredentialId property value. Contains the identifier of an application's federated identity credential, if a federated identity credential was used to sign in.
            ## @return a string
            ## 
            def federated_credential_id
                return @federated_credential_id
            end
            ## 
            ## Sets the federatedCredentialId property value. Contains the identifier of an application's federated identity credential, if a federated identity credential was used to sign in.
            ## @param value Value to set for the federatedCredentialId property.
            ## @return a void
            ## 
            def federated_credential_id=(value)
                @federated_credential_id = value
            end
            ## 
            ## Gets the flaggedForReview property value. During a failed sign-in, a user can select a button in the Azure portal to mark the failed event for tenant admins. If a user selects the button to flag the failed sign-in, this value is true.
            ## @return a boolean
            ## 
            def flagged_for_review
                return @flagged_for_review
            end
            ## 
            ## Sets the flaggedForReview property value. During a failed sign-in, a user can select a button in the Azure portal to mark the failed event for tenant admins. If a user selects the button to flag the failed sign-in, this value is true.
            ## @param value Value to set for the flaggedForReview property.
            ## @return a void
            ## 
            def flagged_for_review=(value)
                @flagged_for_review = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appTokenProtectionStatus" => lambda {|n| @app_token_protection_status = n.get_enum_value(MicrosoftGraphBeta::Models::TokenProtectionStatus) },
                    "appliedConditionalAccessPolicies" => lambda {|n| @applied_conditional_access_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppliedConditionalAccessPolicy.create_from_discriminator_value(pn) }) },
                    "appliedEventListeners" => lambda {|n| @applied_event_listeners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppliedAuthenticationEventListener.create_from_discriminator_value(pn) }) },
                    "authenticationAppDeviceDetails" => lambda {|n| @authentication_app_device_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationAppDeviceDetails.create_from_discriminator_value(pn) }) },
                    "authenticationAppPolicyEvaluationDetails" => lambda {|n| @authentication_app_policy_evaluation_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationAppPolicyDetails.create_from_discriminator_value(pn) }) },
                    "authenticationContextClassReferences" => lambda {|n| @authentication_context_class_references = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationContext.create_from_discriminator_value(pn) }) },
                    "authenticationDetails" => lambda {|n| @authentication_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationDetail.create_from_discriminator_value(pn) }) },
                    "authenticationMethodsUsed" => lambda {|n| @authentication_methods_used = n.get_collection_of_primitive_values(String) },
                    "authenticationProcessingDetails" => lambda {|n| @authentication_processing_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "authenticationProtocol" => lambda {|n| @authentication_protocol = n.get_enum_values(MicrosoftGraphBeta::Models::ProtocolType) },
                    "authenticationRequirement" => lambda {|n| @authentication_requirement = n.get_string_value() },
                    "authenticationRequirementPolicies" => lambda {|n| @authentication_requirement_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationRequirementPolicy.create_from_discriminator_value(pn) }) },
                    "autonomousSystemNumber" => lambda {|n| @autonomous_system_number = n.get_number_value() },
                    "azureResourceId" => lambda {|n| @azure_resource_id = n.get_string_value() },
                    "clientAppUsed" => lambda {|n| @client_app_used = n.get_string_value() },
                    "clientCredentialType" => lambda {|n| @client_credential_type = n.get_enum_value(MicrosoftGraphBeta::Models::ClientCredentialType) },
                    "conditionalAccessStatus" => lambda {|n| @conditional_access_status = n.get_enum_value(MicrosoftGraphBeta::Models::ConditionalAccessStatus) },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "crossTenantAccessType" => lambda {|n| @cross_tenant_access_type = n.get_enum_values(MicrosoftGraphBeta::Models::SignInAccessType) },
                    "deviceDetail" => lambda {|n| @device_detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceDetail.create_from_discriminator_value(pn) }) },
                    "federatedCredentialId" => lambda {|n| @federated_credential_id = n.get_string_value() },
                    "flaggedForReview" => lambda {|n| @flagged_for_review = n.get_boolean_value() },
                    "homeTenantId" => lambda {|n| @home_tenant_id = n.get_string_value() },
                    "homeTenantName" => lambda {|n| @home_tenant_name = n.get_string_value() },
                    "incomingTokenType" => lambda {|n| @incoming_token_type = n.get_enum_values(MicrosoftGraphBeta::Models::IncomingTokenType) },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "ipAddressFromResourceProvider" => lambda {|n| @ip_address_from_resource_provider = n.get_string_value() },
                    "isInteractive" => lambda {|n| @is_interactive = n.get_boolean_value() },
                    "isTenantRestricted" => lambda {|n| @is_tenant_restricted = n.get_boolean_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInLocation.create_from_discriminator_value(pn) }) },
                    "managedServiceIdentity" => lambda {|n| @managed_service_identity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedIdentity.create_from_discriminator_value(pn) }) },
                    "mfaDetail" => lambda {|n| @mfa_detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MfaDetail.create_from_discriminator_value(pn) }) },
                    "networkLocationDetails" => lambda {|n| @network_location_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkLocationDetail.create_from_discriminator_value(pn) }) },
                    "originalRequestId" => lambda {|n| @original_request_id = n.get_string_value() },
                    "originalTransferMethod" => lambda {|n| @original_transfer_method = n.get_enum_value(MicrosoftGraphBeta::Models::OriginalTransferMethods) },
                    "privateLinkDetails" => lambda {|n| @private_link_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrivateLinkDetails.create_from_discriminator_value(pn) }) },
                    "processingTimeInMilliseconds" => lambda {|n| @processing_time_in_milliseconds = n.get_number_value() },
                    "resourceDisplayName" => lambda {|n| @resource_display_name = n.get_string_value() },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "resourceServicePrincipalId" => lambda {|n| @resource_service_principal_id = n.get_string_value() },
                    "resourceTenantId" => lambda {|n| @resource_tenant_id = n.get_string_value() },
                    "riskDetail" => lambda {|n| @risk_detail = n.get_enum_value(MicrosoftGraphBeta::Models::RiskDetail) },
                    "riskEventTypes_v2" => lambda {|n| @risk_event_types_v2 = n.get_collection_of_primitive_values(String) },
                    "riskLevelAggregated" => lambda {|n| @risk_level_aggregated = n.get_enum_value(MicrosoftGraphBeta::Models::RiskLevel) },
                    "riskLevelDuringSignIn" => lambda {|n| @risk_level_during_sign_in = n.get_enum_value(MicrosoftGraphBeta::Models::RiskLevel) },
                    "riskState" => lambda {|n| @risk_state = n.get_enum_value(MicrosoftGraphBeta::Models::RiskState) },
                    "servicePrincipalCredentialKeyId" => lambda {|n| @service_principal_credential_key_id = n.get_string_value() },
                    "servicePrincipalCredentialThumbprint" => lambda {|n| @service_principal_credential_thumbprint = n.get_string_value() },
                    "servicePrincipalId" => lambda {|n| @service_principal_id = n.get_string_value() },
                    "servicePrincipalName" => lambda {|n| @service_principal_name = n.get_string_value() },
                    "sessionLifetimePolicies" => lambda {|n| @session_lifetime_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SessionLifetimePolicy.create_from_discriminator_value(pn) }) },
                    "signInEventTypes" => lambda {|n| @sign_in_event_types = n.get_collection_of_primitive_values(String) },
                    "signInIdentifier" => lambda {|n| @sign_in_identifier = n.get_string_value() },
                    "signInIdentifierType" => lambda {|n| @sign_in_identifier_type = n.get_enum_value(MicrosoftGraphBeta::Models::SignInIdentifierType) },
                    "signInTokenProtectionStatus" => lambda {|n| @sign_in_token_protection_status = n.get_enum_value(MicrosoftGraphBeta::Models::TokenProtectionStatus) },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInStatus.create_from_discriminator_value(pn) }) },
                    "tokenIssuerName" => lambda {|n| @token_issuer_name = n.get_string_value() },
                    "tokenIssuerType" => lambda {|n| @token_issuer_type = n.get_enum_value(MicrosoftGraphBeta::Models::TokenIssuerType) },
                    "uniqueTokenIdentifier" => lambda {|n| @unique_token_identifier = n.get_string_value() },
                    "userAgent" => lambda {|n| @user_agent = n.get_string_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraphBeta::Models::SignInUserType) },
                })
            end
            ## 
            ## Gets the homeTenantId property value. The tenant identifier of the user initiating the sign-in. Not applicable in Managed Identity or service principal sign ins.
            ## @return a string
            ## 
            def home_tenant_id
                return @home_tenant_id
            end
            ## 
            ## Sets the homeTenantId property value. The tenant identifier of the user initiating the sign-in. Not applicable in Managed Identity or service principal sign ins.
            ## @param value Value to set for the homeTenantId property.
            ## @return a void
            ## 
            def home_tenant_id=(value)
                @home_tenant_id = value
            end
            ## 
            ## Gets the homeTenantName property value. For user sign ins, the identifier of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Microsoft Entra ID to show the tenant content.
            ## @return a string
            ## 
            def home_tenant_name
                return @home_tenant_name
            end
            ## 
            ## Sets the homeTenantName property value. For user sign ins, the identifier of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Microsoft Entra ID to show the tenant content.
            ## @param value Value to set for the homeTenantName property.
            ## @return a void
            ## 
            def home_tenant_name=(value)
                @home_tenant_name = value
            end
            ## 
            ## Gets the incomingTokenType property value. Indicates the token types that were presented to Microsoft Entra ID to authenticate the actor in the sign in. The possible values are: none, primaryRefreshToken, saml11, saml20, unknownFutureValue, remoteDesktopToken.  NOTE Microsoft Entra ID might have also used token types not listed in this enum type to authenticate the actor. Don't infer the lack of a token if it isn't one of the types listed. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: remoteDesktopToken.
            ## @return a incoming_token_type
            ## 
            def incoming_token_type
                return @incoming_token_type
            end
            ## 
            ## Sets the incomingTokenType property value. Indicates the token types that were presented to Microsoft Entra ID to authenticate the actor in the sign in. The possible values are: none, primaryRefreshToken, saml11, saml20, unknownFutureValue, remoteDesktopToken.  NOTE Microsoft Entra ID might have also used token types not listed in this enum type to authenticate the actor. Don't infer the lack of a token if it isn't one of the types listed. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: remoteDesktopToken.
            ## @param value Value to set for the incomingTokenType property.
            ## @return a void
            ## 
            def incoming_token_type=(value)
                @incoming_token_type = value
            end
            ## 
            ## Gets the ipAddress property value. The IP address of the client from where the sign-in occurred.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The IP address of the client from where the sign-in occurred.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the ipAddressFromResourceProvider property value. The IP address a user used to reach a resource provider, used to determine Conditional Access compliance for some policies. For example, when a user interacts with Exchange Online, the IP address that Microsoft Exchange receives from the user can be recorded here. This value is often null.
            ## @return a string
            ## 
            def ip_address_from_resource_provider
                return @ip_address_from_resource_provider
            end
            ## 
            ## Sets the ipAddressFromResourceProvider property value. The IP address a user used to reach a resource provider, used to determine Conditional Access compliance for some policies. For example, when a user interacts with Exchange Online, the IP address that Microsoft Exchange receives from the user can be recorded here. This value is often null.
            ## @param value Value to set for the ipAddressFromResourceProvider property.
            ## @return a void
            ## 
            def ip_address_from_resource_provider=(value)
                @ip_address_from_resource_provider = value
            end
            ## 
            ## Gets the isInteractive property value. Indicates whether a user sign in is interactive. In interactive sign in, the user provides an authentication factor to Microsoft Entra ID. These factors include passwords, responses to MFA challenges, biometric factors, or QR codes that a user provides to Microsoft Entra ID or an associated app. In non-interactive sign in, the user doesn't provide an authentication factor. Instead, the client app uses a token or code to authenticate or access a resource on behalf of a user. Non-interactive sign ins are commonly used for a client to sign in on a user's behalf in a process transparent to the user.
            ## @return a boolean
            ## 
            def is_interactive
                return @is_interactive
            end
            ## 
            ## Sets the isInteractive property value. Indicates whether a user sign in is interactive. In interactive sign in, the user provides an authentication factor to Microsoft Entra ID. These factors include passwords, responses to MFA challenges, biometric factors, or QR codes that a user provides to Microsoft Entra ID or an associated app. In non-interactive sign in, the user doesn't provide an authentication factor. Instead, the client app uses a token or code to authenticate or access a resource on behalf of a user. Non-interactive sign ins are commonly used for a client to sign in on a user's behalf in a process transparent to the user.
            ## @param value Value to set for the isInteractive property.
            ## @return a void
            ## 
            def is_interactive=(value)
                @is_interactive = value
            end
            ## 
            ## Gets the isTenantRestricted property value. Shows whether the sign in event was subject to a Microsoft Entra tenant restriction policy.
            ## @return a boolean
            ## 
            def is_tenant_restricted
                return @is_tenant_restricted
            end
            ## 
            ## Sets the isTenantRestricted property value. Shows whether the sign in event was subject to a Microsoft Entra tenant restriction policy.
            ## @param value Value to set for the isTenantRestricted property.
            ## @return a void
            ## 
            def is_tenant_restricted=(value)
                @is_tenant_restricted = value
            end
            ## 
            ## Gets the location property value. The city, state, and two letter country code from where the sign-in occurred.  Supports $filter (eq, startsWith) on city, state, and countryOrRegion properties.
            ## @return a sign_in_location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The city, state, and two letter country code from where the sign-in occurred.  Supports $filter (eq, startsWith) on city, state, and countryOrRegion properties.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Gets the managedServiceIdentity property value. Contains information about the managed identity used for the sign in, including its type, associated Azure Resource Manager (ARM) resource ID, and federated token information.
            ## @return a managed_identity
            ## 
            def managed_service_identity
                return @managed_service_identity
            end
            ## 
            ## Sets the managedServiceIdentity property value. Contains information about the managed identity used for the sign in, including its type, associated Azure Resource Manager (ARM) resource ID, and federated token information.
            ## @param value Value to set for the managedServiceIdentity property.
            ## @return a void
            ## 
            def managed_service_identity=(value)
                @managed_service_identity = value
            end
            ## 
            ## Gets the mfaDetail property value. The mfaDetail property
            ## @return a mfa_detail
            ## 
            def mfa_detail
                return @mfa_detail
            end
            ## 
            ## Sets the mfaDetail property value. The mfaDetail property
            ## @param value Value to set for the mfaDetail property.
            ## @return a void
            ## 
            def mfa_detail=(value)
                @mfa_detail = value
            end
            ## 
            ## Gets the networkLocationDetails property value. The network location details including the type of network used and its names.
            ## @return a network_location_detail
            ## 
            def network_location_details
                return @network_location_details
            end
            ## 
            ## Sets the networkLocationDetails property value. The network location details including the type of network used and its names.
            ## @param value Value to set for the networkLocationDetails property.
            ## @return a void
            ## 
            def network_location_details=(value)
                @network_location_details = value
            end
            ## 
            ## Gets the originalRequestId property value. The request identifier of the first request in the authentication sequence.  Supports $filter (eq).
            ## @return a string
            ## 
            def original_request_id
                return @original_request_id
            end
            ## 
            ## Sets the originalRequestId property value. The request identifier of the first request in the authentication sequence.  Supports $filter (eq).
            ## @param value Value to set for the originalRequestId property.
            ## @return a void
            ## 
            def original_request_id=(value)
                @original_request_id = value
            end
            ## 
            ## Gets the originalTransferMethod property value. Transfer method used to initiate a session throughout all subsequent request. The possible values are: none, deviceCodeFlow, authenticationTransfer, unknownFutureValue.
            ## @return a original_transfer_methods
            ## 
            def original_transfer_method
                return @original_transfer_method
            end
            ## 
            ## Sets the originalTransferMethod property value. Transfer method used to initiate a session throughout all subsequent request. The possible values are: none, deviceCodeFlow, authenticationTransfer, unknownFutureValue.
            ## @param value Value to set for the originalTransferMethod property.
            ## @return a void
            ## 
            def original_transfer_method=(value)
                @original_transfer_method = value
            end
            ## 
            ## Gets the privateLinkDetails property value. Contains information about the Microsoft Entra Private Link policy that is associated with the sign in event.
            ## @return a private_link_details
            ## 
            def private_link_details
                return @private_link_details
            end
            ## 
            ## Sets the privateLinkDetails property value. Contains information about the Microsoft Entra Private Link policy that is associated with the sign in event.
            ## @param value Value to set for the privateLinkDetails property.
            ## @return a void
            ## 
            def private_link_details=(value)
                @private_link_details = value
            end
            ## 
            ## Gets the processingTimeInMilliseconds property value. The request processing time in milliseconds in AD STS.
            ## @return a integer
            ## 
            def processing_time_in_milliseconds
                return @processing_time_in_milliseconds
            end
            ## 
            ## Sets the processingTimeInMilliseconds property value. The request processing time in milliseconds in AD STS.
            ## @param value Value to set for the processingTimeInMilliseconds property.
            ## @return a void
            ## 
            def processing_time_in_milliseconds=(value)
                @processing_time_in_milliseconds = value
            end
            ## 
            ## Gets the resourceDisplayName property value. The name of the resource that the user signed in to.  Supports $filter (eq).
            ## @return a string
            ## 
            def resource_display_name
                return @resource_display_name
            end
            ## 
            ## Sets the resourceDisplayName property value. The name of the resource that the user signed in to.  Supports $filter (eq).
            ## @param value Value to set for the resourceDisplayName property.
            ## @return a void
            ## 
            def resource_display_name=(value)
                @resource_display_name = value
            end
            ## 
            ## Gets the resourceId property value. The identifier of the resource that the user signed in to.  Supports $filter (eq).
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The identifier of the resource that the user signed in to.  Supports $filter (eq).
            ## @param value Value to set for the resourceId property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Gets the resourceServicePrincipalId property value. The identifier of the service principal representing the target resource in the sign-in event.
            ## @return a string
            ## 
            def resource_service_principal_id
                return @resource_service_principal_id
            end
            ## 
            ## Sets the resourceServicePrincipalId property value. The identifier of the service principal representing the target resource in the sign-in event.
            ## @param value Value to set for the resourceServicePrincipalId property.
            ## @return a void
            ## 
            def resource_service_principal_id=(value)
                @resource_service_principal_id = value
            end
            ## 
            ## Gets the resourceTenantId property value. The tenant identifier of the resource referenced in the sign in.
            ## @return a string
            ## 
            def resource_tenant_id
                return @resource_tenant_id
            end
            ## 
            ## Sets the resourceTenantId property value. The tenant identifier of the resource referenced in the sign in.
            ## @param value Value to set for the resourceTenantId property.
            ## @return a void
            ## 
            def resource_tenant_id=(value)
                @resource_tenant_id = value
            end
            ## 
            ## Gets the riskDetail property value. The reason behind a specific state of a risky user, sign-in, or a risk event. Possible values: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, or unknownFutureValue. The value none means that Microsoft Entra risk detection has not flagged the user or the sign-in as a risky event so far.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            ## @return a risk_detail
            ## 
            def risk_detail
                return @risk_detail
            end
            ## 
            ## Sets the riskDetail property value. The reason behind a specific state of a risky user, sign-in, or a risk event. Possible values: none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, or unknownFutureValue. The value none means that Microsoft Entra risk detection has not flagged the user or the sign-in as a risky event so far.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            ## @param value Value to set for the riskDetail property.
            ## @return a void
            ## 
            def risk_detail=(value)
                @risk_detail = value
            end
            ## 
            ## Gets the riskEventTypes_v2 property value. The list of risk event types associated with the sign-in. Possible values: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, or unknownFutureValue.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def risk_event_types_v2
                return @risk_event_types_v2
            end
            ## 
            ## Sets the riskEventTypes_v2 property value. The list of risk event types associated with the sign-in. Possible values: unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence,  generic, or unknownFutureValue.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the riskEventTypes_v2 property.
            ## @return a void
            ## 
            def risk_event_types_v2=(value)
                @risk_event_types_v2 = value
            end
            ## 
            ## Gets the riskLevelAggregated property value. The aggregated risk level. Possible values: none, low, medium, high, hidden, or unknownFutureValue. The value hidden means the user or sign-in wasn't enabled for Microsoft Entra ID Protection.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            ## @return a risk_level
            ## 
            def risk_level_aggregated
                return @risk_level_aggregated
            end
            ## 
            ## Sets the riskLevelAggregated property value. The aggregated risk level. Possible values: none, low, medium, high, hidden, or unknownFutureValue. The value hidden means the user or sign-in wasn't enabled for Microsoft Entra ID Protection.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            ## @param value Value to set for the riskLevelAggregated property.
            ## @return a void
            ## 
            def risk_level_aggregated=(value)
                @risk_level_aggregated = value
            end
            ## 
            ## Gets the riskLevelDuringSignIn property value. The risk level during sign-in. Possible values: none, low, medium, high, hidden, or unknownFutureValue. The value hidden means the user or sign-in wasn't enabled for Microsoft Entra ID Protection.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            ## @return a risk_level
            ## 
            def risk_level_during_sign_in
                return @risk_level_during_sign_in
            end
            ## 
            ## Sets the riskLevelDuringSignIn property value. The risk level during sign-in. Possible values: none, low, medium, high, hidden, or unknownFutureValue. The value hidden means the user or sign-in wasn't enabled for Microsoft Entra ID Protection.  Supports $filter (eq). Note: Details for this property are only available for Microsoft Entra ID P2 customers. All other customers are returned hidden.
            ## @param value Value to set for the riskLevelDuringSignIn property.
            ## @return a void
            ## 
            def risk_level_during_sign_in=(value)
                @risk_level_during_sign_in = value
            end
            ## 
            ## Gets the riskState property value. The risk state of a risky user, sign-in, or a risk event. Possible values: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, or unknownFutureValue.  Supports $filter (eq).
            ## @return a risk_state
            ## 
            def risk_state
                return @risk_state
            end
            ## 
            ## Sets the riskState property value. The risk state of a risky user, sign-in, or a risk event. Possible values: none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, or unknownFutureValue.  Supports $filter (eq).
            ## @param value Value to set for the riskState property.
            ## @return a void
            ## 
            def risk_state=(value)
                @risk_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appId", @app_id)
                writer.write_enum_value("appTokenProtectionStatus", @app_token_protection_status)
                writer.write_collection_of_object_values("appliedConditionalAccessPolicies", @applied_conditional_access_policies)
                writer.write_collection_of_object_values("appliedEventListeners", @applied_event_listeners)
                writer.write_object_value("authenticationAppDeviceDetails", @authentication_app_device_details)
                writer.write_collection_of_object_values("authenticationAppPolicyEvaluationDetails", @authentication_app_policy_evaluation_details)
                writer.write_collection_of_object_values("authenticationContextClassReferences", @authentication_context_class_references)
                writer.write_collection_of_object_values("authenticationDetails", @authentication_details)
                writer.write_collection_of_primitive_values("authenticationMethodsUsed", @authentication_methods_used)
                writer.write_collection_of_object_values("authenticationProcessingDetails", @authentication_processing_details)
                writer.write_enum_value("authenticationProtocol", @authentication_protocol)
                writer.write_string_value("authenticationRequirement", @authentication_requirement)
                writer.write_collection_of_object_values("authenticationRequirementPolicies", @authentication_requirement_policies)
                writer.write_number_value("autonomousSystemNumber", @autonomous_system_number)
                writer.write_string_value("azureResourceId", @azure_resource_id)
                writer.write_string_value("clientAppUsed", @client_app_used)
                writer.write_enum_value("clientCredentialType", @client_credential_type)
                writer.write_enum_value("conditionalAccessStatus", @conditional_access_status)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("crossTenantAccessType", @cross_tenant_access_type)
                writer.write_object_value("deviceDetail", @device_detail)
                writer.write_string_value("federatedCredentialId", @federated_credential_id)
                writer.write_boolean_value("flaggedForReview", @flagged_for_review)
                writer.write_string_value("homeTenantId", @home_tenant_id)
                writer.write_string_value("homeTenantName", @home_tenant_name)
                writer.write_enum_value("incomingTokenType", @incoming_token_type)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("ipAddressFromResourceProvider", @ip_address_from_resource_provider)
                writer.write_boolean_value("isInteractive", @is_interactive)
                writer.write_boolean_value("isTenantRestricted", @is_tenant_restricted)
                writer.write_object_value("location", @location)
                writer.write_object_value("managedServiceIdentity", @managed_service_identity)
                writer.write_object_value("mfaDetail", @mfa_detail)
                writer.write_collection_of_object_values("networkLocationDetails", @network_location_details)
                writer.write_string_value("originalRequestId", @original_request_id)
                writer.write_enum_value("originalTransferMethod", @original_transfer_method)
                writer.write_object_value("privateLinkDetails", @private_link_details)
                writer.write_number_value("processingTimeInMilliseconds", @processing_time_in_milliseconds)
                writer.write_string_value("resourceDisplayName", @resource_display_name)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_string_value("resourceServicePrincipalId", @resource_service_principal_id)
                writer.write_string_value("resourceTenantId", @resource_tenant_id)
                writer.write_enum_value("riskDetail", @risk_detail)
                writer.write_collection_of_primitive_values("riskEventTypes_v2", @risk_event_types_v2)
                writer.write_enum_value("riskLevelAggregated", @risk_level_aggregated)
                writer.write_enum_value("riskLevelDuringSignIn", @risk_level_during_sign_in)
                writer.write_enum_value("riskState", @risk_state)
                writer.write_string_value("servicePrincipalCredentialKeyId", @service_principal_credential_key_id)
                writer.write_string_value("servicePrincipalCredentialThumbprint", @service_principal_credential_thumbprint)
                writer.write_string_value("servicePrincipalId", @service_principal_id)
                writer.write_string_value("servicePrincipalName", @service_principal_name)
                writer.write_collection_of_object_values("sessionLifetimePolicies", @session_lifetime_policies)
                writer.write_collection_of_primitive_values("signInEventTypes", @sign_in_event_types)
                writer.write_string_value("signInIdentifier", @sign_in_identifier)
                writer.write_enum_value("signInIdentifierType", @sign_in_identifier_type)
                writer.write_enum_value("signInTokenProtectionStatus", @sign_in_token_protection_status)
                writer.write_object_value("status", @status)
                writer.write_string_value("tokenIssuerName", @token_issuer_name)
                writer.write_enum_value("tokenIssuerType", @token_issuer_type)
                writer.write_string_value("uniqueTokenIdentifier", @unique_token_identifier)
                writer.write_string_value("userAgent", @user_agent)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_enum_value("userType", @user_type)
            end
            ## 
            ## Gets the servicePrincipalCredentialKeyId property value. The unique identifier of the key credential used by the service principal to authenticate.
            ## @return a string
            ## 
            def service_principal_credential_key_id
                return @service_principal_credential_key_id
            end
            ## 
            ## Sets the servicePrincipalCredentialKeyId property value. The unique identifier of the key credential used by the service principal to authenticate.
            ## @param value Value to set for the servicePrincipalCredentialKeyId property.
            ## @return a void
            ## 
            def service_principal_credential_key_id=(value)
                @service_principal_credential_key_id = value
            end
            ## 
            ## Gets the servicePrincipalCredentialThumbprint property value. The certificate thumbprint of the certificate used by the service principal to authenticate.
            ## @return a string
            ## 
            def service_principal_credential_thumbprint
                return @service_principal_credential_thumbprint
            end
            ## 
            ## Sets the servicePrincipalCredentialThumbprint property value. The certificate thumbprint of the certificate used by the service principal to authenticate.
            ## @param value Value to set for the servicePrincipalCredentialThumbprint property.
            ## @return a void
            ## 
            def service_principal_credential_thumbprint=(value)
                @service_principal_credential_thumbprint = value
            end
            ## 
            ## Gets the servicePrincipalId property value. The application identifier used for sign-in. This field is populated when you're signing in using an application.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def service_principal_id
                return @service_principal_id
            end
            ## 
            ## Sets the servicePrincipalId property value. The application identifier used for sign-in. This field is populated when you're signing in using an application.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the servicePrincipalId property.
            ## @return a void
            ## 
            def service_principal_id=(value)
                @service_principal_id = value
            end
            ## 
            ## Gets the servicePrincipalName property value. The application name used for sign-in. This field is populated when you're signing in using an application.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def service_principal_name
                return @service_principal_name
            end
            ## 
            ## Sets the servicePrincipalName property value. The application name used for sign-in. This field is populated when you're signing in using an application.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the servicePrincipalName property.
            ## @return a void
            ## 
            def service_principal_name=(value)
                @service_principal_name = value
            end
            ## 
            ## Gets the sessionLifetimePolicies property value. Any conditional access session management policies that were applied during the sign-in event.
            ## @return a session_lifetime_policy
            ## 
            def session_lifetime_policies
                return @session_lifetime_policies
            end
            ## 
            ## Sets the sessionLifetimePolicies property value. Any conditional access session management policies that were applied during the sign-in event.
            ## @param value Value to set for the sessionLifetimePolicies property.
            ## @return a void
            ## 
            def session_lifetime_policies=(value)
                @session_lifetime_policies = value
            end
            ## 
            ## Gets the signInEventTypes property value. Indicates the category of sign in that the event represents. For user sign ins, the category can be interactiveUser or nonInteractiveUser and corresponds to the value for the isInteractive property on the signin resource. For managed identity sign ins, the category is managedIdentity. For service principal sign-ins, the category is servicePrincipal. Possible values are: interactiveUser, nonInteractiveUser, servicePrincipal, managedIdentity, unknownFutureValue.  Supports $filter (eq, ne).
            ## @return a string
            ## 
            def sign_in_event_types
                return @sign_in_event_types
            end
            ## 
            ## Sets the signInEventTypes property value. Indicates the category of sign in that the event represents. For user sign ins, the category can be interactiveUser or nonInteractiveUser and corresponds to the value for the isInteractive property on the signin resource. For managed identity sign ins, the category is managedIdentity. For service principal sign-ins, the category is servicePrincipal. Possible values are: interactiveUser, nonInteractiveUser, servicePrincipal, managedIdentity, unknownFutureValue.  Supports $filter (eq, ne).
            ## @param value Value to set for the signInEventTypes property.
            ## @return a void
            ## 
            def sign_in_event_types=(value)
                @sign_in_event_types = value
            end
            ## 
            ## Gets the signInIdentifier property value. The identification that the user provided to sign in. It can be the userPrincipalName, but is also populated when a user signs in using other identifiers.
            ## @return a string
            ## 
            def sign_in_identifier
                return @sign_in_identifier
            end
            ## 
            ## Sets the signInIdentifier property value. The identification that the user provided to sign in. It can be the userPrincipalName, but is also populated when a user signs in using other identifiers.
            ## @param value Value to set for the signInIdentifier property.
            ## @return a void
            ## 
            def sign_in_identifier=(value)
                @sign_in_identifier = value
            end
            ## 
            ## Gets the signInIdentifierType property value. The type of sign in identifier. Possible values are: userPrincipalName, phoneNumber, proxyAddress, qrCode, onPremisesUserPrincipalName, unknownFutureValue.
            ## @return a sign_in_identifier_type
            ## 
            def sign_in_identifier_type
                return @sign_in_identifier_type
            end
            ## 
            ## Sets the signInIdentifierType property value. The type of sign in identifier. Possible values are: userPrincipalName, phoneNumber, proxyAddress, qrCode, onPremisesUserPrincipalName, unknownFutureValue.
            ## @param value Value to set for the signInIdentifierType property.
            ## @return a void
            ## 
            def sign_in_identifier_type=(value)
                @sign_in_identifier_type = value
            end
            ## 
            ## Gets the signInTokenProtectionStatus property value. Token protection creates a cryptographically secure tie between the token and the device it is issued to. This field indicates whether the signin token was bound to the device or not. The possible values are: none, bound, unbound, unknownFutureValue.
            ## @return a token_protection_status
            ## 
            def sign_in_token_protection_status
                return @sign_in_token_protection_status
            end
            ## 
            ## Sets the signInTokenProtectionStatus property value. Token protection creates a cryptographically secure tie between the token and the device it is issued to. This field indicates whether the signin token was bound to the device or not. The possible values are: none, bound, unbound, unknownFutureValue.
            ## @param value Value to set for the signInTokenProtectionStatus property.
            ## @return a void
            ## 
            def sign_in_token_protection_status=(value)
                @sign_in_token_protection_status = value
            end
            ## 
            ## Gets the status property value. The sign-in status. Includes the error code and description of the error (for a sign-in failure).  Supports $filter (eq) on errorCode property.
            ## @return a sign_in_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The sign-in status. Includes the error code and description of the error (for a sign-in failure).  Supports $filter (eq) on errorCode property.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the tokenIssuerName property value. The name of the identity provider. For example, sts.microsoft.com.  Supports $filter (eq).
            ## @return a string
            ## 
            def token_issuer_name
                return @token_issuer_name
            end
            ## 
            ## Sets the tokenIssuerName property value. The name of the identity provider. For example, sts.microsoft.com.  Supports $filter (eq).
            ## @param value Value to set for the tokenIssuerName property.
            ## @return a void
            ## 
            def token_issuer_name=(value)
                @token_issuer_name = value
            end
            ## 
            ## Gets the tokenIssuerType property value. The type of identity provider. The possible values are: AzureAD, ADFederationServices, UnknownFutureValue, AzureADBackupAuth, ADFederationServicesMFAAdapter, NPSExtension. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: AzureADBackupAuth , ADFederationServicesMFAAdapter , NPSExtension.
            ## @return a token_issuer_type
            ## 
            def token_issuer_type
                return @token_issuer_type
            end
            ## 
            ## Sets the tokenIssuerType property value. The type of identity provider. The possible values are: AzureAD, ADFederationServices, UnknownFutureValue, AzureADBackupAuth, ADFederationServicesMFAAdapter, NPSExtension. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: AzureADBackupAuth , ADFederationServicesMFAAdapter , NPSExtension.
            ## @param value Value to set for the tokenIssuerType property.
            ## @return a void
            ## 
            def token_issuer_type=(value)
                @token_issuer_type = value
            end
            ## 
            ## Gets the uniqueTokenIdentifier property value. A unique base64 encoded request identifier used to track tokens issued by Microsoft Entra ID as they're redeemed at resource providers.
            ## @return a string
            ## 
            def unique_token_identifier
                return @unique_token_identifier
            end
            ## 
            ## Sets the uniqueTokenIdentifier property value. A unique base64 encoded request identifier used to track tokens issued by Microsoft Entra ID as they're redeemed at resource providers.
            ## @param value Value to set for the uniqueTokenIdentifier property.
            ## @return a void
            ## 
            def unique_token_identifier=(value)
                @unique_token_identifier = value
            end
            ## 
            ## Gets the userAgent property value. The user agent information related to sign-in.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def user_agent
                return @user_agent
            end
            ## 
            ## Sets the userAgent property value. The user agent information related to sign-in.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the userAgent property.
            ## @return a void
            ## 
            def user_agent=(value)
                @user_agent = value
            end
            ## 
            ## Gets the userDisplayName property value. The display name of the user.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. The display name of the user.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the userDisplayName property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userId property value. The identifier of the user.  Supports $filter (eq).
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The identifier of the user.  Supports $filter (eq).
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. The UPN of the user.  Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The UPN of the user.  Supports $filter (eq, startsWith).
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userType property value. Identifies whether the user is a member or guest in the tenant. Possible values are: member, guest, unknownFutureValue.
            ## @return a sign_in_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. Identifies whether the user is a member or guest in the tenant. Possible values are: member, guest, unknownFutureValue.
            ## @param value Value to set for the userType property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
