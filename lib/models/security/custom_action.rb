require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class CustomAction < MicrosoftGraphBeta::Models::Security::InformationProtectionAction
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Name of the custom action.
        @name
        ## 
        # Properties, in key-value pair format, of the action.
        @properties
        ## 
        ## Instantiates a new CustomAction and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.security.customAction"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a custom_action
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CustomAction.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "name" => lambda {|n| @name = n.get_string_value() },
                "properties" => lambda {|n| @properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::KeyValuePair.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the name property value. Name of the custom action.
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. Name of the custom action.
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Gets the properties property value. Properties, in key-value pair format, of the action.
        ## @return a key_value_pair
        ## 
        def properties
            return @properties
        end
        ## 
        ## Sets the properties property value. Properties, in key-value pair format, of the action.
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
            writer.write_string_value("name", @name)
            writer.write_collection_of_object_values("properties", @properties)
        end
    end
end
