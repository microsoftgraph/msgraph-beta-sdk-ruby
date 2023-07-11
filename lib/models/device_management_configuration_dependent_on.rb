require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationDependentOn
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Identifier of parent setting/ parent setting option dependent on
            @dependent_on
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Identifier of parent setting/ parent setting id dependent on
            @parent_setting_id
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationDependentOn and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_dependent_on
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationDependentOn.new
            end
            ## 
            ## Gets the dependentOn property value. Identifier of parent setting/ parent setting option dependent on
            ## @return a string
            ## 
            def dependent_on
                return @dependent_on
            end
            ## 
            ## Sets the dependentOn property value. Identifier of parent setting/ parent setting option dependent on
            ## @param value Value to set for the dependent_on property.
            ## @return a void
            ## 
            def dependent_on=(value)
                @dependent_on = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dependentOn" => lambda {|n| @dependent_on = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "parentSettingId" => lambda {|n| @parent_setting_id = n.get_string_value() },
                }
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the parentSettingId property value. Identifier of parent setting/ parent setting id dependent on
            ## @return a string
            ## 
            def parent_setting_id
                return @parent_setting_id
            end
            ## 
            ## Sets the parentSettingId property value. Identifier of parent setting/ parent setting id dependent on
            ## @param value Value to set for the parent_setting_id property.
            ## @return a void
            ## 
            def parent_setting_id=(value)
                @parent_setting_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("dependentOn", @dependent_on)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("parentSettingId", @parent_setting_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
