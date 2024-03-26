require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity representing the defintion for a complex setting
        class DeviceManagementComplexSettingDefinition < MicrosoftGraphBeta::Models::DeviceManagementSettingDefinition
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The definitions of each property of the complex setting
            @property_definition_ids
            ## 
            ## Instantiates a new DeviceManagementComplexSettingDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_complex_setting_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementComplexSettingDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "propertyDefinitionIds" => lambda {|n| @property_definition_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the propertyDefinitionIds property value. The definitions of each property of the complex setting
            ## @return a string
            ## 
            def property_definition_ids
                return @property_definition_ids
            end
            ## 
            ## Sets the propertyDefinitionIds property value. The definitions of each property of the complex setting
            ## @param value Value to set for the propertyDefinitionIds property.
            ## @return a void
            ## 
            def property_definition_ids=(value)
                @property_definition_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("propertyDefinitionIds", @property_definition_ids)
            end
        end
    end
end
