require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessPackageCatalog < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The roles in each resource in a catalog. Read-only.
        @access_package_resource_roles
        ## 
        # The accessPackageResources property
        @access_package_resources
        ## 
        # The accessPackageResourceScopes property
        @access_package_resource_scopes
        ## 
        # The access packages in this catalog. Read-only. Nullable. Supports $expand.
        @access_packages
        ## 
        # Has the value Published if the access packages are available for management.
        @catalog_status
        ## 
        # One of UserManaged or ServiceDefault.
        @catalog_type
        ## 
        # UPN of the user who created this resource. Read-only.
        @created_by
        ## 
        # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        @created_date_time
        ## 
        # The customAccessPackageWorkflowExtensions property
        @custom_access_package_workflow_extensions
        ## 
        # The description of the access package catalog.
        @description
        ## 
        # The display name of the access package catalog. Supports $filter (eq, contains).
        @display_name
        ## 
        # Whether the access packages in this catalog can be requested by users outside of the tenant.
        @is_externally_visible
        ## 
        # The UPN of the user who last modified this resource. Read-only.
        @modified_by
        ## 
        # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        @modified_date_time
        ## 
        ## Gets the accessPackageResourceRoles property value. The roles in each resource in a catalog. Read-only.
        ## @return a access_package_resource_role
        ## 
        def access_package_resource_roles
            return @access_package_resource_roles
        end
        ## 
        ## Sets the accessPackageResourceRoles property value. The roles in each resource in a catalog. Read-only.
        ## @param value Value to set for the accessPackageResourceRoles property.
        ## @return a void
        ## 
        def access_package_resource_roles=(value)
            @access_package_resource_roles = value
        end
        ## 
        ## Gets the accessPackageResources property value. The accessPackageResources property
        ## @return a access_package_resource
        ## 
        def access_package_resources
            return @access_package_resources
        end
        ## 
        ## Sets the accessPackageResources property value. The accessPackageResources property
        ## @param value Value to set for the accessPackageResources property.
        ## @return a void
        ## 
        def access_package_resources=(value)
            @access_package_resources = value
        end
        ## 
        ## Gets the accessPackageResourceScopes property value. The accessPackageResourceScopes property
        ## @return a access_package_resource_scope
        ## 
        def access_package_resource_scopes
            return @access_package_resource_scopes
        end
        ## 
        ## Sets the accessPackageResourceScopes property value. The accessPackageResourceScopes property
        ## @param value Value to set for the accessPackageResourceScopes property.
        ## @return a void
        ## 
        def access_package_resource_scopes=(value)
            @access_package_resource_scopes = value
        end
        ## 
        ## Gets the accessPackages property value. The access packages in this catalog. Read-only. Nullable. Supports $expand.
        ## @return a access_package
        ## 
        def access_packages
            return @access_packages
        end
        ## 
        ## Sets the accessPackages property value. The access packages in this catalog. Read-only. Nullable. Supports $expand.
        ## @param value Value to set for the accessPackages property.
        ## @return a void
        ## 
        def access_packages=(value)
            @access_packages = value
        end
        ## 
        ## Gets the catalogStatus property value. Has the value Published if the access packages are available for management.
        ## @return a string
        ## 
        def catalog_status
            return @catalog_status
        end
        ## 
        ## Sets the catalogStatus property value. Has the value Published if the access packages are available for management.
        ## @param value Value to set for the catalogStatus property.
        ## @return a void
        ## 
        def catalog_status=(value)
            @catalog_status = value
        end
        ## 
        ## Gets the catalogType property value. One of UserManaged or ServiceDefault.
        ## @return a string
        ## 
        def catalog_type
            return @catalog_type
        end
        ## 
        ## Sets the catalogType property value. One of UserManaged or ServiceDefault.
        ## @param value Value to set for the catalogType property.
        ## @return a void
        ## 
        def catalog_type=(value)
            @catalog_type = value
        end
        ## 
        ## Instantiates a new accessPackageCatalog and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdBy property value. UPN of the user who created this resource. Read-only.
        ## @return a string
        ## 
        def created_by
            return @created_by
        end
        ## 
        ## Sets the createdBy property value. UPN of the user who created this resource. Read-only.
        ## @param value Value to set for the createdBy property.
        ## @return a void
        ## 
        def created_by=(value)
            @created_by = value
        end
        ## 
        ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_package_catalog
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AccessPackageCatalog.new
        end
        ## 
        ## Gets the customAccessPackageWorkflowExtensions property value. The customAccessPackageWorkflowExtensions property
        ## @return a custom_access_package_workflow_extension
        ## 
        def custom_access_package_workflow_extensions
            return @custom_access_package_workflow_extensions
        end
        ## 
        ## Sets the customAccessPackageWorkflowExtensions property value. The customAccessPackageWorkflowExtensions property
        ## @param value Value to set for the customAccessPackageWorkflowExtensions property.
        ## @return a void
        ## 
        def custom_access_package_workflow_extensions=(value)
            @custom_access_package_workflow_extensions = value
        end
        ## 
        ## Gets the description property value. The description of the access package catalog.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description of the access package catalog.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The display name of the access package catalog. Supports $filter (eq, contains).
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name of the access package catalog. Supports $filter (eq, contains).
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
                "accessPackageResourceRoles" => lambda {|n| @access_package_resource_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }) },
                "accessPackageResources" => lambda {|n| @access_package_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResource.create_from_discriminator_value(pn) }) },
                "accessPackageResourceScopes" => lambda {|n| @access_package_resource_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }) },
                "accessPackages" => lambda {|n| @access_packages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                "catalogStatus" => lambda {|n| @catalog_status = n.get_string_value() },
                "catalogType" => lambda {|n| @catalog_type = n.get_string_value() },
                "createdBy" => lambda {|n| @created_by = n.get_string_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "customAccessPackageWorkflowExtensions" => lambda {|n| @custom_access_package_workflow_extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomAccessPackageWorkflowExtension.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "isExternallyVisible" => lambda {|n| @is_externally_visible = n.get_boolean_value() },
                "modifiedBy" => lambda {|n| @modified_by = n.get_string_value() },
                "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the isExternallyVisible property value. Whether the access packages in this catalog can be requested by users outside of the tenant.
        ## @return a boolean
        ## 
        def is_externally_visible
            return @is_externally_visible
        end
        ## 
        ## Sets the isExternallyVisible property value. Whether the access packages in this catalog can be requested by users outside of the tenant.
        ## @param value Value to set for the isExternallyVisible property.
        ## @return a void
        ## 
        def is_externally_visible=(value)
            @is_externally_visible = value
        end
        ## 
        ## Gets the modifiedBy property value. The UPN of the user who last modified this resource. Read-only.
        ## @return a string
        ## 
        def modified_by
            return @modified_by
        end
        ## 
        ## Sets the modifiedBy property value. The UPN of the user who last modified this resource. Read-only.
        ## @param value Value to set for the modifiedBy property.
        ## @return a void
        ## 
        def modified_by=(value)
            @modified_by = value
        end
        ## 
        ## Gets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        ## @return a date_time
        ## 
        def modified_date_time
            return @modified_date_time
        end
        ## 
        ## Sets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        ## @param value Value to set for the modifiedDateTime property.
        ## @return a void
        ## 
        def modified_date_time=(value)
            @modified_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("accessPackageResourceRoles", @access_package_resource_roles)
            writer.write_collection_of_object_values("accessPackageResources", @access_package_resources)
            writer.write_collection_of_object_values("accessPackageResourceScopes", @access_package_resource_scopes)
            writer.write_collection_of_object_values("accessPackages", @access_packages)
            writer.write_string_value("catalogStatus", @catalog_status)
            writer.write_string_value("catalogType", @catalog_type)
            writer.write_string_value("createdBy", @created_by)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_collection_of_object_values("customAccessPackageWorkflowExtensions", @custom_access_package_workflow_extensions)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_boolean_value("isExternallyVisible", @is_externally_visible)
            writer.write_string_value("modifiedBy", @modified_by)
            writer.write_date_time_value("modifiedDateTime", @modified_date_time)
        end
    end
end
