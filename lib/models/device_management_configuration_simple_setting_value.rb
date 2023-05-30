require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Simple setting value
        class DeviceManagementConfigurationSimpleSettingValue < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValue
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Instantiates a new deviceManagementConfigurationSimpleSettingValue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingValue"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_simple_setting_value
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            return DeviceManagementConfigurationIntegerSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationReferenceSettingValue"
                            return DeviceManagementConfigurationReferenceSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationSecretSettingValue"
                            return DeviceManagementConfigurationSecretSettingValue.new
                        when "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            return DeviceManagementConfigurationStringSettingValue.new
                    end
                end
                return DeviceManagementConfigurationSimpleSettingValue.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                })
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
                super
                writer.write_string_value("@odata.type", @odata_type)
            end
        end
    end
end
