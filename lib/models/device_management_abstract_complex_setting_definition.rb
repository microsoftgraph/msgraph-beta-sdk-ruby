require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementAbstractComplexSettingDefinition < MicrosoftGraphBeta::Models::DeviceManagementSettingDefinition
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of definition IDs for all possible implementations of this abstract complex setting
            @implementations
            ## 
            ## Instantiates a new DeviceManagementAbstractComplexSettingDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_abstract_complex_setting_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementAbstractComplexSettingDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "implementations" => lambda {|n| @implementations = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the implementations property value. List of definition IDs for all possible implementations of this abstract complex setting
            ## @return a string
            ## 
            def implementations
                return @implementations
            end
            ## 
            ## Sets the implementations property value. List of definition IDs for all possible implementations of this abstract complex setting
            ## @param value Value to set for the implementations property.
            ## @return a void
            ## 
            def implementations=(value)
                @implementations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("implementations", @implementations)
            end
        end
    end
end
