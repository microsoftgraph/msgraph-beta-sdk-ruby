require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementEnumConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # List of valid values for this string
        @values
        ## 
        ## Instantiates a new DeviceManagementEnumConstraint and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementEnumConstraint"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_enum_constraint
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementEnumConstraint.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "values" => lambda {|n| @values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementEnumValue.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("values", @values)
        end
        ## 
        ## Gets the values property value. List of valid values for this string
        ## @return a device_management_enum_value
        ## 
        def values
            return @values
        end
        ## 
        ## Sets the values property value. List of valid values for this string
        ## @param value Value to set for the values property.
        ## @return a void
        ## 
        def values=(value)
            @values = value
        end
    end
end
