require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A setting instance representing a complex value
        class DeviceManagementComplexSettingInstance < MicrosoftGraphBeta::Models::DeviceManagementSettingInstance
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The values that make up the complex setting
            @value
            ## 
            ## Instantiates a new deviceManagementComplexSettingInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementComplexSettingInstance"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_complex_setting_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementComplexSettingInstance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingInstance.create_from_discriminator_value(pn) }) },
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
end
