require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting instance within policy
        class DeviceManagementConfigurationChoiceSettingInstance < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The choiceSettingValue property
            @choice_setting_value
            ## 
            ## Gets the choiceSettingValue property value. The choiceSettingValue property
            ## @return a device_management_configuration_choice_setting_value
            ## 
            def choice_setting_value
                return @choice_setting_value
            end
            ## 
            ## Sets the choiceSettingValue property value. The choiceSettingValue property
            ## @param value Value to set for the choice_setting_value property.
            ## @return a void
            ## 
            def choice_setting_value=(value)
                @choice_setting_value = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationChoiceSettingInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_choice_setting_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationChoiceSettingInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "choiceSettingValue" => lambda {|n| @choice_setting_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationChoiceSettingValue.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("choiceSettingValue", @choice_setting_value)
            end
        end
    end
end
