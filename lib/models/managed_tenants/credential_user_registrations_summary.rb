require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class CredentialUserRegistrationsSummary < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
                @last_refreshed_date_time
                ## 
                # The number of users that are capable of performing multi-factor authentication or self service password reset. Optional. Read-only.
                @mfa_and_sspr_capable_user_count
                ## 
                # The state of a conditional access policy that enforces multi-factor authentication. Optional. Read-only.
                @mfa_conditional_access_policy_state
                ## 
                # The number of users in the multi-factor authentication exclusion security group (Microsoft 365 Lighthouse - MFA exclusions). Optional. Read-only.
                @mfa_excluded_user_count
                ## 
                # The number of users registered for multi-factor authentication. Optional. Read-only.
                @mfa_registered_user_count
                ## 
                # A flag indicating whether Identity Security Defaults is enabled. Optional. Read-only.
                @security_defaults_enabled
                ## 
                # The number of users enabled for self service password reset. Optional. Read-only.
                @sspr_enabled_user_count
                ## 
                # The number of users registered for self service password reset. Optional. Read-only.
                @sspr_registered_user_count
                ## 
                # The display name for the managed tenant. Required. Read-only.
                @tenant_display_name
                ## 
                # The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.
                @tenant_id
                ## 
                # The total number of users in the given managed tenant. Optional. Read-only.
                @total_user_count
                ## 
                ## Instantiates a new credentialUserRegistrationsSummary and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a credential_user_registrations_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CredentialUserRegistrationsSummary.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                        "mfaAndSsprCapableUserCount" => lambda {|n| @mfa_and_sspr_capable_user_count = n.get_number_value() },
                        "mfaConditionalAccessPolicyState" => lambda {|n| @mfa_conditional_access_policy_state = n.get_string_value() },
                        "mfaExcludedUserCount" => lambda {|n| @mfa_excluded_user_count = n.get_number_value() },
                        "mfaRegisteredUserCount" => lambda {|n| @mfa_registered_user_count = n.get_number_value() },
                        "securityDefaultsEnabled" => lambda {|n| @security_defaults_enabled = n.get_boolean_value() },
                        "ssprEnabledUserCount" => lambda {|n| @sspr_enabled_user_count = n.get_number_value() },
                        "ssprRegisteredUserCount" => lambda {|n| @sspr_registered_user_count = n.get_number_value() },
                        "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                        "totalUserCount" => lambda {|n| @total_user_count = n.get_number_value() },
                    })
                end
                ## 
                ## Gets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
                ## @return a date_time
                ## 
                def last_refreshed_date_time
                    return @last_refreshed_date_time
                end
                ## 
                ## Sets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
                ## @param value Value to set for the last_refreshed_date_time property.
                ## @return a void
                ## 
                def last_refreshed_date_time=(value)
                    @last_refreshed_date_time = value
                end
                ## 
                ## Gets the mfaAndSsprCapableUserCount property value. The number of users that are capable of performing multi-factor authentication or self service password reset. Optional. Read-only.
                ## @return a integer
                ## 
                def mfa_and_sspr_capable_user_count
                    return @mfa_and_sspr_capable_user_count
                end
                ## 
                ## Sets the mfaAndSsprCapableUserCount property value. The number of users that are capable of performing multi-factor authentication or self service password reset. Optional. Read-only.
                ## @param value Value to set for the mfa_and_sspr_capable_user_count property.
                ## @return a void
                ## 
                def mfa_and_sspr_capable_user_count=(value)
                    @mfa_and_sspr_capable_user_count = value
                end
                ## 
                ## Gets the mfaConditionalAccessPolicyState property value. The state of a conditional access policy that enforces multi-factor authentication. Optional. Read-only.
                ## @return a string
                ## 
                def mfa_conditional_access_policy_state
                    return @mfa_conditional_access_policy_state
                end
                ## 
                ## Sets the mfaConditionalAccessPolicyState property value. The state of a conditional access policy that enforces multi-factor authentication. Optional. Read-only.
                ## @param value Value to set for the mfa_conditional_access_policy_state property.
                ## @return a void
                ## 
                def mfa_conditional_access_policy_state=(value)
                    @mfa_conditional_access_policy_state = value
                end
                ## 
                ## Gets the mfaExcludedUserCount property value. The number of users in the multi-factor authentication exclusion security group (Microsoft 365 Lighthouse - MFA exclusions). Optional. Read-only.
                ## @return a integer
                ## 
                def mfa_excluded_user_count
                    return @mfa_excluded_user_count
                end
                ## 
                ## Sets the mfaExcludedUserCount property value. The number of users in the multi-factor authentication exclusion security group (Microsoft 365 Lighthouse - MFA exclusions). Optional. Read-only.
                ## @param value Value to set for the mfa_excluded_user_count property.
                ## @return a void
                ## 
                def mfa_excluded_user_count=(value)
                    @mfa_excluded_user_count = value
                end
                ## 
                ## Gets the mfaRegisteredUserCount property value. The number of users registered for multi-factor authentication. Optional. Read-only.
                ## @return a integer
                ## 
                def mfa_registered_user_count
                    return @mfa_registered_user_count
                end
                ## 
                ## Sets the mfaRegisteredUserCount property value. The number of users registered for multi-factor authentication. Optional. Read-only.
                ## @param value Value to set for the mfa_registered_user_count property.
                ## @return a void
                ## 
                def mfa_registered_user_count=(value)
                    @mfa_registered_user_count = value
                end
                ## 
                ## Gets the securityDefaultsEnabled property value. A flag indicating whether Identity Security Defaults is enabled. Optional. Read-only.
                ## @return a boolean
                ## 
                def security_defaults_enabled
                    return @security_defaults_enabled
                end
                ## 
                ## Sets the securityDefaultsEnabled property value. A flag indicating whether Identity Security Defaults is enabled. Optional. Read-only.
                ## @param value Value to set for the security_defaults_enabled property.
                ## @return a void
                ## 
                def security_defaults_enabled=(value)
                    @security_defaults_enabled = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
                    writer.write_number_value("mfaAndSsprCapableUserCount", @mfa_and_sspr_capable_user_count)
                    writer.write_string_value("mfaConditionalAccessPolicyState", @mfa_conditional_access_policy_state)
                    writer.write_number_value("mfaExcludedUserCount", @mfa_excluded_user_count)
                    writer.write_number_value("mfaRegisteredUserCount", @mfa_registered_user_count)
                    writer.write_boolean_value("securityDefaultsEnabled", @security_defaults_enabled)
                    writer.write_number_value("ssprEnabledUserCount", @sspr_enabled_user_count)
                    writer.write_number_value("ssprRegisteredUserCount", @sspr_registered_user_count)
                    writer.write_string_value("tenantDisplayName", @tenant_display_name)
                    writer.write_string_value("tenantId", @tenant_id)
                    writer.write_number_value("totalUserCount", @total_user_count)
                end
                ## 
                ## Gets the ssprEnabledUserCount property value. The number of users enabled for self service password reset. Optional. Read-only.
                ## @return a integer
                ## 
                def sspr_enabled_user_count
                    return @sspr_enabled_user_count
                end
                ## 
                ## Sets the ssprEnabledUserCount property value. The number of users enabled for self service password reset. Optional. Read-only.
                ## @param value Value to set for the sspr_enabled_user_count property.
                ## @return a void
                ## 
                def sspr_enabled_user_count=(value)
                    @sspr_enabled_user_count = value
                end
                ## 
                ## Gets the ssprRegisteredUserCount property value. The number of users registered for self service password reset. Optional. Read-only.
                ## @return a integer
                ## 
                def sspr_registered_user_count
                    return @sspr_registered_user_count
                end
                ## 
                ## Sets the ssprRegisteredUserCount property value. The number of users registered for self service password reset. Optional. Read-only.
                ## @param value Value to set for the sspr_registered_user_count property.
                ## @return a void
                ## 
                def sspr_registered_user_count=(value)
                    @sspr_registered_user_count = value
                end
                ## 
                ## Gets the tenantDisplayName property value. The display name for the managed tenant. Required. Read-only.
                ## @return a string
                ## 
                def tenant_display_name
                    return @tenant_display_name
                end
                ## 
                ## Sets the tenantDisplayName property value. The display name for the managed tenant. Required. Read-only.
                ## @param value Value to set for the tenant_display_name property.
                ## @return a void
                ## 
                def tenant_display_name=(value)
                    @tenant_display_name = value
                end
                ## 
                ## Gets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.
                ## @return a string
                ## 
                def tenant_id
                    return @tenant_id
                end
                ## 
                ## Sets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.
                ## @param value Value to set for the tenant_id property.
                ## @return a void
                ## 
                def tenant_id=(value)
                    @tenant_id = value
                end
                ## 
                ## Gets the totalUserCount property value. The total number of users in the given managed tenant. Optional. Read-only.
                ## @return a integer
                ## 
                def total_user_count
                    return @total_user_count
                end
                ## 
                ## Sets the totalUserCount property value. The total number of users in the given managed tenant. Optional. Read-only.
                ## @param value Value to set for the total_user_count property.
                ## @return a void
                ## 
                def total_user_count=(value)
                    @total_user_count = value
                end
            end
        end
    end
end
