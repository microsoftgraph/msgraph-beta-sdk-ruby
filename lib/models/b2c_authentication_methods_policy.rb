require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class B2cAuthenticationMethodsPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The tenant admin can configure local accounts using email if the email and password authentication method is enabled.
            @is_email_password_authentication_enabled
            ## 
            # The tenant admin can configure local accounts using phone number if the phone number and one-time password authentication method is enabled.
            @is_phone_one_time_password_authentication_enabled
            ## 
            # The tenant admin can configure local accounts using username if the username and password authentication method is enabled.
            @is_user_name_authentication_enabled
            ## 
            ## Instantiates a new b2cAuthenticationMethodsPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a b2c_authentication_methods_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return B2cAuthenticationMethodsPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isEmailPasswordAuthenticationEnabled" => lambda {|n| @is_email_password_authentication_enabled = n.get_boolean_value() },
                    "isPhoneOneTimePasswordAuthenticationEnabled" => lambda {|n| @is_phone_one_time_password_authentication_enabled = n.get_boolean_value() },
                    "isUserNameAuthenticationEnabled" => lambda {|n| @is_user_name_authentication_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isEmailPasswordAuthenticationEnabled property value. The tenant admin can configure local accounts using email if the email and password authentication method is enabled.
            ## @return a boolean
            ## 
            def is_email_password_authentication_enabled
                return @is_email_password_authentication_enabled
            end
            ## 
            ## Sets the isEmailPasswordAuthenticationEnabled property value. The tenant admin can configure local accounts using email if the email and password authentication method is enabled.
            ## @param value Value to set for the is_email_password_authentication_enabled property.
            ## @return a void
            ## 
            def is_email_password_authentication_enabled=(value)
                @is_email_password_authentication_enabled = value
            end
            ## 
            ## Gets the isPhoneOneTimePasswordAuthenticationEnabled property value. The tenant admin can configure local accounts using phone number if the phone number and one-time password authentication method is enabled.
            ## @return a boolean
            ## 
            def is_phone_one_time_password_authentication_enabled
                return @is_phone_one_time_password_authentication_enabled
            end
            ## 
            ## Sets the isPhoneOneTimePasswordAuthenticationEnabled property value. The tenant admin can configure local accounts using phone number if the phone number and one-time password authentication method is enabled.
            ## @param value Value to set for the is_phone_one_time_password_authentication_enabled property.
            ## @return a void
            ## 
            def is_phone_one_time_password_authentication_enabled=(value)
                @is_phone_one_time_password_authentication_enabled = value
            end
            ## 
            ## Gets the isUserNameAuthenticationEnabled property value. The tenant admin can configure local accounts using username if the username and password authentication method is enabled.
            ## @return a boolean
            ## 
            def is_user_name_authentication_enabled
                return @is_user_name_authentication_enabled
            end
            ## 
            ## Sets the isUserNameAuthenticationEnabled property value. The tenant admin can configure local accounts using username if the username and password authentication method is enabled.
            ## @param value Value to set for the is_user_name_authentication_enabled property.
            ## @return a void
            ## 
            def is_user_name_authentication_enabled=(value)
                @is_user_name_authentication_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isEmailPasswordAuthenticationEnabled", @is_email_password_authentication_enabled)
                writer.write_boolean_value("isPhoneOneTimePasswordAuthenticationEnabled", @is_phone_one_time_password_authentication_enabled)
                writer.write_boolean_value("isUserNameAuthenticationEnabled", @is_user_name_authentication_enabled)
            end
        end
    end
end
