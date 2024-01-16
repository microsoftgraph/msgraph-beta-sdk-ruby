require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationOptionDefinition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # List of Settings that depends on this option
            @depended_on_by
            ## 
            # List of dependent settings for this option
            @dependent_on
            ## 
            # Description of the option
            @description
            ## 
            # Friendly name of the option
            @display_name
            ## 
            # Help text of the option
            @help_text
            ## 
            # Identifier of option
            @item_id
            ## 
            # Name of the option
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Value of the option
            @option_value
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationOptionDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_option_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationOptionDefinition.new
            end
            ## 
            ## Gets the dependedOnBy property value. List of Settings that depends on this option
            ## @return a device_management_configuration_setting_depended_on_by
            ## 
            def depended_on_by
                return @depended_on_by
            end
            ## 
            ## Sets the dependedOnBy property value. List of Settings that depends on this option
            ## @param value Value to set for the dependedOnBy property.
            ## @return a void
            ## 
            def depended_on_by=(value)
                @depended_on_by = value
            end
            ## 
            ## Gets the dependentOn property value. List of dependent settings for this option
            ## @return a device_management_configuration_dependent_on
            ## 
            def dependent_on
                return @dependent_on
            end
            ## 
            ## Sets the dependentOn property value. List of dependent settings for this option
            ## @param value Value to set for the dependentOn property.
            ## @return a void
            ## 
            def dependent_on=(value)
                @dependent_on = value
            end
            ## 
            ## Gets the description property value. Description of the option
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the option
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Friendly name of the option
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Friendly name of the option
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dependedOnBy" => lambda {|n| @depended_on_by = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDependedOnBy.create_from_discriminator_value(pn) }) },
                    "dependentOn" => lambda {|n| @dependent_on = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationDependentOn.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "helpText" => lambda {|n| @help_text = n.get_string_value() },
                    "itemId" => lambda {|n| @item_id = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "optionValue" => lambda {|n| @option_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValue.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the helpText property value. Help text of the option
            ## @return a string
            ## 
            def help_text
                return @help_text
            end
            ## 
            ## Sets the helpText property value. Help text of the option
            ## @param value Value to set for the helpText property.
            ## @return a void
            ## 
            def help_text=(value)
                @help_text = value
            end
            ## 
            ## Gets the itemId property value. Identifier of option
            ## @return a string
            ## 
            def item_id
                return @item_id
            end
            ## 
            ## Sets the itemId property value. Identifier of option
            ## @param value Value to set for the itemId property.
            ## @return a void
            ## 
            def item_id=(value)
                @item_id = value
            end
            ## 
            ## Gets the name property value. Name of the option
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the option
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the optionValue property value. Value of the option
            ## @return a device_management_configuration_setting_value
            ## 
            def option_value
                return @option_value
            end
            ## 
            ## Sets the optionValue property value. Value of the option
            ## @param value Value to set for the optionValue property.
            ## @return a void
            ## 
            def option_value=(value)
                @option_value = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("dependedOnBy", @depended_on_by)
                writer.write_collection_of_object_values("dependentOn", @dependent_on)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("helpText", @help_text)
                writer.write_string_value("itemId", @item_id)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("optionValue", @option_value)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
