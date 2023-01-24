require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationStringSettingValue < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSimpleSettingValue
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Value of the string setting.
        @value
        ## 
        ## Instantiates a new DeviceManagementConfigurationStringSettingValue and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_string_setting_value
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.deviceManagementConfigurationReferenceSettingValue"
                        return DeviceManagementConfigurationReferenceSettingValue.new
                end
            end
            return DeviceManagementConfigurationStringSettingValue.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "value" => lambda {|n| @value = n.get_string_value() },
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
            writer.write_string_value("value", @value)
        end
        ## 
        ## Gets the value property value. Value of the string setting.
        ## @return a string
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. Value of the string setting.
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
    end
end
