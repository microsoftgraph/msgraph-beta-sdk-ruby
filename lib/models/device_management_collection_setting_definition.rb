require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementCollectionSettingDefinition < MicrosoftGraphBeta::Models::DeviceManagementSettingDefinition
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Setting Definition ID that describes what each element of the collection looks like
        @element_definition_id
        ## 
        ## Instantiates a new DeviceManagementCollectionSettingDefinition and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_collection_setting_definition
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementCollectionSettingDefinition.new
        end
        ## 
        ## Gets the elementDefinitionId property value. The Setting Definition ID that describes what each element of the collection looks like
        ## @return a string
        ## 
        def element_definition_id
            return @element_definition_id
        end
        ## 
        ## Sets the elementDefinitionId property value. The Setting Definition ID that describes what each element of the collection looks like
        ## @param value Value to set for the elementDefinitionId property.
        ## @return a void
        ## 
        def element_definition_id=(value)
            @element_definition_id = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "elementDefinitionId" => lambda {|n| @element_definition_id = n.get_string_value() },
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
            writer.write_string_value("elementDefinitionId", @element_definition_id)
        end
    end
end
