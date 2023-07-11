require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Group Setting Value Template
        class DeviceManagementConfigurationGroupSettingValueTemplate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Group setting value children
            @children
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Setting Value Template Id
            @setting_value_template_id
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the children property value. Group setting value children
            ## @return a device_management_configuration_setting_instance_template
            ## 
            def children
                return @children
            end
            ## 
            ## Sets the children property value. Group setting value children
            ## @param value Value to set for the children property.
            ## @return a void
            ## 
            def children=(value)
                @children = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationGroupSettingValueTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_group_setting_value_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationGroupSettingValueTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstanceTemplate.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "settingValueTemplateId" => lambda {|n| @setting_value_template_id = n.get_string_value() },
                }
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
                writer.write_collection_of_object_values("children", @children)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("settingValueTemplateId", @setting_value_template_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the settingValueTemplateId property value. Setting Value Template Id
            ## @return a string
            ## 
            def setting_value_template_id
                return @setting_value_template_id
            end
            ## 
            ## Sets the settingValueTemplateId property value. Setting Value Template Id
            ## @param value Value to set for the setting_value_template_id property.
            ## @return a void
            ## 
            def setting_value_template_id=(value)
                @setting_value_template_id = value
            end
        end
    end
end
