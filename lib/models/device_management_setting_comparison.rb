require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity representing setting comparison result
        class DeviceManagementSettingComparison
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Setting comparison result type
            @comparison_result
            ## 
            # JSON representation of current intent (or) template setting's value
            @current_value_json
            ## 
            # The ID of the setting definition for this instance
            @definition_id
            ## 
            # The setting's display name
            @display_name
            ## 
            # The setting ID
            @id
            ## 
            # JSON representation of new template setting's value
            @new_value_json
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
            ## Gets the comparisonResult property value. Setting comparison result type
            ## @return a device_management_comparison_result
            ## 
            def comparison_result
                return @comparison_result
            end
            ## 
            ## Sets the comparisonResult property value. Setting comparison result type
            ## @param value Value to set for the comparisonResult property.
            ## @return a void
            ## 
            def comparison_result=(value)
                @comparison_result = value
            end
            ## 
            ## Instantiates a new deviceManagementSettingComparison and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_comparison
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingComparison.new
            end
            ## 
            ## Gets the currentValueJson property value. JSON representation of current intent (or) template setting's value
            ## @return a string
            ## 
            def current_value_json
                return @current_value_json
            end
            ## 
            ## Sets the currentValueJson property value. JSON representation of current intent (or) template setting's value
            ## @param value Value to set for the currentValueJson property.
            ## @return a void
            ## 
            def current_value_json=(value)
                @current_value_json = value
            end
            ## 
            ## Gets the definitionId property value. The ID of the setting definition for this instance
            ## @return a string
            ## 
            def definition_id
                return @definition_id
            end
            ## 
            ## Sets the definitionId property value. The ID of the setting definition for this instance
            ## @param value Value to set for the definitionId property.
            ## @return a void
            ## 
            def definition_id=(value)
                @definition_id = value
            end
            ## 
            ## Gets the displayName property value. The setting's display name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The setting's display name
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
                    "comparisonResult" => lambda {|n| @comparison_result = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementComparisonResult) },
                    "currentValueJson" => lambda {|n| @current_value_json = n.get_string_value() },
                    "definitionId" => lambda {|n| @definition_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "newValueJson" => lambda {|n| @new_value_json = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. The setting ID
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The setting ID
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the newValueJson property value. JSON representation of new template setting's value
            ## @return a string
            ## 
            def new_value_json
                return @new_value_json
            end
            ## 
            ## Sets the newValueJson property value. JSON representation of new template setting's value
            ## @param value Value to set for the newValueJson property.
            ## @return a void
            ## 
            def new_value_json=(value)
                @new_value_json = value
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
                writer.write_enum_value("comparisonResult", @comparison_result)
                writer.write_string_value("currentValueJson", @current_value_json)
                writer.write_string_value("definitionId", @definition_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("id", @id)
                writer.write_string_value("newValueJson", @new_value_json)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
