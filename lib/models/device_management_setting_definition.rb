require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity representing the defintion for a given setting
        class DeviceManagementSettingDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of constraints for the setting value
            @constraints
            ## 
            # Collection of dependencies on other settings
            @dependencies
            ## 
            # The setting's description
            @description
            ## 
            # The setting's display name
            @display_name
            ## 
            # Url to setting documentation
            @documentation_url
            ## 
            # subtitle of the setting header for more details about the category/section
            @header_subtitle
            ## 
            # title of the setting header represents a category/section of a setting/settings
            @header_title
            ## 
            # If the setting is top level, it can be configured without the need to be wrapped in a collection or complex setting
            @is_top_level
            ## 
            # Keywords associated with the setting
            @keywords
            ## 
            # Placeholder text as an example of valid input
            @placeholder_text
            ## 
            # The valueType property
            @value_type
            ## 
            ## Gets the constraints property value. Collection of constraints for the setting value
            ## @return a device_management_constraint
            ## 
            def constraints
                return @constraints
            end
            ## 
            ## Sets the constraints property value. Collection of constraints for the setting value
            ## @param value Value to set for the constraints property.
            ## @return a void
            ## 
            def constraints=(value)
                @constraints = value
            end
            ## 
            ## Instantiates a new deviceManagementSettingDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementAbstractComplexSettingDefinition"
                            return DeviceManagementAbstractComplexSettingDefinition.new
                        when "#microsoft.graph.deviceManagementCollectionSettingDefinition"
                            return DeviceManagementCollectionSettingDefinition.new
                        when "#microsoft.graph.deviceManagementComplexSettingDefinition"
                            return DeviceManagementComplexSettingDefinition.new
                    end
                end
                return DeviceManagementSettingDefinition.new
            end
            ## 
            ## Gets the dependencies property value. Collection of dependencies on other settings
            ## @return a device_management_setting_dependency
            ## 
            def dependencies
                return @dependencies
            end
            ## 
            ## Sets the dependencies property value. Collection of dependencies on other settings
            ## @param value Value to set for the dependencies property.
            ## @return a void
            ## 
            def dependencies=(value)
                @dependencies = value
            end
            ## 
            ## Gets the description property value. The setting's description
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The setting's description
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The setting's display name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The setting's display name
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the documentationUrl property value. Url to setting documentation
            ## @return a string
            ## 
            def documentation_url
                return @documentation_url
            end
            ## 
            ## Sets the documentationUrl property value. Url to setting documentation
            ## @param value Value to set for the documentation_url property.
            ## @return a void
            ## 
            def documentation_url=(value)
                @documentation_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "constraints" => lambda {|n| @constraints = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConstraint.create_from_discriminator_value(pn) }) },
                    "dependencies" => lambda {|n| @dependencies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingDependency.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "documentationUrl" => lambda {|n| @documentation_url = n.get_string_value() },
                    "headerSubtitle" => lambda {|n| @header_subtitle = n.get_string_value() },
                    "headerTitle" => lambda {|n| @header_title = n.get_string_value() },
                    "isTopLevel" => lambda {|n| @is_top_level = n.get_boolean_value() },
                    "keywords" => lambda {|n| @keywords = n.get_collection_of_primitive_values(String) },
                    "placeholderText" => lambda {|n| @placeholder_text = n.get_string_value() },
                    "valueType" => lambda {|n| @value_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManangementIntentValueType) },
                })
            end
            ## 
            ## Gets the headerSubtitle property value. subtitle of the setting header for more details about the category/section
            ## @return a string
            ## 
            def header_subtitle
                return @header_subtitle
            end
            ## 
            ## Sets the headerSubtitle property value. subtitle of the setting header for more details about the category/section
            ## @param value Value to set for the header_subtitle property.
            ## @return a void
            ## 
            def header_subtitle=(value)
                @header_subtitle = value
            end
            ## 
            ## Gets the headerTitle property value. title of the setting header represents a category/section of a setting/settings
            ## @return a string
            ## 
            def header_title
                return @header_title
            end
            ## 
            ## Sets the headerTitle property value. title of the setting header represents a category/section of a setting/settings
            ## @param value Value to set for the header_title property.
            ## @return a void
            ## 
            def header_title=(value)
                @header_title = value
            end
            ## 
            ## Gets the isTopLevel property value. If the setting is top level, it can be configured without the need to be wrapped in a collection or complex setting
            ## @return a boolean
            ## 
            def is_top_level
                return @is_top_level
            end
            ## 
            ## Sets the isTopLevel property value. If the setting is top level, it can be configured without the need to be wrapped in a collection or complex setting
            ## @param value Value to set for the is_top_level property.
            ## @return a void
            ## 
            def is_top_level=(value)
                @is_top_level = value
            end
            ## 
            ## Gets the keywords property value. Keywords associated with the setting
            ## @return a string
            ## 
            def keywords
                return @keywords
            end
            ## 
            ## Sets the keywords property value. Keywords associated with the setting
            ## @param value Value to set for the keywords property.
            ## @return a void
            ## 
            def keywords=(value)
                @keywords = value
            end
            ## 
            ## Gets the placeholderText property value. Placeholder text as an example of valid input
            ## @return a string
            ## 
            def placeholder_text
                return @placeholder_text
            end
            ## 
            ## Sets the placeholderText property value. Placeholder text as an example of valid input
            ## @param value Value to set for the placeholder_text property.
            ## @return a void
            ## 
            def placeholder_text=(value)
                @placeholder_text = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("constraints", @constraints)
                writer.write_collection_of_object_values("dependencies", @dependencies)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("documentationUrl", @documentation_url)
                writer.write_string_value("headerSubtitle", @header_subtitle)
                writer.write_string_value("headerTitle", @header_title)
                writer.write_boolean_value("isTopLevel", @is_top_level)
                writer.write_collection_of_primitive_values("keywords", @keywords)
                writer.write_string_value("placeholderText", @placeholder_text)
                writer.write_enum_value("valueType", @value_type)
            end
            ## 
            ## Gets the valueType property value. The valueType property
            ## @return a device_manangement_intent_value_type
            ## 
            def value_type
                return @value_type
            end
            ## 
            ## Sets the valueType property value. The valueType property
            ## @param value Value to set for the value_type property.
            ## @return a void
            ## 
            def value_type=(value)
                @value_type = value
            end
        end
    end
end
