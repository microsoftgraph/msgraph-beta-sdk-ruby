require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServicePrincipalSignInActivity < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The globally unique appId (also called client ID on the Microsoft Entra admin center) of the credentialed resource application.
            @app_id
            ## 
            # The sign-in activity of the application in a app-only authentication flow (app-to-app tokens) where the application acts like a client.
            @application_authentication_client_sign_in_activity
            ## 
            # The sign-in activity of the application in a app-only authentication flow (app-to-app tokens) where the application acts like a resource.
            @application_authentication_resource_sign_in_activity
            ## 
            # The sign-in activity of the application in a delegated flow (user sign-in) where the application acts like a client.
            @delegated_client_sign_in_activity
            ## 
            # The sign-in activity of the application in a delegated flow (user sign-in) where the application acts like a resource.
            @delegated_resource_sign_in_activity
            ## 
            # The most recent sign-in activity of the application across delegated or app-only flows where the application is used either as a client or resource.
            @last_sign_in_activity
            ## 
            ## Gets the appId property value. The globally unique appId (also called client ID on the Microsoft Entra admin center) of the credentialed resource application.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The globally unique appId (also called client ID on the Microsoft Entra admin center) of the credentialed resource application.
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the applicationAuthenticationClientSignInActivity property value. The sign-in activity of the application in a app-only authentication flow (app-to-app tokens) where the application acts like a client.
            ## @return a sign_in_activity
            ## 
            def application_authentication_client_sign_in_activity
                return @application_authentication_client_sign_in_activity
            end
            ## 
            ## Sets the applicationAuthenticationClientSignInActivity property value. The sign-in activity of the application in a app-only authentication flow (app-to-app tokens) where the application acts like a client.
            ## @param value Value to set for the applicationAuthenticationClientSignInActivity property.
            ## @return a void
            ## 
            def application_authentication_client_sign_in_activity=(value)
                @application_authentication_client_sign_in_activity = value
            end
            ## 
            ## Gets the applicationAuthenticationResourceSignInActivity property value. The sign-in activity of the application in a app-only authentication flow (app-to-app tokens) where the application acts like a resource.
            ## @return a sign_in_activity
            ## 
            def application_authentication_resource_sign_in_activity
                return @application_authentication_resource_sign_in_activity
            end
            ## 
            ## Sets the applicationAuthenticationResourceSignInActivity property value. The sign-in activity of the application in a app-only authentication flow (app-to-app tokens) where the application acts like a resource.
            ## @param value Value to set for the applicationAuthenticationResourceSignInActivity property.
            ## @return a void
            ## 
            def application_authentication_resource_sign_in_activity=(value)
                @application_authentication_resource_sign_in_activity = value
            end
            ## 
            ## Instantiates a new ServicePrincipalSignInActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_principal_sign_in_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServicePrincipalSignInActivity.new
            end
            ## 
            ## Gets the delegatedClientSignInActivity property value. The sign-in activity of the application in a delegated flow (user sign-in) where the application acts like a client.
            ## @return a sign_in_activity
            ## 
            def delegated_client_sign_in_activity
                return @delegated_client_sign_in_activity
            end
            ## 
            ## Sets the delegatedClientSignInActivity property value. The sign-in activity of the application in a delegated flow (user sign-in) where the application acts like a client.
            ## @param value Value to set for the delegatedClientSignInActivity property.
            ## @return a void
            ## 
            def delegated_client_sign_in_activity=(value)
                @delegated_client_sign_in_activity = value
            end
            ## 
            ## Gets the delegatedResourceSignInActivity property value. The sign-in activity of the application in a delegated flow (user sign-in) where the application acts like a resource.
            ## @return a sign_in_activity
            ## 
            def delegated_resource_sign_in_activity
                return @delegated_resource_sign_in_activity
            end
            ## 
            ## Sets the delegatedResourceSignInActivity property value. The sign-in activity of the application in a delegated flow (user sign-in) where the application acts like a resource.
            ## @param value Value to set for the delegatedResourceSignInActivity property.
            ## @return a void
            ## 
            def delegated_resource_sign_in_activity=(value)
                @delegated_resource_sign_in_activity = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "applicationAuthenticationClientSignInActivity" => lambda {|n| @application_authentication_client_sign_in_activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInActivity.create_from_discriminator_value(pn) }) },
                    "applicationAuthenticationResourceSignInActivity" => lambda {|n| @application_authentication_resource_sign_in_activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInActivity.create_from_discriminator_value(pn) }) },
                    "delegatedClientSignInActivity" => lambda {|n| @delegated_client_sign_in_activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInActivity.create_from_discriminator_value(pn) }) },
                    "delegatedResourceSignInActivity" => lambda {|n| @delegated_resource_sign_in_activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInActivity.create_from_discriminator_value(pn) }) },
                    "lastSignInActivity" => lambda {|n| @last_sign_in_activity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInActivity.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastSignInActivity property value. The most recent sign-in activity of the application across delegated or app-only flows where the application is used either as a client or resource.
            ## @return a sign_in_activity
            ## 
            def last_sign_in_activity
                return @last_sign_in_activity
            end
            ## 
            ## Sets the lastSignInActivity property value. The most recent sign-in activity of the application across delegated or app-only flows where the application is used either as a client or resource.
            ## @param value Value to set for the lastSignInActivity property.
            ## @return a void
            ## 
            def last_sign_in_activity=(value)
                @last_sign_in_activity = value
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
                writer.write_object_value("applicationAuthenticationClientSignInActivity", @application_authentication_client_sign_in_activity)
                writer.write_object_value("applicationAuthenticationResourceSignInActivity", @application_authentication_resource_sign_in_activity)
                writer.write_object_value("delegatedClientSignInActivity", @delegated_client_sign_in_activity)
                writer.write_object_value("delegatedResourceSignInActivity", @delegated_resource_sign_in_activity)
                writer.write_object_value("lastSignInActivity", @last_sign_in_activity)
            end
        end
    end
end
