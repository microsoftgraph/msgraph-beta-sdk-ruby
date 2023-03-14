require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationSynchronizationOAuth2ClientCredentialsConnectionSettings < MicrosoftGraphBeta::Models::EducationSynchronizationConnectionSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The scope of the access request (see RFC6749).
            @scope
            ## 
            # The URL to get access tokens for the data provider.
            @token_url
            ## 
            ## Instantiates a new EducationSynchronizationOAuth2ClientCredentialsConnectionSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationSynchronizationOAuth2ClientCredentialsConnectionSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a education_synchronization_o_auth2_client_credentials_connection_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSynchronizationOAuth2ClientCredentialsConnectionSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "scope" => lambda {|n| @scope = n.get_string_value() },
                    "tokenUrl" => lambda {|n| @token_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the scope property value. The scope of the access request (see RFC6749).
            ## @return a string
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. The scope of the access request (see RFC6749).
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
                writer.write_string_value("scope", @scope)
                writer.write_string_value("tokenUrl", @token_url)
            end
            ## 
            ## Gets the tokenUrl property value. The URL to get access tokens for the data provider.
            ## @return a string
            ## 
            def token_url
                return @token_url
            end
            ## 
            ## Sets the tokenUrl property value. The URL to get access tokens for the data provider.
            ## @param value Value to set for the token_url property.
            ## @return a void
            ## 
            def token_url=(value)
                @token_url = value
            end
        end
    end
end
