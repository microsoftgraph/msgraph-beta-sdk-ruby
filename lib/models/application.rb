require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Application < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies settings for an application that implements a web API.
            @api
            ## 
            # The unique identifier for the application that is assigned by Azure AD. Not nullable. Read-only. Supports $filter (eq).
            @app_id
            ## 
            # The appManagementPolicy applied to this application.
            @app_management_policies
            ## 
            # The collection of roles defined for the application. With app role assignments, these roles can be assigned to users, groups, or service principals associated with other applications. Not nullable.
            @app_roles
            ## 
            # The collection of authentication behaviors set for the application. Authentication behaviors are unset by default and must be explicitly enabled (or disabled). Returned only on $select.  For more information about authentication behaviors, see Manage application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization.
            @authentication_behaviors
            ## 
            # Specifies the certification status of the application.
            @certification
            ## 
            # The connectorGroup the application is using with Azure AD Application Proxy. Nullable.
            @connector_group
            ## 
            # The date and time the application was registered. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.  Supports $filter (eq, ne, not, ge, le, in, and eq on null values) and $orderBy.
            @created_date_time
            ## 
            # Supports $filter (/$count eq 0, /$count ne 0). Read-only.
            @created_on_behalf_of
            ## 
            # The default redirect URI. If specified and there is no explicit redirect URI in the sign-in request for SAML and OIDC flows, Azure AD sends the token to this redirect URI. Azure AD also sends the token to this default URI in SAML IdP-initiated single sign-on. The value must match one of the configured redirect URIs for the application.
            @default_redirect_uri
            ## 
            # Free text field to provide a description of the application object to end users. The maximum allowed size is 1024 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            @description
            ## 
            # Specifies whether Microsoft has disabled the registered application. Possible values are: null (default value), NotDisabled, and DisabledDueToViolationOfServicesAgreement (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement).  Supports $filter (eq, ne, not).
            @disabled_by_microsoft_status
            ## 
            # The display name for the application. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            @display_name
            ## 
            # Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0).
            @extension_properties
            ## 
            # Federated identities for applications. Supports $expand and $filter (startsWith, /$count eq 0, /$count ne 0).
            @federated_identity_credentials
            ## 
            # Configures the groups claim issued in a user or OAuth 2.0 access token that the application expects. To set this attribute, use one of the following string values: None, SecurityGroup (for security groups and Azure AD roles), All (this gets all security groups, distribution groups, and Azure AD directory roles that the signed-in user is a member of).
            @group_membership_claims
            ## 
            # The homeRealmDiscoveryPolicies property
            @home_realm_discovery_policies
            ## 
            # Also known as App ID URI, this value is set when an application is used as a resource app. The identifierUris acts as the prefix for the scopes you'll reference in your API's code, and it must be globally unique. You can use the default value provided, which is in the form api://<application-client-id>, or specify a more readable URI like https://contoso.com/api. For more information on valid identifierUris patterns and best practices, see Azure AD application registration security best practices. Not nullable. Supports $filter (eq, ne, ge, le, startsWith).
            @identifier_uris
            ## 
            # Basic profile information of the application, such as it's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more information, see How to: Add Terms of service and privacy statement for registered Azure AD apps. Supports $filter (eq, ne, not, ge, le, and eq on null values).
            @info
            ## 
            # Specifies whether this application supports device authentication without a user. The default is false.
            @is_device_only_auth_supported
            ## 
            # Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is false which means the fallback application type is confidential client such as a web app. There are certain scenarios where Azure AD cannot determine the client application type. For example, the ROPC flow where the application is configured without specifying a redirect URI. In those cases Azure AD interprets the application type based on the value of this property.
            @is_fallback_public_client
            ## 
            # The collection of key credentials associated with the application. Not nullable. Supports $filter (eq, not, ge, le).
            @key_credentials
            ## 
            # The main logo for the application. Not nullable.
            @logo
            ## 
            # Notes relevant for the management of the application.
            @notes
            ## 
            # Represents the set of properties required for configuring Application Proxy for this application. Configuring these properties allows you to publish your on-premises application for secure remote access.
            @on_premises_publishing
            ## 
            # Application developers can configure optional claims in their Azure AD applications to specify the claims that are sent to their application by the Microsoft security token service. For more information, see How to: Provide optional claims to your app.
            @optional_claims
            ## 
            # Directory objects that are owners of the application. Read-only. Nullable. Supports $expand, $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1), and $select nested in $expand.
            @owners
            ## 
            # Specifies parental control settings for an application.
            @parental_control_settings
            ## 
            # The collection of password credentials associated with the application. Not nullable.
            @password_credentials
            ## 
            # Specifies settings for installed clients such as desktop or mobile devices.
            @public_client
            ## 
            # The verified publisher domain for the application. Read-only. Supports $filter (eq, ne, ge, le, startsWith).
            @publisher_domain
            ## 
            # Specifies whether this application requires Azure AD to verify the signed authentication requests.
            @request_signature_verification
            ## 
            # Specifies the resources that the application needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. No more than 50 resource services (APIs) can be configured. Beginning mid-October 2021, the total number of required permissions must not exceed 400. For more information, see Limits on requested permissions per app. Not nullable. Supports $filter (eq, not, ge, le).
            @required_resource_access
            ## 
            # The URL where the service exposes SAML metadata for federation. This property is valid only for single-tenant applications. Nullable.
            @saml_metadata_url
            ## 
            # References application or service contact information from a Service or Asset Management database. Nullable.
            @service_management_reference
            ## 
            # Specifies whether sensitive properties of a multi-tenant application should be locked for editing after the application is provisioned in a tenant. Nullable. null by default.
            @service_principal_lock_configuration
            ## 
            # Specifies the Microsoft accounts that are supported for the current application. The possible values are: AzureADMyOrg, AzureADMultipleOrgs, AzureADandPersonalMicrosoftAccount (default), and PersonalMicrosoftAccount. See more in the table. The value of this object also limits the number of permissions an app can request. For more information, see Limits on requested permissions per app. The value for this property has implications on other app object properties. As a result, if you change this property, you may need to change other properties first. For more information, see Validation differences for signInAudience.Supports $filter (eq, ne, not).
            @sign_in_audience
            ## 
            # Specifies settings for a single-page application, including sign out URLs and redirect URIs for authorization codes and access tokens.
            @spa
            ## 
            # Represents the capability for Azure Active Directory (Azure AD) identity synchronization through the Microsoft Graph API.
            @synchronization
            ## 
            # Custom strings that can be used to categorize and identify the application. Not nullable. Strings added here will also appear in the tags property of any associated service principals.Supports $filter (eq, not, ge, le, startsWith) and $search.
            @tags
            ## 
            # Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD encrypts all the tokens it emits by using the key this property points to. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.
            @token_encryption_key_id
            ## 
            # The tokenIssuancePolicies property
            @token_issuance_policies
            ## 
            # The tokenLifetimePolicies assigned to this application. Supports $expand.
            @token_lifetime_policies
            ## 
            # The unique identifier that can be assigned to an application as an alternative identifier. Immutable. Read-only.
            @unique_name
            ## 
            # Specifies the verified publisher of the application. For more information about how publisher verification helps support application security, trustworthiness, and compliance, see Publisher verification.
            @verified_publisher
            ## 
            # Specifies settings for a web application.
            @web
            ## 
            # Specifies settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store.
            @windows
            ## 
            ## Gets the api property value. Specifies settings for an application that implements a web API.
            ## @return a api_application
            ## 
            def api
                return @api
            end
            ## 
            ## Sets the api property value. Specifies settings for an application that implements a web API.
            ## @param value Value to set for the api property.
            ## @return a void
            ## 
            def api=(value)
                @api = value
            end
            ## 
            ## Gets the appId property value. The unique identifier for the application that is assigned by Azure AD. Not nullable. Read-only. Supports $filter (eq).
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The unique identifier for the application that is assigned by Azure AD. Not nullable. Read-only. Supports $filter (eq).
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appManagementPolicies property value. The appManagementPolicy applied to this application.
            ## @return a app_management_policy
            ## 
            def app_management_policies
                return @app_management_policies
            end
            ## 
            ## Sets the appManagementPolicies property value. The appManagementPolicy applied to this application.
            ## @param value Value to set for the appManagementPolicies property.
            ## @return a void
            ## 
            def app_management_policies=(value)
                @app_management_policies = value
            end
            ## 
            ## Gets the appRoles property value. The collection of roles defined for the application. With app role assignments, these roles can be assigned to users, groups, or service principals associated with other applications. Not nullable.
            ## @return a app_role
            ## 
            def app_roles
                return @app_roles
            end
            ## 
            ## Sets the appRoles property value. The collection of roles defined for the application. With app role assignments, these roles can be assigned to users, groups, or service principals associated with other applications. Not nullable.
            ## @param value Value to set for the appRoles property.
            ## @return a void
            ## 
            def app_roles=(value)
                @app_roles = value
            end
            ## 
            ## Gets the authenticationBehaviors property value. The collection of authentication behaviors set for the application. Authentication behaviors are unset by default and must be explicitly enabled (or disabled). Returned only on $select.  For more information about authentication behaviors, see Manage application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization.
            ## @return a authentication_behaviors
            ## 
            def authentication_behaviors
                return @authentication_behaviors
            end
            ## 
            ## Sets the authenticationBehaviors property value. The collection of authentication behaviors set for the application. Authentication behaviors are unset by default and must be explicitly enabled (or disabled). Returned only on $select.  For more information about authentication behaviors, see Manage application authenticationBehaviors to avoid unverified use of email claims for user identification or authorization.
            ## @param value Value to set for the authenticationBehaviors property.
            ## @return a void
            ## 
            def authentication_behaviors=(value)
                @authentication_behaviors = value
            end
            ## 
            ## Gets the certification property value. Specifies the certification status of the application.
            ## @return a certification
            ## 
            def certification
                return @certification
            end
            ## 
            ## Sets the certification property value. Specifies the certification status of the application.
            ## @param value Value to set for the certification property.
            ## @return a void
            ## 
            def certification=(value)
                @certification = value
            end
            ## 
            ## Gets the connectorGroup property value. The connectorGroup the application is using with Azure AD Application Proxy. Nullable.
            ## @return a connector_group
            ## 
            def connector_group
                return @connector_group
            end
            ## 
            ## Sets the connectorGroup property value. The connectorGroup the application is using with Azure AD Application Proxy. Nullable.
            ## @param value Value to set for the connectorGroup property.
            ## @return a void
            ## 
            def connector_group=(value)
                @connector_group = value
            end
            ## 
            ## Instantiates a new application and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.application"
            end
            ## 
            ## Gets the createdDateTime property value. The date and time the application was registered. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.  Supports $filter (eq, ne, not, ge, le, in, and eq on null values) and $orderBy.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time the application was registered. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.  Supports $filter (eq, ne, not, ge, le, in, and eq on null values) and $orderBy.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Gets the createdOnBehalfOf property value. Supports $filter (/$count eq 0, /$count ne 0). Read-only.
            ## @return a directory_object
            ## 
            def created_on_behalf_of
                return @created_on_behalf_of
            end
            ## 
            ## Sets the createdOnBehalfOf property value. Supports $filter (/$count eq 0, /$count ne 0). Read-only.
            ## @param value Value to set for the createdOnBehalfOf property.
            ## @return a void
            ## 
            def created_on_behalf_of=(value)
                @created_on_behalf_of = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a application
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Application.new
            end
            ## 
            ## Gets the defaultRedirectUri property value. The default redirect URI. If specified and there is no explicit redirect URI in the sign-in request for SAML and OIDC flows, Azure AD sends the token to this redirect URI. Azure AD also sends the token to this default URI in SAML IdP-initiated single sign-on. The value must match one of the configured redirect URIs for the application.
            ## @return a string
            ## 
            def default_redirect_uri
                return @default_redirect_uri
            end
            ## 
            ## Sets the defaultRedirectUri property value. The default redirect URI. If specified and there is no explicit redirect URI in the sign-in request for SAML and OIDC flows, Azure AD sends the token to this redirect URI. Azure AD also sends the token to this default URI in SAML IdP-initiated single sign-on. The value must match one of the configured redirect URIs for the application.
            ## @param value Value to set for the defaultRedirectUri property.
            ## @return a void
            ## 
            def default_redirect_uri=(value)
                @default_redirect_uri = value
            end
            ## 
            ## Gets the description property value. Free text field to provide a description of the application object to end users. The maximum allowed size is 1024 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Free text field to provide a description of the application object to end users. The maximum allowed size is 1024 characters. Returned by default. Supports $filter (eq, ne, not, ge, le, startsWith) and $search.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the disabledByMicrosoftStatus property value. Specifies whether Microsoft has disabled the registered application. Possible values are: null (default value), NotDisabled, and DisabledDueToViolationOfServicesAgreement (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement).  Supports $filter (eq, ne, not).
            ## @return a string
            ## 
            def disabled_by_microsoft_status
                return @disabled_by_microsoft_status
            end
            ## 
            ## Sets the disabledByMicrosoftStatus property value. Specifies whether Microsoft has disabled the registered application. Possible values are: null (default value), NotDisabled, and DisabledDueToViolationOfServicesAgreement (reasons may include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement).  Supports $filter (eq, ne, not).
            ## @param value Value to set for the disabledByMicrosoftStatus property.
            ## @return a void
            ## 
            def disabled_by_microsoft_status=(value)
                @disabled_by_microsoft_status = value
            end
            ## 
            ## Gets the displayName property value. The display name for the application. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the application. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderBy.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the extensionProperties property value. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0).
            ## @return a extension_property
            ## 
            def extension_properties
                return @extension_properties
            end
            ## 
            ## Sets the extensionProperties property value. Read-only. Nullable. Supports $expand and $filter (/$count eq 0, /$count ne 0).
            ## @param value Value to set for the extensionProperties property.
            ## @return a void
            ## 
            def extension_properties=(value)
                @extension_properties = value
            end
            ## 
            ## Gets the federatedIdentityCredentials property value. Federated identities for applications. Supports $expand and $filter (startsWith, /$count eq 0, /$count ne 0).
            ## @return a federated_identity_credential
            ## 
            def federated_identity_credentials
                return @federated_identity_credentials
            end
            ## 
            ## Sets the federatedIdentityCredentials property value. Federated identities for applications. Supports $expand and $filter (startsWith, /$count eq 0, /$count ne 0).
            ## @param value Value to set for the federatedIdentityCredentials property.
            ## @return a void
            ## 
            def federated_identity_credentials=(value)
                @federated_identity_credentials = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "api" => lambda {|n| @api = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ApiApplication.create_from_discriminator_value(pn) }) },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appManagementPolicies" => lambda {|n| @app_management_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppManagementPolicy.create_from_discriminator_value(pn) }) },
                    "appRoles" => lambda {|n| @app_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppRole.create_from_discriminator_value(pn) }) },
                    "authenticationBehaviors" => lambda {|n| @authentication_behaviors = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationBehaviors.create_from_discriminator_value(pn) }) },
                    "certification" => lambda {|n| @certification = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Certification.create_from_discriminator_value(pn) }) },
                    "connectorGroup" => lambda {|n| @connector_group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConnectorGroup.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "createdOnBehalfOf" => lambda {|n| @created_on_behalf_of = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "defaultRedirectUri" => lambda {|n| @default_redirect_uri = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "disabledByMicrosoftStatus" => lambda {|n| @disabled_by_microsoft_status = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "extensionProperties" => lambda {|n| @extension_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExtensionProperty.create_from_discriminator_value(pn) }) },
                    "federatedIdentityCredentials" => lambda {|n| @federated_identity_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::FederatedIdentityCredential.create_from_discriminator_value(pn) }) },
                    "groupMembershipClaims" => lambda {|n| @group_membership_claims = n.get_string_value() },
                    "homeRealmDiscoveryPolicies" => lambda {|n| @home_realm_discovery_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HomeRealmDiscoveryPolicy.create_from_discriminator_value(pn) }) },
                    "identifierUris" => lambda {|n| @identifier_uris = n.get_collection_of_primitive_values(String) },
                    "info" => lambda {|n| @info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InformationalUrl.create_from_discriminator_value(pn) }) },
                    "isDeviceOnlyAuthSupported" => lambda {|n| @is_device_only_auth_supported = n.get_boolean_value() },
                    "isFallbackPublicClient" => lambda {|n| @is_fallback_public_client = n.get_boolean_value() },
                    "keyCredentials" => lambda {|n| @key_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyCredential.create_from_discriminator_value(pn) }) },
                    "logo" => lambda {|n| @logo = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                    "onPremisesPublishing" => lambda {|n| @on_premises_publishing = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesPublishing.create_from_discriminator_value(pn) }) },
                    "optionalClaims" => lambda {|n| @optional_claims = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OptionalClaims.create_from_discriminator_value(pn) }) },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "parentalControlSettings" => lambda {|n| @parental_control_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ParentalControlSettings.create_from_discriminator_value(pn) }) },
                    "passwordCredentials" => lambda {|n| @password_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PasswordCredential.create_from_discriminator_value(pn) }) },
                    "publicClient" => lambda {|n| @public_client = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PublicClientApplication.create_from_discriminator_value(pn) }) },
                    "publisherDomain" => lambda {|n| @publisher_domain = n.get_string_value() },
                    "requestSignatureVerification" => lambda {|n| @request_signature_verification = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RequestSignatureVerification.create_from_discriminator_value(pn) }) },
                    "requiredResourceAccess" => lambda {|n| @required_resource_access = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RequiredResourceAccess.create_from_discriminator_value(pn) }) },
                    "samlMetadataUrl" => lambda {|n| @saml_metadata_url = n.get_string_value() },
                    "serviceManagementReference" => lambda {|n| @service_management_reference = n.get_string_value() },
                    "servicePrincipalLockConfiguration" => lambda {|n| @service_principal_lock_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ServicePrincipalLockConfiguration.create_from_discriminator_value(pn) }) },
                    "signInAudience" => lambda {|n| @sign_in_audience = n.get_string_value() },
                    "spa" => lambda {|n| @spa = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SpaApplication.create_from_discriminator_value(pn) }) },
                    "synchronization" => lambda {|n| @synchronization = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Synchronization.create_from_discriminator_value(pn) }) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "tokenEncryptionKeyId" => lambda {|n| @token_encryption_key_id = n.get_guid_value() },
                    "tokenIssuancePolicies" => lambda {|n| @token_issuance_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TokenIssuancePolicy.create_from_discriminator_value(pn) }) },
                    "tokenLifetimePolicies" => lambda {|n| @token_lifetime_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TokenLifetimePolicy.create_from_discriminator_value(pn) }) },
                    "uniqueName" => lambda {|n| @unique_name = n.get_string_value() },
                    "verifiedPublisher" => lambda {|n| @verified_publisher = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VerifiedPublisher.create_from_discriminator_value(pn) }) },
                    "web" => lambda {|n| @web = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WebApplication.create_from_discriminator_value(pn) }) },
                    "windows" => lambda {|n| @windows = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsApplication.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupMembershipClaims property value. Configures the groups claim issued in a user or OAuth 2.0 access token that the application expects. To set this attribute, use one of the following string values: None, SecurityGroup (for security groups and Azure AD roles), All (this gets all security groups, distribution groups, and Azure AD directory roles that the signed-in user is a member of).
            ## @return a string
            ## 
            def group_membership_claims
                return @group_membership_claims
            end
            ## 
            ## Sets the groupMembershipClaims property value. Configures the groups claim issued in a user or OAuth 2.0 access token that the application expects. To set this attribute, use one of the following string values: None, SecurityGroup (for security groups and Azure AD roles), All (this gets all security groups, distribution groups, and Azure AD directory roles that the signed-in user is a member of).
            ## @param value Value to set for the groupMembershipClaims property.
            ## @return a void
            ## 
            def group_membership_claims=(value)
                @group_membership_claims = value
            end
            ## 
            ## Gets the homeRealmDiscoveryPolicies property value. The homeRealmDiscoveryPolicies property
            ## @return a home_realm_discovery_policy
            ## 
            def home_realm_discovery_policies
                return @home_realm_discovery_policies
            end
            ## 
            ## Sets the homeRealmDiscoveryPolicies property value. The homeRealmDiscoveryPolicies property
            ## @param value Value to set for the homeRealmDiscoveryPolicies property.
            ## @return a void
            ## 
            def home_realm_discovery_policies=(value)
                @home_realm_discovery_policies = value
            end
            ## 
            ## Gets the identifierUris property value. Also known as App ID URI, this value is set when an application is used as a resource app. The identifierUris acts as the prefix for the scopes you'll reference in your API's code, and it must be globally unique. You can use the default value provided, which is in the form api://<application-client-id>, or specify a more readable URI like https://contoso.com/api. For more information on valid identifierUris patterns and best practices, see Azure AD application registration security best practices. Not nullable. Supports $filter (eq, ne, ge, le, startsWith).
            ## @return a string
            ## 
            def identifier_uris
                return @identifier_uris
            end
            ## 
            ## Sets the identifierUris property value. Also known as App ID URI, this value is set when an application is used as a resource app. The identifierUris acts as the prefix for the scopes you'll reference in your API's code, and it must be globally unique. You can use the default value provided, which is in the form api://<application-client-id>, or specify a more readable URI like https://contoso.com/api. For more information on valid identifierUris patterns and best practices, see Azure AD application registration security best practices. Not nullable. Supports $filter (eq, ne, ge, le, startsWith).
            ## @param value Value to set for the identifierUris property.
            ## @return a void
            ## 
            def identifier_uris=(value)
                @identifier_uris = value
            end
            ## 
            ## Gets the info property value. Basic profile information of the application, such as it's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more information, see How to: Add Terms of service and privacy statement for registered Azure AD apps. Supports $filter (eq, ne, not, ge, le, and eq on null values).
            ## @return a informational_url
            ## 
            def info
                return @info
            end
            ## 
            ## Sets the info property value. Basic profile information of the application, such as it's marketing, support, terms of service, and privacy statement URLs. The terms of service and privacy statement are surfaced to users through the user consent experience. For more information, see How to: Add Terms of service and privacy statement for registered Azure AD apps. Supports $filter (eq, ne, not, ge, le, and eq on null values).
            ## @param value Value to set for the info property.
            ## @return a void
            ## 
            def info=(value)
                @info = value
            end
            ## 
            ## Gets the isDeviceOnlyAuthSupported property value. Specifies whether this application supports device authentication without a user. The default is false.
            ## @return a boolean
            ## 
            def is_device_only_auth_supported
                return @is_device_only_auth_supported
            end
            ## 
            ## Sets the isDeviceOnlyAuthSupported property value. Specifies whether this application supports device authentication without a user. The default is false.
            ## @param value Value to set for the isDeviceOnlyAuthSupported property.
            ## @return a void
            ## 
            def is_device_only_auth_supported=(value)
                @is_device_only_auth_supported = value
            end
            ## 
            ## Gets the isFallbackPublicClient property value. Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is false which means the fallback application type is confidential client such as a web app. There are certain scenarios where Azure AD cannot determine the client application type. For example, the ROPC flow where the application is configured without specifying a redirect URI. In those cases Azure AD interprets the application type based on the value of this property.
            ## @return a boolean
            ## 
            def is_fallback_public_client
                return @is_fallback_public_client
            end
            ## 
            ## Sets the isFallbackPublicClient property value. Specifies the fallback application type as public client, such as an installed application running on a mobile device. The default value is false which means the fallback application type is confidential client such as a web app. There are certain scenarios where Azure AD cannot determine the client application type. For example, the ROPC flow where the application is configured without specifying a redirect URI. In those cases Azure AD interprets the application type based on the value of this property.
            ## @param value Value to set for the isFallbackPublicClient property.
            ## @return a void
            ## 
            def is_fallback_public_client=(value)
                @is_fallback_public_client = value
            end
            ## 
            ## Gets the keyCredentials property value. The collection of key credentials associated with the application. Not nullable. Supports $filter (eq, not, ge, le).
            ## @return a key_credential
            ## 
            def key_credentials
                return @key_credentials
            end
            ## 
            ## Sets the keyCredentials property value. The collection of key credentials associated with the application. Not nullable. Supports $filter (eq, not, ge, le).
            ## @param value Value to set for the keyCredentials property.
            ## @return a void
            ## 
            def key_credentials=(value)
                @key_credentials = value
            end
            ## 
            ## Gets the logo property value. The main logo for the application. Not nullable.
            ## @return a base64url
            ## 
            def logo
                return @logo
            end
            ## 
            ## Sets the logo property value. The main logo for the application. Not nullable.
            ## @param value Value to set for the logo property.
            ## @return a void
            ## 
            def logo=(value)
                @logo = value
            end
            ## 
            ## Gets the notes property value. Notes relevant for the management of the application.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Notes relevant for the management of the application.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the onPremisesPublishing property value. Represents the set of properties required for configuring Application Proxy for this application. Configuring these properties allows you to publish your on-premises application for secure remote access.
            ## @return a on_premises_publishing
            ## 
            def on_premises_publishing
                return @on_premises_publishing
            end
            ## 
            ## Sets the onPremisesPublishing property value. Represents the set of properties required for configuring Application Proxy for this application. Configuring these properties allows you to publish your on-premises application for secure remote access.
            ## @param value Value to set for the onPremisesPublishing property.
            ## @return a void
            ## 
            def on_premises_publishing=(value)
                @on_premises_publishing = value
            end
            ## 
            ## Gets the optionalClaims property value. Application developers can configure optional claims in their Azure AD applications to specify the claims that are sent to their application by the Microsoft security token service. For more information, see How to: Provide optional claims to your app.
            ## @return a optional_claims
            ## 
            def optional_claims
                return @optional_claims
            end
            ## 
            ## Sets the optionalClaims property value. Application developers can configure optional claims in their Azure AD applications to specify the claims that are sent to their application by the Microsoft security token service. For more information, see How to: Provide optional claims to your app.
            ## @param value Value to set for the optionalClaims property.
            ## @return a void
            ## 
            def optional_claims=(value)
                @optional_claims = value
            end
            ## 
            ## Gets the owners property value. Directory objects that are owners of the application. Read-only. Nullable. Supports $expand, $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1), and $select nested in $expand.
            ## @return a directory_object
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. Directory objects that are owners of the application. Read-only. Nullable. Supports $expand, $filter (/$count eq 0, /$count ne 0, /$count eq 1, /$count ne 1), and $select nested in $expand.
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the parentalControlSettings property value. Specifies parental control settings for an application.
            ## @return a parental_control_settings
            ## 
            def parental_control_settings
                return @parental_control_settings
            end
            ## 
            ## Sets the parentalControlSettings property value. Specifies parental control settings for an application.
            ## @param value Value to set for the parentalControlSettings property.
            ## @return a void
            ## 
            def parental_control_settings=(value)
                @parental_control_settings = value
            end
            ## 
            ## Gets the passwordCredentials property value. The collection of password credentials associated with the application. Not nullable.
            ## @return a password_credential
            ## 
            def password_credentials
                return @password_credentials
            end
            ## 
            ## Sets the passwordCredentials property value. The collection of password credentials associated with the application. Not nullable.
            ## @param value Value to set for the passwordCredentials property.
            ## @return a void
            ## 
            def password_credentials=(value)
                @password_credentials = value
            end
            ## 
            ## Gets the publicClient property value. Specifies settings for installed clients such as desktop or mobile devices.
            ## @return a public_client_application
            ## 
            def public_client
                return @public_client
            end
            ## 
            ## Sets the publicClient property value. Specifies settings for installed clients such as desktop or mobile devices.
            ## @param value Value to set for the publicClient property.
            ## @return a void
            ## 
            def public_client=(value)
                @public_client = value
            end
            ## 
            ## Gets the publisherDomain property value. The verified publisher domain for the application. Read-only. Supports $filter (eq, ne, ge, le, startsWith).
            ## @return a string
            ## 
            def publisher_domain
                return @publisher_domain
            end
            ## 
            ## Sets the publisherDomain property value. The verified publisher domain for the application. Read-only. Supports $filter (eq, ne, ge, le, startsWith).
            ## @param value Value to set for the publisherDomain property.
            ## @return a void
            ## 
            def publisher_domain=(value)
                @publisher_domain = value
            end
            ## 
            ## Gets the requestSignatureVerification property value. Specifies whether this application requires Azure AD to verify the signed authentication requests.
            ## @return a request_signature_verification
            ## 
            def request_signature_verification
                return @request_signature_verification
            end
            ## 
            ## Sets the requestSignatureVerification property value. Specifies whether this application requires Azure AD to verify the signed authentication requests.
            ## @param value Value to set for the requestSignatureVerification property.
            ## @return a void
            ## 
            def request_signature_verification=(value)
                @request_signature_verification = value
            end
            ## 
            ## Gets the requiredResourceAccess property value. Specifies the resources that the application needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. No more than 50 resource services (APIs) can be configured. Beginning mid-October 2021, the total number of required permissions must not exceed 400. For more information, see Limits on requested permissions per app. Not nullable. Supports $filter (eq, not, ge, le).
            ## @return a required_resource_access
            ## 
            def required_resource_access
                return @required_resource_access
            end
            ## 
            ## Sets the requiredResourceAccess property value. Specifies the resources that the application needs to access. This property also specifies the set of delegated permissions and application roles that it needs for each of those resources. This configuration of access to the required resources drives the consent experience. No more than 50 resource services (APIs) can be configured. Beginning mid-October 2021, the total number of required permissions must not exceed 400. For more information, see Limits on requested permissions per app. Not nullable. Supports $filter (eq, not, ge, le).
            ## @param value Value to set for the requiredResourceAccess property.
            ## @return a void
            ## 
            def required_resource_access=(value)
                @required_resource_access = value
            end
            ## 
            ## Gets the samlMetadataUrl property value. The URL where the service exposes SAML metadata for federation. This property is valid only for single-tenant applications. Nullable.
            ## @return a string
            ## 
            def saml_metadata_url
                return @saml_metadata_url
            end
            ## 
            ## Sets the samlMetadataUrl property value. The URL where the service exposes SAML metadata for federation. This property is valid only for single-tenant applications. Nullable.
            ## @param value Value to set for the samlMetadataUrl property.
            ## @return a void
            ## 
            def saml_metadata_url=(value)
                @saml_metadata_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("api", @api)
                writer.write_string_value("appId", @app_id)
                writer.write_collection_of_object_values("appManagementPolicies", @app_management_policies)
                writer.write_collection_of_object_values("appRoles", @app_roles)
                writer.write_object_value("authenticationBehaviors", @authentication_behaviors)
                writer.write_object_value("certification", @certification)
                writer.write_object_value("connectorGroup", @connector_group)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("createdOnBehalfOf", @created_on_behalf_of)
                writer.write_string_value("defaultRedirectUri", @default_redirect_uri)
                writer.write_string_value("description", @description)
                writer.write_string_value("disabledByMicrosoftStatus", @disabled_by_microsoft_status)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("extensionProperties", @extension_properties)
                writer.write_collection_of_object_values("federatedIdentityCredentials", @federated_identity_credentials)
                writer.write_string_value("groupMembershipClaims", @group_membership_claims)
                writer.write_collection_of_object_values("homeRealmDiscoveryPolicies", @home_realm_discovery_policies)
                writer.write_collection_of_primitive_values("identifierUris", @identifier_uris)
                writer.write_object_value("info", @info)
                writer.write_boolean_value("isDeviceOnlyAuthSupported", @is_device_only_auth_supported)
                writer.write_boolean_value("isFallbackPublicClient", @is_fallback_public_client)
                writer.write_collection_of_object_values("keyCredentials", @key_credentials)
                writer.write_object_value("logo", @logo)
                writer.write_string_value("notes", @notes)
                writer.write_object_value("onPremisesPublishing", @on_premises_publishing)
                writer.write_object_value("optionalClaims", @optional_claims)
                writer.write_collection_of_object_values("owners", @owners)
                writer.write_object_value("parentalControlSettings", @parental_control_settings)
                writer.write_collection_of_object_values("passwordCredentials", @password_credentials)
                writer.write_object_value("publicClient", @public_client)
                writer.write_string_value("publisherDomain", @publisher_domain)
                writer.write_object_value("requestSignatureVerification", @request_signature_verification)
                writer.write_collection_of_object_values("requiredResourceAccess", @required_resource_access)
                writer.write_string_value("samlMetadataUrl", @saml_metadata_url)
                writer.write_string_value("serviceManagementReference", @service_management_reference)
                writer.write_object_value("servicePrincipalLockConfiguration", @service_principal_lock_configuration)
                writer.write_string_value("signInAudience", @sign_in_audience)
                writer.write_object_value("spa", @spa)
                writer.write_object_value("synchronization", @synchronization)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_guid_value("tokenEncryptionKeyId", @token_encryption_key_id)
                writer.write_collection_of_object_values("tokenIssuancePolicies", @token_issuance_policies)
                writer.write_collection_of_object_values("tokenLifetimePolicies", @token_lifetime_policies)
                writer.write_string_value("uniqueName", @unique_name)
                writer.write_object_value("verifiedPublisher", @verified_publisher)
                writer.write_object_value("web", @web)
                writer.write_object_value("windows", @windows)
            end
            ## 
            ## Gets the serviceManagementReference property value. References application or service contact information from a Service or Asset Management database. Nullable.
            ## @return a string
            ## 
            def service_management_reference
                return @service_management_reference
            end
            ## 
            ## Sets the serviceManagementReference property value. References application or service contact information from a Service or Asset Management database. Nullable.
            ## @param value Value to set for the serviceManagementReference property.
            ## @return a void
            ## 
            def service_management_reference=(value)
                @service_management_reference = value
            end
            ## 
            ## Gets the servicePrincipalLockConfiguration property value. Specifies whether sensitive properties of a multi-tenant application should be locked for editing after the application is provisioned in a tenant. Nullable. null by default.
            ## @return a service_principal_lock_configuration
            ## 
            def service_principal_lock_configuration
                return @service_principal_lock_configuration
            end
            ## 
            ## Sets the servicePrincipalLockConfiguration property value. Specifies whether sensitive properties of a multi-tenant application should be locked for editing after the application is provisioned in a tenant. Nullable. null by default.
            ## @param value Value to set for the servicePrincipalLockConfiguration property.
            ## @return a void
            ## 
            def service_principal_lock_configuration=(value)
                @service_principal_lock_configuration = value
            end
            ## 
            ## Gets the signInAudience property value. Specifies the Microsoft accounts that are supported for the current application. The possible values are: AzureADMyOrg, AzureADMultipleOrgs, AzureADandPersonalMicrosoftAccount (default), and PersonalMicrosoftAccount. See more in the table. The value of this object also limits the number of permissions an app can request. For more information, see Limits on requested permissions per app. The value for this property has implications on other app object properties. As a result, if you change this property, you may need to change other properties first. For more information, see Validation differences for signInAudience.Supports $filter (eq, ne, not).
            ## @return a string
            ## 
            def sign_in_audience
                return @sign_in_audience
            end
            ## 
            ## Sets the signInAudience property value. Specifies the Microsoft accounts that are supported for the current application. The possible values are: AzureADMyOrg, AzureADMultipleOrgs, AzureADandPersonalMicrosoftAccount (default), and PersonalMicrosoftAccount. See more in the table. The value of this object also limits the number of permissions an app can request. For more information, see Limits on requested permissions per app. The value for this property has implications on other app object properties. As a result, if you change this property, you may need to change other properties first. For more information, see Validation differences for signInAudience.Supports $filter (eq, ne, not).
            ## @param value Value to set for the signInAudience property.
            ## @return a void
            ## 
            def sign_in_audience=(value)
                @sign_in_audience = value
            end
            ## 
            ## Gets the spa property value. Specifies settings for a single-page application, including sign out URLs and redirect URIs for authorization codes and access tokens.
            ## @return a spa_application
            ## 
            def spa
                return @spa
            end
            ## 
            ## Sets the spa property value. Specifies settings for a single-page application, including sign out URLs and redirect URIs for authorization codes and access tokens.
            ## @param value Value to set for the spa property.
            ## @return a void
            ## 
            def spa=(value)
                @spa = value
            end
            ## 
            ## Gets the synchronization property value. Represents the capability for Azure Active Directory (Azure AD) identity synchronization through the Microsoft Graph API.
            ## @return a synchronization
            ## 
            def synchronization
                return @synchronization
            end
            ## 
            ## Sets the synchronization property value. Represents the capability for Azure Active Directory (Azure AD) identity synchronization through the Microsoft Graph API.
            ## @param value Value to set for the synchronization property.
            ## @return a void
            ## 
            def synchronization=(value)
                @synchronization = value
            end
            ## 
            ## Gets the tags property value. Custom strings that can be used to categorize and identify the application. Not nullable. Strings added here will also appear in the tags property of any associated service principals.Supports $filter (eq, not, ge, le, startsWith) and $search.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. Custom strings that can be used to categorize and identify the application. Not nullable. Strings added here will also appear in the tags property of any associated service principals.Supports $filter (eq, not, ge, le, startsWith) and $search.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the tokenEncryptionKeyId property value. Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD encrypts all the tokens it emits by using the key this property points to. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.
            ## @return a guid
            ## 
            def token_encryption_key_id
                return @token_encryption_key_id
            end
            ## 
            ## Sets the tokenEncryptionKeyId property value. Specifies the keyId of a public key from the keyCredentials collection. When configured, Azure AD encrypts all the tokens it emits by using the key this property points to. The application code that receives the encrypted token must use the matching private key to decrypt the token before it can be used for the signed-in user.
            ## @param value Value to set for the tokenEncryptionKeyId property.
            ## @return a void
            ## 
            def token_encryption_key_id=(value)
                @token_encryption_key_id = value
            end
            ## 
            ## Gets the tokenIssuancePolicies property value. The tokenIssuancePolicies property
            ## @return a token_issuance_policy
            ## 
            def token_issuance_policies
                return @token_issuance_policies
            end
            ## 
            ## Sets the tokenIssuancePolicies property value. The tokenIssuancePolicies property
            ## @param value Value to set for the tokenIssuancePolicies property.
            ## @return a void
            ## 
            def token_issuance_policies=(value)
                @token_issuance_policies = value
            end
            ## 
            ## Gets the tokenLifetimePolicies property value. The tokenLifetimePolicies assigned to this application. Supports $expand.
            ## @return a token_lifetime_policy
            ## 
            def token_lifetime_policies
                return @token_lifetime_policies
            end
            ## 
            ## Sets the tokenLifetimePolicies property value. The tokenLifetimePolicies assigned to this application. Supports $expand.
            ## @param value Value to set for the tokenLifetimePolicies property.
            ## @return a void
            ## 
            def token_lifetime_policies=(value)
                @token_lifetime_policies = value
            end
            ## 
            ## Gets the uniqueName property value. The unique identifier that can be assigned to an application as an alternative identifier. Immutable. Read-only.
            ## @return a string
            ## 
            def unique_name
                return @unique_name
            end
            ## 
            ## Sets the uniqueName property value. The unique identifier that can be assigned to an application as an alternative identifier. Immutable. Read-only.
            ## @param value Value to set for the uniqueName property.
            ## @return a void
            ## 
            def unique_name=(value)
                @unique_name = value
            end
            ## 
            ## Gets the verifiedPublisher property value. Specifies the verified publisher of the application. For more information about how publisher verification helps support application security, trustworthiness, and compliance, see Publisher verification.
            ## @return a verified_publisher
            ## 
            def verified_publisher
                return @verified_publisher
            end
            ## 
            ## Sets the verifiedPublisher property value. Specifies the verified publisher of the application. For more information about how publisher verification helps support application security, trustworthiness, and compliance, see Publisher verification.
            ## @param value Value to set for the verifiedPublisher property.
            ## @return a void
            ## 
            def verified_publisher=(value)
                @verified_publisher = value
            end
            ## 
            ## Gets the web property value. Specifies settings for a web application.
            ## @return a web_application
            ## 
            def web
                return @web
            end
            ## 
            ## Sets the web property value. Specifies settings for a web application.
            ## @param value Value to set for the web property.
            ## @return a void
            ## 
            def web=(value)
                @web = value
            end
            ## 
            ## Gets the windows property value. Specifies settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store.
            ## @return a windows_application
            ## 
            def windows
                return @windows
            end
            ## 
            ## Sets the windows property value. Specifies settings for apps running Microsoft Windows and published in the Microsoft Store or Xbox games store.
            ## @param value Value to set for the windows property.
            ## @return a void
            ## 
            def windows=(value)
                @windows = value
            end
        end
    end
end
