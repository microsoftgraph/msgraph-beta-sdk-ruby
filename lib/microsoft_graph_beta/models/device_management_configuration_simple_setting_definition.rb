require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationSimpleSettingDefinition < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Default setting value for this setting
        @default_value
        ## 
        # list of child settings that depend on this setting
        @depended_on_by
        ## 
        # list of parent settings this setting is dependent on
        @dependent_on
        ## 
        # Definition of the value for this setting
        @value_definition
        ## 
        ## Instantiates a new DeviceManagementConfigurationSimpleSettingDefinition and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_simple_setting_definition
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionDefinition"
                        return DeviceManagementConfigurationSimpleSettingCollectionDefinition.new
                end
            end
            return DeviceManagementConfigurationSimpleSettingDefinition.new
        end
        ## 
        ## Gets the defaultValue property value. Default setting value for this setting
        ## @return a device_management_configuration_setting_value
        ## 
        def default_value
            return @default_value
        end
        ## 
        ## Sets the defaultValue property value. Default setting value for this setting
        ## @param value Value to set for the defaultValue property.
        ## @return a void
        ## 
        def default_value=(value)
            @default_value = value
        end
        ## 
        ## Gets the dependedOnBy property value. list of child settings that depend on this setting
        ## @return a device_management_configuration_setting_depended_on_by
        ## 
        def depended_on_by
            return @depended_on_by
        end
        ## 
        ## Sets the dependedOnBy property value. list of child settings that depend on this setting
        ## @param value Value to set for the dependedOnBy property.
        ## @return a void
        ## 
        def depended_on_by=(value)
            @depended_on_by = value
        end
        ## 
        ## Gets the dependentOn property value. list of parent settings this setting is dependent on
        ## @return a device_management_configuration_dependent_on
        ## 
        def dependent_on
            return @dependent_on
        end
        ## 
        ## Sets the dependentOn property value. list of parent settings this setting is dependent on
        ## @param value Value to set for the dependentOn property.
        ## @return a void
        ## 
        def dependent_on=(value)
            @dependent_on = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "defaultValue" => lambda {|n| @default_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValue.create_from_discriminator_value(pn) }) },
                "dependedOnBy" => lambda {|n| @depended_on_by = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDependedOnBy.create_from_discriminator_value(pn) }) },
                "dependentOn" => lambda {|n| @dependent_on = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationDependentOn.create_from_discriminator_value(pn) }) },
                "valueDefinition" => lambda {|n| @value_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValueDefinition.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("defaultValue", @default_value)
            writer.write_collection_of_object_values("dependedOnBy", @depended_on_by)
            writer.write_collection_of_object_values("dependentOn", @dependent_on)
            writer.write_object_value("valueDefinition", @value_definition)
        end
        ## 
        ## Gets the valueDefinition property value. Definition of the value for this setting
        ## @return a device_management_configuration_setting_value_definition
        ## 
        def value_definition
            return @value_definition
        end
        ## 
        ## Sets the valueDefinition property value. Definition of the value for this setting
        ## @param value Value to set for the valueDefinition property.
        ## @return a void
        ## 
        def value_definition=(value)
            @value_definition = value
        end
    end
end
