require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PolicyRoot
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # The policy that contains directory-level access review settings.
        @access_review_policy
        ## 
        # The policy that controls the idle time out for web sessions for applications.
        @activity_based_timeout_policies
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The policy by which consent requests are created and managed for the entire tenant.
        @admin_consent_request_policy
        ## 
        # The policies that enforce app management restrictions for specific applications and service principals, overriding the defaultAppManagementPolicy.
        @app_management_policies
        ## 
        # The policy configuration of the self-service sign-up experience of external users.
        @authentication_flows_policy
        ## 
        # The authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).
        @authentication_methods_policy
        ## 
        # The authentication method combinations that are to be used in scenarios defined by Azure AD Conditional Access.
        @authentication_strength_policies
        ## 
        # The policy that controls Azure AD authorization settings.
        @authorization_policy
        ## 
        # The Azure AD B2C policies that define how end users register via local accounts.
        @b2c_authentication_methods_policy
        ## 
        # The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.
        @claims_mapping_policies
        ## 
        # The custom rules that define an access scenario.
        @conditional_access_policies
        ## 
        # The custom rules that define an access scenario when interacting with external Azure AD tenants.
        @cross_tenant_access_policy
        ## 
        # The tenant-wide policy that enforces app management restrictions for all applications and service principals.
        @default_app_management_policy
        ## 
        # The deviceRegistrationPolicy property
        @device_registration_policy
        ## 
        # The directoryRoleAccessReviewPolicy property
        @directory_role_access_review_policy
        ## 
        # Represents the tenant-wide policy that controls whether external users can leave an Azure AD tenant via self-service controls.
        @external_identities_policy
        ## 
        # The feature rollout policy associated with a directory object.
        @feature_rollout_policies
        ## 
        # The policy to control Azure AD authentication behavior for federated users.
        @home_realm_discovery_policies
        ## 
        # The policy that represents the security defaults that protect against common attacks.
        @identity_security_defaults_enforcement_policy
        ## 
        # The policy that defines auto-enrollment configuration for a mobility management (MDM or MAM) application.
        @mobile_app_management_policies
        ## 
        # The mobileDeviceManagementPolicies property
        @mobile_device_management_policies
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The policy that specifies the conditions under which consent can be granted.
        @permission_grant_policies
        ## 
        # Represents the role management policies.
        @role_management_policies
        ## 
        # Represents the role management policy assignments.
        @role_management_policy_assignments
        ## 
        # The servicePrincipalCreationPolicies property
        @service_principal_creation_policies
        ## 
        # The policy that specifies the characteristics of SAML tokens issued by Azure AD.
        @token_issuance_policies
        ## 
        # The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Azure AD.
        @token_lifetime_policies
        ## 
        ## Gets the accessReviewPolicy property value. The policy that contains directory-level access review settings.
        ## @return a access_review_policy
        ## 
        def access_review_policy
            return @access_review_policy
        end
        ## 
        ## Sets the accessReviewPolicy property value. The policy that contains directory-level access review settings.
        ## @param value Value to set for the access_review_policy property.
        ## @return a void
        ## 
        def access_review_policy=(value)
            @access_review_policy = value
        end
        ## 
        ## Gets the activityBasedTimeoutPolicies property value. The policy that controls the idle time out for web sessions for applications.
        ## @return a activity_based_timeout_policy
        ## 
        def activity_based_timeout_policies
            return @activity_based_timeout_policies
        end
        ## 
        ## Sets the activityBasedTimeoutPolicies property value. The policy that controls the idle time out for web sessions for applications.
        ## @param value Value to set for the activity_based_timeout_policies property.
        ## @return a void
        ## 
        def activity_based_timeout_policies=(value)
            @activity_based_timeout_policies = value
        end
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the adminConsentRequestPolicy property value. The policy by which consent requests are created and managed for the entire tenant.
        ## @return a admin_consent_request_policy
        ## 
        def admin_consent_request_policy
            return @admin_consent_request_policy
        end
        ## 
        ## Sets the adminConsentRequestPolicy property value. The policy by which consent requests are created and managed for the entire tenant.
        ## @param value Value to set for the admin_consent_request_policy property.
        ## @return a void
        ## 
        def admin_consent_request_policy=(value)
            @admin_consent_request_policy = value
        end
        ## 
        ## Gets the appManagementPolicies property value. The policies that enforce app management restrictions for specific applications and service principals, overriding the defaultAppManagementPolicy.
        ## @return a app_management_policy
        ## 
        def app_management_policies
            return @app_management_policies
        end
        ## 
        ## Sets the appManagementPolicies property value. The policies that enforce app management restrictions for specific applications and service principals, overriding the defaultAppManagementPolicy.
        ## @param value Value to set for the app_management_policies property.
        ## @return a void
        ## 
        def app_management_policies=(value)
            @app_management_policies = value
        end
        ## 
        ## Gets the authenticationFlowsPolicy property value. The policy configuration of the self-service sign-up experience of external users.
        ## @return a authentication_flows_policy
        ## 
        def authentication_flows_policy
            return @authentication_flows_policy
        end
        ## 
        ## Sets the authenticationFlowsPolicy property value. The policy configuration of the self-service sign-up experience of external users.
        ## @param value Value to set for the authentication_flows_policy property.
        ## @return a void
        ## 
        def authentication_flows_policy=(value)
            @authentication_flows_policy = value
        end
        ## 
        ## Gets the authenticationMethodsPolicy property value. The authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).
        ## @return a authentication_methods_policy
        ## 
        def authentication_methods_policy
            return @authentication_methods_policy
        end
        ## 
        ## Sets the authenticationMethodsPolicy property value. The authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure Active Directory (Azure AD).
        ## @param value Value to set for the authentication_methods_policy property.
        ## @return a void
        ## 
        def authentication_methods_policy=(value)
            @authentication_methods_policy = value
        end
        ## 
        ## Gets the authenticationStrengthPolicies property value. The authentication method combinations that are to be used in scenarios defined by Azure AD Conditional Access.
        ## @return a authentication_strength_policy
        ## 
        def authentication_strength_policies
            return @authentication_strength_policies
        end
        ## 
        ## Sets the authenticationStrengthPolicies property value. The authentication method combinations that are to be used in scenarios defined by Azure AD Conditional Access.
        ## @param value Value to set for the authentication_strength_policies property.
        ## @return a void
        ## 
        def authentication_strength_policies=(value)
            @authentication_strength_policies = value
        end
        ## 
        ## Gets the authorizationPolicy property value. The policy that controls Azure AD authorization settings.
        ## @return a authorization_policy
        ## 
        def authorization_policy
            return @authorization_policy
        end
        ## 
        ## Sets the authorizationPolicy property value. The policy that controls Azure AD authorization settings.
        ## @param value Value to set for the authorization_policy property.
        ## @return a void
        ## 
        def authorization_policy=(value)
            @authorization_policy = value
        end
        ## 
        ## Gets the b2cAuthenticationMethodsPolicy property value. The Azure AD B2C policies that define how end users register via local accounts.
        ## @return a b2c_authentication_methods_policy
        ## 
        def b2c_authentication_methods_policy
            return @b2c_authentication_methods_policy
        end
        ## 
        ## Sets the b2cAuthenticationMethodsPolicy property value. The Azure AD B2C policies that define how end users register via local accounts.
        ## @param value Value to set for the b2c_authentication_methods_policy property.
        ## @return a void
        ## 
        def b2c_authentication_methods_policy=(value)
            @b2c_authentication_methods_policy = value
        end
        ## 
        ## Gets the claimsMappingPolicies property value. The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.
        ## @return a claims_mapping_policy
        ## 
        def claims_mapping_policies
            return @claims_mapping_policies
        end
        ## 
        ## Sets the claimsMappingPolicies property value. The claim-mapping policies for WS-Fed, SAML, OAuth 2.0, and OpenID Connect protocols, for tokens issued to a specific application.
        ## @param value Value to set for the claims_mapping_policies property.
        ## @return a void
        ## 
        def claims_mapping_policies=(value)
            @claims_mapping_policies = value
        end
        ## 
        ## Gets the conditionalAccessPolicies property value. The custom rules that define an access scenario.
        ## @return a conditional_access_policy
        ## 
        def conditional_access_policies
            return @conditional_access_policies
        end
        ## 
        ## Sets the conditionalAccessPolicies property value. The custom rules that define an access scenario.
        ## @param value Value to set for the conditional_access_policies property.
        ## @return a void
        ## 
        def conditional_access_policies=(value)
            @conditional_access_policies = value
        end
        ## 
        ## Instantiates a new PolicyRoot and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a policy_root
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PolicyRoot.new
        end
        ## 
        ## Gets the crossTenantAccessPolicy property value. The custom rules that define an access scenario when interacting with external Azure AD tenants.
        ## @return a cross_tenant_access_policy
        ## 
        def cross_tenant_access_policy
            return @cross_tenant_access_policy
        end
        ## 
        ## Sets the crossTenantAccessPolicy property value. The custom rules that define an access scenario when interacting with external Azure AD tenants.
        ## @param value Value to set for the cross_tenant_access_policy property.
        ## @return a void
        ## 
        def cross_tenant_access_policy=(value)
            @cross_tenant_access_policy = value
        end
        ## 
        ## Gets the defaultAppManagementPolicy property value. The tenant-wide policy that enforces app management restrictions for all applications and service principals.
        ## @return a tenant_app_management_policy
        ## 
        def default_app_management_policy
            return @default_app_management_policy
        end
        ## 
        ## Sets the defaultAppManagementPolicy property value. The tenant-wide policy that enforces app management restrictions for all applications and service principals.
        ## @param value Value to set for the default_app_management_policy property.
        ## @return a void
        ## 
        def default_app_management_policy=(value)
            @default_app_management_policy = value
        end
        ## 
        ## Gets the deviceRegistrationPolicy property value. The deviceRegistrationPolicy property
        ## @return a device_registration_policy
        ## 
        def device_registration_policy
            return @device_registration_policy
        end
        ## 
        ## Sets the deviceRegistrationPolicy property value. The deviceRegistrationPolicy property
        ## @param value Value to set for the device_registration_policy property.
        ## @return a void
        ## 
        def device_registration_policy=(value)
            @device_registration_policy = value
        end
        ## 
        ## Gets the directoryRoleAccessReviewPolicy property value. The directoryRoleAccessReviewPolicy property
        ## @return a directory_role_access_review_policy
        ## 
        def directory_role_access_review_policy
            return @directory_role_access_review_policy
        end
        ## 
        ## Sets the directoryRoleAccessReviewPolicy property value. The directoryRoleAccessReviewPolicy property
        ## @param value Value to set for the directory_role_access_review_policy property.
        ## @return a void
        ## 
        def directory_role_access_review_policy=(value)
            @directory_role_access_review_policy = value
        end
        ## 
        ## Gets the externalIdentitiesPolicy property value. Represents the tenant-wide policy that controls whether external users can leave an Azure AD tenant via self-service controls.
        ## @return a external_identities_policy
        ## 
        def external_identities_policy
            return @external_identities_policy
        end
        ## 
        ## Sets the externalIdentitiesPolicy property value. Represents the tenant-wide policy that controls whether external users can leave an Azure AD tenant via self-service controls.
        ## @param value Value to set for the external_identities_policy property.
        ## @return a void
        ## 
        def external_identities_policy=(value)
            @external_identities_policy = value
        end
        ## 
        ## Gets the featureRolloutPolicies property value. The feature rollout policy associated with a directory object.
        ## @return a feature_rollout_policy
        ## 
        def feature_rollout_policies
            return @feature_rollout_policies
        end
        ## 
        ## Sets the featureRolloutPolicies property value. The feature rollout policy associated with a directory object.
        ## @param value Value to set for the feature_rollout_policies property.
        ## @return a void
        ## 
        def feature_rollout_policies=(value)
            @feature_rollout_policies = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "accessReviewPolicy" => lambda {|n| @access_review_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewPolicy.create_from_discriminator_value(pn) }) },
                "activityBasedTimeoutPolicies" => lambda {|n| @activity_based_timeout_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActivityBasedTimeoutPolicy.create_from_discriminator_value(pn) }) },
                "adminConsentRequestPolicy" => lambda {|n| @admin_consent_request_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminConsentRequestPolicy.create_from_discriminator_value(pn) }) },
                "appManagementPolicies" => lambda {|n| @app_management_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppManagementPolicy.create_from_discriminator_value(pn) }) },
                "authenticationFlowsPolicy" => lambda {|n| @authentication_flows_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationFlowsPolicy.create_from_discriminator_value(pn) }) },
                "authenticationMethodsPolicy" => lambda {|n| @authentication_methods_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodsPolicy.create_from_discriminator_value(pn) }) },
                "authenticationStrengthPolicies" => lambda {|n| @authentication_strength_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationStrengthPolicy.create_from_discriminator_value(pn) }) },
                "authorizationPolicy" => lambda {|n| @authorization_policy = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationPolicy.create_from_discriminator_value(pn) }) },
                "b2cAuthenticationMethodsPolicy" => lambda {|n| @b2c_authentication_methods_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::B2cAuthenticationMethodsPolicy.create_from_discriminator_value(pn) }) },
                "claimsMappingPolicies" => lambda {|n| @claims_mapping_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ClaimsMappingPolicy.create_from_discriminator_value(pn) }) },
                "conditionalAccessPolicies" => lambda {|n| @conditional_access_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessPolicy.create_from_discriminator_value(pn) }) },
                "crossTenantAccessPolicy" => lambda {|n| @cross_tenant_access_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CrossTenantAccessPolicy.create_from_discriminator_value(pn) }) },
                "defaultAppManagementPolicy" => lambda {|n| @default_app_management_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TenantAppManagementPolicy.create_from_discriminator_value(pn) }) },
                "deviceRegistrationPolicy" => lambda {|n| @device_registration_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceRegistrationPolicy.create_from_discriminator_value(pn) }) },
                "directoryRoleAccessReviewPolicy" => lambda {|n| @directory_role_access_review_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryRoleAccessReviewPolicy.create_from_discriminator_value(pn) }) },
                "externalIdentitiesPolicy" => lambda {|n| @external_identities_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ExternalIdentitiesPolicy.create_from_discriminator_value(pn) }) },
                "featureRolloutPolicies" => lambda {|n| @feature_rollout_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::FeatureRolloutPolicy.create_from_discriminator_value(pn) }) },
                "homeRealmDiscoveryPolicies" => lambda {|n| @home_realm_discovery_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HomeRealmDiscoveryPolicy.create_from_discriminator_value(pn) }) },
                "identitySecurityDefaultsEnforcementPolicy" => lambda {|n| @identity_security_defaults_enforcement_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySecurityDefaultsEnforcementPolicy.create_from_discriminator_value(pn) }) },
                "mobileAppManagementPolicies" => lambda {|n| @mobile_app_management_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobilityManagementPolicy.create_from_discriminator_value(pn) }) },
                "mobileDeviceManagementPolicies" => lambda {|n| @mobile_device_management_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobilityManagementPolicy.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "permissionGrantPolicies" => lambda {|n| @permission_grant_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PermissionGrantPolicy.create_from_discriminator_value(pn) }) },
                "roleManagementPolicies" => lambda {|n| @role_management_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementPolicy.create_from_discriminator_value(pn) }) },
                "roleManagementPolicyAssignments" => lambda {|n| @role_management_policy_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementPolicyAssignment.create_from_discriminator_value(pn) }) },
                "servicePrincipalCreationPolicies" => lambda {|n| @service_principal_creation_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServicePrincipalCreationPolicy.create_from_discriminator_value(pn) }) },
                "tokenIssuancePolicies" => lambda {|n| @token_issuance_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TokenIssuancePolicy.create_from_discriminator_value(pn) }) },
                "tokenLifetimePolicies" => lambda {|n| @token_lifetime_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TokenLifetimePolicy.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the homeRealmDiscoveryPolicies property value. The policy to control Azure AD authentication behavior for federated users.
        ## @return a home_realm_discovery_policy
        ## 
        def home_realm_discovery_policies
            return @home_realm_discovery_policies
        end
        ## 
        ## Sets the homeRealmDiscoveryPolicies property value. The policy to control Azure AD authentication behavior for federated users.
        ## @param value Value to set for the home_realm_discovery_policies property.
        ## @return a void
        ## 
        def home_realm_discovery_policies=(value)
            @home_realm_discovery_policies = value
        end
        ## 
        ## Gets the identitySecurityDefaultsEnforcementPolicy property value. The policy that represents the security defaults that protect against common attacks.
        ## @return a identity_security_defaults_enforcement_policy
        ## 
        def identity_security_defaults_enforcement_policy
            return @identity_security_defaults_enforcement_policy
        end
        ## 
        ## Sets the identitySecurityDefaultsEnforcementPolicy property value. The policy that represents the security defaults that protect against common attacks.
        ## @param value Value to set for the identity_security_defaults_enforcement_policy property.
        ## @return a void
        ## 
        def identity_security_defaults_enforcement_policy=(value)
            @identity_security_defaults_enforcement_policy = value
        end
        ## 
        ## Gets the mobileAppManagementPolicies property value. The policy that defines auto-enrollment configuration for a mobility management (MDM or MAM) application.
        ## @return a mobility_management_policy
        ## 
        def mobile_app_management_policies
            return @mobile_app_management_policies
        end
        ## 
        ## Sets the mobileAppManagementPolicies property value. The policy that defines auto-enrollment configuration for a mobility management (MDM or MAM) application.
        ## @param value Value to set for the mobile_app_management_policies property.
        ## @return a void
        ## 
        def mobile_app_management_policies=(value)
            @mobile_app_management_policies = value
        end
        ## 
        ## Gets the mobileDeviceManagementPolicies property value. The mobileDeviceManagementPolicies property
        ## @return a mobility_management_policy
        ## 
        def mobile_device_management_policies
            return @mobile_device_management_policies
        end
        ## 
        ## Sets the mobileDeviceManagementPolicies property value. The mobileDeviceManagementPolicies property
        ## @param value Value to set for the mobile_device_management_policies property.
        ## @return a void
        ## 
        def mobile_device_management_policies=(value)
            @mobile_device_management_policies = value
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
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the permissionGrantPolicies property value. The policy that specifies the conditions under which consent can be granted.
        ## @return a permission_grant_policy
        ## 
        def permission_grant_policies
            return @permission_grant_policies
        end
        ## 
        ## Sets the permissionGrantPolicies property value. The policy that specifies the conditions under which consent can be granted.
        ## @param value Value to set for the permission_grant_policies property.
        ## @return a void
        ## 
        def permission_grant_policies=(value)
            @permission_grant_policies = value
        end
        ## 
        ## Gets the roleManagementPolicies property value. Represents the role management policies.
        ## @return a unified_role_management_policy
        ## 
        def role_management_policies
            return @role_management_policies
        end
        ## 
        ## Sets the roleManagementPolicies property value. Represents the role management policies.
        ## @param value Value to set for the role_management_policies property.
        ## @return a void
        ## 
        def role_management_policies=(value)
            @role_management_policies = value
        end
        ## 
        ## Gets the roleManagementPolicyAssignments property value. Represents the role management policy assignments.
        ## @return a unified_role_management_policy_assignment
        ## 
        def role_management_policy_assignments
            return @role_management_policy_assignments
        end
        ## 
        ## Sets the roleManagementPolicyAssignments property value. Represents the role management policy assignments.
        ## @param value Value to set for the role_management_policy_assignments property.
        ## @return a void
        ## 
        def role_management_policy_assignments=(value)
            @role_management_policy_assignments = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("accessReviewPolicy", @access_review_policy)
            writer.write_collection_of_object_values("activityBasedTimeoutPolicies", @activity_based_timeout_policies)
            writer.write_object_value("adminConsentRequestPolicy", @admin_consent_request_policy)
            writer.write_collection_of_object_values("appManagementPolicies", @app_management_policies)
            writer.write_object_value("authenticationFlowsPolicy", @authentication_flows_policy)
            writer.write_object_value("authenticationMethodsPolicy", @authentication_methods_policy)
            writer.write_collection_of_object_values("authenticationStrengthPolicies", @authentication_strength_policies)
            writer.write_collection_of_object_values("authorizationPolicy", @authorization_policy)
            writer.write_object_value("b2cAuthenticationMethodsPolicy", @b2c_authentication_methods_policy)
            writer.write_collection_of_object_values("claimsMappingPolicies", @claims_mapping_policies)
            writer.write_collection_of_object_values("conditionalAccessPolicies", @conditional_access_policies)
            writer.write_object_value("crossTenantAccessPolicy", @cross_tenant_access_policy)
            writer.write_object_value("defaultAppManagementPolicy", @default_app_management_policy)
            writer.write_object_value("deviceRegistrationPolicy", @device_registration_policy)
            writer.write_object_value("directoryRoleAccessReviewPolicy", @directory_role_access_review_policy)
            writer.write_object_value("externalIdentitiesPolicy", @external_identities_policy)
            writer.write_collection_of_object_values("featureRolloutPolicies", @feature_rollout_policies)
            writer.write_collection_of_object_values("homeRealmDiscoveryPolicies", @home_realm_discovery_policies)
            writer.write_object_value("identitySecurityDefaultsEnforcementPolicy", @identity_security_defaults_enforcement_policy)
            writer.write_collection_of_object_values("mobileAppManagementPolicies", @mobile_app_management_policies)
            writer.write_collection_of_object_values("mobileDeviceManagementPolicies", @mobile_device_management_policies)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_object_values("permissionGrantPolicies", @permission_grant_policies)
            writer.write_collection_of_object_values("roleManagementPolicies", @role_management_policies)
            writer.write_collection_of_object_values("roleManagementPolicyAssignments", @role_management_policy_assignments)
            writer.write_collection_of_object_values("servicePrincipalCreationPolicies", @service_principal_creation_policies)
            writer.write_collection_of_object_values("tokenIssuancePolicies", @token_issuance_policies)
            writer.write_collection_of_object_values("tokenLifetimePolicies", @token_lifetime_policies)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the servicePrincipalCreationPolicies property value. The servicePrincipalCreationPolicies property
        ## @return a service_principal_creation_policy
        ## 
        def service_principal_creation_policies
            return @service_principal_creation_policies
        end
        ## 
        ## Sets the servicePrincipalCreationPolicies property value. The servicePrincipalCreationPolicies property
        ## @param value Value to set for the service_principal_creation_policies property.
        ## @return a void
        ## 
        def service_principal_creation_policies=(value)
            @service_principal_creation_policies = value
        end
        ## 
        ## Gets the tokenIssuancePolicies property value. The policy that specifies the characteristics of SAML tokens issued by Azure AD.
        ## @return a token_issuance_policy
        ## 
        def token_issuance_policies
            return @token_issuance_policies
        end
        ## 
        ## Sets the tokenIssuancePolicies property value. The policy that specifies the characteristics of SAML tokens issued by Azure AD.
        ## @param value Value to set for the token_issuance_policies property.
        ## @return a void
        ## 
        def token_issuance_policies=(value)
            @token_issuance_policies = value
        end
        ## 
        ## Gets the tokenLifetimePolicies property value. The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Azure AD.
        ## @return a token_lifetime_policy
        ## 
        def token_lifetime_policies
            return @token_lifetime_policies
        end
        ## 
        ## Sets the tokenLifetimePolicies property value. The policy that controls the lifetime of a JWT access token, an ID token, or a SAML 1.1/2.0 token issued by Azure AD.
        ## @param value Value to set for the token_lifetime_policies property.
        ## @return a void
        ## 
        def token_lifetime_policies=(value)
            @token_lifetime_policies = value
        end
    end
end
