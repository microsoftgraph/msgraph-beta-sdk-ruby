require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TenantRelationshipAccessPolicyBase < MicrosoftGraphBeta::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The raw JSON definition of the cross-tenant access policy. Deprecated. Do not use.
            @definition
            ## 
            ## Instantiates a new TenantRelationshipAccessPolicyBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.tenantRelationshipAccessPolicyBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a tenant_relationship_access_policy_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.crossTenantAccessPolicy"
                            return CrossTenantAccessPolicy.new
                    end
                end
                return TenantRelationshipAccessPolicyBase.new
            end
            ## 
            ## Gets the definition property value. The raw JSON definition of the cross-tenant access policy. Deprecated. Do not use.
            ## @return a string
            ## 
            def definition
                return @definition
            end
            ## 
            ## Sets the definition property value. The raw JSON definition of the cross-tenant access policy. Deprecated. Do not use.
            ## @param value Value to set for the definition property.
            ## @return a void
            ## 
            def definition=(value)
                @definition = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "definition" => lambda {|n| @definition = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("definition", @definition)
            end
        end
    end
end
