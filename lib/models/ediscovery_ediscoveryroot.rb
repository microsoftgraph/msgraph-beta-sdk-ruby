require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EdiscoveryEdiscoveryroot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The cases property
            @cases
            ## 
            ## Gets the cases property value. The cases property
            ## @return a ediscovery_case
            ## 
            def cases
                return @cases
            end
            ## 
            ## Sets the cases property value. The cases property
            ## @param value Value to set for the cases property.
            ## @return a void
            ## 
            def cases=(value)
                @cases = value
            end
            ## 
            ## Instantiates a new EdiscoveryEdiscoveryroot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ediscovery_ediscoveryroot
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EdiscoveryEdiscoveryroot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cases" => lambda {|n| @cases = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryCase.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("cases", @cases)
            end
        end
    end
end
