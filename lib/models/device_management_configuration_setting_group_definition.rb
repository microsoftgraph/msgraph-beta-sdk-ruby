require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationSettingGroupDefinition < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Dependent child settings to this group of settings
            @child_ids
            ## 
            # List of child settings that depend on this setting
            @depended_on_by
            ## 
            # List of Dependencies for the setting group
            @dependent_on
            ## 
            ## Gets the childIds property value. Dependent child settings to this group of settings
            ## @return a string
            ## 
            def child_ids
                return @child_ids
            end
            ## 
            ## Sets the childIds property value. Dependent child settings to this group of settings
            ## @param value Value to set for the child_ids property.
            ## @return a void
            ## 
            def child_ids=(value)
                @child_ids = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationSettingGroupDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_setting_group_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementConfigurationSettingGroupCollectionDefinition"
                            return DeviceManagementConfigurationSettingGroupCollectionDefinition.new
                    end
                end
                return DeviceManagementConfigurationSettingGroupDefinition.new
            end
            ## 
            ## Gets the dependedOnBy property value. List of child settings that depend on this setting
            ## @return a device_management_configuration_setting_depended_on_by
            ## 
            def depended_on_by
                return @depended_on_by
            end
            ## 
            ## Sets the dependedOnBy property value. List of child settings that depend on this setting
            ## @param value Value to set for the depended_on_by property.
            ## @return a void
            ## 
            def depended_on_by=(value)
                @depended_on_by = value
            end
            ## 
            ## Gets the dependentOn property value. List of Dependencies for the setting group
            ## @return a device_management_configuration_dependent_on
            ## 
            def dependent_on
                return @dependent_on
            end
            ## 
            ## Sets the dependentOn property value. List of Dependencies for the setting group
            ## @param value Value to set for the dependent_on property.
            ## @return a void
            ## 
            def dependent_on=(value)
                @dependent_on = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "childIds" => lambda {|n| @child_ids = n.get_collection_of_primitive_values(String) },
                    "dependedOnBy" => lambda {|n| @depended_on_by = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDependedOnBy.create_from_discriminator_value(pn) }) },
                    "dependentOn" => lambda {|n| @dependent_on = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationDependentOn.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_primitive_values("childIds", @child_ids)
                writer.write_collection_of_object_values("dependedOnBy", @depended_on_by)
                writer.write_collection_of_object_values("dependentOn", @dependent_on)
            end
        end
    end
end
