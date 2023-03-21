require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../tenant_relationships'
require_relative '../../../managed_tenants'
require_relative '../../tenant_tags'
require_relative '../item'
require_relative './managed_tenants_unassign_tag'

module MicrosoftGraphBeta
    module TenantRelationships
        module ManagedTenants
            module TenantTags
                module Item
                    module ManagedTenantsUnassignTag
                        class UnassignTagPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The tenantIds property
                            @tenant_ids
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
                            ## Instantiates a new unassignTagPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a unassign_tag_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return UnassignTagPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "tenantIds" => lambda {|n| @tenant_ids = n.get_collection_of_primitive_values(String) },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_collection_of_primitive_values("tenantIds", @tenant_ids)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the tenantIds property value. The tenantIds property
                            ## @return a string
                            ## 
                            def tenant_ids
                                return @tenant_ids
                            end
                            ## 
                            ## Sets the tenantIds property value. The tenantIds property
                            ## @param value Value to set for the tenant_ids property.
                            ## @return a void
                            ## 
                            def tenant_ids=(value)
                                @tenant_ids = value
                            end
                        end
                    end
                end
            end
        end
    end
end
