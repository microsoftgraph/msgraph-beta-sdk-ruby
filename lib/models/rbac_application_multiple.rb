require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RbacApplicationMultiple < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The resourceNamespaces property
            @resource_namespaces
            ## 
            # The roleAssignments property
            @role_assignments
            ## 
            # The roleDefinitions property
            @role_definitions
            ## 
            ## Instantiates a new rbacApplicationMultiple and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a rbac_application_multiple
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RbacApplicationMultiple.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "resourceNamespaces" => lambda {|n| @resource_namespaces = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRbacResourceNamespace.create_from_discriminator_value(pn) }) },
                    "roleAssignments" => lambda {|n| @role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleAssignmentMultiple.create_from_discriminator_value(pn) }) },
                    "roleDefinitions" => lambda {|n| @role_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleDefinition.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resourceNamespaces property value. The resourceNamespaces property
            ## @return a unified_rbac_resource_namespace
            ## 
            def resource_namespaces
                return @resource_namespaces
            end
            ## 
            ## Sets the resourceNamespaces property value. The resourceNamespaces property
            ## @param value Value to set for the resourceNamespaces property.
            ## @return a void
            ## 
            def resource_namespaces=(value)
                @resource_namespaces = value
            end
            ## 
            ## Gets the roleAssignments property value. The roleAssignments property
            ## @return a unified_role_assignment_multiple
            ## 
            def role_assignments
                return @role_assignments
            end
            ## 
            ## Sets the roleAssignments property value. The roleAssignments property
            ## @param value Value to set for the roleAssignments property.
            ## @return a void
            ## 
            def role_assignments=(value)
                @role_assignments = value
            end
            ## 
            ## Gets the roleDefinitions property value. The roleDefinitions property
            ## @return a unified_role_definition
            ## 
            def role_definitions
                return @role_definitions
            end
            ## 
            ## Sets the roleDefinitions property value. The roleDefinitions property
            ## @param value Value to set for the roleDefinitions property.
            ## @return a void
            ## 
            def role_definitions=(value)
                @role_definitions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("resourceNamespaces", @resource_namespaces)
                writer.write_collection_of_object_values("roleAssignments", @role_assignments)
                writer.write_collection_of_object_values("roleDefinitions", @role_definitions)
            end
        end
    end
end
