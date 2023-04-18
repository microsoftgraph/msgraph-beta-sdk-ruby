require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ConditionalAccessRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Nullable. Returns a collection of the specified authentication context class references.
            @authentication_context_class_references
            ## 
            # The authenticationStrength property
            @authentication_strength
            ## 
            # Defines the authentication strength policies, valid authentication method combinations, and authentication method mode details that can be required by a conditional access policy .
            @authentication_strengths
            ## 
            # Read-only. Nullable. Returns a collection of the specified named locations.
            @named_locations
            ## 
            # Read-only. Nullable. Returns a collection of the specified Conditional Access policies.
            @policies
            ## 
            # Read-only. Nullable. Returns a collection of the specified Conditional Access templates.
            @templates
            ## 
            ## Gets the authenticationContextClassReferences property value. Read-only. Nullable. Returns a collection of the specified authentication context class references.
            ## @return a authentication_context_class_reference
            ## 
            def authentication_context_class_references
                return @authentication_context_class_references
            end
            ## 
            ## Sets the authenticationContextClassReferences property value. Read-only. Nullable. Returns a collection of the specified authentication context class references.
            ## @param value Value to set for the authentication_context_class_references property.
            ## @return a void
            ## 
            def authentication_context_class_references=(value)
                @authentication_context_class_references = value
            end
            ## 
            ## Gets the authenticationStrength property value. The authenticationStrength property
            ## @return a authentication_strength_root
            ## 
            def authentication_strength
                return @authentication_strength
            end
            ## 
            ## Sets the authenticationStrength property value. The authenticationStrength property
            ## @param value Value to set for the authentication_strength property.
            ## @return a void
            ## 
            def authentication_strength=(value)
                @authentication_strength = value
            end
            ## 
            ## Gets the authenticationStrengths property value. Defines the authentication strength policies, valid authentication method combinations, and authentication method mode details that can be required by a conditional access policy .
            ## @return a authentication_strength_root
            ## 
            def authentication_strengths
                return @authentication_strengths
            end
            ## 
            ## Sets the authenticationStrengths property value. Defines the authentication strength policies, valid authentication method combinations, and authentication method mode details that can be required by a conditional access policy .
            ## @param value Value to set for the authentication_strengths property.
            ## @return a void
            ## 
            def authentication_strengths=(value)
                @authentication_strengths = value
            end
            ## 
            ## Instantiates a new ConditionalAccessRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationContextClassReferences" => lambda {|n| @authentication_context_class_references = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationContextClassReference.create_from_discriminator_value(pn) }) },
                    "authenticationStrength" => lambda {|n| @authentication_strength = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationStrengthRoot.create_from_discriminator_value(pn) }) },
                    "authenticationStrengths" => lambda {|n| @authentication_strengths = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationStrengthRoot.create_from_discriminator_value(pn) }) },
                    "namedLocations" => lambda {|n| @named_locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NamedLocation.create_from_discriminator_value(pn) }) },
                    "policies" => lambda {|n| @policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessPolicy.create_from_discriminator_value(pn) }) },
                    "templates" => lambda {|n| @templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the namedLocations property value. Read-only. Nullable. Returns a collection of the specified named locations.
            ## @return a named_location
            ## 
            def named_locations
                return @named_locations
            end
            ## 
            ## Sets the namedLocations property value. Read-only. Nullable. Returns a collection of the specified named locations.
            ## @param value Value to set for the named_locations property.
            ## @return a void
            ## 
            def named_locations=(value)
                @named_locations = value
            end
            ## 
            ## Gets the policies property value. Read-only. Nullable. Returns a collection of the specified Conditional Access policies.
            ## @return a conditional_access_policy
            ## 
            def policies
                return @policies
            end
            ## 
            ## Sets the policies property value. Read-only. Nullable. Returns a collection of the specified Conditional Access policies.
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
                writer.write_collection_of_object_values("authenticationContextClassReferences", @authentication_context_class_references)
                writer.write_object_value("authenticationStrength", @authentication_strength)
                writer.write_object_value("authenticationStrengths", @authentication_strengths)
                writer.write_collection_of_object_values("namedLocations", @named_locations)
                writer.write_collection_of_object_values("policies", @policies)
                writer.write_collection_of_object_values("templates", @templates)
            end
            ## 
            ## Gets the templates property value. Read-only. Nullable. Returns a collection of the specified Conditional Access templates.
            ## @return a conditional_access_template
            ## 
            def templates
                return @templates
            end
            ## 
            ## Sets the templates property value. Read-only. Nullable. Returns a collection of the specified Conditional Access templates.
            ## @param value Value to set for the templates property.
            ## @return a void
            ## 
            def templates=(value)
                @templates = value
            end
        end
    end
end
