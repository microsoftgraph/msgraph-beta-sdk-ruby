require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OidcIdentityProvider < MicrosoftGraphBeta::Models::IdentityProviderBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The clientAuthentication property
            @client_authentication
            ## 
            # The client ID for the application obtained when registering the application with the identity provider.
            @client_id
            ## 
            # After the OIDC provider sends an ID token back to Microsoft Entra External ID, Microsoft Entra External ID needs to be able to map the claims from the received token to the claims that Microsoft Entra ID recognizes and uses. This complex type captures that mapping.
            @inbound_claim_mapping
            ## 
            # The issuer URI. Issuer URI is a case-sensitive URL using https scheme contains scheme, host, and optionally, port number and path components and no query or fragment components. Note: Configuring other Microsoft Entra tenants as an external identity provider is currently not supported. As a result, the microsoftonline.com domain in the issuer URI is not accepted.
            @issuer
            ## 
            # The responseType property
            @response_type
            ## 
            # Scope defines the information and permissions you are looking to gather from your custom identity provider.
            @scope
            ## 
            # The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in .well-known/openid-configuration. Note: The metadata document should, at minimum, contain the following properties: issuer, authorizationendpoint, tokenendpoint, tokenendpointauthmethodssupported, responsetypessupported, subjecttypessupported and jwks_uri. Visit OpenID Connect Discovery specifications for more details.
            @well_known_endpoint
            ## 
            ## Gets the clientAuthentication property value. The clientAuthentication property
            ## @return a oidc_client_authentication
            ## 
            def client_authentication
                return @client_authentication
            end
            ## 
            ## Sets the clientAuthentication property value. The clientAuthentication property
            ## @param value Value to set for the clientAuthentication property.
            ## @return a void
            ## 
            def client_authentication=(value)
                @client_authentication = value
            end
            ## 
            ## Gets the clientId property value. The client ID for the application obtained when registering the application with the identity provider.
            ## @return a string
            ## 
            def client_id
                return @client_id
            end
            ## 
            ## Sets the clientId property value. The client ID for the application obtained when registering the application with the identity provider.
            ## @param value Value to set for the clientId property.
            ## @return a void
            ## 
            def client_id=(value)
                @client_id = value
            end
            ## 
            ## Instantiates a new OidcIdentityProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.oidcIdentityProvider"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a oidc_identity_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OidcIdentityProvider.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientAuthentication" => lambda {|n| @client_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OidcClientAuthentication.create_from_discriminator_value(pn) }) },
                    "clientId" => lambda {|n| @client_id = n.get_string_value() },
                    "inboundClaimMapping" => lambda {|n| @inbound_claim_mapping = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OidcInboundClaimMappingOverride.create_from_discriminator_value(pn) }) },
                    "issuer" => lambda {|n| @issuer = n.get_string_value() },
                    "responseType" => lambda {|n| @response_type = n.get_enum_values(MicrosoftGraphBeta::Models::OidcResponseType) },
                    "scope" => lambda {|n| @scope = n.get_string_value() },
                    "wellKnownEndpoint" => lambda {|n| @well_known_endpoint = n.get_string_value() },
                })
            end
            ## 
            ## Gets the inboundClaimMapping property value. After the OIDC provider sends an ID token back to Microsoft Entra External ID, Microsoft Entra External ID needs to be able to map the claims from the received token to the claims that Microsoft Entra ID recognizes and uses. This complex type captures that mapping.
            ## @return a oidc_inbound_claim_mapping_override
            ## 
            def inbound_claim_mapping
                return @inbound_claim_mapping
            end
            ## 
            ## Sets the inboundClaimMapping property value. After the OIDC provider sends an ID token back to Microsoft Entra External ID, Microsoft Entra External ID needs to be able to map the claims from the received token to the claims that Microsoft Entra ID recognizes and uses. This complex type captures that mapping.
            ## @param value Value to set for the inboundClaimMapping property.
            ## @return a void
            ## 
            def inbound_claim_mapping=(value)
                @inbound_claim_mapping = value
            end
            ## 
            ## Gets the issuer property value. The issuer URI. Issuer URI is a case-sensitive URL using https scheme contains scheme, host, and optionally, port number and path components and no query or fragment components. Note: Configuring other Microsoft Entra tenants as an external identity provider is currently not supported. As a result, the microsoftonline.com domain in the issuer URI is not accepted.
            ## @return a string
            ## 
            def issuer
                return @issuer
            end
            ## 
            ## Sets the issuer property value. The issuer URI. Issuer URI is a case-sensitive URL using https scheme contains scheme, host, and optionally, port number and path components and no query or fragment components. Note: Configuring other Microsoft Entra tenants as an external identity provider is currently not supported. As a result, the microsoftonline.com domain in the issuer URI is not accepted.
            ## @param value Value to set for the issuer property.
            ## @return a void
            ## 
            def issuer=(value)
                @issuer = value
            end
            ## 
            ## Gets the responseType property value. The responseType property
            ## @return a oidc_response_type
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
            ## Gets the scope property value. Scope defines the information and permissions you are looking to gather from your custom identity provider.
            ## @return a string
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. Scope defines the information and permissions you are looking to gather from your custom identity provider.
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
                writer.write_object_value("clientAuthentication", @client_authentication)
                writer.write_string_value("clientId", @client_id)
                writer.write_object_value("inboundClaimMapping", @inbound_claim_mapping)
                writer.write_string_value("issuer", @issuer)
                writer.write_enum_value("responseType", @response_type)
                writer.write_string_value("scope", @scope)
                writer.write_string_value("wellKnownEndpoint", @well_known_endpoint)
            end
            ## 
            ## Gets the wellKnownEndpoint property value. The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in .well-known/openid-configuration. Note: The metadata document should, at minimum, contain the following properties: issuer, authorizationendpoint, tokenendpoint, tokenendpointauthmethodssupported, responsetypessupported, subjecttypessupported and jwks_uri. Visit OpenID Connect Discovery specifications for more details.
            ## @return a string
            ## 
            def well_known_endpoint
                return @well_known_endpoint
            end
            ## 
            ## Sets the wellKnownEndpoint property value. The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in .well-known/openid-configuration. Note: The metadata document should, at minimum, contain the following properties: issuer, authorizationendpoint, tokenendpoint, tokenendpointauthmethodssupported, responsetypessupported, subjecttypessupported and jwks_uri. Visit OpenID Connect Discovery specifications for more details.
            ## @param value Value to set for the wellKnownEndpoint property.
            ## @return a void
            ## 
            def well_known_endpoint=(value)
                @well_known_endpoint = value
            end
        end
    end
end
