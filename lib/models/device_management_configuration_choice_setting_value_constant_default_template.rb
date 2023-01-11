require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate < MicrosoftGraphBeta::Models::DeviceManagementConfigurationChoiceSettingValueDefaultTemplate
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Option Children
        @children
        ## 
        # Default Constant Value
        @setting_definition_option_id
        ## 
        ## Gets the children property value. Option Children
        ## @return a device_management_configuration_setting_instance_template
        ## 
        def children
            return @children
        end
        ## 
        ## Sets the children property value. Option Children
        ## @param value Value to set for the children property.
        ## @return a void
        ## 
        def children=(value)
            @children = value
        end
        ## 
        ## Instantiates a new DeviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_choice_setting_value_constant_default_template
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationChoiceSettingValueConstantDefaultTemplate.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstanceTemplate.create_from_discriminator_value(pn) }) },
                "settingDefinitionOptionId" => lambda {|n| @setting_definition_option_id = n.get_string_value() },
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
            writer.write_collection_of_object_values("children", @children)
            writer.write_string_value("settingDefinitionOptionId", @setting_definition_option_id)
        end
        ## 
        ## Gets the settingDefinitionOptionId property value. Default Constant Value
        ## @return a string
        ## 
        def setting_definition_option_id
            return @setting_definition_option_id
        end
        ## 
        ## Sets the settingDefinitionOptionId property value. Default Constant Value
        ## @param value Value to set for the settingDefinitionOptionId property.
        ## @return a void
        ## 
        def setting_definition_option_id=(value)
            @setting_definition_option_id = value
        end
    end
end
