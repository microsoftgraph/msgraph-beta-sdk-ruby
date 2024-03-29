require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting value
        class DeviceManagementConfigurationChoiceSettingValue < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValue
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Child settings.
            @children
            ## 
            # Choice setting value: an OptionDefinition ItemId.
            @value
            ## 
            ## Gets the children property value. Child settings.
            ## @return a device_management_configuration_setting_instance
            ## 
            def children
                return @children
            end
            ## 
            ## Sets the children property value. Child settings.
            ## @param value Value to set for the children property.
            ## @return a void
            ## 
            def children=(value)
                @children = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationChoiceSettingValue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingValue"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_choice_setting_value
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationChoiceSettingValue.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "children" => lambda {|n| @children = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance.create_from_discriminator_value(pn) }) },
                    "value" => lambda {|n| @value = n.get_string_value() },
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
                writer.write_string_value("value", @value)
            end
            ## 
            ## Gets the value property value. Choice setting value: an OptionDefinition ItemId.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Choice setting value: an OptionDefinition ItemId.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
