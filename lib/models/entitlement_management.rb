require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EntitlementManagement < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessPackageAssignmentApprovals property
            @access_package_assignment_approvals
            ## 
            # Represents the policy that governs which subjects can request or be assigned an access package via an access package assignment.
            @access_package_assignment_policies
            ## 
            # Represents access package assignment requests created by or on behalf of a user.
            @access_package_assignment_requests
            ## 
            # Represents the resource-specific role which a subject has been assigned through an access package assignment.
            @access_package_assignment_resource_roles
            ## 
            # The assignment of an access package to a subject for a period of time.
            @access_package_assignments
            ## 
            # A container of access packages.
            @access_package_catalogs
            ## 
            # A reference to the geolocation environment in which a resource is located.
            @access_package_resource_environments
            ## 
            # Represents a request to add or remove a resource to or from a catalog respectively.
            @access_package_resource_requests
            ## 
            # A reference to both a scope within a resource, and a role in that resource for that scope.
            @access_package_resource_role_scopes
            ## 
            # A reference to a resource associated with an access package catalog.
            @access_package_resources
            ## 
            # Represents access package objects.
            @access_packages
            ## 
            # Represents references to a directory or domain of another organization whose users can request access.
            @connected_organizations
            ## 
            # Represents the settings that control the behavior of Azure AD entitlement management.
            @settings
            ## 
            # Represents the subjects within entitlement management.
            @subjects
            ## 
            ## Gets the accessPackageAssignmentApprovals property value. The accessPackageAssignmentApprovals property
            ## @return a approval
            ## 
            def access_package_assignment_approvals
                return @access_package_assignment_approvals
            end
            ## 
            ## Sets the accessPackageAssignmentApprovals property value. The accessPackageAssignmentApprovals property
            ## @param value Value to set for the accessPackageAssignmentApprovals property.
            ## @return a void
            ## 
            def access_package_assignment_approvals=(value)
                @access_package_assignment_approvals = value
            end
            ## 
            ## Gets the accessPackageAssignmentPolicies property value. Represents the policy that governs which subjects can request or be assigned an access package via an access package assignment.
            ## @return a access_package_assignment_policy
            ## 
            def access_package_assignment_policies
                return @access_package_assignment_policies
            end
            ## 
            ## Sets the accessPackageAssignmentPolicies property value. Represents the policy that governs which subjects can request or be assigned an access package via an access package assignment.
            ## @param value Value to set for the accessPackageAssignmentPolicies property.
            ## @return a void
            ## 
            def access_package_assignment_policies=(value)
                @access_package_assignment_policies = value
            end
            ## 
            ## Gets the accessPackageAssignmentRequests property value. Represents access package assignment requests created by or on behalf of a user.
            ## @return a access_package_assignment_request
            ## 
            def access_package_assignment_requests
                return @access_package_assignment_requests
            end
            ## 
            ## Sets the accessPackageAssignmentRequests property value. Represents access package assignment requests created by or on behalf of a user.
            ## @param value Value to set for the accessPackageAssignmentRequests property.
            ## @return a void
            ## 
            def access_package_assignment_requests=(value)
                @access_package_assignment_requests = value
            end
            ## 
            ## Gets the accessPackageAssignmentResourceRoles property value. Represents the resource-specific role which a subject has been assigned through an access package assignment.
            ## @return a access_package_assignment_resource_role
            ## 
            def access_package_assignment_resource_roles
                return @access_package_assignment_resource_roles
            end
            ## 
            ## Sets the accessPackageAssignmentResourceRoles property value. Represents the resource-specific role which a subject has been assigned through an access package assignment.
            ## @param value Value to set for the accessPackageAssignmentResourceRoles property.
            ## @return a void
            ## 
            def access_package_assignment_resource_roles=(value)
                @access_package_assignment_resource_roles = value
            end
            ## 
            ## Gets the accessPackageAssignments property value. The assignment of an access package to a subject for a period of time.
            ## @return a access_package_assignment
            ## 
            def access_package_assignments
                return @access_package_assignments
            end
            ## 
            ## Sets the accessPackageAssignments property value. The assignment of an access package to a subject for a period of time.
            ## @param value Value to set for the accessPackageAssignments property.
            ## @return a void
            ## 
            def access_package_assignments=(value)
                @access_package_assignments = value
            end
            ## 
            ## Gets the accessPackageCatalogs property value. A container of access packages.
            ## @return a access_package_catalog
            ## 
            def access_package_catalogs
                return @access_package_catalogs
            end
            ## 
            ## Sets the accessPackageCatalogs property value. A container of access packages.
            ## @param value Value to set for the accessPackageCatalogs property.
            ## @return a void
            ## 
            def access_package_catalogs=(value)
                @access_package_catalogs = value
            end
            ## 
            ## Gets the accessPackageResourceEnvironments property value. A reference to the geolocation environment in which a resource is located.
            ## @return a access_package_resource_environment
            ## 
            def access_package_resource_environments
                return @access_package_resource_environments
            end
            ## 
            ## Sets the accessPackageResourceEnvironments property value. A reference to the geolocation environment in which a resource is located.
            ## @param value Value to set for the accessPackageResourceEnvironments property.
            ## @return a void
            ## 
            def access_package_resource_environments=(value)
                @access_package_resource_environments = value
            end
            ## 
            ## Gets the accessPackageResourceRequests property value. Represents a request to add or remove a resource to or from a catalog respectively.
            ## @return a access_package_resource_request
            ## 
            def access_package_resource_requests
                return @access_package_resource_requests
            end
            ## 
            ## Sets the accessPackageResourceRequests property value. Represents a request to add or remove a resource to or from a catalog respectively.
            ## @param value Value to set for the accessPackageResourceRequests property.
            ## @return a void
            ## 
            def access_package_resource_requests=(value)
                @access_package_resource_requests = value
            end
            ## 
            ## Gets the accessPackageResourceRoleScopes property value. A reference to both a scope within a resource, and a role in that resource for that scope.
            ## @return a access_package_resource_role_scope
            ## 
            def access_package_resource_role_scopes
                return @access_package_resource_role_scopes
            end
            ## 
            ## Sets the accessPackageResourceRoleScopes property value. A reference to both a scope within a resource, and a role in that resource for that scope.
            ## @param value Value to set for the accessPackageResourceRoleScopes property.
            ## @return a void
            ## 
            def access_package_resource_role_scopes=(value)
                @access_package_resource_role_scopes = value
            end
            ## 
            ## Gets the accessPackageResources property value. A reference to a resource associated with an access package catalog.
            ## @return a access_package_resource
            ## 
            def access_package_resources
                return @access_package_resources
            end
            ## 
            ## Sets the accessPackageResources property value. A reference to a resource associated with an access package catalog.
            ## @param value Value to set for the accessPackageResources property.
            ## @return a void
            ## 
            def access_package_resources=(value)
                @access_package_resources = value
            end
            ## 
            ## Gets the accessPackages property value. Represents access package objects.
            ## @return a access_package
            ## 
            def access_packages
                return @access_packages
            end
            ## 
            ## Sets the accessPackages property value. Represents access package objects.
            ## @param value Value to set for the accessPackages property.
            ## @return a void
            ## 
            def access_packages=(value)
                @access_packages = value
            end
            ## 
            ## Gets the connectedOrganizations property value. Represents references to a directory or domain of another organization whose users can request access.
            ## @return a connected_organization
            ## 
            def connected_organizations
                return @connected_organizations
            end
            ## 
            ## Sets the connectedOrganizations property value. Represents references to a directory or domain of another organization whose users can request access.
            ## @param value Value to set for the connectedOrganizations property.
            ## @return a void
            ## 
            def connected_organizations=(value)
                @connected_organizations = value
            end
            ## 
            ## Instantiates a new entitlementManagement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a entitlement_management
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EntitlementManagement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessPackageAssignmentApprovals" => lambda {|n| @access_package_assignment_approvals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Approval.create_from_discriminator_value(pn) }) },
                    "accessPackageAssignmentPolicies" => lambda {|n| @access_package_assignment_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentPolicy.create_from_discriminator_value(pn) }) },
                    "accessPackageAssignmentRequests" => lambda {|n| @access_package_assignment_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentRequest.create_from_discriminator_value(pn) }) },
                    "accessPackageAssignmentResourceRoles" => lambda {|n| @access_package_assignment_resource_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentResourceRole.create_from_discriminator_value(pn) }) },
                    "accessPackageAssignments" => lambda {|n| @access_package_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignment.create_from_discriminator_value(pn) }) },
                    "accessPackageCatalogs" => lambda {|n| @access_package_catalogs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageCatalog.create_from_discriminator_value(pn) }) },
                    "accessPackageResourceEnvironments" => lambda {|n| @access_package_resource_environments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceEnvironment.create_from_discriminator_value(pn) }) },
                    "accessPackageResourceRequests" => lambda {|n| @access_package_resource_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRequest.create_from_discriminator_value(pn) }) },
                    "accessPackageResourceRoleScopes" => lambda {|n| @access_package_resource_role_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRoleScope.create_from_discriminator_value(pn) }) },
                    "accessPackageResources" => lambda {|n| @access_package_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResource.create_from_discriminator_value(pn) }) },
                    "accessPackages" => lambda {|n| @access_packages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "connectedOrganizations" => lambda {|n| @connected_organizations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConnectedOrganization.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EntitlementManagementSettings.create_from_discriminator_value(pn) }) },
                    "subjects" => lambda {|n| @subjects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageSubject.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("accessPackageAssignmentApprovals", @access_package_assignment_approvals)
                writer.write_collection_of_object_values("accessPackageAssignmentPolicies", @access_package_assignment_policies)
                writer.write_collection_of_object_values("accessPackageAssignmentRequests", @access_package_assignment_requests)
                writer.write_collection_of_object_values("accessPackageAssignmentResourceRoles", @access_package_assignment_resource_roles)
                writer.write_collection_of_object_values("accessPackageAssignments", @access_package_assignments)
                writer.write_collection_of_object_values("accessPackageCatalogs", @access_package_catalogs)
                writer.write_collection_of_object_values("accessPackageResourceEnvironments", @access_package_resource_environments)
                writer.write_collection_of_object_values("accessPackageResourceRequests", @access_package_resource_requests)
                writer.write_collection_of_object_values("accessPackageResourceRoleScopes", @access_package_resource_role_scopes)
                writer.write_collection_of_object_values("accessPackageResources", @access_package_resources)
                writer.write_collection_of_object_values("accessPackages", @access_packages)
                writer.write_collection_of_object_values("connectedOrganizations", @connected_organizations)
                writer.write_object_value("settings", @settings)
                writer.write_collection_of_object_values("subjects", @subjects)
            end
            ## 
            ## Gets the settings property value. Represents the settings that control the behavior of Azure AD entitlement management.
            ## @return a entitlement_management_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Represents the settings that control the behavior of Azure AD entitlement management.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the subjects property value. Represents the subjects within entitlement management.
            ## @return a access_package_subject
            ## 
            def subjects
                return @subjects
            end
            ## 
            ## Sets the subjects property value. Represents the subjects within entitlement management.
            ## @param value Value to set for the subjects property.
            ## @return a void
            ## 
            def subjects=(value)
                @subjects = value
            end
        end
    end
end
