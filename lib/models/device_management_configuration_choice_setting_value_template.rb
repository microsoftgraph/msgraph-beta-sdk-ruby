require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Choice Setting Value Template
    class DeviceManagementConfigurationChoiceSettingValueTemplate
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Choice Setting Value Default Template.
        @default_value
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Recommended definition override.
        @recommended_value_definition
        ## 
        # Required definition override.
        @required_value_definition
        ## 
        # Setting Value Template Id
        @setting_value_template_id
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new deviceManagementConfigurationChoiceSettingValueTemplate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_choice_setting_value_template
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationChoiceSettingValueTemplate.new
        end
        ## 
        ## Gets the defaultValue property value. Choice Setting Value Default Template.
        ## @return a device_management_configuration_choice_setting_value_default_template
        ## 
        def default_value
            return @default_value
        end
        ## 
        ## Sets the defaultValue property value. Choice Setting Value Default Template.
        ## @param value Value to set for the default_value property.
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
            return {
                "defaultValue" => lambda {|n| @default_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationChoiceSettingValueDefaultTemplate.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "recommendedValueDefinition" => lambda {|n| @recommended_value_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationChoiceSettingValueDefinitionTemplate.create_from_discriminator_value(pn) }) },
                "requiredValueDefinition" => lambda {|n| @required_value_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationChoiceSettingValueDefinitionTemplate.create_from_discriminator_value(pn) }) },
                "settingValueTemplateId" => lambda {|n| @setting_value_template_id = n.get_string_value() },
            }
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the recommendedValueDefinition property value. Recommended definition override.
        ## @return a device_management_configuration_choice_setting_value_definition_template
        ## 
        def recommended_value_definition
            return @recommended_value_definition
        end
        ## 
        ## Sets the recommendedValueDefinition property value. Recommended definition override.
        ## @param value Value to set for the recommended_value_definition property.
        ## @return a void
        ## 
        def recommended_value_definition=(value)
            @recommended_value_definition = value
        end
        ## 
        ## Gets the requiredValueDefinition property value. Required definition override.
        ## @return a device_management_configuration_choice_setting_value_definition_template
        ## 
        def required_value_definition
            return @required_value_definition
        end
        ## 
        ## Sets the requiredValueDefinition property value. Required definition override.
        ## @param value Value to set for the required_value_definition property.
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
            writer.write_object_value("defaultValue", @default_value)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("recommendedValueDefinition", @recommended_value_definition)
            writer.write_object_value("requiredValueDefinition", @required_value_definition)
            writer.write_string_value("settingValueTemplateId", @setting_value_template_id)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the settingValueTemplateId property value. Setting Value Template Id
        ## @return a string
        ## 
        def setting_value_template_id
            return @setting_value_template_id
        end
        ## 
        ## Sets the settingValueTemplateId property value. Setting Value Template Id
        ## @param value Value to set for the setting_value_template_id property.
        ## @return a void
        ## 
        def setting_value_template_id=(value)
            @setting_value_template_id = value
        end
    end
end
