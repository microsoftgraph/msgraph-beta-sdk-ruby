require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomClaimsPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If specified, it overrides the content of the audience claim for WS-Federation and SAML2 protocols. A custom signing key must be used for audienceOverride to be applied, otherwise, the audienceOverride value is ignored. The value provided must be in the format of an absolute URI.
            @audience_override
            ## 
            # Defines which claims are present in the tokens affected by the policy, in addition to the basic claim and the core claim set. Inherited from customclaimbase.
            @claims
            ## 
            # Indicates whether the application ID is added to the claim. It is relevant only for SAML2.0 and if a custom signing key is used. the default value is true. Optional.
            @include_application_id_in_issuer
            ## 
            # Determines whether the basic claim set is included in tokens affected by this policy. If set to true, all claims in the basic claim set are emitted in tokens affected by the policy. By default the basic claim set isn't in the tokens unless they're explicitly configured in this policy.
            @include_basic_claim_set
            ## 
            ## Gets the audienceOverride property value. If specified, it overrides the content of the audience claim for WS-Federation and SAML2 protocols. A custom signing key must be used for audienceOverride to be applied, otherwise, the audienceOverride value is ignored. The value provided must be in the format of an absolute URI.
            ## @return a string
            ## 
            def audience_override
                return @audience_override
            end
            ## 
            ## Sets the audienceOverride property value. If specified, it overrides the content of the audience claim for WS-Federation and SAML2 protocols. A custom signing key must be used for audienceOverride to be applied, otherwise, the audienceOverride value is ignored. The value provided must be in the format of an absolute URI.
            ## @param value Value to set for the audienceOverride property.
            ## @return a void
            ## 
            def audience_override=(value)
                @audience_override = value
            end
            ## 
            ## Gets the claims property value. Defines which claims are present in the tokens affected by the policy, in addition to the basic claim and the core claim set. Inherited from customclaimbase.
            ## @return a custom_claim_base
            ## 
            def claims
                return @claims
            end
            ## 
            ## Sets the claims property value. Defines which claims are present in the tokens affected by the policy, in addition to the basic claim and the core claim set. Inherited from customclaimbase.
            ## @param value Value to set for the claims property.
            ## @return a void
            ## 
            def claims=(value)
                @claims = value
            end
            ## 
            ## Instantiates a new CustomClaimsPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_claims_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomClaimsPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "audienceOverride" => lambda {|n| @audience_override = n.get_string_value() },
                    "claims" => lambda {|n| @claims = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomClaimBase.create_from_discriminator_value(pn) }) },
                    "includeApplicationIdInIssuer" => lambda {|n| @include_application_id_in_issuer = n.get_boolean_value() },
                    "includeBasicClaimSet" => lambda {|n| @include_basic_claim_set = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the includeApplicationIdInIssuer property value. Indicates whether the application ID is added to the claim. It is relevant only for SAML2.0 and if a custom signing key is used. the default value is true. Optional.
            ## @return a boolean
            ## 
            def include_application_id_in_issuer
                return @include_application_id_in_issuer
            end
            ## 
            ## Sets the includeApplicationIdInIssuer property value. Indicates whether the application ID is added to the claim. It is relevant only for SAML2.0 and if a custom signing key is used. the default value is true. Optional.
            ## @param value Value to set for the includeApplicationIdInIssuer property.
            ## @return a void
            ## 
            def include_application_id_in_issuer=(value)
                @include_application_id_in_issuer = value
            end
            ## 
            ## Gets the includeBasicClaimSet property value. Determines whether the basic claim set is included in tokens affected by this policy. If set to true, all claims in the basic claim set are emitted in tokens affected by the policy. By default the basic claim set isn't in the tokens unless they're explicitly configured in this policy.
            ## @return a boolean
            ## 
            def include_basic_claim_set
                return @include_basic_claim_set
            end
            ## 
            ## Sets the includeBasicClaimSet property value. Determines whether the basic claim set is included in tokens affected by this policy. If set to true, all claims in the basic claim set are emitted in tokens affected by the policy. By default the basic claim set isn't in the tokens unless they're explicitly configured in this policy.
            ## @param value Value to set for the includeBasicClaimSet property.
            ## @return a void
            ## 
            def include_basic_claim_set=(value)
                @include_basic_claim_set = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("audienceOverride", @audience_override)
                writer.write_collection_of_object_values("claims", @claims)
                writer.write_boolean_value("includeApplicationIdInIssuer", @include_application_id_in_issuer)
                writer.write_boolean_value("includeBasicClaimSet", @include_basic_claim_set)
            end
        end
    end
end
