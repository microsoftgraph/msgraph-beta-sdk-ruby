require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MutualTlsOauthConfiguration < MicrosoftGraphBeta::Models::TrustedCertificateAuthorityBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The displayName property
            @display_name
            ## 
            # The tlsClientAuthParameter property
            @tls_client_auth_parameter
            ## 
            ## Instantiates a new MutualTlsOauthConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.mutualTlsOauthConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mutual_tls_oauth_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MutualTlsOauthConfiguration.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "tlsClientAuthParameter" => lambda {|n| @tls_client_auth_parameter = n.get_enum_value(MicrosoftGraphBeta::Models::TlsClientRegistrationMetadata) },
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
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("tlsClientAuthParameter", @tls_client_auth_parameter)
            end
            ## 
            ## Gets the tlsClientAuthParameter property value. The tlsClientAuthParameter property
            ## @return a tls_client_registration_metadata
            ## 
            def tls_client_auth_parameter
                return @tls_client_auth_parameter
            end
            ## 
            ## Sets the tlsClientAuthParameter property value. The tlsClientAuthParameter property
            ## @param value Value to set for the tlsClientAuthParameter property.
            ## @return a void
            ## 
            def tls_client_auth_parameter=(value)
                @tls_client_auth_parameter = value
            end
        end
    end
end
