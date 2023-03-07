require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationGroupSettingCollectionInstance < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of GroupSetting values
            @group_setting_collection_value
            ## 
            ## Instantiates a new DeviceManagementConfigurationGroupSettingCollectionInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_group_setting_collection_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationGroupSettingCollectionInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupSettingCollectionValue" => lambda {|n| @group_setting_collection_value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationGroupSettingValue.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupSettingCollectionValue property value. A collection of GroupSetting values
            ## @return a device_management_configuration_group_setting_value
            ## 
            def group_setting_collection_value
                return @group_setting_collection_value
            end
            ## 
            ## Sets the groupSettingCollectionValue property value. A collection of GroupSetting values
            ## @param value Value to set for the group_setting_collection_value property.
            ## @return a void
            ## 
            def group_setting_collection_value=(value)
                @group_setting_collection_value = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("groupSettingCollectionValue", @group_setting_collection_value)
            end
        end
    end
end
