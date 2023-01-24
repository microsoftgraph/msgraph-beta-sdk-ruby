require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationChoiceSettingCollectionInstanceTemplate < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstanceTemplate
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Linked policy may append values which are not present in the template.
        @allow_unmanaged_values
        ## 
        # Choice Setting Collection Value Template
        @choice_setting_collection_value_template
        ## 
        ## Gets the allowUnmanagedValues property value. Linked policy may append values which are not present in the template.
        ## @return a boolean
        ## 
        def allow_unmanaged_values
            return @allow_unmanaged_values
        end
        ## 
        ## Sets the allowUnmanagedValues property value. Linked policy may append values which are not present in the template.
        ## @param value Value to set for the allowUnmanagedValues property.
        ## @return a void
        ## 
        def allow_unmanaged_values=(value)
            @allow_unmanaged_values = value
        end
        ## 
        ## Gets the choiceSettingCollectionValueTemplate property value. Choice Setting Collection Value Template
        ## @return a device_management_configuration_choice_setting_value_template
        ## 
        def choice_setting_collection_value_template
            return @choice_setting_collection_value_template
        end
        ## 
        ## Sets the choiceSettingCollectionValueTemplate property value. Choice Setting Collection Value Template
        ## @param value Value to set for the choiceSettingCollectionValueTemplate property.
        ## @return a void
        ## 
        def choice_setting_collection_value_template=(value)
            @choice_setting_collection_value_template = value
        end
        ## 
        ## Instantiates a new DeviceManagementConfigurationChoiceSettingCollectionInstanceTemplate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingCollectionInstanceTemplate"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_choice_setting_collection_instance_template
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationChoiceSettingCollectionInstanceTemplate.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowUnmanagedValues" => lambda {|n| @allow_unmanaged_values = n.get_boolean_value() },
                "choiceSettingCollectionValueTemplate" => lambda {|n| @choice_setting_collection_value_template = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationChoiceSettingValueTemplate.create_from_discriminator_value(pn) }) },
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
            writer.write_boolean_value("allowUnmanagedValues", @allow_unmanaged_values)
            writer.write_collection_of_object_values("choiceSettingCollectionValueTemplate", @choice_setting_collection_value_template)
        end
    end
end
