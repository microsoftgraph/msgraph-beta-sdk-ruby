require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsExternalSystemAccessRoleFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The IDs of the accounts that this role is able to access.
            @accessible_system_ids
            ## 
            # The permissionsCreepIndex property
            @permissions_creep_index
            ## 
            # The role property
            @role
            ## 
            ## Gets the accessibleSystemIds property value. The IDs of the accounts that this role is able to access.
            ## @return a string
            ## 
            def accessible_system_ids
                return @accessible_system_ids
            end
            ## 
            ## Sets the accessibleSystemIds property value. The IDs of the accounts that this role is able to access.
            ## @param value Value to set for the accessibleSystemIds property.
            ## @return a void
            ## 
            def accessible_system_ids=(value)
                @accessible_system_ids = value
            end
            ## 
            ## Instantiates a new AwsExternalSystemAccessRoleFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_external_system_access_role_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsExternalSystemAccessRoleFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessibleSystemIds" => lambda {|n| @accessible_system_ids = n.get_collection_of_primitive_values(String) },
                    "permissionsCreepIndex" => lambda {|n| @permissions_creep_index = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsCreepIndex.create_from_discriminator_value(pn) }) },
                    "role" => lambda {|n| @role = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AwsRole.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @return a permissions_creep_index
            ## 
            def permissions_creep_index
                return @permissions_creep_index
            end
            ## 
            ## Sets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @param value Value to set for the permissionsCreepIndex property.
            ## @return a void
            ## 
            def permissions_creep_index=(value)
                @permissions_creep_index = value
            end
            ## 
            ## Gets the role property value. The role property
            ## @return a aws_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The role property
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("accessibleSystemIds", @accessible_system_ids)
                writer.write_object_value("permissionsCreepIndex", @permissions_creep_index)
                writer.write_object_value("role", @role)
            end
        end
    end
end
