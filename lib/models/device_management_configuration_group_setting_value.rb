require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Value of the GroupSetting
        class DeviceManagementConfigurationGroupSettingValue < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValue
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of child setting instances contained within this GroupSetting
            @children
            ## 
            ## Gets the children property value. Collection of child setting instances contained within this GroupSetting
            ## @return a device_management_configuration_setting_instance
            ## 
            def children
                return @children
            end
            ## 
            ## Sets the children property value. Collection of child setting instances contained within this GroupSetting
            ## @param value Value to set for the children property.
            ## @return a void
            ## 
            def children=(value)
                @children = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationGroupSettingValue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingValue"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_group_setting_value
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationGroupSettingValue.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("children", @children)
            end
        end
    end
end
