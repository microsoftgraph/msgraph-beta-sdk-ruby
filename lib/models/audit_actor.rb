require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A class containing the properties for Audit Actor.
        class AuditActor
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Name of the Application.
            @application_display_name
            ## 
            # AAD Application Id.
            @application_id
            ## 
            # Actor Type.
            @audit_actor_type
            ## 
            # IPAddress.
            @ip_address
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Remote Tenant Id
            @remote_tenant_id
            ## 
            # Remote User Id
            @remote_user_id
            ## 
            # Service Principal Name (SPN).
            @service_principal_name
            ## 
            # Actor Type.
            @type
            ## 
            # User Id.
            @user_id
            ## 
            # List of user permissions when the audit was performed.
            @user_permissions
            ## 
            # User Principal Name (UPN).
            @user_principal_name
            ## 
            # List of user scope tags when the audit was performed.
            @user_role_scope_tags
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the applicationDisplayName property value. Name of the Application.
            ## @return a string
            ## 
            def application_display_name
                return @application_display_name
            end
            ## 
            ## Sets the applicationDisplayName property value. Name of the Application.
            ## @param value Value to set for the applicationDisplayName property.
            ## @return a void
            ## 
            def application_display_name=(value)
                @application_display_name = value
            end
            ## 
            ## Gets the applicationId property value. AAD Application Id.
            ## @return a string
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. AAD Application Id.
            ## @param value Value to set for the applicationId property.
            ## @return a void
            ## 
            def application_id=(value)
                @application_id = value
            end
            ## 
            ## Gets the auditActorType property value. Actor Type.
            ## @return a string
            ## 
            def audit_actor_type
                return @audit_actor_type
            end
            ## 
            ## Sets the auditActorType property value. Actor Type.
            ## @param value Value to set for the auditActorType property.
            ## @return a void
            ## 
            def audit_actor_type=(value)
                @audit_actor_type = value
            end
            ## 
            ## Instantiates a new auditActor and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a audit_actor
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuditActor.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicationDisplayName" => lambda {|n| @application_display_name = n.get_string_value() },
                    "applicationId" => lambda {|n| @application_id = n.get_string_value() },
                    "auditActorType" => lambda {|n| @audit_actor_type = n.get_string_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "remoteTenantId" => lambda {|n| @remote_tenant_id = n.get_string_value() },
                    "remoteUserId" => lambda {|n| @remote_user_id = n.get_string_value() },
                    "servicePrincipalName" => lambda {|n| @service_principal_name = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPermissions" => lambda {|n| @user_permissions = n.get_collection_of_primitive_values(String) },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userRoleScopeTags" => lambda {|n| @user_role_scope_tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RoleScopeTagInfo.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the ipAddress property value. IPAddress.
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. IPAddress.
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
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
            ## Gets the remoteTenantId property value. Remote Tenant Id
            ## @return a string
            ## 
            def remote_tenant_id
                return @remote_tenant_id
            end
            ## 
            ## Sets the remoteTenantId property value. Remote Tenant Id
            ## @param value Value to set for the remoteTenantId property.
            ## @return a void
            ## 
            def remote_tenant_id=(value)
                @remote_tenant_id = value
            end
            ## 
            ## Gets the remoteUserId property value. Remote User Id
            ## @return a string
            ## 
            def remote_user_id
                return @remote_user_id
            end
            ## 
            ## Sets the remoteUserId property value. Remote User Id
            ## @param value Value to set for the remoteUserId property.
            ## @return a void
            ## 
            def remote_user_id=(value)
                @remote_user_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("applicationDisplayName", @application_display_name)
                writer.write_string_value("applicationId", @application_id)
                writer.write_string_value("auditActorType", @audit_actor_type)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("remoteTenantId", @remote_tenant_id)
                writer.write_string_value("remoteUserId", @remote_user_id)
                writer.write_string_value("servicePrincipalName", @service_principal_name)
                writer.write_string_value("type", @type)
                writer.write_string_value("userId", @user_id)
                writer.write_collection_of_primitive_values("userPermissions", @user_permissions)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_collection_of_object_values("userRoleScopeTags", @user_role_scope_tags)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the servicePrincipalName property value. Service Principal Name (SPN).
            ## @return a string
            ## 
            def service_principal_name
                return @service_principal_name
            end
            ## 
            ## Sets the servicePrincipalName property value. Service Principal Name (SPN).
            ## @param value Value to set for the servicePrincipalName property.
            ## @return a void
            ## 
            def service_principal_name=(value)
                @service_principal_name = value
            end
            ## 
            ## Gets the type property value. Actor Type.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Actor Type.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the userId property value. User Id.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. User Id.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPermissions property value. List of user permissions when the audit was performed.
            ## @return a string
            ## 
            def user_permissions
                return @user_permissions
            end
            ## 
            ## Sets the userPermissions property value. List of user permissions when the audit was performed.
            ## @param value Value to set for the userPermissions property.
            ## @return a void
            ## 
            def user_permissions=(value)
                @user_permissions = value
            end
            ## 
            ## Gets the userPrincipalName property value. User Principal Name (UPN).
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User Principal Name (UPN).
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userRoleScopeTags property value. List of user scope tags when the audit was performed.
            ## @return a role_scope_tag_info
            ## 
            def user_role_scope_tags
                return @user_role_scope_tags
            end
            ## 
            ## Sets the userRoleScopeTags property value. List of user scope tags when the audit was performed.
            ## @param value Value to set for the userRoleScopeTags property.
            ## @return a void
            ## 
            def user_role_scope_tags=(value)
                @user_role_scope_tags = value
            end
        end
    end
end
