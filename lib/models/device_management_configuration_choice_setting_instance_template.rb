require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Choice Setting Instance Template
        class DeviceManagementConfigurationChoiceSettingInstanceTemplate < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstanceTemplate
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Choice Setting Value Template
            @choice_setting_value_template
            ## 
            ## Gets the choiceSettingValueTemplate property value. Choice Setting Value Template
            ## @return a device_management_configuration_choice_setting_value_template
            ## 
            def choice_setting_value_template
                return @choice_setting_value_template
            end
            ## 
            ## Sets the choiceSettingValueTemplate property value. Choice Setting Value Template
            ## @param value Value to set for the choiceSettingValueTemplate property.
            ## @return a void
            ## 
            def choice_setting_value_template=(value)
                @choice_setting_value_template = value
            end
            ## 
            ## Instantiates a new DeviceManagementConfigurationChoiceSettingInstanceTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstanceTemplate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_choice_setting_instance_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationChoiceSettingInstanceTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "choiceSettingValueTemplate" => lambda {|n| @choice_setting_value_template = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationChoiceSettingValueTemplate.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("choiceSettingValueTemplate", @choice_setting_value_template)
            end
        end
    end
end
