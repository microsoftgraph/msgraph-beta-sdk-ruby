require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AzureRoleDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignableScopes property
            @assignable_scopes
            ## 
            # The azureRoleDefinitionType property
            @azure_role_definition_type
            ## 
            # The displayName property
            @display_name
            ## 
            # The externalId property
            @external_id
            ## 
            ## Gets the assignableScopes property value. The assignableScopes property
            ## @return a string
            ## 
            def assignable_scopes
                return @assignable_scopes
            end
            ## 
            ## Sets the assignableScopes property value. The assignableScopes property
            ## @param value Value to set for the assignableScopes property.
            ## @return a void
            ## 
            def assignable_scopes=(value)
                @assignable_scopes = value
            end
            ## 
            ## Gets the azureRoleDefinitionType property value. The azureRoleDefinitionType property
            ## @return a azure_role_definition_type
            ## 
            def azure_role_definition_type
                return @azure_role_definition_type
            end
            ## 
            ## Sets the azureRoleDefinitionType property value. The azureRoleDefinitionType property
            ## @param value Value to set for the azureRoleDefinitionType property.
            ## @return a void
            ## 
            def azure_role_definition_type=(value)
                @azure_role_definition_type = value
            end
            ## 
            ## Instantiates a new azureRoleDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a azure_role_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureRoleDefinition.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. The externalId property
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The externalId property
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignableScopes" => lambda {|n| @assignable_scopes = n.get_collection_of_primitive_values(String) },
                    "azureRoleDefinitionType" => lambda {|n| @azure_role_definition_type = n.get_enum_value(MicrosoftGraphBeta::Models::AzureRoleDefinitionType) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
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
                writer.write_collection_of_primitive_values("assignableScopes", @assignable_scopes)
                writer.write_enum_value("azureRoleDefinitionType", @azure_role_definition_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("externalId", @external_id)
            end
        end
    end
end
