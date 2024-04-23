require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base type for a setting instance
        class DeviceManagementSettingInstance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of the setting definition for this instance
            @definition_id
            ## 
            # JSON representation of the value
            @value_json
            ## 
            ## Instantiates a new DeviceManagementSettingInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementAbstractComplexSettingInstance"
                            return DeviceManagementAbstractComplexSettingInstance.new
                        when "#microsoft.graph.deviceManagementBooleanSettingInstance"
                            return DeviceManagementBooleanSettingInstance.new
                        when "#microsoft.graph.deviceManagementCollectionSettingInstance"
                            return DeviceManagementCollectionSettingInstance.new
                        when "#microsoft.graph.deviceManagementComplexSettingInstance"
                            return DeviceManagementComplexSettingInstance.new
                        when "#microsoft.graph.deviceManagementIntegerSettingInstance"
                            return DeviceManagementIntegerSettingInstance.new
                        when "#microsoft.graph.deviceManagementStringSettingInstance"
                            return DeviceManagementStringSettingInstance.new
                    end
                end
                return DeviceManagementSettingInstance.new
            end
            ## 
            ## Gets the definitionId property value. The ID of the setting definition for this instance
            ## @return a string
            ## 
            def definition_id
                return @definition_id
            end
            ## 
            ## Sets the definitionId property value. The ID of the setting definition for this instance
            ## @param value Value to set for the definitionId property.
            ## @return a void
            ## 
            def definition_id=(value)
                @definition_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "definitionId" => lambda {|n| @definition_id = n.get_string_value() },
                    "valueJson" => lambda {|n| @value_json = n.get_string_value() },
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
                writer.write_string_value("definitionId", @definition_id)
                writer.write_string_value("valueJson", @value_json)
            end
            ## 
            ## Gets the valueJson property value. JSON representation of the value
            ## @return a string
            ## 
            def value_json
                return @value_json
            end
            ## 
            ## Sets the valueJson property value. JSON representation of the value
            ## @param value Value to set for the valueJson property.
            ## @return a void
            ## 
            def value_json=(value)
                @value_json = value
            end
        end
    end
end
