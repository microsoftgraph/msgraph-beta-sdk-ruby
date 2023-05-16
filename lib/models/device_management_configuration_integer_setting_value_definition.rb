require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationIntegerSettingValueDefinition < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValueDefinition
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Maximum allowed value of the integer
            @maximum_value
            ## 
            # Minimum allowed value of the integer
            @minimum_value
            ## 
            ## Instantiates a new DeviceManagementConfigurationIntegerSettingValueDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValueDefinition"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_integer_setting_value_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationIntegerSettingValueDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "maximumValue" => lambda {|n| @maximum_value = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "minimumValue" => lambda {|n| @minimum_value = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the maximumValue property value. Maximum allowed value of the integer
            ## @return a int64
            ## 
            def maximum_value
                return @maximum_value
            end
            ## 
            ## Sets the maximumValue property value. Maximum allowed value of the integer
            ## @param value Value to set for the maximum_value property.
            ## @return a void
            ## 
            def maximum_value=(value)
                @maximum_value = value
            end
            ## 
            ## Gets the minimumValue property value. Minimum allowed value of the integer
            ## @return a int64
            ## 
            def minimum_value
                return @minimum_value
            end
            ## 
            ## Sets the minimumValue property value. Minimum allowed value of the integer
            ## @param value Value to set for the minimum_value property.
            ## @return a void
            ## 
            def minimum_value=(value)
                @minimum_value = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("maximumValue", @maximum_value)
                writer.write_object_value("minimumValue", @minimum_value)
            end
        end
    end
end
