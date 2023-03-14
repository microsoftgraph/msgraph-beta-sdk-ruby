require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationIntegerSettingValueConstantDefaultTemplate < MicrosoftGraphBeta::Models::DeviceManagementConfigurationIntegerSettingValueDefaultTemplate
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Default Constant Value. Valid values -2147483648 to 2147483647
            @constant_value
            ## 
            ## Gets the constantValue property value. Default Constant Value. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def constant_value
                return @constant_value
            end
            ## 
            ## Sets the constantValue property value. Default Constant Value. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the constant_value property.
            ## @return a void
            ## 
            def constant_value=(value)
                @constant_value = value
            end
            ## 
            ## Instantiates a new DeviceManagementConfigurationIntegerSettingValueConstantDefaultTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValueConstantDefaultTemplate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_integer_setting_value_constant_default_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationIntegerSettingValueConstantDefaultTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "constantValue" => lambda {|n| @constant_value = n.get_number_value() },
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
                writer.write_number_value("constantValue", @constant_value)
            end
        end
    end
end
