require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Integer Setting Value Definition Template
        class DeviceManagementConfigurationIntegerSettingValueDefinitionTemplate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Integer Setting Maximum Value. Valid values -2147483648 to 2147483647
            @max_value
            ## 
            # Integer Setting Minimum Value. Valid values -2147483648 to 2147483647
            @min_value
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationIntegerSettingValueDefinitionTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_integer_setting_value_definition_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationIntegerSettingValueDefinitionTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "maxValue" => lambda {|n| @max_value = n.get_number_value() },
                    "minValue" => lambda {|n| @min_value = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the maxValue property value. Integer Setting Maximum Value. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def max_value
                return @max_value
            end
            ## 
            ## Sets the maxValue property value. Integer Setting Maximum Value. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the maxValue property.
            ## @return a void
            ## 
            def max_value=(value)
                @max_value = value
            end
            ## 
            ## Gets the minValue property value. Integer Setting Minimum Value. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def min_value
                return @min_value
            end
            ## 
            ## Sets the minValue property value. Integer Setting Minimum Value. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the minValue property.
            ## @return a void
            ## 
            def min_value=(value)
                @min_value = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("maxValue", @max_value)
                writer.write_number_value("minValue", @min_value)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
