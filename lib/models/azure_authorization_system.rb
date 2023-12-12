require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AzureAuthorizationSystem < MicrosoftGraphBeta::Models::AuthorizationSystem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of actions for service in authorization system.
            @actions
            ## 
            # Identities in the authorization system.
            @associated_identities
            ## 
            # Resources associated with the authorization system type.
            @resources
            ## 
            # Roles associated with the authorization system type.
            @role_definitions
            ## 
            # Services associated with the authorization system type.
            @services
            ## 
            ## Gets the actions property value. List of actions for service in authorization system.
            ## @return a azure_authorization_system_type_action
            ## 
            def actions
                return @actions
            end
            ## 
            ## Sets the actions property value. List of actions for service in authorization system.
            ## @param value Value to set for the actions property.
            ## @return a void
            ## 
            def actions=(value)
                @actions = value
            end
            ## 
            ## Gets the associatedIdentities property value. Identities in the authorization system.
            ## @return a azure_associated_identities
            ## 
            def associated_identities
                return @associated_identities
            end
            ## 
            ## Sets the associatedIdentities property value. Identities in the authorization system.
            ## @param value Value to set for the associatedIdentities property.
            ## @return a void
            ## 
            def associated_identities=(value)
                @associated_identities = value
            end
            ## 
            ## Instantiates a new azureAuthorizationSystem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.azureAuthorizationSystem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a azure_authorization_system
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureAuthorizationSystem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actions" => lambda {|n| @actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AzureAuthorizationSystemTypeAction.create_from_discriminator_value(pn) }) },
                    "associatedIdentities" => lambda {|n| @associated_identities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AzureAssociatedIdentities.create_from_discriminator_value(pn) }) },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AzureAuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                    "roleDefinitions" => lambda {|n| @role_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AzureRoleDefinition.create_from_discriminator_value(pn) }) },
                    "services" => lambda {|n| @services = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemTypeService.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resources property value. Resources associated with the authorization system type.
            ## @return a azure_authorization_system_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. Resources associated with the authorization system type.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Gets the roleDefinitions property value. Roles associated with the authorization system type.
            ## @return a azure_role_definition
            ## 
            def role_definitions
                return @role_definitions
            end
            ## 
            ## Sets the roleDefinitions property value. Roles associated with the authorization system type.
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
                writer.write_collection_of_object_values("actions", @actions)
                writer.write_object_value("associatedIdentities", @associated_identities)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_collection_of_object_values("roleDefinitions", @role_definitions)
                writer.write_collection_of_object_values("services", @services)
            end
            ## 
            ## Gets the services property value. Services associated with the authorization system type.
            ## @return a authorization_system_type_service
            ## 
            def services
                return @services
            end
            ## 
            ## Sets the services property value. Services associated with the authorization system type.
            ## @param value Value to set for the services property.
            ## @return a void
            ## 
            def services=(value)
                @services = value
            end
        end
    end
end
