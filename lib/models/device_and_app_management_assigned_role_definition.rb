require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Complex type to represent the role that is assigned to the user. This type contains the ID, the display name, and the permissions of the role.
        class DeviceAndAppManagementAssignedRoleDefinition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A list of permissions based on its associated role. Each permission defines the specific actions the user can perform on Intune resources, such as managing devices, applications, or configurations. Some possible values are: Microsoft.Intune/MobileApps/Read, Microsoft.Intune/DeviceConfigurations/Write, Microsoft.Intune/ManagedDevices/Retire, and Microsoft.Intune/DeviceCompliancePolicies/Assign. This Permissions property offers a comprehensive view of the user's effective access rights, ensuring that they can only perform actions relevant to their assigned roles. This property is read-only.
            @permissions
            ## 
            # The RoleDefinitionDisplayName property represents the human-readable name of a specific role definition in Microsoft Intune. This property provides a clear and descriptive name that indicates the purpose or scope of the role, helping administrators identify and assign appropriate roles to users or groups.Some example values for RoleDefinitionDisplayName might include: "Helpdesk Operator," "Application Manager," or "Policy Administrator." This display name is primarily used in the Intune console or Graph API to present roles in a user-friendly manner, making it easier for administrators to manage role-based access control (RBAC) efficiently. This property is read-only.
            @role_definition_display_name
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new DeviceAndAppManagementAssignedRoleDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_and_app_management_assigned_role_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceAndAppManagementAssignedRoleDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "permissions" => lambda {|n| @permissions = n.get_collection_of_primitive_values(String) },
                    "roleDefinitionDisplayName" => lambda {|n| @role_definition_display_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the permissions property value. A list of permissions based on its associated role. Each permission defines the specific actions the user can perform on Intune resources, such as managing devices, applications, or configurations. Some possible values are: Microsoft.Intune/MobileApps/Read, Microsoft.Intune/DeviceConfigurations/Write, Microsoft.Intune/ManagedDevices/Retire, and Microsoft.Intune/DeviceCompliancePolicies/Assign. This Permissions property offers a comprehensive view of the user's effective access rights, ensuring that they can only perform actions relevant to their assigned roles. This property is read-only.
            ## @return a string
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. A list of permissions based on its associated role. Each permission defines the specific actions the user can perform on Intune resources, such as managing devices, applications, or configurations. Some possible values are: Microsoft.Intune/MobileApps/Read, Microsoft.Intune/DeviceConfigurations/Write, Microsoft.Intune/ManagedDevices/Retire, and Microsoft.Intune/DeviceCompliancePolicies/Assign. This Permissions property offers a comprehensive view of the user's effective access rights, ensuring that they can only perform actions relevant to their assigned roles. This property is read-only.
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Gets the roleDefinitionDisplayName property value. The RoleDefinitionDisplayName property represents the human-readable name of a specific role definition in Microsoft Intune. This property provides a clear and descriptive name that indicates the purpose or scope of the role, helping administrators identify and assign appropriate roles to users or groups.Some example values for RoleDefinitionDisplayName might include: "Helpdesk Operator," "Application Manager," or "Policy Administrator." This display name is primarily used in the Intune console or Graph API to present roles in a user-friendly manner, making it easier for administrators to manage role-based access control (RBAC) efficiently. This property is read-only.
            ## @return a string
            ## 
            def role_definition_display_name
                return @role_definition_display_name
            end
            ## 
            ## Sets the roleDefinitionDisplayName property value. The RoleDefinitionDisplayName property represents the human-readable name of a specific role definition in Microsoft Intune. This property provides a clear and descriptive name that indicates the purpose or scope of the role, helping administrators identify and assign appropriate roles to users or groups.Some example values for RoleDefinitionDisplayName might include: "Helpdesk Operator," "Application Manager," or "Policy Administrator." This display name is primarily used in the Intune console or Graph API to present roles in a user-friendly manner, making it easier for administrators to manage role-based access control (RBAC) efficiently. This property is read-only.
            ## @param value Value to set for the roleDefinitionDisplayName property.
            ## @return a void
            ## 
            def role_definition_display_name=(value)
                @role_definition_display_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
