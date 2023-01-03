require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationSecretSettingValue < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSimpleSettingValue
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Value of the secret setting.
        @value
        ## 
        # type tracking the encryption state of a secret setting value
        @value_state
        ## 
        ## Instantiates a new DeviceManagementConfigurationSecretSettingValue and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementConfigurationSecretSettingValue"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_secret_setting_value
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationSecretSettingValue.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "value" => lambda {|n| @value = n.get_string_value() },
                "valueState" => lambda {|n| @value_state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationSecretSettingValueState) },
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
            writer.write_enum_value("valueState", @value_state)
        end
        ## 
        ## Gets the value property value. Value of the secret setting.
        ## @return a string
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. Value of the secret setting.
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
        ## 
        ## Gets the valueState property value. type tracking the encryption state of a secret setting value
        ## @return a device_management_configuration_secret_setting_value_state
        ## 
        def value_state
            return @value_state
        end
        ## 
        ## Sets the valueState property value. type tracking the encryption state of a secret setting value
        ## @param value Value to set for the valueState property.
        ## @return a void
        ## 
        def value_state=(value)
            @value_state = value
        end
    end
end
