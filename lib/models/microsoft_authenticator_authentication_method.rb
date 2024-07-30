require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MicrosoftAuthenticatorAuthenticationMethod < MicrosoftGraphBeta::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The app that the user has registered to use to approve push notifications. The possible values are: microsoftAuthenticator, outlookMobile, unknownFutureValue.
            @client_app_name
            ## 
            # The registered device on which Microsoft Authenticator resides. This property is null if the device isn't registered for passwordless Phone Sign-In.
            @device
            ## 
            # Tags containing app metadata.
            @device_tag
            ## 
            # The name of the device on which this app is registered.
            @display_name
            ## 
            # Numerical version of this instance of the Authenticator app.
            @phone_app_version
            ## 
            ## Gets the clientAppName property value. The app that the user has registered to use to approve push notifications. The possible values are: microsoftAuthenticator, outlookMobile, unknownFutureValue.
            ## @return a microsoft_authenticator_authentication_method_client_app_name
            ## 
            def client_app_name
                return @client_app_name
            end
            ## 
            ## Sets the clientAppName property value. The app that the user has registered to use to approve push notifications. The possible values are: microsoftAuthenticator, outlookMobile, unknownFutureValue.
            ## @param value Value to set for the clientAppName property.
            ## @return a void
            ## 
            def client_app_name=(value)
                @client_app_name = value
            end
            ## 
            ## Instantiates a new MicrosoftAuthenticatorAuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.microsoftAuthenticatorAuthenticationMethod"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_authenticator_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftAuthenticatorAuthenticationMethod.new
            end
            ## 
            ## Gets the device property value. The registered device on which Microsoft Authenticator resides. This property is null if the device isn't registered for passwordless Phone Sign-In.
            ## @return a device
            ## 
            def device
                return @device
            end
            ## 
            ## Sets the device property value. The registered device on which Microsoft Authenticator resides. This property is null if the device isn't registered for passwordless Phone Sign-In.
            ## @param value Value to set for the device property.
            ## @return a void
            ## 
            def device=(value)
                @device = value
            end
            ## 
            ## Gets the deviceTag property value. Tags containing app metadata.
            ## @return a string
            ## 
            def device_tag
                return @device_tag
            end
            ## 
            ## Sets the deviceTag property value. Tags containing app metadata.
            ## @param value Value to set for the deviceTag property.
            ## @return a void
            ## 
            def device_tag=(value)
                @device_tag = value
            end
            ## 
            ## Gets the displayName property value. The name of the device on which this app is registered.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the device on which this app is registered.
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
                    "clientAppName" => lambda {|n| @client_app_name = n.get_enum_value(MicrosoftGraphBeta::Models::MicrosoftAuthenticatorAuthenticationMethodClientAppName) },
                    "device" => lambda {|n| @device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Device.create_from_discriminator_value(pn) }) },
                    "deviceTag" => lambda {|n| @device_tag = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "phoneAppVersion" => lambda {|n| @phone_app_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the phoneAppVersion property value. Numerical version of this instance of the Authenticator app.
            ## @return a string
            ## 
            def phone_app_version
                return @phone_app_version
            end
            ## 
            ## Sets the phoneAppVersion property value. Numerical version of this instance of the Authenticator app.
            ## @param value Value to set for the phoneAppVersion property.
            ## @return a void
            ## 
            def phone_app_version=(value)
                @phone_app_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("clientAppName", @client_app_name)
                writer.write_object_value("device", @device)
                writer.write_string_value("deviceTag", @device_tag)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("phoneAppVersion", @phone_app_version)
            end
        end
    end
end
