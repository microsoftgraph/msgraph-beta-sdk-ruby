require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting instance within policy
        class DeviceManagementConfigurationChoiceSettingCollectionInstance < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Choice setting collection value
            @choice_setting_collection_value
            ## 
            ## Gets the choiceSettingCollectionValue property value. Choice setting collection value
            ## @return a device_management_configuration_choice_setting_value
            ## 
            def choice_setting_collection_value
                return @choice_setting_collection_value
            end
            ## 
            ## Sets the choiceSettingCollectionValue property value. Choice setting collection value
            ## @param value Value to set for the choice_setting_collection_value property.
            ## @return a void
            ## 
            def choice_setting_collection_value=(value)
                @choice_setting_collection_value = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationChoiceSettingCollectionInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingCollectionInstance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_choice_setting_collection_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationChoiceSettingCollectionInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "choiceSettingCollectionValue" => lambda {|n| @choice_setting_collection_value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationChoiceSettingValue.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("choiceSettingCollectionValue", @choice_setting_collection_value)
            end
        end
    end
end
