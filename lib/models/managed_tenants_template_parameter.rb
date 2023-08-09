require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './managed_tenants/managed_tenants'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsTemplateParameter
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The description for the template parameter. Optional. Read-only.
            @description
            ## 
            # The display name for the template parameter. Required. Read-only.
            @display_name
            ## 
            # The allowed values for the template parameter represented by a serialized string of JSON. Optional. Read-only.
            @json_allowed_values
            ## 
            # The default value for the template parameter represented by a serialized string of JSON. Required. Read-only.
            @json_default_value
            ## 
            # The OdataType property
            @odata_type
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new templateParameter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_template_parameter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsTemplateParameter.new
            end
            ## 
            ## Gets the description property value. The description for the template parameter. Optional. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for the template parameter. Optional. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the template parameter. Required. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the template parameter. Required. Read-only.
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
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "jsonAllowedValues" => lambda {|n| @json_allowed_values = n.get_string_value() },
                    "jsonDefaultValue" => lambda {|n| @json_default_value = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "valueType" => lambda {|n| @value_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsManagementParameterValueType) },
                }
            end
            ## 
            ## Gets the jsonAllowedValues property value. The allowed values for the template parameter represented by a serialized string of JSON. Optional. Read-only.
            ## @return a string
            ## 
            def json_allowed_values
                return @json_allowed_values
            end
            ## 
            ## Sets the jsonAllowedValues property value. The allowed values for the template parameter represented by a serialized string of JSON. Optional. Read-only.
            ## @param value Value to set for the jsonAllowedValues property.
            ## @return a void
            ## 
            def json_allowed_values=(value)
                @json_allowed_values = value
            end
            ## 
            ## Gets the jsonDefaultValue property value. The default value for the template parameter represented by a serialized string of JSON. Required. Read-only.
            ## @return a string
            ## 
            def json_default_value
                return @json_default_value
            end
            ## 
            ## Sets the jsonDefaultValue property value. The default value for the template parameter represented by a serialized string of JSON. Required. Read-only.
            ## @param value Value to set for the jsonDefaultValue property.
            ## @return a void
            ## 
            def json_default_value=(value)
                @json_default_value = value
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
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("jsonAllowedValues", @json_allowed_values)
                writer.write_string_value("jsonDefaultValue", @json_default_value)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("valueType", @value_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the valueType property value. The valueType property
            ## @return a managed_tenants_management_parameter_value_type
            ## 
            def value_type
                return @value_type
            end
            ## 
            ## Sets the valueType property value. The valueType property
            ## @param value Value to set for the valueType property.
            ## @return a void
            ## 
            def value_type=(value)
                @value_type = value
            end
        end
    end
end
