require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity representing a setting category
        class DeviceManagementSettingCategory < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The category name
            @display_name
            ## 
            # The category contains top level required setting
            @has_required_setting
            ## 
            # The setting definitions this category contains
            @setting_definitions
            ## 
            ## Instantiates a new deviceManagementSettingCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementIntentSettingCategory"
                            return DeviceManagementIntentSettingCategory.new
                        when "#microsoft.graph.deviceManagementTemplateSettingCategory"
                            return DeviceManagementTemplateSettingCategory.new
                    end
                end
                return DeviceManagementSettingCategory.new
            end
            ## 
            ## Gets the displayName property value. The category name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The category name
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "hasRequiredSetting" => lambda {|n| @has_required_setting = n.get_boolean_value() },
                    "settingDefinitions" => lambda {|n| @setting_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingDefinition.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hasRequiredSetting property value. The category contains top level required setting
            ## @return a boolean
            ## 
            def has_required_setting
                return @has_required_setting
            end
            ## 
            ## Sets the hasRequiredSetting property value. The category contains top level required setting
            ## @param value Value to set for the hasRequiredSetting property.
            ## @return a void
            ## 
            def has_required_setting=(value)
                @has_required_setting = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("hasRequiredSetting", @has_required_setting)
                writer.write_collection_of_object_values("settingDefinitions", @setting_definitions)
            end
            ## 
            ## Gets the settingDefinitions property value. The setting definitions this category contains
            ## @return a device_management_setting_definition
            ## 
            def setting_definitions
                return @setting_definitions
            end
            ## 
            ## Sets the settingDefinitions property value. The setting definitions this category contains
            ## @param value Value to set for the settingDefinitions property.
            ## @return a void
            ## 
            def setting_definitions=(value)
                @setting_definitions = value
            end
        end
    end
end
