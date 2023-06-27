require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AppCredentialSignInActivity < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The globally unique appId (also called client ID on the Azure portal) of the credential application.
            @app_id
            ## 
            # The ID of the credential application instance.
            @app_object_id
            ## 
            # The date and time when the credential was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The credentialOrigin property
            @credential_origin
            ## 
            # The date and time when the credential is set to expire. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @expiration_date_time
            ## 
            # The key ID of the credential.
            @key_id
            ## 
            # Specifies the key type. The possible values are: clientSecret, certificate, unknownFutureValue.
            @key_type
            ## 
            # Specifies what the key was used for. The possible values are: sign, verify, unknownFutureValue.
            @key_usage
            ## 
            # The ID of the accessed resource.
            @resource_id
            ## 
            # The ID of the service principal.
            @service_principal_object_id
            ## 
            # The signInActivity property
            @sign_in_activity
            ## 
            ## Gets the appId property value. The globally unique appId (also called client ID on the Azure portal) of the credential application.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The globally unique appId (also called client ID on the Azure portal) of the credential application.
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appObjectId property value. The ID of the credential application instance.
            ## @return a string
            ## 
            def app_object_id
                return @app_object_id
            end
            ## 
            ## Sets the appObjectId property value. The ID of the credential application instance.
            ## @param value Value to set for the app_object_id property.
            ## @return a void
            ## 
            def app_object_id=(value)
                @app_object_id = value
            end
            ## 
            ## Instantiates a new AppCredentialSignInActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the credential was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the credential was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a app_credential_sign_in_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppCredentialSignInActivity.new
            end
            ## 
            ## Gets the credentialOrigin property value. The credentialOrigin property
            ## @return a application_key_origin
            ## 
            def credential_origin
                return @credential_origin
            end
            ## 
            ## Sets the credentialOrigin property value. The credentialOrigin property
            ## @param value Value to set for the credential_origin property.
            ## @return a void
            ## 
            def credential_origin=(value)
                @credential_origin = value
            end
            ## 
            ## Gets the expirationDateTime property value. The date and time when the credential is set to expire. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The date and time when the credential is set to expire. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appObjectId" => lambda {|n| @app_object_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "credentialOrigin" => lambda {|n| @credential_origin = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationKeyOrigin) },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "keyId" => lambda {|n| @key_id = n.get_string_value() },
                    "keyType" => lambda {|n| @key_type = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationKeyType) },
                    "keyUsage" => lambda {|n| @key_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationKeyUsage) },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                    "servicePrincipalObjectId" => lambda {|n| @service_principal_object_id = n.get_string_value() },
                    "signInActivity" => lambda {|n| @sign_in_activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInActivity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the keyId property value. The key ID of the credential.
            ## @return a string
            ## 
            def key_id
                return @key_id
            end
            ## 
            ## Sets the keyId property value. The key ID of the credential.
            ## @param value Value to set for the key_id property.
            ## @return a void
            ## 
            def key_id=(value)
                @key_id = value
            end
            ## 
            ## Gets the keyType property value. Specifies the key type. The possible values are: clientSecret, certificate, unknownFutureValue.
            ## @return a application_key_type
            ## 
            def key_type
                return @key_type
            end
            ## 
            ## Sets the keyType property value. Specifies the key type. The possible values are: clientSecret, certificate, unknownFutureValue.
            ## @param value Value to set for the key_type property.
            ## @return a void
            ## 
            def key_type=(value)
                @key_type = value
            end
            ## 
            ## Gets the keyUsage property value. Specifies what the key was used for. The possible values are: sign, verify, unknownFutureValue.
            ## @return a application_key_usage
            ## 
            def key_usage
                return @key_usage
            end
            ## 
            ## Sets the keyUsage property value. Specifies what the key was used for. The possible values are: sign, verify, unknownFutureValue.
            ## @param value Value to set for the key_usage property.
            ## @return a void
            ## 
            def key_usage=(value)
                @key_usage = value
            end
            ## 
            ## Gets the resourceId property value. The ID of the accessed resource.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. The ID of the accessed resource.
            ## @param value Value to set for the resource_id property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("appObjectId", @app_object_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("credentialOrigin", @credential_origin)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("keyId", @key_id)
                writer.write_enum_value("keyType", @key_type)
                writer.write_enum_value("keyUsage", @key_usage)
                writer.write_string_value("resourceId", @resource_id)
                writer.write_string_value("servicePrincipalObjectId", @service_principal_object_id)
                writer.write_object_value("signInActivity", @sign_in_activity)
            end
            ## 
            ## Gets the servicePrincipalObjectId property value. The ID of the service principal.
            ## @return a string
            ## 
            def service_principal_object_id
                return @service_principal_object_id
            end
            ## 
            ## Sets the servicePrincipalObjectId property value. The ID of the service principal.
            ## @param value Value to set for the service_principal_object_id property.
            ## @return a void
            ## 
            def service_principal_object_id=(value)
                @service_principal_object_id = value
            end
            ## 
            ## Gets the signInActivity property value. The signInActivity property
            ## @return a sign_in_activity
            ## 
            def sign_in_activity
                return @sign_in_activity
            end
            ## 
            ## Sets the signInActivity property value. The signInActivity property
            ## @param value Value to set for the sign_in_activity property.
            ## @return a void
            ## 
            def sign_in_activity=(value)
                @sign_in_activity = value
            end
        end
    end
end
