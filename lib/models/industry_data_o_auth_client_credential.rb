require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataOAuthClientCredential < MicrosoftGraphBeta::Models::IndustryDataCredential
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The client identifier of the application that is authenticating.
            @client_id
            ## 
            # The client secret that is used to authenticate (write-only).
            @client_secret
            ## 
            ## Gets the clientId property value. The client identifier of the application that is authenticating.
            ## @return a string
            ## 
            def client_id
                return @client_id
            end
            ## 
            ## Sets the clientId property value. The client identifier of the application that is authenticating.
            ## @param value Value to set for the clientId property.
            ## @return a void
            ## 
            def client_id=(value)
                @client_id = value
            end
            ## 
            ## Gets the clientSecret property value. The client secret that is used to authenticate (write-only).
            ## @return a string
            ## 
            def client_secret
                return @client_secret
            end
            ## 
            ## Sets the clientSecret property value. The client secret that is used to authenticate (write-only).
            ## @param value Value to set for the clientSecret property.
            ## @return a void
            ## 
            def client_secret=(value)
                @client_secret = value
            end
            ## 
            ## Instantiates a new IndustryDataOAuthClientCredential and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.oAuthClientCredential"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_o_auth_client_credential
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.industryData.oAuth1ClientCredential"
                            return IndustryDataOAuth1ClientCredential.new
                        when "#microsoft.graph.industryData.oAuth2ClientCredential"
                            return IndustryDataOAuth2ClientCredential.new
                    end
                end
                return IndustryDataOAuthClientCredential.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "clientId" => lambda {|n| @client_id = n.get_string_value() },
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
                writer.write_string_value("clientId", @client_id)
                writer.write_string_value("clientSecret", @client_secret)
            end
        end
    end
end
