require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityCustomerMfaInsight
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of admins that are compliant with the MFA requirements
            @compliant_admins_count
            ## 
            # The number of users that are compliant with the MFA requirements
            @compliant_non_admins_count
            ## 
            # The legacyPerUserMfaStatus property
            @legacy_per_user_mfa_status
            ## 
            # The mfaConditionalAccessPolicyStatus property
            @mfa_conditional_access_policy_status
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The securityDefaultsStatus property
            @security_defaults_status
            ## 
            # The total number of users in the tenant
            @total_users_count
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
            ## Gets the compliantAdminsCount property value. The number of admins that are compliant with the MFA requirements
            ## @return a int64
            ## 
            def compliant_admins_count
                return @compliant_admins_count
            end
            ## 
            ## Sets the compliantAdminsCount property value. The number of admins that are compliant with the MFA requirements
            ## @param value Value to set for the compliantAdminsCount property.
            ## @return a void
            ## 
            def compliant_admins_count=(value)
                @compliant_admins_count = value
            end
            ## 
            ## Gets the compliantNonAdminsCount property value. The number of users that are compliant with the MFA requirements
            ## @return a int64
            ## 
            def compliant_non_admins_count
                return @compliant_non_admins_count
            end
            ## 
            ## Sets the compliantNonAdminsCount property value. The number of users that are compliant with the MFA requirements
            ## @param value Value to set for the compliantNonAdminsCount property.
            ## @return a void
            ## 
            def compliant_non_admins_count=(value)
                @compliant_non_admins_count = value
            end
            ## 
            ## Instantiates a new Models.partner.securityCustomerMfaInsight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_customer_mfa_insight
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityCustomerMfaInsight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "compliantAdminsCount" => lambda {|n| @compliant_admins_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "compliantNonAdminsCount" => lambda {|n| @compliant_non_admins_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "legacyPerUserMfaStatus" => lambda {|n| @legacy_per_user_mfa_status = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securityPolicyStatus) },
                    "mfaConditionalAccessPolicyStatus" => lambda {|n| @mfa_conditional_access_policy_status = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securityPolicyStatus) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "securityDefaultsStatus" => lambda {|n| @security_defaults_status = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securityPolicyStatus) },
                    "totalUsersCount" => lambda {|n| @total_users_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                }
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
                writer.write_object_value("compliantAdminsCount", @compliant_admins_count)
                writer.write_object_value("compliantNonAdminsCount", @compliant_non_admins_count)
                writer.write_enum_value("legacyPerUserMfaStatus", @legacy_per_user_mfa_status)
                writer.write_enum_value("mfaConditionalAccessPolicyStatus", @mfa_conditional_access_policy_status)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("securityDefaultsStatus", @security_defaults_status)
                writer.write_object_value("totalUsersCount", @total_users_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalUsersCount property value. The total number of users in the tenant
            ## @return a int64
            ## 
            def total_users_count
                return @total_users_count
            end
            ## 
            ## Sets the totalUsersCount property value. The total number of users in the tenant
            ## @param value Value to set for the totalUsersCount property.
            ## @return a void
            ## 
            def total_users_count=(value)
                @total_users_count = value
            end
        end
    end
end
