require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationSimpleSettingInstance < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The simpleSettingValue property
            @simple_setting_value
            ## 
            ## Instantiates a new DeviceManagementConfigurationSimpleSettingInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_simple_setting_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationSimpleSettingInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "simpleSettingValue" => lambda {|n| @simple_setting_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSimpleSettingValue.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("simpleSettingValue", @simple_setting_value)
            end
            ## 
            ## Gets the simpleSettingValue property value. The simpleSettingValue property
            ## @return a device_management_configuration_simple_setting_value
            ## 
            def simple_setting_value
                return @simple_setting_value
            end
            ## 
            ## Sets the simpleSettingValue property value. The simpleSettingValue property
            ## @param value Value to set for the simple_setting_value property.
            ## @return a void
            ## 
            def simple_setting_value=(value)
                @simple_setting_value = value
            end
        end
    end
end
