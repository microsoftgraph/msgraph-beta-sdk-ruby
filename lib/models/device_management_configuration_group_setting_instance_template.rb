require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Group Setting Instance Template
        class DeviceManagementConfigurationGroupSettingInstanceTemplate < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstanceTemplate
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Group Setting Value Template
            @group_setting_value_template
            ## 
            ## Instantiates a new deviceManagementConfigurationGroupSettingInstanceTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingInstanceTemplate"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_group_setting_instance_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationGroupSettingInstanceTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupSettingValueTemplate" => lambda {|n| @group_setting_value_template = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationGroupSettingValueTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupSettingValueTemplate property value. Group Setting Value Template
            ## @return a device_management_configuration_group_setting_value_template
            ## 
            def group_setting_value_template
                return @group_setting_value_template
            end
            ## 
            ## Sets the groupSettingValueTemplate property value. Group Setting Value Template
            ## @param value Value to set for the groupSettingValueTemplate property.
            ## @return a void
            ## 
            def group_setting_value_template=(value)
                @group_setting_value_template = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("groupSettingValueTemplate", @group_setting_value_template)
            end
        end
    end
end
