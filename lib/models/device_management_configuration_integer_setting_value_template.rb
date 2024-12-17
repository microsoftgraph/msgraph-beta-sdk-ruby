require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Integer Setting Value Template
        class DeviceManagementConfigurationIntegerSettingValueTemplate < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSimpleSettingValueTemplate
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Integer Setting Value Default Template.
            @default_value
            ## 
            # Recommended value definition.
            @recommended_value_definition
            ## 
            # Required value definition.
            @required_value_definition
            ## 
            ## Instantiates a new DeviceManagementConfigurationIntegerSettingValueTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValueTemplate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_integer_setting_value_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationIntegerSettingValueTemplate.new
            end
            ## 
            ## Gets the defaultValue property value. Integer Setting Value Default Template.
            ## @return a device_management_configuration_integer_setting_value_default_template
            ## 
            def default_value
                return @default_value
            end
            ## 
            ## Sets the defaultValue property value. Integer Setting Value Default Template.
            ## @param value Value to set for the defaultValue property.
            ## @return a void
            ## 
            def default_value=(value)
                @default_value = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultValue" => lambda {|n| @default_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationIntegerSettingValueDefaultTemplate.create_from_discriminator_value(pn) }) },
                    "recommendedValueDefinition" => lambda {|n| @recommended_value_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationIntegerSettingValueDefinitionTemplate.create_from_discriminator_value(pn) }) },
                    "requiredValueDefinition" => lambda {|n| @required_value_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationIntegerSettingValueDefinitionTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the recommendedValueDefinition property value. Recommended value definition.
            ## @return a device_management_configuration_integer_setting_value_definition_template
            ## 
            def recommended_value_definition
                return @recommended_value_definition
            end
            ## 
            ## Sets the recommendedValueDefinition property value. Recommended value definition.
            ## @param value Value to set for the recommendedValueDefinition property.
            ## @return a void
            ## 
            def recommended_value_definition=(value)
                @recommended_value_definition = value
            end
            ## 
            ## Gets the requiredValueDefinition property value. Required value definition.
            ## @return a device_management_configuration_integer_setting_value_definition_template
            ## 
            def required_value_definition
                return @required_value_definition
            end
            ## 
            ## Sets the requiredValueDefinition property value. Required value definition.
            ## @param value Value to set for the requiredValueDefinition property.
            ## @return a void
            ## 
            def required_value_definition=(value)
                @required_value_definition = value
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
                writer.write_object_value("recommendedValueDefinition", @recommended_value_definition)
                writer.write_object_value("requiredValueDefinition", @required_value_definition)
            end
        end
    end
end
