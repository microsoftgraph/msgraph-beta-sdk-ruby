require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationSimpleSettingInstanceTemplate < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstanceTemplate
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Simple Setting Value Template
        @simple_setting_value_template
        ## 
        ## Instantiates a new DeviceManagementConfigurationSimpleSettingInstanceTemplate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstanceTemplate"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_simple_setting_instance_template
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationSimpleSettingInstanceTemplate.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "simpleSettingValueTemplate" => lambda {|n| @simple_setting_value_template = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSimpleSettingValueTemplate.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("simpleSettingValueTemplate", @simple_setting_value_template)
        end
        ## 
        ## Gets the simpleSettingValueTemplate property value. Simple Setting Value Template
        ## @return a device_management_configuration_simple_setting_value_template
        ## 
        def simple_setting_value_template
            return @simple_setting_value_template
        end
        ## 
        ## Sets the simpleSettingValueTemplate property value. Simple Setting Value Template
        ## @param value Value to set for the simpleSettingValueTemplate property.
        ## @return a void
        ## 
        def simple_setting_value_template=(value)
            @simple_setting_value_template = value
        end
    end
end
