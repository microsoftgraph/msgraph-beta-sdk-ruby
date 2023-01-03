require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementSettingRequiredConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # List of value which means not configured for the setting
        @not_configured_value
        ## 
        ## Instantiates a new DeviceManagementSettingRequiredConstraint and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementSettingRequiredConstraint"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_setting_required_constraint
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementSettingRequiredConstraint.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "notConfiguredValue" => lambda {|n| @not_configured_value = n.get_string_value() },
            })
        end
        ## 
        ## Gets the notConfiguredValue property value. List of value which means not configured for the setting
        ## @return a string
        ## 
        def not_configured_value
            return @not_configured_value
        end
        ## 
        ## Sets the notConfiguredValue property value. List of value which means not configured for the setting
        ## @param value Value to set for the notConfiguredValue property.
        ## @return a void
        ## 
        def not_configured_value=(value)
            @not_configured_value = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("notConfiguredValue", @not_configured_value)
        end
    end
end
