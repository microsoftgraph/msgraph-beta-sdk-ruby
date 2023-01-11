require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OpenIdConnectIdentityProvider < MicrosoftGraphBeta::Models::IdentityProviderBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # After the OIDC provider sends an ID token back to Azure AD, Azure AD needs to be able to map the claims from the received token to the claims that Azure AD recognizes and uses. This complex type captures that mapping. Required.
        @claims_mapping
        ## 
        # The client identifier for the application obtained when registering the application with the identity provider. Required.
        @client_id
        ## 
        # The client secret for the application obtained when registering the application with the identity provider. The clientSecret has a dependency on responseType. When responseType is code, a secret is required for the auth code exchange.When responseType is id_token the secret is not required because there is no code exchange. The id_token is returned directly from the authorization response. This is write-only. A read operation returns ****.
        @client_secret
        ## 
        # The domain hint can be used to skip directly to the sign-in page of the specified identity provider, instead of having the user make a selection among the list of available identity providers.
        @domain_hint
        ## 
        # The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in .well-known/openid-configuration. Provide the metadata URL for the OpenID Connect identity provider you add. Read-only. Required.
        @metadata_url
        ## 
        # The responseMode property
        @response_mode
        ## 
        # The responseType property
        @response_type
        ## 
        # Scope defines the information and permissions you are looking to gather from your custom identity provider. OpenID Connect requests must contain the openid scope value in order to receive the ID token from the identity provider. Without the ID token, users are not able to sign in to Azure AD B2C using the custom identity provider. Other scopes can be appended, separated by a space. For more details about the scope limitations see RFC6749 Section 3.3. Required.
        @scope
        ## 
        ## Gets the claimsMapping property value. After the OIDC provider sends an ID token back to Azure AD, Azure AD needs to be able to map the claims from the received token to the claims that Azure AD recognizes and uses. This complex type captures that mapping. Required.
        ## @return a claims_mapping
        ## 
        def claims_mapping
            return @claims_mapping
        end
        ## 
        ## Sets the claimsMapping property value. After the OIDC provider sends an ID token back to Azure AD, Azure AD needs to be able to map the claims from the received token to the claims that Azure AD recognizes and uses. This complex type captures that mapping. Required.
        ## @param value Value to set for the claimsMapping property.
        ## @return a void
        ## 
        def claims_mapping=(value)
            @claims_mapping = value
        end
        ## 
        ## Gets the clientId property value. The client identifier for the application obtained when registering the application with the identity provider. Required.
        ## @return a string
        ## 
        def client_id
            return @client_id
        end
        ## 
        ## Sets the clientId property value. The client identifier for the application obtained when registering the application with the identity provider. Required.
        ## @param value Value to set for the clientId property.
        ## @return a void
        ## 
        def client_id=(value)
            @client_id = value
        end
        ## 
        ## Gets the clientSecret property value. The client secret for the application obtained when registering the application with the identity provider. The clientSecret has a dependency on responseType. When responseType is code, a secret is required for the auth code exchange.When responseType is id_token the secret is not required because there is no code exchange. The id_token is returned directly from the authorization response. This is write-only. A read operation returns ****.
        ## @return a string
        ## 
        def client_secret
            return @client_secret
        end
        ## 
        ## Sets the clientSecret property value. The client secret for the application obtained when registering the application with the identity provider. The clientSecret has a dependency on responseType. When responseType is code, a secret is required for the auth code exchange.When responseType is id_token the secret is not required because there is no code exchange. The id_token is returned directly from the authorization response. This is write-only. A read operation returns ****.
        ## @param value Value to set for the clientSecret property.
        ## @return a void
        ## 
        def client_secret=(value)
            @client_secret = value
        end
        ## 
        ## Instantiates a new OpenIdConnectIdentityProvider and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.openIdConnectIdentityProvider"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a open_id_connect_identity_provider
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OpenIdConnectIdentityProvider.new
        end
        ## 
        ## Gets the domainHint property value. The domain hint can be used to skip directly to the sign-in page of the specified identity provider, instead of having the user make a selection among the list of available identity providers.
        ## @return a string
        ## 
        def domain_hint
            return @domain_hint
        end
        ## 
        ## Sets the domainHint property value. The domain hint can be used to skip directly to the sign-in page of the specified identity provider, instead of having the user make a selection among the list of available identity providers.
        ## @param value Value to set for the domainHint property.
        ## @return a void
        ## 
        def domain_hint=(value)
            @domain_hint = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "claimsMapping" => lambda {|n| @claims_mapping = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ClaimsMapping.create_from_discriminator_value(pn) }) },
                "clientId" => lambda {|n| @client_id = n.get_string_value() },
                "clientSecret" => lambda {|n| @client_secret = n.get_string_value() },
                "domainHint" => lambda {|n| @domain_hint = n.get_string_value() },
                "metadataUrl" => lambda {|n| @metadata_url = n.get_string_value() },
                "responseMode" => lambda {|n| @response_mode = n.get_enum_value(MicrosoftGraphBeta::Models::OpenIdConnectResponseMode) },
                "responseType" => lambda {|n| @response_type = n.get_enum_value(MicrosoftGraphBeta::Models::OpenIdConnectResponseTypes) },
                "scope" => lambda {|n| @scope = n.get_string_value() },
            })
        end
        ## 
        ## Gets the metadataUrl property value. The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in .well-known/openid-configuration. Provide the metadata URL for the OpenID Connect identity provider you add. Read-only. Required.
        ## @return a string
        ## 
        def metadata_url
            return @metadata_url
        end
        ## 
        ## Sets the metadataUrl property value. The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in .well-known/openid-configuration. Provide the metadata URL for the OpenID Connect identity provider you add. Read-only. Required.
        ## @param value Value to set for the metadataUrl property.
        ## @return a void
        ## 
        def metadata_url=(value)
            @metadata_url = value
        end
        ## 
        ## Gets the responseMode property value. The responseMode property
        ## @return a open_id_connect_response_mode
        ## 
        def response_mode
            return @response_mode
        end
        ## 
        ## Sets the responseMode property value. The responseMode property
        ## @param value Value to set for the responseMode property.
        ## @return a void
        ## 
        def response_mode=(value)
            @response_mode = value
        end
        ## 
        ## Gets the responseType property value. The responseType property
        ## @return a open_id_connect_response_types
        ## 
        def response_type
            return @response_type
        end
        ## 
        ## Sets the responseType property value. The responseType property
        ## @param value Value to set for the responseType property.
        ## @return a void
        ## 
        def response_type=(value)
            @response_type = value
        end
        ## 
        ## Gets the scope property value. Scope defines the information and permissions you are looking to gather from your custom identity provider. OpenID Connect requests must contain the openid scope value in order to receive the ID token from the identity provider. Without the ID token, users are not able to sign in to Azure AD B2C using the custom identity provider. Other scopes can be appended, separated by a space. For more details about the scope limitations see RFC6749 Section 3.3. Required.
        ## @return a string
        ## 
        def scope
            return @scope
        end
        ## 
        ## Sets the scope property value. Scope defines the information and permissions you are looking to gather from your custom identity provider. OpenID Connect requests must contain the openid scope value in order to receive the ID token from the identity provider. Without the ID token, users are not able to sign in to Azure AD B2C using the custom identity provider. Other scopes can be appended, separated by a space. For more details about the scope limitations see RFC6749 Section 3.3. Required.
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
            writer.write_object_value("claimsMapping", @claims_mapping)
            writer.write_string_value("clientId", @client_id)
            writer.write_string_value("clientSecret", @client_secret)
            writer.write_string_value("domainHint", @domain_hint)
            writer.write_string_value("metadataUrl", @metadata_url)
            writer.write_enum_value("responseMode", @response_mode)
            writer.write_enum_value("responseType", @response_type)
            writer.write_string_value("scope", @scope)
        end
    end
end
