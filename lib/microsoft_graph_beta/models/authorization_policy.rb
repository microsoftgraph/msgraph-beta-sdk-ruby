require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AuthorizationPolicy < MicrosoftGraphBeta::Models::PolicyBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates whether users can sign up for email based subscriptions.
        @allowed_to_sign_up_email_based_subscriptions
        ## 
        # Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant.
        @allowed_to_use_s_s_p_r
        ## 
        # Indicates whether a user can join the tenant by email validation.
        @allow_email_verified_users_to_join_organization
        ## 
        # Indicates who can invite external users to the organization. Possible values are: none, adminsAndGuestInviters, adminsGuestInvitersAndAllMembers, everyone. everyone is the default setting for all cloud environments except US Government. See more in the table below.
        @allow_invites_from
        ## 
        # Indicates whether user consent for risky apps is allowed. We recommend to keep this as false.
        @allow_user_consent_for_risky_apps
        ## 
        # To disable the use of the MSOnline PowerShell module set this property to true. This will also disable user-based access to the legacy service endpoint used by the MSOnline PowerShell module. This does not affect Azure AD Connect or Microsoft Graph.
        @block_msol_power_shell
        ## 
        # The defaultUserRoleOverrides property
        @default_user_role_overrides
        ## 
        # The defaultUserRolePermissions property
        @default_user_role_permissions
        ## 
        # List of features enabled for private preview on the tenant.
        @enabled_preview_features
        ## 
        # Represents role templateId for the role that should be granted to guest user. Refer to List unifiedRoleDefinitions to find the list of available role templates. Currently following roles are supported:  User (a0b1b346-4d3e-4e8b-98f8-753987be4970), Guest User (10dae51f-b6af-4016-8d66-8c2a99b929b3), and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b).
        @guest_user_role_id
        ## 
        # Indicates if user consent to apps is allowed, and if it is, which app consent policy (permissionGrantPolicy) governs the permission for users to grant consent. Values should be in the format managePermissionGrantsForSelf.{id}, where {id} is the id of a built-in or custom app consent policy. An empty list indicates user consent to apps is disabled.
        @permission_grant_policy_ids_assigned_to_default_user_role
        ## 
        ## Gets the allowedToSignUpEmailBasedSubscriptions property value. Indicates whether users can sign up for email based subscriptions.
        ## @return a boolean
        ## 
        def allowed_to_sign_up_email_based_subscriptions
            return @allowed_to_sign_up_email_based_subscriptions
        end
        ## 
        ## Sets the allowedToSignUpEmailBasedSubscriptions property value. Indicates whether users can sign up for email based subscriptions.
        ## @param value Value to set for the allowedToSignUpEmailBasedSubscriptions property.
        ## @return a void
        ## 
        def allowed_to_sign_up_email_based_subscriptions=(value)
            @allowed_to_sign_up_email_based_subscriptions = value
        end
        ## 
        ## Gets the allowedToUseSSPR property value. Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant.
        ## @return a boolean
        ## 
        def allowed_to_use_s_s_p_r
            return @allowed_to_use_s_s_p_r
        end
        ## 
        ## Sets the allowedToUseSSPR property value. Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant.
        ## @param value Value to set for the allowedToUseSSPR property.
        ## @return a void
        ## 
        def allowed_to_use_s_s_p_r=(value)
            @allowed_to_use_s_s_p_r = value
        end
        ## 
        ## Gets the allowEmailVerifiedUsersToJoinOrganization property value. Indicates whether a user can join the tenant by email validation.
        ## @return a boolean
        ## 
        def allow_email_verified_users_to_join_organization
            return @allow_email_verified_users_to_join_organization
        end
        ## 
        ## Sets the allowEmailVerifiedUsersToJoinOrganization property value. Indicates whether a user can join the tenant by email validation.
        ## @param value Value to set for the allowEmailVerifiedUsersToJoinOrganization property.
        ## @return a void
        ## 
        def allow_email_verified_users_to_join_organization=(value)
            @allow_email_verified_users_to_join_organization = value
        end
        ## 
        ## Gets the allowInvitesFrom property value. Indicates who can invite external users to the organization. Possible values are: none, adminsAndGuestInviters, adminsGuestInvitersAndAllMembers, everyone. everyone is the default setting for all cloud environments except US Government. See more in the table below.
        ## @return a allow_invites_from
        ## 
        def allow_invites_from
            return @allow_invites_from
        end
        ## 
        ## Sets the allowInvitesFrom property value. Indicates who can invite external users to the organization. Possible values are: none, adminsAndGuestInviters, adminsGuestInvitersAndAllMembers, everyone. everyone is the default setting for all cloud environments except US Government. See more in the table below.
        ## @param value Value to set for the allowInvitesFrom property.
        ## @return a void
        ## 
        def allow_invites_from=(value)
            @allow_invites_from = value
        end
        ## 
        ## Gets the allowUserConsentForRiskyApps property value. Indicates whether user consent for risky apps is allowed. We recommend to keep this as false.
        ## @return a boolean
        ## 
        def allow_user_consent_for_risky_apps
            return @allow_user_consent_for_risky_apps
        end
        ## 
        ## Sets the allowUserConsentForRiskyApps property value. Indicates whether user consent for risky apps is allowed. We recommend to keep this as false.
        ## @param value Value to set for the allowUserConsentForRiskyApps property.
        ## @return a void
        ## 
        def allow_user_consent_for_risky_apps=(value)
            @allow_user_consent_for_risky_apps = value
        end
        ## 
        ## Gets the blockMsolPowerShell property value. To disable the use of the MSOnline PowerShell module set this property to true. This will also disable user-based access to the legacy service endpoint used by the MSOnline PowerShell module. This does not affect Azure AD Connect or Microsoft Graph.
        ## @return a boolean
        ## 
        def block_msol_power_shell
            return @block_msol_power_shell
        end
        ## 
        ## Sets the blockMsolPowerShell property value. To disable the use of the MSOnline PowerShell module set this property to true. This will also disable user-based access to the legacy service endpoint used by the MSOnline PowerShell module. This does not affect Azure AD Connect or Microsoft Graph.
        ## @param value Value to set for the blockMsolPowerShell property.
        ## @return a void
        ## 
        def block_msol_power_shell=(value)
            @block_msol_power_shell = value
        end
        ## 
        ## Instantiates a new AuthorizationPolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.authorizationPolicy"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a authorization_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AuthorizationPolicy.new
        end
        ## 
        ## Gets the defaultUserRoleOverrides property value. The defaultUserRoleOverrides property
        ## @return a default_user_role_override
        ## 
        def default_user_role_overrides
            return @default_user_role_overrides
        end
        ## 
        ## Sets the defaultUserRoleOverrides property value. The defaultUserRoleOverrides property
        ## @param value Value to set for the defaultUserRoleOverrides property.
        ## @return a void
        ## 
        def default_user_role_overrides=(value)
            @default_user_role_overrides = value
        end
        ## 
        ## Gets the defaultUserRolePermissions property value. The defaultUserRolePermissions property
        ## @return a default_user_role_permissions
        ## 
        def default_user_role_permissions
            return @default_user_role_permissions
        end
        ## 
        ## Sets the defaultUserRolePermissions property value. The defaultUserRolePermissions property
        ## @param value Value to set for the defaultUserRolePermissions property.
        ## @return a void
        ## 
        def default_user_role_permissions=(value)
            @default_user_role_permissions = value
        end
        ## 
        ## Gets the enabledPreviewFeatures property value. List of features enabled for private preview on the tenant.
        ## @return a string
        ## 
        def enabled_preview_features
            return @enabled_preview_features
        end
        ## 
        ## Sets the enabledPreviewFeatures property value. List of features enabled for private preview on the tenant.
        ## @param value Value to set for the enabledPreviewFeatures property.
        ## @return a void
        ## 
        def enabled_preview_features=(value)
            @enabled_preview_features = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowedToSignUpEmailBasedSubscriptions" => lambda {|n| @allowed_to_sign_up_email_based_subscriptions = n.get_boolean_value() },
                "allowedToUseSSPR" => lambda {|n| @allowed_to_use_s_s_p_r = n.get_boolean_value() },
                "allowEmailVerifiedUsersToJoinOrganization" => lambda {|n| @allow_email_verified_users_to_join_organization = n.get_boolean_value() },
                "allowInvitesFrom" => lambda {|n| @allow_invites_from = n.get_enum_value(MicrosoftGraphBeta::Models::AllowInvitesFrom) },
                "allowUserConsentForRiskyApps" => lambda {|n| @allow_user_consent_for_risky_apps = n.get_boolean_value() },
                "blockMsolPowerShell" => lambda {|n| @block_msol_power_shell = n.get_boolean_value() },
                "defaultUserRoleOverrides" => lambda {|n| @default_user_role_overrides = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DefaultUserRoleOverride.create_from_discriminator_value(pn) }) },
                "defaultUserRolePermissions" => lambda {|n| @default_user_role_permissions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DefaultUserRolePermissions.create_from_discriminator_value(pn) }) },
                "enabledPreviewFeatures" => lambda {|n| @enabled_preview_features = n.get_collection_of_primitive_values(String) },
                "guestUserRoleId" => lambda {|n| @guest_user_role_id = n.get_guid_value() },
                "permissionGrantPolicyIdsAssignedToDefaultUserRole" => lambda {|n| @permission_grant_policy_ids_assigned_to_default_user_role = n.get_collection_of_primitive_values(String) },
            })
        end
        ## 
        ## Gets the guestUserRoleId property value. Represents role templateId for the role that should be granted to guest user. Refer to List unifiedRoleDefinitions to find the list of available role templates. Currently following roles are supported:  User (a0b1b346-4d3e-4e8b-98f8-753987be4970), Guest User (10dae51f-b6af-4016-8d66-8c2a99b929b3), and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b).
        ## @return a guid
        ## 
        def guest_user_role_id
            return @guest_user_role_id
        end
        ## 
        ## Sets the guestUserRoleId property value. Represents role templateId for the role that should be granted to guest user. Refer to List unifiedRoleDefinitions to find the list of available role templates. Currently following roles are supported:  User (a0b1b346-4d3e-4e8b-98f8-753987be4970), Guest User (10dae51f-b6af-4016-8d66-8c2a99b929b3), and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b).
        ## @param value Value to set for the guestUserRoleId property.
        ## @return a void
        ## 
        def guest_user_role_id=(value)
            @guest_user_role_id = value
        end
        ## 
        ## Gets the permissionGrantPolicyIdsAssignedToDefaultUserRole property value. Indicates if user consent to apps is allowed, and if it is, which app consent policy (permissionGrantPolicy) governs the permission for users to grant consent. Values should be in the format managePermissionGrantsForSelf.{id}, where {id} is the id of a built-in or custom app consent policy. An empty list indicates user consent to apps is disabled.
        ## @return a string
        ## 
        def permission_grant_policy_ids_assigned_to_default_user_role
            return @permission_grant_policy_ids_assigned_to_default_user_role
        end
        ## 
        ## Sets the permissionGrantPolicyIdsAssignedToDefaultUserRole property value. Indicates if user consent to apps is allowed, and if it is, which app consent policy (permissionGrantPolicy) governs the permission for users to grant consent. Values should be in the format managePermissionGrantsForSelf.{id}, where {id} is the id of a built-in or custom app consent policy. An empty list indicates user consent to apps is disabled.
        ## @param value Value to set for the permissionGrantPolicyIdsAssignedToDefaultUserRole property.
        ## @return a void
        ## 
        def permission_grant_policy_ids_assigned_to_default_user_role=(value)
            @permission_grant_policy_ids_assigned_to_default_user_role = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("allowedToSignUpEmailBasedSubscriptions", @allowed_to_sign_up_email_based_subscriptions)
            writer.write_boolean_value("allowedToUseSSPR", @allowed_to_use_s_s_p_r)
            writer.write_boolean_value("allowEmailVerifiedUsersToJoinOrganization", @allow_email_verified_users_to_join_organization)
            writer.write_enum_value("allowInvitesFrom", @allow_invites_from)
            writer.write_boolean_value("allowUserConsentForRiskyApps", @allow_user_consent_for_risky_apps)
            writer.write_boolean_value("blockMsolPowerShell", @block_msol_power_shell)
            writer.write_collection_of_object_values("defaultUserRoleOverrides", @default_user_role_overrides)
            writer.write_object_value("defaultUserRolePermissions", @default_user_role_permissions)
            writer.write_collection_of_primitive_values("enabledPreviewFeatures", @enabled_preview_features)
            writer.write_guid_value("guestUserRoleId", @guest_user_role_id)
            writer.write_collection_of_primitive_values("permissionGrantPolicyIdsAssignedToDefaultUserRole", @permission_grant_policy_ids_assigned_to_default_user_role)
        end
    end
end
