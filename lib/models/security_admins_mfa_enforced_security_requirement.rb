require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityAdminsMfaEnforcedSecurityRequirement < MicrosoftGraphBeta::Models::Models.partner.securitySecurityRequirement
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of admins who are required to use MFA, but haven't completed registration.
            @admins_required_not_using_mfa_count
            ## 
            # The legacyPerUserMfaStatus property
            @legacy_per_user_mfa_status
            ## 
            # The mfaConditionalAccessPolicyStatus property
            @mfa_conditional_access_policy_status
            ## 
            # The number of admins who are using MFA.
            @mfa_enabled_admins_count
            ## 
            # The number of users who are using MFA.
            @mfa_enabled_users_count
            ## 
            # The securityDefaultsStatus property
            @security_defaults_status
            ## 
            # The total number of admins in the partner's tenant.
            @total_admins_count
            ## 
            # The total number of users in the partner's tenant.
            @total_users_count
            ## 
            # The number of users who are required to use MFA, but haven't completed registration.
            @users_required_not_using_mfa_count
            ## 
            ## Gets the adminsRequiredNotUsingMfaCount property value. The number of admins who are required to use MFA, but haven't completed registration.
            ## @return a int64
            ## 
            def admins_required_not_using_mfa_count
                return @admins_required_not_using_mfa_count
            end
            ## 
            ## Sets the adminsRequiredNotUsingMfaCount property value. The number of admins who are required to use MFA, but haven't completed registration.
            ## @param value Value to set for the adminsRequiredNotUsingMfaCount property.
            ## @return a void
            ## 
            def admins_required_not_using_mfa_count=(value)
                @admins_required_not_using_mfa_count = value
            end
            ## 
            ## Instantiates a new Models.partner.securityAdminsMfaEnforcedSecurityRequirement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_admins_mfa_enforced_security_requirement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityAdminsMfaEnforcedSecurityRequirement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "adminsRequiredNotUsingMfaCount" => lambda {|n| @admins_required_not_using_mfa_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "legacyPerUserMfaStatus" => lambda {|n| @legacy_per_user_mfa_status = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securityPolicyStatus) },
                    "mfaConditionalAccessPolicyStatus" => lambda {|n| @mfa_conditional_access_policy_status = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securityPolicyStatus) },
                    "mfaEnabledAdminsCount" => lambda {|n| @mfa_enabled_admins_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "mfaEnabledUsersCount" => lambda {|n| @mfa_enabled_users_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "securityDefaultsStatus" => lambda {|n| @security_defaults_status = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securityPolicyStatus) },
                    "totalAdminsCount" => lambda {|n| @total_admins_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "totalUsersCount" => lambda {|n| @total_users_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "usersRequiredNotUsingMfaCount" => lambda {|n| @users_required_not_using_mfa_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the legacyPerUserMfaStatus property value. The legacyPerUserMfaStatus property
            ## @return a models.partner.security_policy_status
            ## 
            def legacy_per_user_mfa_status
                return @legacy_per_user_mfa_status
            end
            ## 
            ## Sets the legacyPerUserMfaStatus property value. The legacyPerUserMfaStatus property
            ## @param value Value to set for the legacyPerUserMfaStatus property.
            ## @return a void
            ## 
            def legacy_per_user_mfa_status=(value)
                @legacy_per_user_mfa_status = value
            end
            ## 
            ## Gets the mfaConditionalAccessPolicyStatus property value. The mfaConditionalAccessPolicyStatus property
            ## @return a models.partner.security_policy_status
            ## 
            def mfa_conditional_access_policy_status
                return @mfa_conditional_access_policy_status
            end
            ## 
            ## Sets the mfaConditionalAccessPolicyStatus property value. The mfaConditionalAccessPolicyStatus property
            ## @param value Value to set for the mfaConditionalAccessPolicyStatus property.
            ## @return a void
            ## 
            def mfa_conditional_access_policy_status=(value)
                @mfa_conditional_access_policy_status = value
            end
            ## 
            ## Gets the mfaEnabledAdminsCount property value. The number of admins who are using MFA.
            ## @return a int64
            ## 
            def mfa_enabled_admins_count
                return @mfa_enabled_admins_count
            end
            ## 
            ## Sets the mfaEnabledAdminsCount property value. The number of admins who are using MFA.
            ## @param value Value to set for the mfaEnabledAdminsCount property.
            ## @return a void
            ## 
            def mfa_enabled_admins_count=(value)
                @mfa_enabled_admins_count = value
            end
            ## 
            ## Gets the mfaEnabledUsersCount property value. The number of users who are using MFA.
            ## @return a int64
            ## 
            def mfa_enabled_users_count
                return @mfa_enabled_users_count
            end
            ## 
            ## Sets the mfaEnabledUsersCount property value. The number of users who are using MFA.
            ## @param value Value to set for the mfaEnabledUsersCount property.
            ## @return a void
            ## 
            def mfa_enabled_users_count=(value)
                @mfa_enabled_users_count = value
            end
            ## 
            ## Gets the securityDefaultsStatus property value. The securityDefaultsStatus property
            ## @return a models.partner.security_policy_status
            ## 
            def security_defaults_status
                return @security_defaults_status
            end
            ## 
            ## Sets the securityDefaultsStatus property value. The securityDefaultsStatus property
            ## @param value Value to set for the securityDefaultsStatus property.
            ## @return a void
            ## 
            def security_defaults_status=(value)
                @security_defaults_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("adminsRequiredNotUsingMfaCount", @admins_required_not_using_mfa_count)
                writer.write_enum_value("legacyPerUserMfaStatus", @legacy_per_user_mfa_status)
                writer.write_enum_value("mfaConditionalAccessPolicyStatus", @mfa_conditional_access_policy_status)
                writer.write_object_value("mfaEnabledAdminsCount", @mfa_enabled_admins_count)
                writer.write_object_value("mfaEnabledUsersCount", @mfa_enabled_users_count)
                writer.write_enum_value("securityDefaultsStatus", @security_defaults_status)
                writer.write_object_value("totalAdminsCount", @total_admins_count)
                writer.write_object_value("totalUsersCount", @total_users_count)
                writer.write_object_value("usersRequiredNotUsingMfaCount", @users_required_not_using_mfa_count)
            end
            ## 
            ## Gets the totalAdminsCount property value. The total number of admins in the partner's tenant.
            ## @return a int64
            ## 
            def total_admins_count
                return @total_admins_count
            end
            ## 
            ## Sets the totalAdminsCount property value. The total number of admins in the partner's tenant.
            ## @param value Value to set for the totalAdminsCount property.
            ## @return a void
            ## 
            def total_admins_count=(value)
                @total_admins_count = value
            end
            ## 
            ## Gets the totalUsersCount property value. The total number of users in the partner's tenant.
            ## @return a int64
            ## 
            def total_users_count
                return @total_users_count
            end
            ## 
            ## Sets the totalUsersCount property value. The total number of users in the partner's tenant.
            ## @param value Value to set for the totalUsersCount property.
            ## @return a void
            ## 
            def total_users_count=(value)
                @total_users_count = value
            end
            ## 
            ## Gets the usersRequiredNotUsingMfaCount property value. The number of users who are required to use MFA, but haven't completed registration.
            ## @return a int64
            ## 
            def users_required_not_using_mfa_count
                return @users_required_not_using_mfa_count
            end
            ## 
            ## Sets the usersRequiredNotUsingMfaCount property value. The number of users who are required to use MFA, but haven't completed registration.
            ## @param value Value to set for the usersRequiredNotUsingMfaCount property.
            ## @return a void
            ## 
            def users_required_not_using_mfa_count=(value)
                @users_required_not_using_mfa_count = value
            end
        end
    end
end
