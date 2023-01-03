require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationSettingApplicability
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # description of the setting
        @description
        ## 
        # Describes applicability for the mode the device is in
        @device_mode
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Supported platform types.
        @platform
        ## 
        # Describes which technology this setting can be deployed with
        @technologies
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
        ## Instantiates a new deviceManagementConfigurationSettingApplicability and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_setting_applicability
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.deviceManagementConfigurationExchangeOnlineSettingApplicability"
                        return DeviceManagementConfigurationExchangeOnlineSettingApplicability.new
                    when "#microsoft.graph.deviceManagementConfigurationWindowsSettingApplicability"
                        return DeviceManagementConfigurationWindowsSettingApplicability.new
                end
            end
            return DeviceManagementConfigurationSettingApplicability.new
        end
        ## 
        ## Gets the description property value. description of the setting
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. description of the setting
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the deviceMode property value. Describes applicability for the mode the device is in
        ## @return a device_management_configuration_device_mode
        ## 
        def device_mode
            return @device_mode
        end
        ## 
        ## Sets the deviceMode property value. Describes applicability for the mode the device is in
        ## @param value Value to set for the deviceMode property.
        ## @return a void
        ## 
        def device_mode=(value)
            @device_mode = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "description" => lambda {|n| @description = n.get_string_value() },
                "deviceMode" => lambda {|n| @device_mode = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationDeviceMode) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationPlatforms) },
                "technologies" => lambda {|n| @technologies = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationTechnologies) },
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
        ## Gets the platform property value. Supported platform types.
        ## @return a device_management_configuration_platforms
        ## 
        def platform
            return @platform
        end
        ## 
        ## Sets the platform property value. Supported platform types.
        ## @param value Value to set for the platform property.
        ## @return a void
        ## 
        def platform=(value)
            @platform = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("description", @description)
            writer.write_enum_value("deviceMode", @device_mode)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("platform", @platform)
            writer.write_enum_value("technologies", @technologies)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the technologies property value. Describes which technology this setting can be deployed with
        ## @return a device_management_configuration_technologies
        ## 
        def technologies
            return @technologies
        end
        ## 
        ## Sets the technologies property value. Describes which technology this setting can be deployed with
        ## @param value Value to set for the technologies property.
        ## @return a void
        ## 
        def technologies=(value)
            @technologies = value
        end
    end
end
