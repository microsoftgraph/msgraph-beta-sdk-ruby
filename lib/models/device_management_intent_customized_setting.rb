require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Default and customized value of a setting in a Security Baseline
        class DeviceManagementIntentCustomizedSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # JSON representation of the customized value, if different from default
            @customized_json
            ## 
            # JSON representation of the default value from the template
            @default_json
            ## 
            # The ID of the setting definition for this setting
            @definition_id
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
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new deviceManagementIntentCustomizedSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_intent_customized_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementIntentCustomizedSetting.new
            end
            ## 
            ## Gets the customizedJson property value. JSON representation of the customized value, if different from default
            ## @return a string
            ## 
            def customized_json
                return @customized_json
            end
            ## 
            ## Sets the customizedJson property value. JSON representation of the customized value, if different from default
            ## @param value Value to set for the customized_json property.
            ## @return a void
            ## 
            def customized_json=(value)
                @customized_json = value
            end
            ## 
            ## Gets the defaultJson property value. JSON representation of the default value from the template
            ## @return a string
            ## 
            def default_json
                return @default_json
            end
            ## 
            ## Sets the defaultJson property value. JSON representation of the default value from the template
            ## @param value Value to set for the default_json property.
            ## @return a void
            ## 
            def default_json=(value)
                @default_json = value
            end
            ## 
            ## Gets the definitionId property value. The ID of the setting definition for this setting
            ## @return a string
            ## 
            def definition_id
                return @definition_id
            end
            ## 
            ## Sets the definitionId property value. The ID of the setting definition for this setting
            ## @param value Value to set for the definition_id property.
            ## @return a void
            ## 
            def definition_id=(value)
                @definition_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "customizedJson" => lambda {|n| @customized_json = n.get_string_value() },
                    "defaultJson" => lambda {|n| @default_json = n.get_string_value() },
                    "definitionId" => lambda {|n| @definition_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_string_value("customizedJson", @customized_json)
                writer.write_string_value("defaultJson", @default_json)
                writer.write_string_value("definitionId", @definition_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
