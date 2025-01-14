require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CredentialUserRegistrationDetails < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the authentication method that the user has registered. Possible values are: email, mobilePhone, officePhone,  securityQuestion (only used for self-service password reset), appNotification,  appCode, alternateMobilePhone (supported only in registration),  fido,  appPassword,  unknownFutureValue.
            @auth_methods
            ## 
            # Indicates whether the user is ready to perform self-service password reset or MFA.
            @is_capable
            ## 
            # Indicates whether the user enabled to perform self-service password reset.
            @is_enabled
            ## 
            # Indicates whether the user is registered for MFA.
            @is_mfa_registered
            ## 
            # Indicates whether the user has registered any authentication methods for self-service password reset.
            @is_registered
            ## 
            # Provides the user name of the corresponding user.
            @user_display_name
            ## 
            # Provides the user principal name of the corresponding user.
            @user_principal_name
            ## 
            ## Gets the authMethods property value. Represents the authentication method that the user has registered. Possible values are: email, mobilePhone, officePhone,  securityQuestion (only used for self-service password reset), appNotification,  appCode, alternateMobilePhone (supported only in registration),  fido,  appPassword,  unknownFutureValue.
            ## @return a registration_auth_method
            ## 
            def auth_methods
                return @auth_methods
            end
            ## 
            ## Sets the authMethods property value. Represents the authentication method that the user has registered. Possible values are: email, mobilePhone, officePhone,  securityQuestion (only used for self-service password reset), appNotification,  appCode, alternateMobilePhone (supported only in registration),  fido,  appPassword,  unknownFutureValue.
            ## @param value Value to set for the authMethods property.
            ## @return a void
            ## 
            def auth_methods=(value)
                @auth_methods = value
            end
            ## 
            ## Instantiates a new CredentialUserRegistrationDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a credential_user_registration_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CredentialUserRegistrationDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authMethods" => lambda {|n| @auth_methods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RegistrationAuthMethod.create_from_discriminator_value(pn) }) },
                    "isCapable" => lambda {|n| @is_capable = n.get_boolean_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "isMfaRegistered" => lambda {|n| @is_mfa_registered = n.get_boolean_value() },
                    "isRegistered" => lambda {|n| @is_registered = n.get_boolean_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isCapable property value. Indicates whether the user is ready to perform self-service password reset or MFA.
            ## @return a boolean
            ## 
            def is_capable
                return @is_capable
            end
            ## 
            ## Sets the isCapable property value. Indicates whether the user is ready to perform self-service password reset or MFA.
            ## @param value Value to set for the isCapable property.
            ## @return a void
            ## 
            def is_capable=(value)
                @is_capable = value
            end
            ## 
            ## Gets the isEnabled property value. Indicates whether the user enabled to perform self-service password reset.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Indicates whether the user enabled to perform self-service password reset.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the isMfaRegistered property value. Indicates whether the user is registered for MFA.
            ## @return a boolean
            ## 
            def is_mfa_registered
                return @is_mfa_registered
            end
            ## 
            ## Sets the isMfaRegistered property value. Indicates whether the user is registered for MFA.
            ## @param value Value to set for the isMfaRegistered property.
            ## @return a void
            ## 
            def is_mfa_registered=(value)
                @is_mfa_registered = value
            end
            ## 
            ## Gets the isRegistered property value. Indicates whether the user has registered any authentication methods for self-service password reset.
            ## @return a boolean
            ## 
            def is_registered
                return @is_registered
            end
            ## 
            ## Sets the isRegistered property value. Indicates whether the user has registered any authentication methods for self-service password reset.
            ## @param value Value to set for the isRegistered property.
            ## @return a void
            ## 
            def is_registered=(value)
                @is_registered = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("authMethods", @auth_methods)
                writer.write_boolean_value("isCapable", @is_capable)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_boolean_value("isMfaRegistered", @is_mfa_registered)
                writer.write_boolean_value("isRegistered", @is_registered)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the userDisplayName property value. Provides the user name of the corresponding user.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. Provides the user name of the corresponding user.
            ## @param value Value to set for the userDisplayName property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. Provides the user principal name of the corresponding user.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. Provides the user principal name of the corresponding user.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
