require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting instance within policy
        class DeviceManagementConfigurationSettingInstance
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Setting Definition Id
            @setting_definition_id
            ## 
            # Setting Instance Template Reference
            @setting_instance_template_reference
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
            ## Instantiates a new deviceManagementConfigurationSettingInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_setting_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementConfigurationChoiceSettingCollectionInstance"
                            return DeviceManagementConfigurationChoiceSettingCollectionInstance.new
                        when "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                            return DeviceManagementConfigurationChoiceSettingInstance.new
                        when "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                            return DeviceManagementConfigurationGroupSettingCollectionInstance.new
                        when "#microsoft.graph.deviceManagementConfigurationGroupSettingInstance"
                            return DeviceManagementConfigurationGroupSettingInstance.new
                        when "#microsoft.graph.deviceManagementConfigurationSettingGroupCollectionInstance"
                            return DeviceManagementConfigurationSettingGroupCollectionInstance.new
                        when "#microsoft.graph.deviceManagementConfigurationSettingGroupInstance"
                            return DeviceManagementConfigurationSettingGroupInstance.new
                        when "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
                            return DeviceManagementConfigurationSimpleSettingCollectionInstance.new
                        when "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                            return DeviceManagementConfigurationSimpleSettingInstance.new
                    end
                end
                return DeviceManagementConfigurationSettingInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "settingDefinitionId" => lambda {|n| @setting_definition_id = n.get_string_value() },
                    "settingInstanceTemplateReference" => lambda {|n| @setting_instance_template_reference = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstanceTemplateReference.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("settingDefinitionId", @setting_definition_id)
                writer.write_object_value("settingInstanceTemplateReference", @setting_instance_template_reference)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the settingDefinitionId property value. Setting Definition Id
            ## @return a string
            ## 
            def setting_definition_id
                return @setting_definition_id
            end
            ## 
            ## Sets the settingDefinitionId property value. Setting Definition Id
            ## @param value Value to set for the setting_definition_id property.
            ## @return a void
            ## 
            def setting_definition_id=(value)
                @setting_definition_id = value
            end
            ## 
            ## Gets the settingInstanceTemplateReference property value. Setting Instance Template Reference
            ## @return a device_management_configuration_setting_instance_template_reference
            ## 
            def setting_instance_template_reference
                return @setting_instance_template_reference
            end
            ## 
            ## Sets the settingInstanceTemplateReference property value. Setting Instance Template Reference
            ## @param value Value to set for the setting_instance_template_reference property.
            ## @return a void
            ## 
            def setting_instance_template_reference=(value)
                @setting_instance_template_reference = value
            end
        end
    end
end
