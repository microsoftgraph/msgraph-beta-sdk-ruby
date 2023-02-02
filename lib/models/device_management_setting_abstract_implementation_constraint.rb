require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementSettingAbstractImplementationConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # List of value which means not configured for the setting
        @allowed_abstract_implementation_definition_ids
        ## 
        ## Gets the allowedAbstractImplementationDefinitionIds property value. List of value which means not configured for the setting
        ## @return a string
        ## 
        def allowed_abstract_implementation_definition_ids
            return @allowed_abstract_implementation_definition_ids
        end
        ## 
        ## Sets the allowedAbstractImplementationDefinitionIds property value. List of value which means not configured for the setting
        ## @param value Value to set for the allowed_abstract_implementation_definition_ids property.
        ## @return a void
        ## 
        def allowed_abstract_implementation_definition_ids=(value)
            @allowed_abstract_implementation_definition_ids = value
        end
        ## 
        ## Instantiates a new DeviceManagementSettingAbstractImplementationConstraint and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.deviceManagementSettingAbstractImplementationConstraint"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_setting_abstract_implementation_constraint
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementSettingAbstractImplementationConstraint.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowedAbstractImplementationDefinitionIds" => lambda {|n| @allowed_abstract_implementation_definition_ids = n.get_collection_of_primitive_values(String) },
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
            writer.write_collection_of_primitive_values("allowedAbstractImplementationDefinitionIds", @allowed_abstract_implementation_definition_ids)
        end
    end
end
