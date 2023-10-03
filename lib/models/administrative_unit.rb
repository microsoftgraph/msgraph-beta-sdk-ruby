require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AdministrativeUnit < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An optional description for the administrative unit. Supports $filter (eq, ne, in, startsWith), $search.
            @description
            ## 
            # Display name for the administrative unit. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderby.
            @display_name
            ## 
            # The collection of open extensions defined for this administrative unit. Nullable.
            @extensions
            ## 
            # true if members of this administrative unit should be treated as sensitive, which requires specific permissions to manage. Default value is false. Use this property to define administrative units whose roles don't inherit from tenant-level administrators, and management of individual member objects is limited to administrators scoped to a restricted management administrative unit. Immutable, so can't be changed later.  For more information about working with restricted management administrative units, see Restricted management administrative units in Azure Active Directory.
            @is_member_management_restricted
            ## 
            # Users and groups that are members of this administrative unit. Supports $expand.
            @members
            ## 
            # Scoped-role members of this administrative unit.
            @scoped_role_members
            ## 
            # Controls whether the administrative unit and its members are hidden or public. Can be set to HiddenMembership or Public. If not set, the default behavior is Public. When set to HiddenMembership, only members of the administrative unit can list other members of the administrative unit.
            @visibility
            ## 
            ## Instantiates a new administrativeUnit and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.administrativeUnit"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a administrative_unit
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AdministrativeUnit.new
            end
            ## 
            ## Gets the description property value. An optional description for the administrative unit. Supports $filter (eq, ne, in, startsWith), $search.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. An optional description for the administrative unit. Supports $filter (eq, ne, in, startsWith), $search.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name for the administrative unit. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderby.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for the administrative unit. Supports $filter (eq, ne, not, ge, le, in, startsWith, and eq on null values), $search, and $orderby.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the extensions property value. The collection of open extensions defined for this administrative unit. Nullable.
            ## @return a extension
            ## 
            def extensions
                return @extensions
            end
            ## 
            ## Sets the extensions property value. The collection of open extensions defined for this administrative unit. Nullable.
            ## @param value Value to set for the extensions property.
            ## @return a void
            ## 
            def extensions=(value)
                @extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "extensions" => lambda {|n| @extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Extension.create_from_discriminator_value(pn) }) },
                    "isMemberManagementRestricted" => lambda {|n| @is_member_management_restricted = n.get_boolean_value() },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "scopedRoleMembers" => lambda {|n| @scoped_role_members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ScopedRoleMembership.create_from_discriminator_value(pn) }) },
                    "visibility" => lambda {|n| @visibility = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isMemberManagementRestricted property value. true if members of this administrative unit should be treated as sensitive, which requires specific permissions to manage. Default value is false. Use this property to define administrative units whose roles don't inherit from tenant-level administrators, and management of individual member objects is limited to administrators scoped to a restricted management administrative unit. Immutable, so can't be changed later.  For more information about working with restricted management administrative units, see Restricted management administrative units in Azure Active Directory.
            ## @return a boolean
            ## 
            def is_member_management_restricted
                return @is_member_management_restricted
            end
            ## 
            ## Sets the isMemberManagementRestricted property value. true if members of this administrative unit should be treated as sensitive, which requires specific permissions to manage. Default value is false. Use this property to define administrative units whose roles don't inherit from tenant-level administrators, and management of individual member objects is limited to administrators scoped to a restricted management administrative unit. Immutable, so can't be changed later.  For more information about working with restricted management administrative units, see Restricted management administrative units in Azure Active Directory.
            ## @param value Value to set for the isMemberManagementRestricted property.
            ## @return a void
            ## 
            def is_member_management_restricted=(value)
                @is_member_management_restricted = value
            end
            ## 
            ## Gets the members property value. Users and groups that are members of this administrative unit. Supports $expand.
            ## @return a directory_object
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. Users and groups that are members of this administrative unit. Supports $expand.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the scopedRoleMembers property value. Scoped-role members of this administrative unit.
            ## @return a scoped_role_membership
            ## 
            def scoped_role_members
                return @scoped_role_members
            end
            ## 
            ## Sets the scopedRoleMembers property value. Scoped-role members of this administrative unit.
            ## @param value Value to set for the scopedRoleMembers property.
            ## @return a void
            ## 
            def scoped_role_members=(value)
                @scoped_role_members = value
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
                writer.write_collection_of_object_values("extensions", @extensions)
                writer.write_boolean_value("isMemberManagementRestricted", @is_member_management_restricted)
                writer.write_collection_of_object_values("members", @members)
                writer.write_collection_of_object_values("scopedRoleMembers", @scoped_role_members)
                writer.write_string_value("visibility", @visibility)
            end
            ## 
            ## Gets the visibility property value. Controls whether the administrative unit and its members are hidden or public. Can be set to HiddenMembership or Public. If not set, the default behavior is Public. When set to HiddenMembership, only members of the administrative unit can list other members of the administrative unit.
            ## @return a string
            ## 
            def visibility
                return @visibility
            end
            ## 
            ## Sets the visibility property value. Controls whether the administrative unit and its members are hidden or public. Can be set to HiddenMembership or Public. If not set, the default behavior is Public. When set to HiddenMembership, only members of the administrative unit can list other members of the administrative unit.
            ## @param value Value to set for the visibility property.
            ## @return a void
            ## 
            def visibility=(value)
                @visibility = value
            end
        end
    end
end
