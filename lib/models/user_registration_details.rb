require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserRegistrationDetails < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The method the user or admin selected as default for performing multi-factor authentication for the user. The possible values are: none, mobilePhone, alternateMobilePhone, officePhone, microsoftAuthenticatorPush, softwareOneTimePasscode, unknownFutureValue.
            @default_mfa_method
            ## 
            # Whether the user has an admin role in the tenant. This value can be used to check the authentication methods that privileged accounts are registered for and capable of.
            @is_admin
            ## 
            # Whether the user has registered a strong authentication method for multi-factor authentication. The method must be allowed by the authentication methods policy. Supports $filter (eq).
            @is_mfa_capable
            ## 
            # Whether the user has registered a strong authentication method for multi-factor authentication. The method may not necessarily be allowed by the authentication methods policy.  Supports $filter (eq).
            @is_mfa_registered
            ## 
            # Whether the user has registered a passwordless strong authentication method (including FIDO2, Windows Hello for Business, and Microsoft Authenticator (Passwordless)) that is allowed by the authentication methods policy. Supports $filter (eq).
            @is_passwordless_capable
            ## 
            # Whether the user has registered the required number of authentication methods for self-service password reset and the user is allowed to perform self-service password reset by policy. Supports $filter (eq).
            @is_sspr_capable
            ## 
            # Whether the user is allowed to perform self-service password reset by policy. The user may not necessarily have registered the required number of authentication methods for self-service password reset. Supports $filter (eq).
            @is_sspr_enabled
            ## 
            # Whether the user has registered the required number of authentication methods for self-service password reset. The user may not necessarily be allowed to perform self-service password reset by policy. Supports $filter (eq).
            @is_sspr_registered
            ## 
            # Collection of authentication methods registered, such as mobilePhone, email, fido2. Supports $filter (any with eq).
            @methods_registered
            ## 
            # The user display name, such as Adele Vance. Supports $filter (eq, startsWith) and $orderBy.
            @user_display_name
            ## 
            # The user principal name, such as AdeleV@contoso.com. Supports $filter (eq, startsWith) and $orderBy.
            @user_principal_name
            ## 
            # Identifies whether the user is a member or guest in the tenant. The possible values are: member, guest, unknownFutureValue.
            @user_type
            ## 
            ## Instantiates a new userRegistrationDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_registration_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserRegistrationDetails.new
            end
            ## 
            ## Gets the defaultMfaMethod property value. The method the user or admin selected as default for performing multi-factor authentication for the user. The possible values are: none, mobilePhone, alternateMobilePhone, officePhone, microsoftAuthenticatorPush, softwareOneTimePasscode, unknownFutureValue.
            ## @return a default_mfa_method_type
            ## 
            def default_mfa_method
                return @default_mfa_method
            end
            ## 
            ## Sets the defaultMfaMethod property value. The method the user or admin selected as default for performing multi-factor authentication for the user. The possible values are: none, mobilePhone, alternateMobilePhone, officePhone, microsoftAuthenticatorPush, softwareOneTimePasscode, unknownFutureValue.
            ## @param value Value to set for the default_mfa_method property.
            ## @return a void
            ## 
            def default_mfa_method=(value)
                @default_mfa_method = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultMfaMethod" => lambda {|n| @default_mfa_method = n.get_enum_value(MicrosoftGraphBeta::Models::DefaultMfaMethodType) },
                    "isAdmin" => lambda {|n| @is_admin = n.get_boolean_value() },
                    "isMfaCapable" => lambda {|n| @is_mfa_capable = n.get_boolean_value() },
                    "isMfaRegistered" => lambda {|n| @is_mfa_registered = n.get_boolean_value() },
                    "isPasswordlessCapable" => lambda {|n| @is_passwordless_capable = n.get_boolean_value() },
                    "isSsprCapable" => lambda {|n| @is_sspr_capable = n.get_boolean_value() },
                    "isSsprEnabled" => lambda {|n| @is_sspr_enabled = n.get_boolean_value() },
                    "isSsprRegistered" => lambda {|n| @is_sspr_registered = n.get_boolean_value() },
                    "methodsRegistered" => lambda {|n| @methods_registered = n.get_collection_of_primitive_values(String) },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraphBeta::Models::SignInUserType) },
                })
            end
            ## 
            ## Gets the isAdmin property value. Whether the user has an admin role in the tenant. This value can be used to check the authentication methods that privileged accounts are registered for and capable of.
            ## @return a boolean
            ## 
            def is_admin
                return @is_admin
            end
            ## 
            ## Sets the isAdmin property value. Whether the user has an admin role in the tenant. This value can be used to check the authentication methods that privileged accounts are registered for and capable of.
            ## @param value Value to set for the is_admin property.
            ## @return a void
            ## 
            def is_admin=(value)
                @is_admin = value
            end
            ## 
            ## Gets the isMfaCapable property value. Whether the user has registered a strong authentication method for multi-factor authentication. The method must be allowed by the authentication methods policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_mfa_capable
                return @is_mfa_capable
            end
            ## 
            ## Sets the isMfaCapable property value. Whether the user has registered a strong authentication method for multi-factor authentication. The method must be allowed by the authentication methods policy. Supports $filter (eq).
            ## @param value Value to set for the is_mfa_capable property.
            ## @return a void
            ## 
            def is_mfa_capable=(value)
                @is_mfa_capable = value
            end
            ## 
            ## Gets the isMfaRegistered property value. Whether the user has registered a strong authentication method for multi-factor authentication. The method may not necessarily be allowed by the authentication methods policy.  Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_mfa_registered
                return @is_mfa_registered
            end
            ## 
            ## Sets the isMfaRegistered property value. Whether the user has registered a strong authentication method for multi-factor authentication. The method may not necessarily be allowed by the authentication methods policy.  Supports $filter (eq).
            ## @param value Value to set for the is_mfa_registered property.
            ## @return a void
            ## 
            def is_mfa_registered=(value)
                @is_mfa_registered = value
            end
            ## 
            ## Gets the isPasswordlessCapable property value. Whether the user has registered a passwordless strong authentication method (including FIDO2, Windows Hello for Business, and Microsoft Authenticator (Passwordless)) that is allowed by the authentication methods policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_passwordless_capable
                return @is_passwordless_capable
            end
            ## 
            ## Sets the isPasswordlessCapable property value. Whether the user has registered a passwordless strong authentication method (including FIDO2, Windows Hello for Business, and Microsoft Authenticator (Passwordless)) that is allowed by the authentication methods policy. Supports $filter (eq).
            ## @param value Value to set for the is_passwordless_capable property.
            ## @return a void
            ## 
            def is_passwordless_capable=(value)
                @is_passwordless_capable = value
            end
            ## 
            ## Gets the isSsprCapable property value. Whether the user has registered the required number of authentication methods for self-service password reset and the user is allowed to perform self-service password reset by policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_sspr_capable
                return @is_sspr_capable
            end
            ## 
            ## Sets the isSsprCapable property value. Whether the user has registered the required number of authentication methods for self-service password reset and the user is allowed to perform self-service password reset by policy. Supports $filter (eq).
            ## @param value Value to set for the is_sspr_capable property.
            ## @return a void
            ## 
            def is_sspr_capable=(value)
                @is_sspr_capable = value
            end
            ## 
            ## Gets the isSsprEnabled property value. Whether the user is allowed to perform self-service password reset by policy. The user may not necessarily have registered the required number of authentication methods for self-service password reset. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_sspr_enabled
                return @is_sspr_enabled
            end
            ## 
            ## Sets the isSsprEnabled property value. Whether the user is allowed to perform self-service password reset by policy. The user may not necessarily have registered the required number of authentication methods for self-service password reset. Supports $filter (eq).
            ## @param value Value to set for the is_sspr_enabled property.
            ## @return a void
            ## 
            def is_sspr_enabled=(value)
                @is_sspr_enabled = value
            end
            ## 
            ## Gets the isSsprRegistered property value. Whether the user has registered the required number of authentication methods for self-service password reset. The user may not necessarily be allowed to perform self-service password reset by policy. Supports $filter (eq).
            ## @return a boolean
            ## 
            def is_sspr_registered
                return @is_sspr_registered
            end
            ## 
            ## Sets the isSsprRegistered property value. Whether the user has registered the required number of authentication methods for self-service password reset. The user may not necessarily be allowed to perform self-service password reset by policy. Supports $filter (eq).
            ## @param value Value to set for the is_sspr_registered property.
            ## @return a void
            ## 
            def is_sspr_registered=(value)
                @is_sspr_registered = value
            end
            ## 
            ## Gets the methodsRegistered property value. Collection of authentication methods registered, such as mobilePhone, email, fido2. Supports $filter (any with eq).
            ## @return a string
            ## 
            def methods_registered
                return @methods_registered
            end
            ## 
            ## Sets the methodsRegistered property value. Collection of authentication methods registered, such as mobilePhone, email, fido2. Supports $filter (any with eq).
            ## @param value Value to set for the methods_registered property.
            ## @return a void
            ## 
            def methods_registered=(value)
                @methods_registered = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("defaultMfaMethod", @default_mfa_method)
                writer.write_boolean_value("isAdmin", @is_admin)
                writer.write_boolean_value("isMfaCapable", @is_mfa_capable)
                writer.write_boolean_value("isMfaRegistered", @is_mfa_registered)
                writer.write_boolean_value("isPasswordlessCapable", @is_passwordless_capable)
                writer.write_boolean_value("isSsprCapable", @is_sspr_capable)
                writer.write_boolean_value("isSsprEnabled", @is_sspr_enabled)
                writer.write_boolean_value("isSsprRegistered", @is_sspr_registered)
                writer.write_collection_of_primitive_values("methodsRegistered", @methods_registered)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_enum_value("userType", @user_type)
            end
            ## 
            ## Gets the userDisplayName property value. The user display name, such as Adele Vance. Supports $filter (eq, startsWith) and $orderBy.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. The user display name, such as Adele Vance. Supports $filter (eq, startsWith) and $orderBy.
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name, such as AdeleV@contoso.com. Supports $filter (eq, startsWith) and $orderBy.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name, such as AdeleV@contoso.com. Supports $filter (eq, startsWith) and $orderBy.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userType property value. Identifies whether the user is a member or guest in the tenant. The possible values are: member, guest, unknownFutureValue.
            ## @return a sign_in_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. Identifies whether the user is a member or guest in the tenant. The possible values are: member, guest, unknownFutureValue.
            ## @param value Value to set for the user_type property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
