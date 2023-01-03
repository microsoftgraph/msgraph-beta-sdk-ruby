require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class UnifiedRoleAssignmentMultiple < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Ids of the app specific scopes when the assignment scopes are app specific. The scopes of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. App scopes are scopes that are defined and understood by this application only.
        @app_scope_ids
        ## 
        # Read-only collection with details of the app specific scopes when the assignment scopes are app specific. Containment entity. Read-only.
        @app_scopes
        ## 
        # The condition property
        @condition
        ## 
        # Description of the role assignment.
        @description
        ## 
        # Ids of the directory objects representing the scopes of the assignment. The scopes of an assignment determine the set of resources for which the principals have been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. App scopes are scopes that are defined and understood by this application only.
        @directory_scope_ids
        ## 
        # Read-only collection referencing the directory objects that are scope of the assignment. Provided so that callers can get the directory objects using $expand at the same time as getting the role assignment. Read-only.  Supports $expand.
        @directory_scopes
        ## 
        # Name of the role assignment. Required.
        @display_name
        ## 
        # Identifiers of the principals to which the assignment is granted.  Supports $filter (any operator only).
        @principal_ids
        ## 
        # Read-only collection referencing the assigned principals. Provided so that callers can get the principals using $expand at the same time as getting the role assignment. Read-only.  Supports $expand.
        @principals
        ## 
        # Specifies the roleDefinition that the assignment is for. Provided so that callers can get the role definition using $expand at the same time as getting the role assignment.  Supports $filter (eq operator on id, isBuiltIn, and displayName, and startsWith operator on displayName)  and $expand.
        @role_definition
        ## 
        # Identifier of the unifiedRoleDefinition the assignment is for.
        @role_definition_id
        ## 
        ## Gets the appScopeIds property value. Ids of the app specific scopes when the assignment scopes are app specific. The scopes of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. App scopes are scopes that are defined and understood by this application only.
        ## @return a string
        ## 
        def app_scope_ids
            return @app_scope_ids
        end
        ## 
        ## Sets the appScopeIds property value. Ids of the app specific scopes when the assignment scopes are app specific. The scopes of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use / for tenant-wide scope. App scopes are scopes that are defined and understood by this application only.
        ## @param value Value to set for the appScopeIds property.
        ## @return a void
        ## 
        def app_scope_ids=(value)
            @app_scope_ids = value
        end
        ## 
        ## Gets the appScopes property value. Read-only collection with details of the app specific scopes when the assignment scopes are app specific. Containment entity. Read-only.
        ## @return a app_scope
        ## 
        def app_scopes
            return @app_scopes
        end
        ## 
        ## Sets the appScopes property value. Read-only collection with details of the app specific scopes when the assignment scopes are app specific. Containment entity. Read-only.
        ## @param value Value to set for the appScopes property.
        ## @return a void
        ## 
        def app_scopes=(value)
            @app_scopes = value
        end
        ## 
        ## Gets the condition property value. The condition property
        ## @return a string
        ## 
        def condition
            return @condition
        end
        ## 
        ## Sets the condition property value. The condition property
        ## @param value Value to set for the condition property.
        ## @return a void
        ## 
        def condition=(value)
            @condition = value
        end
        ## 
        ## Instantiates a new unifiedRoleAssignmentMultiple and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a unified_role_assignment_multiple
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UnifiedRoleAssignmentMultiple.new
        end
        ## 
        ## Gets the description property value. Description of the role assignment.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Description of the role assignment.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the directoryScopeIds property value. Ids of the directory objects representing the scopes of the assignment. The scopes of an assignment determine the set of resources for which the principals have been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. App scopes are scopes that are defined and understood by this application only.
        ## @return a string
        ## 
        def directory_scope_ids
            return @directory_scope_ids
        end
        ## 
        ## Sets the directoryScopeIds property value. Ids of the directory objects representing the scopes of the assignment. The scopes of an assignment determine the set of resources for which the principals have been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. App scopes are scopes that are defined and understood by this application only.
        ## @param value Value to set for the directoryScopeIds property.
        ## @return a void
        ## 
        def directory_scope_ids=(value)
            @directory_scope_ids = value
        end
        ## 
        ## Gets the directoryScopes property value. Read-only collection referencing the directory objects that are scope of the assignment. Provided so that callers can get the directory objects using $expand at the same time as getting the role assignment. Read-only.  Supports $expand.
        ## @return a directory_object
        ## 
        def directory_scopes
            return @directory_scopes
        end
        ## 
        ## Sets the directoryScopes property value. Read-only collection referencing the directory objects that are scope of the assignment. Provided so that callers can get the directory objects using $expand at the same time as getting the role assignment. Read-only.  Supports $expand.
        ## @param value Value to set for the directoryScopes property.
        ## @return a void
        ## 
        def directory_scopes=(value)
            @directory_scopes = value
        end
        ## 
        ## Gets the displayName property value. Name of the role assignment. Required.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Name of the role assignment. Required.
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
                "appScopeIds" => lambda {|n| @app_scope_ids = n.get_collection_of_primitive_values(String) },
                "appScopes" => lambda {|n| @app_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppScope.create_from_discriminator_value(pn) }) },
                "condition" => lambda {|n| @condition = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "directoryScopeIds" => lambda {|n| @directory_scope_ids = n.get_collection_of_primitive_values(String) },
                "directoryScopes" => lambda {|n| @directory_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "principalIds" => lambda {|n| @principal_ids = n.get_collection_of_primitive_values(String) },
                "principals" => lambda {|n| @principals = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                "roleDefinition" => lambda {|n| @role_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleDefinition.create_from_discriminator_value(pn) }) },
                "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the principalIds property value. Identifiers of the principals to which the assignment is granted.  Supports $filter (any operator only).
        ## @return a string
        ## 
        def principal_ids
            return @principal_ids
        end
        ## 
        ## Sets the principalIds property value. Identifiers of the principals to which the assignment is granted.  Supports $filter (any operator only).
        ## @param value Value to set for the principalIds property.
        ## @return a void
        ## 
        def principal_ids=(value)
            @principal_ids = value
        end
        ## 
        ## Gets the principals property value. Read-only collection referencing the assigned principals. Provided so that callers can get the principals using $expand at the same time as getting the role assignment. Read-only.  Supports $expand.
        ## @return a directory_object
        ## 
        def principals
            return @principals
        end
        ## 
        ## Sets the principals property value. Read-only collection referencing the assigned principals. Provided so that callers can get the principals using $expand at the same time as getting the role assignment. Read-only.  Supports $expand.
        ## @param value Value to set for the principals property.
        ## @return a void
        ## 
        def principals=(value)
            @principals = value
        end
        ## 
        ## Gets the roleDefinition property value. Specifies the roleDefinition that the assignment is for. Provided so that callers can get the role definition using $expand at the same time as getting the role assignment.  Supports $filter (eq operator on id, isBuiltIn, and displayName, and startsWith operator on displayName)  and $expand.
        ## @return a unified_role_definition
        ## 
        def role_definition
            return @role_definition
        end
        ## 
        ## Sets the roleDefinition property value. Specifies the roleDefinition that the assignment is for. Provided so that callers can get the role definition using $expand at the same time as getting the role assignment.  Supports $filter (eq operator on id, isBuiltIn, and displayName, and startsWith operator on displayName)  and $expand.
        ## @param value Value to set for the roleDefinition property.
        ## @return a void
        ## 
        def role_definition=(value)
            @role_definition = value
        end
        ## 
        ## Gets the roleDefinitionId property value. Identifier of the unifiedRoleDefinition the assignment is for.
        ## @return a string
        ## 
        def role_definition_id
            return @role_definition_id
        end
        ## 
        ## Sets the roleDefinitionId property value. Identifier of the unifiedRoleDefinition the assignment is for.
        ## @param value Value to set for the roleDefinitionId property.
        ## @return a void
        ## 
        def role_definition_id=(value)
            @role_definition_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_primitive_values("appScopeIds", @app_scope_ids)
            writer.write_collection_of_object_values("appScopes", @app_scopes)
            writer.write_string_value("condition", @condition)
            writer.write_string_value("description", @description)
            writer.write_collection_of_primitive_values("directoryScopeIds", @directory_scope_ids)
            writer.write_collection_of_object_values("directoryScopes", @directory_scopes)
            writer.write_string_value("displayName", @display_name)
            writer.write_collection_of_primitive_values("principalIds", @principal_ids)
            writer.write_collection_of_object_values("principals", @principals)
            writer.write_object_value("roleDefinition", @role_definition)
            writer.write_string_value("roleDefinitionId", @role_definition_id)
        end
    end
end
