require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementSettingProfileConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The source of the entity
            @source
            ## 
            # A collection of types this entity carries
            @types
            ## 
            ## Instantiates a new DeviceManagementSettingProfileConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementSettingProfileConstraint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_profile_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingProfileConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "source" => lambda {|n| @source = n.get_string_value() },
                    "types" => lambda {|n| @types = n.get_collection_of_primitive_values(String) },
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
                writer.write_string_value("source", @source)
                writer.write_collection_of_primitive_values("types", @types)
            end
            ## 
            ## Gets the source property value. The source of the entity
            ## @return a string
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source of the entity
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the types property value. A collection of types this entity carries
            ## @return a string
            ## 
            def types
                return @types
            end
            ## 
            ## Sets the types property value. A collection of types this entity carries
            ## @param value Value to set for the types property.
            ## @return a void
            ## 
            def types=(value)
                @types = value
            end
        end
    end
end
