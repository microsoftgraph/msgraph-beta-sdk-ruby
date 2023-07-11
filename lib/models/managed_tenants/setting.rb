require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class Setting
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The display name for the setting. Required. Read-only.
                @display_name
                ## 
                # The value for the setting serialized as string of JSON. Required. Read-only.
                @json_value
                ## 
                # The OdataType property
                @odata_type
                ## 
                # A flag indicating whether the setting can be override existing configurations when applied. Required. Read-only.
                @overwrite_allowed
                ## 
                # The settingId property
                @setting_id
                ## 
                # The valueType property
                @value_type
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
                ## Instantiates a new setting and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a setting
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Setting.new
                end
                ## 
                ## Gets the displayName property value. The display name for the setting. Required. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name for the setting. Required. Read-only.
                ## @param value Value to set for the display_name property.
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
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "jsonValue" => lambda {|n| @json_value = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "overwriteAllowed" => lambda {|n| @overwrite_allowed = n.get_boolean_value() },
                        "settingId" => lambda {|n| @setting_id = n.get_string_value() },
                        "valueType" => lambda {|n| @value_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenants::ManagementParameterValueType) },
                    }
                end
                ## 
                ## Gets the jsonValue property value. The value for the setting serialized as string of JSON. Required. Read-only.
                ## @return a string
                ## 
                def json_value
                    return @json_value
                end
                ## 
                ## Sets the jsonValue property value. The value for the setting serialized as string of JSON. Required. Read-only.
                ## @param value Value to set for the json_value property.
                ## @return a void
                ## 
                def json_value=(value)
                    @json_value = value
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
                ## Gets the overwriteAllowed property value. A flag indicating whether the setting can be override existing configurations when applied. Required. Read-only.
                ## @return a boolean
                ## 
                def overwrite_allowed
                    return @overwrite_allowed
                end
                ## 
                ## Sets the overwriteAllowed property value. A flag indicating whether the setting can be override existing configurations when applied. Required. Read-only.
                ## @param value Value to set for the overwrite_allowed property.
                ## @return a void
                ## 
                def overwrite_allowed=(value)
                    @overwrite_allowed = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("jsonValue", @json_value)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_boolean_value("overwriteAllowed", @overwrite_allowed)
                    writer.write_string_value("settingId", @setting_id)
                    writer.write_enum_value("valueType", @value_type)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the settingId property value. The settingId property
                ## @return a string
                ## 
                def setting_id
                    return @setting_id
                end
                ## 
                ## Sets the settingId property value. The settingId property
                ## @param value Value to set for the setting_id property.
                ## @return a void
                ## 
                def setting_id=(value)
                    @setting_id = value
                end
                ## 
                ## Gets the valueType property value. The valueType property
                ## @return a management_parameter_value_type
                ## 
                def value_type
                    return @value_type
                end
                ## 
                ## Sets the valueType property value. The valueType property
                ## @param value Value to set for the value_type property.
                ## @return a void
                ## 
                def value_type=(value)
                    @value_type = value
                end
            end
        end
    end
end
