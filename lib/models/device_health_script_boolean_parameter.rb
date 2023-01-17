require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceHealthScriptBooleanParameter < MicrosoftGraphBeta::Models::DeviceHealthScriptParameter
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The default value of boolean param
        @default_value
        ## 
        ## Instantiates a new DeviceHealthScriptBooleanParameter and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceHealthScriptBooleanParameter"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_health_script_boolean_parameter
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceHealthScriptBooleanParameter.new
        end
        ## 
        ## Gets the defaultValue property value. The default value of boolean param
        ## @return a boolean
        ## 
        def default_value
            return @default_value
        end
        ## 
        ## Sets the defaultValue property value. The default value of boolean param
        ## @param value Value to set for the defaultValue property.
        ## @return a void
        ## 
        def default_value=(value)
            @default_value = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "defaultValue" => lambda {|n| @default_value = n.get_boolean_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("defaultValue", @default_value)
        end
    end
end
