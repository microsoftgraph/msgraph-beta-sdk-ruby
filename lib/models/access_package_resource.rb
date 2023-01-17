require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessPackageResource < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
        @access_package_resource_environment
        ## 
        # Read-only. Nullable. Supports $expand.
        @access_package_resource_roles
        ## 
        # Read-only. Nullable. Supports $expand.
        @access_package_resource_scopes
        ## 
        # The name of the user or application that first added this resource. Read-only.
        @added_by
        ## 
        # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        @added_on
        ## 
        # Contains information about the attributes to be collected from the requestor and sent to the resource application.
        @attributes
        ## 
        # A description for the resource.
        @description
        ## 
        # The display name of the resource, such as the application name, group name or site name.
        @display_name
        ## 
        # True if the resource is not yet available for assignment. Read-only.
        @is_pending_onboarding
        ## 
        # The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group.
        @origin_id
        ## 
        # The type of the resource in the origin system, such as SharePointOnline, AadApplication or AadGroup.
        @origin_system
        ## 
        # The type of the resource, such as Application if it is an Azure AD connected application, or SharePoint Online Site for a SharePoint Online site.
        @resource_type
        ## 
        # A unique resource locator for the resource, such as the URL for signing a user into an application.
        @url
        ## 
        ## Gets the accessPackageResourceEnvironment property value. Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
        ## @return a access_package_resource_environment
        ## 
        def access_package_resource_environment
            return @access_package_resource_environment
        end
        ## 
        ## Sets the accessPackageResourceEnvironment property value. Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
        ## @param value Value to set for the accessPackageResourceEnvironment property.
        ## @return a void
        ## 
        def access_package_resource_environment=(value)
            @access_package_resource_environment = value
        end
        ## 
        ## Gets the accessPackageResourceRoles property value. Read-only. Nullable. Supports $expand.
        ## @return a access_package_resource_role
        ## 
        def access_package_resource_roles
            return @access_package_resource_roles
        end
        ## 
        ## Sets the accessPackageResourceRoles property value. Read-only. Nullable. Supports $expand.
        ## @param value Value to set for the accessPackageResourceRoles property.
        ## @return a void
        ## 
        def access_package_resource_roles=(value)
            @access_package_resource_roles = value
        end
        ## 
        ## Gets the accessPackageResourceScopes property value. Read-only. Nullable. Supports $expand.
        ## @return a access_package_resource_scope
        ## 
        def access_package_resource_scopes
            return @access_package_resource_scopes
        end
        ## 
        ## Sets the accessPackageResourceScopes property value. Read-only. Nullable. Supports $expand.
        ## @param value Value to set for the accessPackageResourceScopes property.
        ## @return a void
        ## 
        def access_package_resource_scopes=(value)
            @access_package_resource_scopes = value
        end
        ## 
        ## Gets the addedBy property value. The name of the user or application that first added this resource. Read-only.
        ## @return a string
        ## 
        def added_by
            return @added_by
        end
        ## 
        ## Sets the addedBy property value. The name of the user or application that first added this resource. Read-only.
        ## @param value Value to set for the addedBy property.
        ## @return a void
        ## 
        def added_by=(value)
            @added_by = value
        end
        ## 
        ## Gets the addedOn property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        ## @return a date_time
        ## 
        def added_on
            return @added_on
        end
        ## 
        ## Sets the addedOn property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
        ## @param value Value to set for the addedOn property.
        ## @return a void
        ## 
        def added_on=(value)
            @added_on = value
        end
        ## 
        ## Gets the attributes property value. Contains information about the attributes to be collected from the requestor and sent to the resource application.
        ## @return a access_package_resource_attribute
        ## 
        def attributes
            return @attributes
        end
        ## 
        ## Sets the attributes property value. Contains information about the attributes to be collected from the requestor and sent to the resource application.
        ## @param value Value to set for the attributes property.
        ## @return a void
        ## 
        def attributes=(value)
            @attributes = value
        end
        ## 
        ## Instantiates a new accessPackageResource and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_package_resource
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AccessPackageResource.new
        end
        ## 
        ## Gets the description property value. A description for the resource.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. A description for the resource.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The display name of the resource, such as the application name, group name or site name.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name of the resource, such as the application name, group name or site name.
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
                "accessPackageResourceEnvironment" => lambda {|n| @access_package_resource_environment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceEnvironment.create_from_discriminator_value(pn) }) },
                "accessPackageResourceRoles" => lambda {|n| @access_package_resource_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }) },
                "accessPackageResourceScopes" => lambda {|n| @access_package_resource_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }) },
                "addedBy" => lambda {|n| @added_by = n.get_string_value() },
                "addedOn" => lambda {|n| @added_on = n.get_date_time_value() },
                "attributes" => lambda {|n| @attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceAttribute.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "isPendingOnboarding" => lambda {|n| @is_pending_onboarding = n.get_boolean_value() },
                "originId" => lambda {|n| @origin_id = n.get_string_value() },
                "originSystem" => lambda {|n| @origin_system = n.get_string_value() },
                "resourceType" => lambda {|n| @resource_type = n.get_string_value() },
                "url" => lambda {|n| @url = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isPendingOnboarding property value. True if the resource is not yet available for assignment. Read-only.
        ## @return a boolean
        ## 
        def is_pending_onboarding
            return @is_pending_onboarding
        end
        ## 
        ## Sets the isPendingOnboarding property value. True if the resource is not yet available for assignment. Read-only.
        ## @param value Value to set for the isPendingOnboarding property.
        ## @return a void
        ## 
        def is_pending_onboarding=(value)
            @is_pending_onboarding = value
        end
        ## 
        ## Gets the originId property value. The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group.
        ## @return a string
        ## 
        def origin_id
            return @origin_id
        end
        ## 
        ## Sets the originId property value. The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group.
        ## @param value Value to set for the originId property.
        ## @return a void
        ## 
        def origin_id=(value)
            @origin_id = value
        end
        ## 
        ## Gets the originSystem property value. The type of the resource in the origin system, such as SharePointOnline, AadApplication or AadGroup.
        ## @return a string
        ## 
        def origin_system
            return @origin_system
        end
        ## 
        ## Sets the originSystem property value. The type of the resource in the origin system, such as SharePointOnline, AadApplication or AadGroup.
        ## @param value Value to set for the originSystem property.
        ## @return a void
        ## 
        def origin_system=(value)
            @origin_system = value
        end
        ## 
        ## Gets the resourceType property value. The type of the resource, such as Application if it is an Azure AD connected application, or SharePoint Online Site for a SharePoint Online site.
        ## @return a string
        ## 
        def resource_type
            return @resource_type
        end
        ## 
        ## Sets the resourceType property value. The type of the resource, such as Application if it is an Azure AD connected application, or SharePoint Online Site for a SharePoint Online site.
        ## @param value Value to set for the resourceType property.
        ## @return a void
        ## 
        def resource_type=(value)
            @resource_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("accessPackageResourceEnvironment", @access_package_resource_environment)
            writer.write_collection_of_object_values("accessPackageResourceRoles", @access_package_resource_roles)
            writer.write_collection_of_object_values("accessPackageResourceScopes", @access_package_resource_scopes)
            writer.write_string_value("addedBy", @added_by)
            writer.write_date_time_value("addedOn", @added_on)
            writer.write_collection_of_object_values("attributes", @attributes)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_boolean_value("isPendingOnboarding", @is_pending_onboarding)
            writer.write_string_value("originId", @origin_id)
            writer.write_string_value("originSystem", @origin_system)
            writer.write_string_value("resourceType", @resource_type)
            writer.write_string_value("url", @url)
        end
        ## 
        ## Gets the url property value. A unique resource locator for the resource, such as the URL for signing a user into an application.
        ## @return a string
        ## 
        def url
            return @url
        end
        ## 
        ## Sets the url property value. A unique resource locator for the resource, such as the URL for signing a user into an application.
        ## @param value Value to set for the url property.
        ## @return a void
        ## 
        def url=(value)
            @url = value
        end
    end
end
