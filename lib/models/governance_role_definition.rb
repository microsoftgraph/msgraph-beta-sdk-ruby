require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GovernanceRoleDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the role definition.
            @display_name
            ## 
            # The external id of the role definition.
            @external_id
            ## 
            # Read-only. The associated resource for the role definition.
            @resource
            ## 
            # Required. The id of the resource associated with the role definition.
            @resource_id
            ## 
            # The associated role setting for the role definition.
            @role_setting
            ## 
            # The templateId property
            @template_id
            ## 
            ## Instantiates a new GovernanceRoleDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a governance_role_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GovernanceRoleDefinition.new
            end
            ## 
            ## Gets the displayName property value. The display name of the role definition.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the role definition.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. The external id of the role definition.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The external id of the role definition.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceResource.create_from_discriminator_value(pn) }) },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "roleSetting" => lambda {|n| @role_setting = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleSetting.create_from_discriminator_value(pn) }) },
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the resource property value. Read-only. The associated resource for the role definition.
            ## @return a governance_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. Read-only. The associated resource for the role definition.
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Gets the resourceId property value. Required. The id of the resource associated with the role definition.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. Required. The id of the resource associated with the role definition.
            ## @param value Value to set for the resourceId property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Gets the roleSetting property value. The associated role setting for the role definition.
            ## @return a governance_role_setting
            ## 
            def role_setting
                return @role_setting
            end
            ## 
            ## Sets the roleSetting property value. The associated role setting for the role definition.
            ## @param value Value to set for the roleSetting property.
            ## @return a void
            ## 
            def role_setting=(value)
                @role_setting = value
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
                writer.write_string_value("externalId", @external_id)
                writer.write_object_value("resource", @resource)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_object_value("roleSetting", @role_setting)
                writer.write_string_value("templateId", @template_id)
            end
            ## 
            ## Gets the templateId property value. The templateId property
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. The templateId property
            ## @param value Value to set for the templateId property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
        end
    end
end
