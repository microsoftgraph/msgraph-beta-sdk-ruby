require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationChoiceSettingDefinition < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Default option for the choice setting.
            @default_option_id
            ## 
            # Options for the setting that can be selected.
            @options
            ## 
            ## Instantiates a new DeviceManagementConfigurationChoiceSettingDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_choice_setting_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementConfigurationChoiceSettingCollectionDefinition"
                            return DeviceManagementConfigurationChoiceSettingCollectionDefinition.new
                    end
                end
                return DeviceManagementConfigurationChoiceSettingDefinition.new
            end
            ## 
            ## Gets the defaultOptionId property value. Default option for the choice setting.
            ## @return a string
            ## 
            def default_option_id
                return @default_option_id
            end
            ## 
            ## Sets the defaultOptionId property value. Default option for the choice setting.
            ## @param value Value to set for the default_option_id property.
            ## @return a void
            ## 
            def default_option_id=(value)
                @default_option_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultOptionId" => lambda {|n| @default_option_id = n.get_string_value() },
                    "options" => lambda {|n| @options = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationOptionDefinition.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the options property value. Options for the setting that can be selected.
            ## @return a device_management_configuration_option_definition
            ## 
            def options
                return @options
            end
            ## 
            ## Sets the options property value. Options for the setting that can be selected.
            ## @param value Value to set for the options property.
            ## @return a void
            ## 
            def options=(value)
                @options = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("defaultOptionId", @default_option_id)
                writer.write_collection_of_object_values("options", @options)
            end
        end
    end
end
