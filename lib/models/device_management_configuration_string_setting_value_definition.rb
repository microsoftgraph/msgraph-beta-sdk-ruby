require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # String constraints
        class DeviceManagementConfigurationStringSettingValueDefinition < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingValueDefinition
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Supported file types for this setting.
            @file_types
            ## 
            # Pre-defined format of the string. Possible values are: none, email, guid, ip, base64, url, version, xml, date, time, binary, regEx, json, dateTime, surfaceHub.
            @format
            ## 
            # Regular expression or any xml or json schema that the input string should match
            @input_validation_schema
            ## 
            # Specifies whether the setting needs to be treated as a secret. Settings marked as yes will be encrypted in transit and at rest and will be displayed as asterisks when represented in the UX.
            @is_secret
            ## 
            # Maximum length of string
            @maximum_length
            ## 
            # Minimum length of string
            @minimum_length
            ## 
            ## Instantiates a new deviceManagementConfigurationStringSettingValueDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValueDefinition"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_string_setting_value_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationStringSettingValueDefinition.new
            end
            ## 
            ## Gets the fileTypes property value. Supported file types for this setting.
            ## @return a string
            ## 
            def file_types
                return @file_types
            end
            ## 
            ## Sets the fileTypes property value. Supported file types for this setting.
            ## @param value Value to set for the fileTypes property.
            ## @return a void
            ## 
            def file_types=(value)
                @file_types = value
            end
            ## 
            ## Gets the format property value. Pre-defined format of the string. Possible values are: none, email, guid, ip, base64, url, version, xml, date, time, binary, regEx, json, dateTime, surfaceHub.
            ## @return a device_management_configuration_string_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Pre-defined format of the string. Possible values are: none, email, guid, ip, base64, url, version, xml, date, time, binary, regEx, json, dateTime, surfaceHub.
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fileTypes" => lambda {|n| @file_types = n.get_collection_of_primitive_values(String) },
                    "format" => lambda {|n| @format = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationStringFormat) },
                    "inputValidationSchema" => lambda {|n| @input_validation_schema = n.get_string_value() },
                    "isSecret" => lambda {|n| @is_secret = n.get_boolean_value() },
                    "maximumLength" => lambda {|n| @maximum_length = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "minimumLength" => lambda {|n| @minimum_length = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the inputValidationSchema property value. Regular expression or any xml or json schema that the input string should match
            ## @return a string
            ## 
            def input_validation_schema
                return @input_validation_schema
            end
            ## 
            ## Sets the inputValidationSchema property value. Regular expression or any xml or json schema that the input string should match
            ## @param value Value to set for the inputValidationSchema property.
            ## @return a void
            ## 
            def input_validation_schema=(value)
                @input_validation_schema = value
            end
            ## 
            ## Gets the isSecret property value. Specifies whether the setting needs to be treated as a secret. Settings marked as yes will be encrypted in transit and at rest and will be displayed as asterisks when represented in the UX.
            ## @return a boolean
            ## 
            def is_secret
                return @is_secret
            end
            ## 
            ## Sets the isSecret property value. Specifies whether the setting needs to be treated as a secret. Settings marked as yes will be encrypted in transit and at rest and will be displayed as asterisks when represented in the UX.
            ## @param value Value to set for the isSecret property.
            ## @return a void
            ## 
            def is_secret=(value)
                @is_secret = value
            end
            ## 
            ## Gets the maximumLength property value. Maximum length of string
            ## @return a int64
            ## 
            def maximum_length
                return @maximum_length
            end
            ## 
            ## Sets the maximumLength property value. Maximum length of string
            ## @param value Value to set for the maximumLength property.
            ## @return a void
            ## 
            def maximum_length=(value)
                @maximum_length = value
            end
            ## 
            ## Gets the minimumLength property value. Minimum length of string
            ## @return a int64
            ## 
            def minimum_length
                return @minimum_length
            end
            ## 
            ## Sets the minimumLength property value. Minimum length of string
            ## @param value Value to set for the minimumLength property.
            ## @return a void
            ## 
            def minimum_length=(value)
                @minimum_length = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("fileTypes", @file_types)
                writer.write_enum_value("format", @format)
                writer.write_string_value("inputValidationSchema", @input_validation_schema)
                writer.write_boolean_value("isSecret", @is_secret)
                writer.write_object_value("maximumLength", @maximum_length)
                writer.write_object_value("minimumLength", @minimum_length)
            end
        end
    end
end
