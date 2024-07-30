require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OAuth2PermissionGrant < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The object id (not appId) of the client service principal for the application that is authorized to act on behalf of a signed-in user when accessing an API. Required. Supports $filter (eq only).
            @client_id
            ## 
            # Indicates whether authorization is granted for the client application to impersonate all users or only a specific user. AllPrincipals indicates authorization to impersonate all users. Principal indicates authorization to impersonate a specific user. Consent on behalf of all users can be granted by an administrator. Nonadmin users may be authorized to consent on behalf of themselves in some cases, for some delegated permissions. Required. Supports $filter (eq only).
            @consent_type
            ## 
            # Currently, the end time value is ignored, but a value is required when creating an oAuth2PermissionGrant. Required.
            @expiry_time
            ## 
            # The id of the user on behalf of whom the client is authorized to access the resource, when consentType is Principal. If consentType is AllPrincipals this value is null. Required when consentType is Principal. Supports $filter (eq only).
            @principal_id
            ## 
            # The id of the resource service principal to which access is authorized. This identifies the API that the client is authorized to attempt to call on behalf of a signed-in user. Supports $filter (eq only).
            @resource_id
            ## 
            # A space-separated list of the claim values for delegated permissions that should be included in access tokens for the resource application (the API). For example, openid User.Read GroupMember.Read.All. Each claim value should match the value field of one of the delegated permissions defined by the API, listed in the publishedPermissionScopes property of the resource service principal. Must not exceed 3850 characters in length.
            @scope
            ## 
            # Currently, the start time value is ignored, but a value is required when creating an oAuth2PermissionGrant. Required.
            @start_time
            ## 
            ## Gets the clientId property value. The object id (not appId) of the client service principal for the application that is authorized to act on behalf of a signed-in user when accessing an API. Required. Supports $filter (eq only).
            ## @return a string
            ## 
            def client_id
                return @client_id
            end
            ## 
            ## Sets the clientId property value. The object id (not appId) of the client service principal for the application that is authorized to act on behalf of a signed-in user when accessing an API. Required. Supports $filter (eq only).
            ## @param value Value to set for the clientId property.
            ## @return a void
            ## 
            def client_id=(value)
                @client_id = value
            end
            ## 
            ## Gets the consentType property value. Indicates whether authorization is granted for the client application to impersonate all users or only a specific user. AllPrincipals indicates authorization to impersonate all users. Principal indicates authorization to impersonate a specific user. Consent on behalf of all users can be granted by an administrator. Nonadmin users may be authorized to consent on behalf of themselves in some cases, for some delegated permissions. Required. Supports $filter (eq only).
            ## @return a string
            ## 
            def consent_type
                return @consent_type
            end
            ## 
            ## Sets the consentType property value. Indicates whether authorization is granted for the client application to impersonate all users or only a specific user. AllPrincipals indicates authorization to impersonate all users. Principal indicates authorization to impersonate a specific user. Consent on behalf of all users can be granted by an administrator. Nonadmin users may be authorized to consent on behalf of themselves in some cases, for some delegated permissions. Required. Supports $filter (eq only).
            ## @param value Value to set for the consentType property.
            ## @return a void
            ## 
            def consent_type=(value)
                @consent_type = value
            end
            ## 
            ## Instantiates a new OAuth2PermissionGrant and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a o_auth2_permission_grant
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OAuth2PermissionGrant.new
            end
            ## 
            ## Gets the expiryTime property value. Currently, the end time value is ignored, but a value is required when creating an oAuth2PermissionGrant. Required.
            ## @return a date_time
            ## 
            def expiry_time
                return @expiry_time
            end
            ## 
            ## Sets the expiryTime property value. Currently, the end time value is ignored, but a value is required when creating an oAuth2PermissionGrant. Required.
            ## @param value Value to set for the expiryTime property.
            ## @return a void
            ## 
            def expiry_time=(value)
                @expiry_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientId" => lambda {|n| @client_id = n.get_string_value() },
                    "consentType" => lambda {|n| @consent_type = n.get_string_value() },
                    "expiryTime" => lambda {|n| @expiry_time = n.get_date_time_value() },
                    "principalId" => lambda {|n| @principal_id = n.get_string_value() },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "scope" => lambda {|n| @scope = n.get_string_value() },
                    "startTime" => lambda {|n| @start_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the principalId property value. The id of the user on behalf of whom the client is authorized to access the resource, when consentType is Principal. If consentType is AllPrincipals this value is null. Required when consentType is Principal. Supports $filter (eq only).
            ## @return a string
            ## 
            def principal_id
                return @principal_id
            end
            ## 
            ## Sets the principalId property value. The id of the user on behalf of whom the client is authorized to access the resource, when consentType is Principal. If consentType is AllPrincipals this value is null. Required when consentType is Principal. Supports $filter (eq only).
            ## @param value Value to set for the principalId property.
            ## @return a void
            ## 
            def principal_id=(value)
                @principal_id = value
            end
            ## 
            ## Gets the resourceId property value. The id of the resource service principal to which access is authorized. This identifies the API that the client is authorized to attempt to call on behalf of a signed-in user. Supports $filter (eq only).
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The id of the resource service principal to which access is authorized. This identifies the API that the client is authorized to attempt to call on behalf of a signed-in user. Supports $filter (eq only).
            ## @param value Value to set for the resourceId property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Gets the scope property value. A space-separated list of the claim values for delegated permissions that should be included in access tokens for the resource application (the API). For example, openid User.Read GroupMember.Read.All. Each claim value should match the value field of one of the delegated permissions defined by the API, listed in the publishedPermissionScopes property of the resource service principal. Must not exceed 3850 characters in length.
            ## @return a string
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. A space-separated list of the claim values for delegated permissions that should be included in access tokens for the resource application (the API). For example, openid User.Read GroupMember.Read.All. Each claim value should match the value field of one of the delegated permissions defined by the API, listed in the publishedPermissionScopes property of the resource service principal. Must not exceed 3850 characters in length.
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("clientId", @client_id)
                writer.write_string_value("consentType", @consent_type)
                writer.write_date_time_value("expiryTime", @expiry_time)
                writer.write_string_value("principalId", @principal_id)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_string_value("scope", @scope)
                writer.write_date_time_value("startTime", @start_time)
            end
            ## 
            ## Gets the startTime property value. Currently, the start time value is ignored, but a value is required when creating an oAuth2PermissionGrant. Required.
            ## @return a date_time
            ## 
            def start_time
                return @start_time
            end
            ## 
            ## Sets the startTime property value. Currently, the start time value is ignored, but a value is required when creating an oAuth2PermissionGrant. Required.
            ## @param value Value to set for the startTime property.
            ## @return a void
            ## 
            def start_time=(value)
                @start_time = value
            end
        end
    end
end
