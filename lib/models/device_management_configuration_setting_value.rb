require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting value
        class DeviceManagementConfigurationSettingValue
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Setting value template reference
            @setting_value_template_reference
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
            ## Instantiates a new deviceManagementConfigurationSettingValue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_setting_value
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue"
                            return DeviceManagementConfigurationChoiceSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationGroupSettingValue"
                            return DeviceManagementConfigurationGroupSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            return DeviceManagementConfigurationIntegerSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationReferenceSettingValue"
                            return DeviceManagementConfigurationReferenceSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationSecretSettingValue"
                            return DeviceManagementConfigurationSecretSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationSimpleSettingValue"
                            return DeviceManagementConfigurationSimpleSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            return DeviceManagementConfigurationStringSettingValue.new
                    end
                end
                return DeviceManagementConfigurationSettingValue.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "settingValueTemplateReference" => lambda {|n| @setting_value_template_reference = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValueTemplateReference.create_from_discriminator_value(pn) }) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("settingValueTemplateReference", @setting_value_template_reference)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the settingValueTemplateReference property value. Setting value template reference
            ## @return a device_management_configuration_setting_value_template_reference
            ## 
            def setting_value_template_reference
                return @setting_value_template_reference
            end
            ## 
            ## Sets the settingValueTemplateReference property value. Setting value template reference
            ## @param value Value to set for the setting_value_template_reference property.
            ## @return a void
            ## 
            def setting_value_template_reference=(value)
                @setting_value_template_reference = value
            end
        end
    end
end
