require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Dependency information for a setting
    class DeviceManagementSettingDependency
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Collection of constraints for the dependency setting value
        @constraints
        ## 
        # The setting definition ID of the setting depended on
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
        ## Gets the constraints property value. Collection of constraints for the dependency setting value
        ## @return a device_management_constraint
        ## 
        def constraints
            return @constraints
        end
        ## 
        ## Sets the constraints property value. Collection of constraints for the dependency setting value
        ## @param value Value to set for the constraints property.
        ## @return a void
        ## 
        def constraints=(value)
            @constraints = value
        end
        ## 
        ## Instantiates a new deviceManagementSettingDependency and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_setting_dependency
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementSettingDependency.new
        end
        ## 
        ## Gets the definitionId property value. The setting definition ID of the setting depended on
        ## @return a string
        ## 
        def definition_id
            return @definition_id
        end
        ## 
        ## Sets the definitionId property value. The setting definition ID of the setting depended on
        ## @param value Value to set for the definitionId property.
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
                "constraints" => lambda {|n| @constraints = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConstraint.create_from_discriminator_value(pn) }) },
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_collection_of_object_values("constraints", @constraints)
            writer.write_string_value("definitionId", @definition_id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
