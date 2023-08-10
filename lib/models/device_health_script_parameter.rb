require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base properties of the script parameter.
        class DeviceHealthScriptParameter
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Whether Apply DefaultValue When Not Assigned
            @apply_default_value_when_not_assigned
            ## 
            # The description of the param
            @description
            ## 
            # Whether the param is required
            @is_required
            ## 
            # The name of the param
            @name
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
            ## Gets the applyDefaultValueWhenNotAssigned property value. Whether Apply DefaultValue When Not Assigned
            ## @return a boolean
            ## 
            def apply_default_value_when_not_assigned
                return @apply_default_value_when_not_assigned
            end
            ## 
            ## Sets the applyDefaultValueWhenNotAssigned property value. Whether Apply DefaultValue When Not Assigned
            ## @param value Value to set for the applyDefaultValueWhenNotAssigned property.
            ## @return a void
            ## 
            def apply_default_value_when_not_assigned=(value)
                @apply_default_value_when_not_assigned = value
            end
            ## 
            ## Instantiates a new deviceHealthScriptParameter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_health_script_parameter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceHealthScriptBooleanParameter"
                            return DeviceHealthScriptBooleanParameter.new
                        when "#microsoft.graph.deviceHealthScriptIntegerParameter"
                            return DeviceHealthScriptIntegerParameter.new
                        when "#microsoft.graph.deviceHealthScriptStringParameter"
                            return DeviceHealthScriptStringParameter.new
                    end
                end
                return DeviceHealthScriptParameter.new
            end
            ## 
            ## Gets the description property value. The description of the param
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the param
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applyDefaultValueWhenNotAssigned" => lambda {|n| @apply_default_value_when_not_assigned = n.get_boolean_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isRequired property value. Whether the param is required
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. Whether the param is required
            ## @param value Value to set for the isRequired property.
            ## @return a void
            ## 
            def is_required=(value)
                @is_required = value
            end
            ## 
            ## Gets the name property value. The name of the param
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the param
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("applyDefaultValueWhenNotAssigned", @apply_default_value_when_not_assigned)
                writer.write_string_value("description", @description)
                writer.write_boolean_value("isRequired", @is_required)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
