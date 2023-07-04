require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Setting Insights
        class DeviceManagementSettingInsightsDefinition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Setting definition id that is being referred to a setting.
            @setting_definition_id
            ## 
            # Data Insights Target Value
            @setting_insight
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
            ## Instantiates a new DeviceManagementSettingInsightsDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_insights_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingInsightsDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "settingDefinitionId" => lambda {|n| @setting_definition_id = n.get_string_value() },
                    "settingInsight" => lambda {|n| @setting_insight = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValue.create_from_discriminator_value(pn) }) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("settingDefinitionId", @setting_definition_id)
                writer.write_object_value("settingInsight", @setting_insight)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the settingDefinitionId property value. Setting definition id that is being referred to a setting.
            ## @return a string
            ## 
            def setting_definition_id
                return @setting_definition_id
            end
            ## 
            ## Sets the settingDefinitionId property value. Setting definition id that is being referred to a setting.
            ## @param value Value to set for the setting_definition_id property.
            ## @return a void
            ## 
            def setting_definition_id=(value)
                @setting_definition_id = value
            end
            ## 
            ## Gets the settingInsight property value. Data Insights Target Value
            ## @return a device_management_configuration_setting_value
            ## 
            def setting_insight
                return @setting_insight
            end
            ## 
            ## Sets the settingInsight property value. Data Insights Target Value
            ## @param value Value to set for the setting_insight property.
            ## @return a void
            ## 
            def setting_insight=(value)
                @setting_insight = value
            end
        end
    end
end
