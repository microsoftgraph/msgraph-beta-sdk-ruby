require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Schema describing an Android for Work application's custom configurations.
        class AndroidForWorkAppConfigurationSchema < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # UTF8 encoded byte array containing example JSON string conforming to this schema that demonstrates how to set the configuration for this app
            @example_json
            ## 
            # Collection of items each representing a named configuration option in the schema
            @schema_items
            ## 
            ## Instantiates a new AndroidForWorkAppConfigurationSchema and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_for_work_app_configuration_schema
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidForWorkAppConfigurationSchema.new
            end
            ## 
            ## Gets the exampleJson property value. UTF8 encoded byte array containing example JSON string conforming to this schema that demonstrates how to set the configuration for this app
            ## @return a base64url
            ## 
            def example_json
                return @example_json
            end
            ## 
            ## Sets the exampleJson property value. UTF8 encoded byte array containing example JSON string conforming to this schema that demonstrates how to set the configuration for this app
            ## @param value Value to set for the exampleJson property.
            ## @return a void
            ## 
            def example_json=(value)
                @example_json = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "exampleJson" => lambda {|n| @example_json = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "schemaItems" => lambda {|n| @schema_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkAppConfigurationSchemaItem.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the schemaItems property value. Collection of items each representing a named configuration option in the schema
            ## @return a android_for_work_app_configuration_schema_item
            ## 
            def schema_items
                return @schema_items
            end
            ## 
            ## Sets the schemaItems property value. Collection of items each representing a named configuration option in the schema
            ## @param value Value to set for the schemaItems property.
            ## @return a void
            ## 
            def schema_items=(value)
                @schema_items = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("exampleJson", @example_json)
                writer.write_collection_of_object_values("schemaItems", @schema_items)
            end
        end
    end
end
