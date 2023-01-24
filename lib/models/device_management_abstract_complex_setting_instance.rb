require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementAbstractComplexSettingInstance < MicrosoftGraphBeta::Models::DeviceManagementSettingInstance
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The definition ID for the chosen implementation of this complex setting
        @implementation_id
        ## 
        # The values that make up the complex setting
        @value
        ## 
        ## Instantiates a new DeviceManagementAbstractComplexSettingInstance and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementAbstractComplexSettingInstance"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_abstract_complex_setting_instance
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementAbstractComplexSettingInstance.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "implementationId" => lambda {|n| @implementation_id = n.get_string_value() },
                "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingInstance.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the implementationId property value. The definition ID for the chosen implementation of this complex setting
        ## @return a string
        ## 
        def implementation_id
            return @implementation_id
        end
        ## 
        ## Sets the implementationId property value. The definition ID for the chosen implementation of this complex setting
        ## @param value Value to set for the implementationId property.
        ## @return a void
        ## 
        def implementation_id=(value)
            @implementation_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("implementationId", @implementation_id)
            writer.write_collection_of_object_values("value", @value)
        end
        ## 
        ## Gets the value property value. The values that make up the complex setting
        ## @return a device_management_setting_instance
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. The values that make up the complex setting
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
    end
end
