require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ShiftsRoleDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The shiftsRolePermissions property
            @shifts_role_permissions
            ## 
            ## Instantiates a new ShiftsRoleDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a shifts_role_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ShiftsRoleDefinition.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "shiftsRolePermissions" => lambda {|n| @shifts_role_permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ShiftsRolePermission.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("shiftsRolePermissions", @shifts_role_permissions)
            end
            ## 
            ## Gets the shiftsRolePermissions property value. The shiftsRolePermissions property
            ## @return a shifts_role_permission
            ## 
            def shifts_role_permissions
                return @shifts_role_permissions
            end
            ## 
            ## Sets the shiftsRolePermissions property value. The shiftsRolePermissions property
            ## @param value Value to set for the shiftsRolePermissions property.
            ## @return a void
            ## 
            def shifts_role_permissions=(value)
                @shifts_role_permissions = value
            end
        end
    end
end
