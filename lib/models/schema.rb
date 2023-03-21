require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Schema < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The baseType property
            @base_type
            ## 
            # The properties property
            @properties
            ## 
            ## Gets the baseType property value. The baseType property
            ## @return a string
            ## 
            def base_type
                return @base_type
            end
            ## 
            ## Sets the baseType property value. The baseType property
            ## @param value Value to set for the base_type property.
            ## @return a void
            ## 
            def base_type=(value)
                @base_type = value
            end
            ## 
            ## Instantiates a new schema and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a schema
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Schema.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "baseType" => lambda {|n| @base_type = n.get_string_value() },
                    "properties" => lambda {|n| @properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Property.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the properties property value. The properties property
            ## @return a property
            ## 
            def properties
                return @properties
            end
            ## 
            ## Sets the properties property value. The properties property
            ## @param value Value to set for the properties property.
            ## @return a void
            ## 
            def properties=(value)
                @properties = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("baseType", @base_type)
                writer.write_collection_of_object_values("properties", @properties)
            end
        end
    end
end
