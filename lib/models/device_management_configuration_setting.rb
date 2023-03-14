require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting instance within policy
        class DeviceManagementConfigurationSetting < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of related Setting Definitions. This property is read-only.
            @setting_definitions
            ## 
            # Setting instance within policy
            @setting_instance
            ## 
            ## Instantiates a new deviceManagementConfigurationSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "settingDefinitions" => lambda {|n| @setting_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition.create_from_discriminator_value(pn) }) },
                    "settingInstance" => lambda {|n| @setting_instance = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("settingDefinitions", @setting_definitions)
                writer.write_object_value("settingInstance", @setting_instance)
            end
            ## 
            ## Gets the settingDefinitions property value. List of related Setting Definitions. This property is read-only.
            ## @return a device_management_configuration_setting_definition
            ## 
            def setting_definitions
                return @setting_definitions
            end
            ## 
            ## Sets the settingDefinitions property value. List of related Setting Definitions. This property is read-only.
            ## @param value Value to set for the setting_definitions property.
            ## @return a void
            ## 
            def setting_definitions=(value)
                @setting_definitions = value
            end
            ## 
            ## Gets the settingInstance property value. Setting instance within policy
            ## @return a device_management_configuration_setting_instance
            ## 
            def setting_instance
                return @setting_instance
            end
            ## 
            ## Sets the settingInstance property value. Setting instance within policy
            ## @param value Value to set for the setting_instance property.
            ## @return a void
            ## 
            def setting_instance=(value)
                @setting_instance = value
            end
        end
    end
end
