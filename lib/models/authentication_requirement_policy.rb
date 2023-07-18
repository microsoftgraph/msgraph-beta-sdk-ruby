require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationRequirementPolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Provides additional detail on the feature identified in requirementProvider.
            @detail
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Identifies what Azure AD feature requires MFA in this policy. Possible values are: user, request, servicePrincipal, v1ConditionalAccess, multiConditionalAccess, tenantSessionRiskPolicy, accountCompromisePolicies, v1ConditionalAccessDependency, v1ConditionalAccessPolicyIdRequested, mfaRegistrationRequiredByIdentityProtectionPolicy, baselineProtection, mfaRegistrationRequiredByBaselineProtection, mfaRegistrationRequiredByMultiConditionalAccess, enforcedForCspAdmins, securityDefaults, mfaRegistrationRequiredBySecurityDefaults, proofUpCodeRequest, crossTenantOutboundRule, gpsLocationCondition, riskBasedPolicy, unknownFutureValue.
            @requirement_provider
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
            ## Instantiates a new authenticationRequirementPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_requirement_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationRequirementPolicy.new
            end
            ## 
            ## Gets the detail property value. Provides additional detail on the feature identified in requirementProvider.
            ## @return a string
            ## 
            def detail
                return @detail
            end
            ## 
            ## Sets the detail property value. Provides additional detail on the feature identified in requirementProvider.
            ## @param value Value to set for the detail property.
            ## @return a void
            ## 
            def detail=(value)
                @detail = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "detail" => lambda {|n| @detail = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "requirementProvider" => lambda {|n| @requirement_provider = n.get_enum_value(MicrosoftGraphBeta::Models::RequirementProvider) },
                }
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
            ## Gets the requirementProvider property value. Identifies what Azure AD feature requires MFA in this policy. Possible values are: user, request, servicePrincipal, v1ConditionalAccess, multiConditionalAccess, tenantSessionRiskPolicy, accountCompromisePolicies, v1ConditionalAccessDependency, v1ConditionalAccessPolicyIdRequested, mfaRegistrationRequiredByIdentityProtectionPolicy, baselineProtection, mfaRegistrationRequiredByBaselineProtection, mfaRegistrationRequiredByMultiConditionalAccess, enforcedForCspAdmins, securityDefaults, mfaRegistrationRequiredBySecurityDefaults, proofUpCodeRequest, crossTenantOutboundRule, gpsLocationCondition, riskBasedPolicy, unknownFutureValue.
            ## @return a requirement_provider
            ## 
            def requirement_provider
                return @requirement_provider
            end
            ## 
            ## Sets the requirementProvider property value. Identifies what Azure AD feature requires MFA in this policy. Possible values are: user, request, servicePrincipal, v1ConditionalAccess, multiConditionalAccess, tenantSessionRiskPolicy, accountCompromisePolicies, v1ConditionalAccessDependency, v1ConditionalAccessPolicyIdRequested, mfaRegistrationRequiredByIdentityProtectionPolicy, baselineProtection, mfaRegistrationRequiredByBaselineProtection, mfaRegistrationRequiredByMultiConditionalAccess, enforcedForCspAdmins, securityDefaults, mfaRegistrationRequiredBySecurityDefaults, proofUpCodeRequest, crossTenantOutboundRule, gpsLocationCondition, riskBasedPolicy, unknownFutureValue.
            ## @param value Value to set for the requirement_provider property.
            ## @return a void
            ## 
            def requirement_provider=(value)
                @requirement_provider = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("detail", @detail)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("requirementProvider", @requirement_provider)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
