require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class BuiltInIdentityProvider < MicrosoftGraphBeta::Models::IdentityProviderBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identity provider type. For a B2B scenario, possible values: AADSignup, MicrosoftAccount, EmailOTP. Required.
            @identity_provider_type
            ## 
            # The state property
            @state
            ## 
            ## Instantiates a new builtInIdentityProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.builtInIdentityProvider"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a built_in_identity_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BuiltInIdentityProvider.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "identityProviderType" => lambda {|n| @identity_provider_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::IdentityProviderState) },
                })
            end
            ## 
            ## Gets the identityProviderType property value. The identity provider type. For a B2B scenario, possible values: AADSignup, MicrosoftAccount, EmailOTP. Required.
            ## @return a string
            ## 
            def identity_provider_type
                return @identity_provider_type
            end
            ## 
            ## Sets the identityProviderType property value. The identity provider type. For a B2B scenario, possible values: AADSignup, MicrosoftAccount, EmailOTP. Required.
            ## @param value Value to set for the identityProviderType property.
            ## @return a void
            ## 
            def identity_provider_type=(value)
                @identity_provider_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("identityProviderType", @identity_provider_type)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a identity_provider_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
