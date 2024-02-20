require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcCrossCloudGovernmentOrganizationMapping < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The tenant ID in the Azure Government cloud corresponding to the GCC tenant in the public cloud. Currently, 1:1 mappings are supported, so this collection can only contain one tenant ID.
            @organization_ids_in_u_s_gov_cloud
            ## 
            ## Instantiates a new CloudPcCrossCloudGovernmentOrganizationMapping and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_cross_cloud_government_organization_mapping
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcCrossCloudGovernmentOrganizationMapping.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "organizationIdsInUSGovCloud" => lambda {|n| @organization_ids_in_u_s_gov_cloud = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the organizationIdsInUSGovCloud property value. The tenant ID in the Azure Government cloud corresponding to the GCC tenant in the public cloud. Currently, 1:1 mappings are supported, so this collection can only contain one tenant ID.
            ## @return a string
            ## 
            def organization_ids_in_u_s_gov_cloud
                return @organization_ids_in_u_s_gov_cloud
            end
            ## 
            ## Sets the organizationIdsInUSGovCloud property value. The tenant ID in the Azure Government cloud corresponding to the GCC tenant in the public cloud. Currently, 1:1 mappings are supported, so this collection can only contain one tenant ID.
            ## @param value Value to set for the organizationIdsInUSGovCloud property.
            ## @return a void
            ## 
            def organization_ids_in_u_s_gov_cloud=(value)
                @organization_ids_in_u_s_gov_cloud = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("organizationIdsInUSGovCloud", @organization_ids_in_u_s_gov_cloud)
            end
        end
    end
end
