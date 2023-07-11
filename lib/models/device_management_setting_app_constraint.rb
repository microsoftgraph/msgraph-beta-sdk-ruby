require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Constraint enforcing the setting contains only vaild app types.
        class DeviceManagementSettingAppConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Acceptable app types to allow for this setting
            @supported_types
            ## 
            ## Instantiates a new deviceManagementSettingAppConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementSettingAppConstraint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_app_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingAppConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "supportedTypes" => lambda {|n| @supported_types = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("supportedTypes", @supported_types)
            end
            ## 
            ## Gets the supportedTypes property value. Acceptable app types to allow for this setting
            ## @return a string
            ## 
            def supported_types
                return @supported_types
            end
            ## 
            ## Sets the supportedTypes property value. Acceptable app types to allow for this setting
            ## @param value Value to set for the supported_types property.
            ## @return a void
            ## 
            def supported_types=(value)
                @supported_types = value
            end
        end
    end
end
