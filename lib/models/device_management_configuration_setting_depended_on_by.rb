require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationSettingDependedOnBy
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Identifier of child setting that is dependent on the current setting
        @depended_on_by
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Value that determines if the child setting is required based on the parent setting's selection
        @required
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
        ## Instantiates a new deviceManagementConfigurationSettingDependedOnBy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_setting_depended_on_by
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationSettingDependedOnBy.new
        end
        ## 
        ## Gets the dependedOnBy property value. Identifier of child setting that is dependent on the current setting
        ## @return a string
        ## 
        def depended_on_by
            return @depended_on_by
        end
        ## 
        ## Sets the dependedOnBy property value. Identifier of child setting that is dependent on the current setting
        ## @param value Value to set for the dependedOnBy property.
        ## @return a void
        ## 
        def depended_on_by=(value)
            @depended_on_by = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "dependedOnBy" => lambda {|n| @depended_on_by = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "required" => lambda {|n| @required = n.get_boolean_value() },
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
        ## Gets the required property value. Value that determines if the child setting is required based on the parent setting's selection
        ## @return a boolean
        ## 
        def required
            return @required
        end
        ## 
        ## Sets the required property value. Value that determines if the child setting is required based on the parent setting's selection
        ## @param value Value to set for the required property.
        ## @return a void
        ## 
        def required=(value)
            @required = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("dependedOnBy", @depended_on_by)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_boolean_value("required", @required)
            writer.write_additional_data(@additional_data)
        end
    end
end
