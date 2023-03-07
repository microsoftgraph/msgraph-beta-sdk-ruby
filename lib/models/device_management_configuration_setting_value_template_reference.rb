require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting value template reference information
        class DeviceManagementConfigurationSettingValueTemplateReference
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Setting value template id
            @setting_value_template_id
            ## 
            # Indicates whether to update policy setting value to match template setting default value
            @use_template_default
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
            ## Instantiates a new deviceManagementConfigurationSettingValueTemplateReference and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_setting_value_template_reference
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationSettingValueTemplateReference.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "settingValueTemplateId" => lambda {|n| @setting_value_template_id = n.get_string_value() },
                    "useTemplateDefault" => lambda {|n| @use_template_default = n.get_boolean_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("settingValueTemplateId", @setting_value_template_id)
                writer.write_boolean_value("useTemplateDefault", @use_template_default)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the settingValueTemplateId property value. Setting value template id
            ## @return a string
            ## 
            def setting_value_template_id
                return @setting_value_template_id
            end
            ## 
            ## Sets the settingValueTemplateId property value. Setting value template id
            ## @param value Value to set for the setting_value_template_id property.
            ## @return a void
            ## 
            def setting_value_template_id=(value)
                @setting_value_template_id = value
            end
            ## 
            ## Gets the useTemplateDefault property value. Indicates whether to update policy setting value to match template setting default value
            ## @return a boolean
            ## 
            def use_template_default
                return @use_template_default
            end
            ## 
            ## Sets the useTemplateDefault property value. Indicates whether to update policy setting value to match template setting default value
            ## @param value Value to set for the use_template_default property.
            ## @return a void
            ## 
            def use_template_default=(value)
                @use_template_default = value
            end
        end
    end
end
