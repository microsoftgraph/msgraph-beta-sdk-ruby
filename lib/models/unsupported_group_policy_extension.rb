require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Unsupported Group Policy Extension.
        class UnsupportedGroupPolicyExtension < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # ExtensionType of the unsupported extension.
            @extension_type
            ## 
            # Namespace Url of the unsupported extension.
            @namespace_url
            ## 
            # Node name of the unsupported extension.
            @node_name
            ## 
            # Scope of the group policy setting.
            @setting_scope
            ## 
            ## Instantiates a new unsupportedGroupPolicyExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unsupported_group_policy_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnsupportedGroupPolicyExtension.new
            end
            ## 
            ## Gets the extensionType property value. ExtensionType of the unsupported extension.
            ## @return a string
            ## 
            def extension_type
                return @extension_type
            end
            ## 
            ## Sets the extensionType property value. ExtensionType of the unsupported extension.
            ## @param value Value to set for the extension_type property.
            ## @return a void
            ## 
            def extension_type=(value)
                @extension_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "extensionType" => lambda {|n| @extension_type = n.get_string_value() },
                    "namespaceUrl" => lambda {|n| @namespace_url = n.get_string_value() },
                    "nodeName" => lambda {|n| @node_name = n.get_string_value() },
                    "settingScope" => lambda {|n| @setting_scope = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicySettingScope) },
                })
            end
            ## 
            ## Gets the namespaceUrl property value. Namespace Url of the unsupported extension.
            ## @return a string
            ## 
            def namespace_url
                return @namespace_url
            end
            ## 
            ## Sets the namespaceUrl property value. Namespace Url of the unsupported extension.
            ## @param value Value to set for the namespace_url property.
            ## @return a void
            ## 
            def namespace_url=(value)
                @namespace_url = value
            end
            ## 
            ## Gets the nodeName property value. Node name of the unsupported extension.
            ## @return a string
            ## 
            def node_name
                return @node_name
            end
            ## 
            ## Sets the nodeName property value. Node name of the unsupported extension.
            ## @param value Value to set for the node_name property.
            ## @return a void
            ## 
            def node_name=(value)
                @node_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("extensionType", @extension_type)
                writer.write_string_value("namespaceUrl", @namespace_url)
                writer.write_string_value("nodeName", @node_name)
                writer.write_enum_value("settingScope", @setting_scope)
            end
            ## 
            ## Gets the settingScope property value. Scope of the group policy setting.
            ## @return a group_policy_setting_scope
            ## 
            def setting_scope
                return @setting_scope
            end
            ## 
            ## Sets the settingScope property value. Scope of the group policy setting.
            ## @param value Value to set for the setting_scope property.
            ## @return a void
            ## 
            def setting_scope=(value)
                @setting_scope = value
            end
        end
    end
end
