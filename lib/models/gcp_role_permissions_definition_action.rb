require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GcpRolePermissionsDefinitionAction < MicrosoftGraphBeta::Models::GcpPermissionsDefinitionAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The roles property
            @roles
            ## 
            ## Instantiates a new gcpRolePermissionsDefinitionAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.gcpRolePermissionsDefinitionAction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a gcp_role_permissions_definition_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GcpRolePermissionsDefinitionAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "roles" => lambda {|n| @roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsDefinitionGcpRole.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the roles property value. The roles property
            ## @return a permissions_definition_gcp_role
            ## 
            def roles
                return @roles
            end
            ## 
            ## Sets the roles property value. The roles property
            ## @param value Value to set for the roles property.
            ## @return a void
            ## 
            def roles=(value)
                @roles = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("roles", @roles)
            end
        end
    end
end
