require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementSettingIntegerConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The maximum permitted value
            @maximum_value
            ## 
            # The minimum permitted value
            @minimum_value
            ## 
            ## Instantiates a new DeviceManagementSettingIntegerConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementSettingIntegerConstraint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_integer_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingIntegerConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "maximumValue" => lambda {|n| @maximum_value = n.get_number_value() },
                    "minimumValue" => lambda {|n| @minimum_value = n.get_number_value() },
                })
            end
            ## 
            ## Gets the maximumValue property value. The maximum permitted value
            ## @return a integer
            ## 
            def maximum_value
                return @maximum_value
            end
            ## 
            ## Sets the maximumValue property value. The maximum permitted value
            ## @param value Value to set for the maximum_value property.
            ## @return a void
            ## 
            def maximum_value=(value)
                @maximum_value = value
            end
            ## 
            ## Gets the minimumValue property value. The minimum permitted value
            ## @return a integer
            ## 
            def minimum_value
                return @minimum_value
            end
            ## 
            ## Sets the minimumValue property value. The minimum permitted value
            ## @param value Value to set for the minimum_value property.
            ## @return a void
            ## 
            def minimum_value=(value)
                @minimum_value = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("maximumValue", @maximum_value)
                writer.write_number_value("minimumValue", @minimum_value)
            end
        end
    end
end
