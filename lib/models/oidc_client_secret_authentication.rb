require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OidcClientSecretAuthentication < MicrosoftGraphBeta::Models::OidcClientAuthentication
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The client secret obtained from configuring the client application on the external OpenID Connect identity provider. The property includes the client secret and enables the identity provider to use either the clientsecretpost authentication method.
            @client_secret
            ## 
            ## Gets the clientSecret property value. The client secret obtained from configuring the client application on the external OpenID Connect identity provider. The property includes the client secret and enables the identity provider to use either the clientsecretpost authentication method.
            ## @return a string
            ## 
            def client_secret
                return @client_secret
            end
            ## 
            ## Sets the clientSecret property value. The client secret obtained from configuring the client application on the external OpenID Connect identity provider. The property includes the client secret and enables the identity provider to use either the clientsecretpost authentication method.
            ## @param value Value to set for the clientSecret property.
            ## @return a void
            ## 
            def client_secret=(value)
                @client_secret = value
            end
            ## 
            ## Instantiates a new OidcClientSecretAuthentication and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.oidcClientSecretAuthentication"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a oidc_client_secret_authentication
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OidcClientSecretAuthentication.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientSecret" => lambda {|n| @client_secret = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("clientSecret", @client_secret)
            end
        end
    end
end
