require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomClaimsPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The audienceOverride property
            @audience_override
            ## 
            # The claims property
            @claims
            ## 
            # The includeApplicationIdInIssuer property
            @include_application_id_in_issuer
            ## 
            # The includeBasicClaimSet property
            @include_basic_claim_set
            ## 
            ## Gets the audienceOverride property value. The audienceOverride property
            ## @return a string
            ## 
            def audience_override
                return @audience_override
            end
            ## 
            ## Sets the audienceOverride property value. The audienceOverride property
            ## @param value Value to set for the audienceOverride property.
            ## @return a void
            ## 
            def audience_override=(value)
                @audience_override = value
            end
            ## 
            ## Gets the claims property value. The claims property
            ## @return a custom_claim_base
            ## 
            def claims
                return @claims
            end
            ## 
            ## Sets the claims property value. The claims property
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
            ## Gets the includeApplicationIdInIssuer property value. The includeApplicationIdInIssuer property
            ## @return a boolean
            ## 
            def include_application_id_in_issuer
                return @include_application_id_in_issuer
            end
            ## 
            ## Sets the includeApplicationIdInIssuer property value. The includeApplicationIdInIssuer property
            ## @param value Value to set for the includeApplicationIdInIssuer property.
            ## @return a void
            ## 
            def include_application_id_in_issuer=(value)
                @include_application_id_in_issuer = value
            end
            ## 
            ## Gets the includeBasicClaimSet property value. The includeBasicClaimSet property
            ## @return a boolean
            ## 
            def include_basic_claim_set
                return @include_basic_claim_set
            end
            ## 
            ## Sets the includeBasicClaimSet property value. The includeBasicClaimSet property
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
