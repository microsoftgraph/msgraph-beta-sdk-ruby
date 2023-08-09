require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Instance of a GroupSetting
        class DeviceManagementConfigurationGroupSettingInstance < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The groupSettingValue property
            @group_setting_value
            ## 
            ## Instantiates a new deviceManagementConfigurationGroupSettingInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingInstance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_group_setting_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationGroupSettingInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupSettingValue" => lambda {|n| @group_setting_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationGroupSettingValue.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupSettingValue property value. The groupSettingValue property
            ## @return a device_management_configuration_group_setting_value
            ## 
            def group_setting_value
                return @group_setting_value
            end
            ## 
            ## Sets the groupSettingValue property value. The groupSettingValue property
            ## @param value Value to set for the groupSettingValue property.
            ## @return a void
            ## 
            def group_setting_value=(value)
                @group_setting_value = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("groupSettingValue", @group_setting_value)
            end
        end
    end
end
