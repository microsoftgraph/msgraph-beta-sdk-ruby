require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegedAccess < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the provider managed by PIM.
            @display_name
            ## 
            # A collection of resources for the provider.
            @resources
            ## 
            # A collection of role assignment requests for the provider.
            @role_assignment_requests
            ## 
            # A collection of role assignments for the provider.
            @role_assignments
            ## 
            # A collection of role definitions for the provider.
            @role_definitions
            ## 
            # A collection of role settings for the provider.
            @role_settings
            ## 
            ## Instantiates a new PrivilegedAccess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_access
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedAccess.new
            end
            ## 
            ## Gets the displayName property value. The display name of the provider managed by PIM.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the provider managed by PIM.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceResource.create_from_discriminator_value(pn) }) },
                    "roleAssignmentRequests" => lambda {|n| @role_assignment_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleAssignmentRequest.create_from_discriminator_value(pn) }) },
                    "roleAssignments" => lambda {|n| @role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleAssignment.create_from_discriminator_value(pn) }) },
                    "roleDefinitions" => lambda {|n| @role_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleDefinition.create_from_discriminator_value(pn) }) },
                    "roleSettings" => lambda {|n| @role_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resources property value. A collection of resources for the provider.
            ## @return a governance_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. A collection of resources for the provider.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Gets the roleAssignmentRequests property value. A collection of role assignment requests for the provider.
            ## @return a governance_role_assignment_request
            ## 
            def role_assignment_requests
                return @role_assignment_requests
            end
            ## 
            ## Sets the roleAssignmentRequests property value. A collection of role assignment requests for the provider.
            ## @param value Value to set for the roleAssignmentRequests property.
            ## @return a void
            ## 
            def role_assignment_requests=(value)
                @role_assignment_requests = value
            end
            ## 
            ## Gets the roleAssignments property value. A collection of role assignments for the provider.
            ## @return a governance_role_assignment
            ## 
            def role_assignments
                return @role_assignments
            end
            ## 
            ## Sets the roleAssignments property value. A collection of role assignments for the provider.
            ## @param value Value to set for the roleAssignments property.
            ## @return a void
            ## 
            def role_assignments=(value)
                @role_assignments = value
            end
            ## 
            ## Gets the roleDefinitions property value. A collection of role definitions for the provider.
            ## @return a governance_role_definition
            ## 
            def role_definitions
                return @role_definitions
            end
            ## 
            ## Sets the roleDefinitions property value. A collection of role definitions for the provider.
            ## @param value Value to set for the roleDefinitions property.
            ## @return a void
            ## 
            def role_definitions=(value)
                @role_definitions = value
            end
            ## 
            ## Gets the roleSettings property value. A collection of role settings for the provider.
            ## @return a governance_role_setting
            ## 
            def role_settings
                return @role_settings
            end
            ## 
            ## Sets the roleSettings property value. A collection of role settings for the provider.
            ## @param value Value to set for the roleSettings property.
            ## @return a void
            ## 
            def role_settings=(value)
                @role_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_collection_of_object_values("roleAssignmentRequests", @role_assignment_requests)
                writer.write_collection_of_object_values("roleAssignments", @role_assignments)
                writer.write_collection_of_object_values("roleDefinitions", @role_definitions)
                writer.write_collection_of_object_values("roleSettings", @role_settings)
            end
        end
    end
end
