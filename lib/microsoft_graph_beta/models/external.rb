require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class External < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The connections property
        @connections
        ## 
        ## Gets the connections property value. The connections property
        ## @return a external_connection
        ## 
        def connections
            return @connections
        end
        ## 
        ## Sets the connections property value. The connections property
        ## @param value Value to set for the connections property.
        ## @return a void
        ## 
        def connections=(value)
            @connections = value
        end
        ## 
        ## Instantiates a new External and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a external
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return External.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "connections" => lambda {|n| @connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExternalConnection.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("connections", @connections)
        end
    end
end
