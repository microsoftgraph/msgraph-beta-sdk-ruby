require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting Template
        class DeviceManagementConfigurationSettingTemplate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of related Setting Definitions
            @setting_definitions
            ## 
            # Setting Instance Template
            @setting_instance_template
            ## 
            ## Instantiates a new deviceManagementConfigurationSettingTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_setting_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationSettingTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "settingDefinitions" => lambda {|n| @setting_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition.create_from_discriminator_value(pn) }) },
                    "settingInstanceTemplate" => lambda {|n| @setting_instance_template = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstanceTemplate.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("settingInstanceTemplate", @setting_instance_template)
            end
            ## 
            ## Gets the settingDefinitions property value. List of related Setting Definitions
            ## @return a device_management_configuration_setting_definition
            ## 
            def setting_definitions
                return @setting_definitions
            end
            ## 
            ## Sets the settingDefinitions property value. List of related Setting Definitions
            ## @param value Value to set for the settingDefinitions property.
            ## @return a void
            ## 
            def setting_definitions=(value)
                @setting_definitions = value
            end
            ## 
            ## Gets the settingInstanceTemplate property value. Setting Instance Template
            ## @return a device_management_configuration_setting_instance_template
            ## 
            def setting_instance_template
                return @setting_instance_template
            end
            ## 
            ## Sets the settingInstanceTemplate property value. Setting Instance Template
            ## @param value Value to set for the settingInstanceTemplate property.
            ## @return a void
            ## 
            def setting_instance_template=(value)
                @setting_instance_template = value
            end
        end
    end
end
