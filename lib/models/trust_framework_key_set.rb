require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrustFrameworkKeySet < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of the keys.
            @keys
            ## 
            ## Instantiates a new trustFrameworkKeySet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a trust_framework_key_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrustFrameworkKeySet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "keys" => lambda {|n| @keys = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TrustFrameworkKey.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the keys property value. A collection of the keys.
            ## @return a trust_framework_key
            ## 
            def keys
                return @keys
            end
            ## 
            ## Sets the keys property value. A collection of the keys.
            ## @param value Value to set for the keys property.
            ## @return a void
            ## 
            def keys=(value)
                @keys = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("keys", @keys)
            end
        end
    end
end
