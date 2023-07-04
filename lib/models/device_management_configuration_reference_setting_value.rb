require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationReferenceSettingValue < MicrosoftGraphBeta::Models::DeviceManagementConfigurationStringSettingValue
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A note that admin can use to put some contextual information
            @note
            ## 
            ## Instantiates a new DeviceManagementConfigurationReferenceSettingValue and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationReferenceSettingValue"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_reference_setting_value
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationReferenceSettingValue.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "note" => lambda {|n| @note = n.get_string_value() },
                })
            end
            ## 
            ## Gets the note property value. A note that admin can use to put some contextual information
            ## @return a string
            ## 
            def note
                return @note
            end
            ## 
            ## Sets the note property value. A note that admin can use to put some contextual information
            ## @param value Value to set for the note property.
            ## @return a void
            ## 
            def note=(value)
                @note = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("note", @note)
            end
        end
    end
end
