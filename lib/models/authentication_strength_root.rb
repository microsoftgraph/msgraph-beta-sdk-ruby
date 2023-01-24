require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AuthenticationStrengthRoot < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # A collection of all valid authentication method combinations in the system.
        @authentication_combinations
        ## 
        # Names and descriptions of all valid authentication method modes in the system.
        @authentication_method_modes
        ## 
        # A collection of authentication strength policies that exist for this tenant, including both built-in and custom policies.
        @policies
        ## 
        ## Gets the authenticationCombinations property value. A collection of all valid authentication method combinations in the system.
        ## @return a authentication_method_modes
        ## 
        def authentication_combinations
            return @authentication_combinations
        end
        ## 
        ## Sets the authenticationCombinations property value. A collection of all valid authentication method combinations in the system.
        ## @param value Value to set for the authenticationCombinations property.
        ## @return a void
        ## 
        def authentication_combinations=(value)
            @authentication_combinations = value
        end
        ## 
        ## Gets the authenticationMethodModes property value. Names and descriptions of all valid authentication method modes in the system.
        ## @return a authentication_method_mode_detail
        ## 
        def authentication_method_modes
            return @authentication_method_modes
        end
        ## 
        ## Sets the authenticationMethodModes property value. Names and descriptions of all valid authentication method modes in the system.
        ## @param value Value to set for the authenticationMethodModes property.
        ## @return a void
        ## 
        def authentication_method_modes=(value)
            @authentication_method_modes = value
        end
        ## 
        ## Instantiates a new AuthenticationStrengthRoot and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a authentication_strength_root
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AuthenticationStrengthRoot.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "authenticationCombinations" => lambda {|n| @authentication_combinations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodModes.create_from_discriminator_value(pn) }) },
                "authenticationMethodModes" => lambda {|n| @authentication_method_modes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodModeDetail.create_from_discriminator_value(pn) }) },
                "policies" => lambda {|n| @policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationStrengthPolicy.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the policies property value. A collection of authentication strength policies that exist for this tenant, including both built-in and custom policies.
        ## @return a authentication_strength_policy
        ## 
        def policies
            return @policies
        end
        ## 
        ## Sets the policies property value. A collection of authentication strength policies that exist for this tenant, including both built-in and custom policies.
        ## @param value Value to set for the policies property.
        ## @return a void
        ## 
        def policies=(value)
            @policies = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("authenticationCombinations", @authentication_combinations)
            writer.write_collection_of_object_values("authenticationMethodModes", @authentication_method_modes)
            writer.write_collection_of_object_values("policies", @policies)
        end
    end
end
