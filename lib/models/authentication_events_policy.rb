require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AuthenticationEventsPolicy < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # A list of applicable actions to be taken on sign-up.
        @on_signup_start
        ## 
        ## Instantiates a new AuthenticationEventsPolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a authentication_events_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AuthenticationEventsPolicy.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "onSignupStart" => lambda {|n| @on_signup_start = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationListener.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the onSignupStart property value. A list of applicable actions to be taken on sign-up.
        ## @return a authentication_listener
        ## 
        def on_signup_start
            return @on_signup_start
        end
        ## 
        ## Sets the onSignupStart property value. A list of applicable actions to be taken on sign-up.
        ## @param value Value to set for the onSignupStart property.
        ## @return a void
        ## 
        def on_signup_start=(value)
            @on_signup_start = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("onSignupStart", @on_signup_start)
        end
    end
end
