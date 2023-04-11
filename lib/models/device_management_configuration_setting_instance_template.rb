require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting Instance Template
        class DeviceManagementConfigurationSettingInstanceTemplate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates if a policy must specify this setting.
            @is_required
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Setting Definition Id
            @setting_definition_id
            ## 
            # Setting Instance Template Id
            @setting_instance_template_id
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
            ## Instantiates a new deviceManagementConfigurationSettingInstanceTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_setting_instance_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementConfigurationChoiceSettingCollectionInstanceTemplate"
                            return DeviceManagementConfigurationChoiceSettingCollectionInstanceTemplate.new
                        when "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstanceTemplate"
                            return DeviceManagementConfigurationChoiceSettingInstanceTemplate.new
                        when "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstanceTemplate"
                            return DeviceManagementConfigurationGroupSettingCollectionInstanceTemplate.new
                        when "#microsoft.graph.deviceManagementConfigurationGroupSettingInstanceTemplate"
                            return DeviceManagementConfigurationGroupSettingInstanceTemplate.new
                        when "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstanceTemplate"
                            return DeviceManagementConfigurationSimpleSettingCollectionInstanceTemplate.new
                        when "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstanceTemplate"
                            return DeviceManagementConfigurationSimpleSettingInstanceTemplate.new
                    end
                end
                return DeviceManagementConfigurationSettingInstanceTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "settingDefinitionId" => lambda {|n| @setting_definition_id = n.get_string_value() },
                    "settingInstanceTemplateId" => lambda {|n| @setting_instance_template_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isRequired property value. Indicates if a policy must specify this setting.
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. Indicates if a policy must specify this setting.
            ## @param value Value to set for the is_required property.
            ## @return a void
            ## 
            def is_required=(value)
                @is_required = value
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
                writer.write_boolean_value("isRequired", @is_required)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("settingDefinitionId", @setting_definition_id)
                writer.write_string_value("settingInstanceTemplateId", @setting_instance_template_id)
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
            ## Gets the settingInstanceTemplateId property value. Setting Instance Template Id
            ## @return a string
            ## 
            def setting_instance_template_id
                return @setting_instance_template_id
            end
            ## 
            ## Sets the settingInstanceTemplateId property value. Setting Instance Template Id
            ## @param value Value to set for the setting_instance_template_id property.
            ## @return a void
            ## 
            def setting_instance_template_id=(value)
                @setting_instance_template_id = value
            end
        end
    end
end
