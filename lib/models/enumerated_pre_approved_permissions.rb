require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EnumeratedPreApprovedPermissions < MicrosoftGraphBeta::Models::PreApprovedPermissions
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of id values for the specific resource-specific application permissions to match with. See the resourceSpecificApplicationPermissions property of the servicePrincipal object for the list of permissions.
            @permission_ids
            ## 
            # The appId of the resource application (the API). Required.
            @resource_application_id
            ## 
            ## Instantiates a new EnumeratedPreApprovedPermissions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.enumeratedPreApprovedPermissions"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a enumerated_pre_approved_permissions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnumeratedPreApprovedPermissions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "permissionIds" => lambda {|n| @permission_ids = n.get_collection_of_primitive_values(String) },
                    "resourceApplicationId" => lambda {|n| @resource_application_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the permissionIds property value. The list of id values for the specific resource-specific application permissions to match with. See the resourceSpecificApplicationPermissions property of the servicePrincipal object for the list of permissions.
            ## @return a string
            ## 
            def permission_ids
                return @permission_ids
            end
            ## 
            ## Sets the permissionIds property value. The list of id values for the specific resource-specific application permissions to match with. See the resourceSpecificApplicationPermissions property of the servicePrincipal object for the list of permissions.
            ## @param value Value to set for the permissionIds property.
            ## @return a void
            ## 
            def permission_ids=(value)
                @permission_ids = value
            end
            ## 
            ## Gets the resourceApplicationId property value. The appId of the resource application (the API). Required.
            ## @return a string
            ## 
            def resource_application_id
                return @resource_application_id
            end
            ## 
            ## Sets the resourceApplicationId property value. The appId of the resource application (the API). Required.
            ## @param value Value to set for the resourceApplicationId property.
            ## @return a void
            ## 
            def resource_application_id=(value)
                @resource_application_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("permissionIds", @permission_ids)
                writer.write_string_value("resourceApplicationId", @resource_application_id)
            end
        end
    end
end
