require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # UnsupportedDeviceConfiguration is used when an entity cannot be mapped to another model-compliant subtype of deviceConfiguration.
        class UnsupportedDeviceConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Details describing why the entity is unsupported. This collection can contain a maximum of 1000 elements.
            @details
            ## 
            # The type of entity that would be returned otherwise.
            @original_entity_type_name
            ## 
            ## Instantiates a new UnsupportedDeviceConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.unsupportedDeviceConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unsupported_device_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnsupportedDeviceConfiguration.new
            end
            ## 
            ## Gets the details property value. Details describing why the entity is unsupported. This collection can contain a maximum of 1000 elements.
            ## @return a unsupported_device_configuration_detail
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. Details describing why the entity is unsupported. This collection can contain a maximum of 1000 elements.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "details" => lambda {|n| @details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnsupportedDeviceConfigurationDetail.create_from_discriminator_value(pn) }) },
                    "originalEntityTypeName" => lambda {|n| @original_entity_type_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the originalEntityTypeName property value. The type of entity that would be returned otherwise.
            ## @return a string
            ## 
            def original_entity_type_name
                return @original_entity_type_name
            end
            ## 
            ## Sets the originalEntityTypeName property value. The type of entity that would be returned otherwise.
            ## @param value Value to set for the originalEntityTypeName property.
            ## @return a void
            ## 
            def original_entity_type_name=(value)
                @original_entity_type_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("details", @details)
                writer.write_string_value("originalEntityTypeName", @original_entity_type_name)
            end
        end
    end
end
