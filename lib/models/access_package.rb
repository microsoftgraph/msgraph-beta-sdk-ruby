require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackage < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Nullable. Supports $expand.
            @access_package_assignment_policies
            ## 
            # The accessPackageCatalog property
            @access_package_catalog
            ## 
            # The accessPackageResourceRoleScopes property
            @access_package_resource_role_scopes
            ## 
            # The access packages that are incompatible with this package. Read-only.
            @access_packages_incompatible_with
            ## 
            # Identifier of the access package catalog referencing this access package. Read-only.
            @catalog_id
            ## 
            # The userPrincipalName of the user or identity of the subject who created this resource. Read-only.
            @created_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # The description of the access package.
            @description
            ## 
            # The display name of the access package. Supports $filter (eq, contains).
            @display_name
            ## 
            # The  access packages whose assigned users are ineligible to be assigned this access package.
            @incompatible_access_packages
            ## 
            # The groups whose members are ineligible to be assigned this access package.
            @incompatible_groups
            ## 
            # Whether the access package is hidden from the requestor.
            @is_hidden
            ## 
            # Indicates whether role scopes are visible.
            @is_role_scopes_visible
            ## 
            # The userPrincipalName of the user who last modified this resource. Read-only.
            @modified_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @modified_date_time
            ## 
            ## Gets the accessPackageAssignmentPolicies property value. Read-only. Nullable. Supports $expand.
            ## @return a access_package_assignment_policy
            ## 
            def access_package_assignment_policies
                return @access_package_assignment_policies
            end
            ## 
            ## Sets the accessPackageAssignmentPolicies property value. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the access_package_assignment_policies property.
            ## @return a void
            ## 
            def access_package_assignment_policies=(value)
                @access_package_assignment_policies = value
            end
            ## 
            ## Gets the accessPackageCatalog property value. The accessPackageCatalog property
            ## @return a access_package_catalog
            ## 
            def access_package_catalog
                return @access_package_catalog
            end
            ## 
            ## Sets the accessPackageCatalog property value. The accessPackageCatalog property
            ## @param value Value to set for the access_package_catalog property.
            ## @return a void
            ## 
            def access_package_catalog=(value)
                @access_package_catalog = value
            end
            ## 
            ## Gets the accessPackageResourceRoleScopes property value. The accessPackageResourceRoleScopes property
            ## @return a access_package_resource_role_scope
            ## 
            def access_package_resource_role_scopes
                return @access_package_resource_role_scopes
            end
            ## 
            ## Sets the accessPackageResourceRoleScopes property value. The accessPackageResourceRoleScopes property
            ## @param value Value to set for the access_package_resource_role_scopes property.
            ## @return a void
            ## 
            def access_package_resource_role_scopes=(value)
                @access_package_resource_role_scopes = value
            end
            ## 
            ## Gets the accessPackagesIncompatibleWith property value. The access packages that are incompatible with this package. Read-only.
            ## @return a access_package
            ## 
            def access_packages_incompatible_with
                return @access_packages_incompatible_with
            end
            ## 
            ## Sets the accessPackagesIncompatibleWith property value. The access packages that are incompatible with this package. Read-only.
            ## @param value Value to set for the access_packages_incompatible_with property.
            ## @return a void
            ## 
            def access_packages_incompatible_with=(value)
                @access_packages_incompatible_with = value
            end
            ## 
            ## Gets the catalogId property value. Identifier of the access package catalog referencing this access package. Read-only.
            ## @return a string
            ## 
            def catalog_id
                return @catalog_id
            end
            ## 
            ## Sets the catalogId property value. Identifier of the access package catalog referencing this access package. Read-only.
            ## @param value Value to set for the catalog_id property.
            ## @return a void
            ## 
            def catalog_id=(value)
                @catalog_id = value
            end
            ## 
            ## Instantiates a new accessPackage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The userPrincipalName of the user or identity of the subject who created this resource. Read-only.
            ## @return a string
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The userPrincipalName of the user or identity of the subject who created this resource. Read-only.
            ## @param value Value to set for the created_by property.
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
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackage.new
            end
            ## 
            ## Gets the description property value. The description of the access package.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the access package.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the access package. Supports $filter (eq, contains).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the access package. Supports $filter (eq, contains).
            ## @param value Value to set for the display_name property.
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
                    "accessPackageAssignmentPolicies" => lambda {|n| @access_package_assignment_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentPolicy.create_from_discriminator_value(pn) }) },
                    "accessPackageCatalog" => lambda {|n| @access_package_catalog = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageCatalog.create_from_discriminator_value(pn) }) },
                    "accessPackageResourceRoleScopes" => lambda {|n| @access_package_resource_role_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRoleScope.create_from_discriminator_value(pn) }) },
                    "accessPackagesIncompatibleWith" => lambda {|n| @access_packages_incompatible_with = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "catalogId" => lambda {|n| @catalog_id = n.get_string_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "incompatibleAccessPackages" => lambda {|n| @incompatible_access_packages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "incompatibleGroups" => lambda {|n| @incompatible_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Group.create_from_discriminator_value(pn) }) },
                    "isHidden" => lambda {|n| @is_hidden = n.get_boolean_value() },
                    "isRoleScopesVisible" => lambda {|n| @is_role_scopes_visible = n.get_boolean_value() },
                    "modifiedBy" => lambda {|n| @modified_by = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the incompatibleAccessPackages property value. The  access packages whose assigned users are ineligible to be assigned this access package.
            ## @return a access_package
            ## 
            def incompatible_access_packages
                return @incompatible_access_packages
            end
            ## 
            ## Sets the incompatibleAccessPackages property value. The  access packages whose assigned users are ineligible to be assigned this access package.
            ## @param value Value to set for the incompatible_access_packages property.
            ## @return a void
            ## 
            def incompatible_access_packages=(value)
                @incompatible_access_packages = value
            end
            ## 
            ## Gets the incompatibleGroups property value. The groups whose members are ineligible to be assigned this access package.
            ## @return a group
            ## 
            def incompatible_groups
                return @incompatible_groups
            end
            ## 
            ## Sets the incompatibleGroups property value. The groups whose members are ineligible to be assigned this access package.
            ## @param value Value to set for the incompatible_groups property.
            ## @return a void
            ## 
            def incompatible_groups=(value)
                @incompatible_groups = value
            end
            ## 
            ## Gets the isHidden property value. Whether the access package is hidden from the requestor.
            ## @return a boolean
            ## 
            def is_hidden
                return @is_hidden
            end
            ## 
            ## Sets the isHidden property value. Whether the access package is hidden from the requestor.
            ## @param value Value to set for the is_hidden property.
            ## @return a void
            ## 
            def is_hidden=(value)
                @is_hidden = value
            end
            ## 
            ## Gets the isRoleScopesVisible property value. Indicates whether role scopes are visible.
            ## @return a boolean
            ## 
            def is_role_scopes_visible
                return @is_role_scopes_visible
            end
            ## 
            ## Sets the isRoleScopesVisible property value. Indicates whether role scopes are visible.
            ## @param value Value to set for the is_role_scopes_visible property.
            ## @return a void
            ## 
            def is_role_scopes_visible=(value)
                @is_role_scopes_visible = value
            end
            ## 
            ## Gets the modifiedBy property value. The userPrincipalName of the user who last modified this resource. Read-only.
            ## @return a string
            ## 
            def modified_by
                return @modified_by
            end
            ## 
            ## Sets the modifiedBy property value. The userPrincipalName of the user who last modified this resource. Read-only.
            ## @param value Value to set for the modified_by property.
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
            ## @param value Value to set for the modified_date_time property.
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
                writer.write_collection_of_object_values("accessPackageAssignmentPolicies", @access_package_assignment_policies)
                writer.write_object_value("accessPackageCatalog", @access_package_catalog)
                writer.write_collection_of_object_values("accessPackageResourceRoleScopes", @access_package_resource_role_scopes)
                writer.write_collection_of_object_values("accessPackagesIncompatibleWith", @access_packages_incompatible_with)
                writer.write_string_value("catalogId", @catalog_id)
                writer.write_string_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("incompatibleAccessPackages", @incompatible_access_packages)
                writer.write_collection_of_object_values("incompatibleGroups", @incompatible_groups)
                writer.write_boolean_value("isHidden", @is_hidden)
                writer.write_boolean_value("isRoleScopesVisible", @is_role_scopes_visible)
                writer.write_string_value("modifiedBy", @modified_by)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
            end
        end
    end
end
