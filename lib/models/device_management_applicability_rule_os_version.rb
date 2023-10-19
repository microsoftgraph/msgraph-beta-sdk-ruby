require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementApplicabilityRuleOsVersion
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Max OS version for Applicability Rule.
            @max_o_s_version
            ## 
            # Min OS version for Applicability Rule.
            @min_o_s_version
            ## 
            # Name for object.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Supported Applicability rule types for Device Configuration
            @rule_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new deviceManagementApplicabilityRuleOsVersion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_applicability_rule_os_version
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementApplicabilityRuleOsVersion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "maxOSVersion" => lambda {|n| @max_o_s_version = n.get_string_value() },
                    "minOSVersion" => lambda {|n| @min_o_s_version = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "ruleType" => lambda {|n| @rule_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementApplicabilityRuleType) },
                }
            end
            ## 
            ## Gets the maxOSVersion property value. Max OS version for Applicability Rule.
            ## @return a string
            ## 
            def max_o_s_version
                return @max_o_s_version
            end
            ## 
            ## Sets the maxOSVersion property value. Max OS version for Applicability Rule.
            ## @param value Value to set for the maxOSVersion property.
            ## @return a void
            ## 
            def max_o_s_version=(value)
                @max_o_s_version = value
            end
            ## 
            ## Gets the minOSVersion property value. Min OS version for Applicability Rule.
            ## @return a string
            ## 
            def min_o_s_version
                return @min_o_s_version
            end
            ## 
            ## Sets the minOSVersion property value. Min OS version for Applicability Rule.
            ## @param value Value to set for the minOSVersion property.
            ## @return a void
            ## 
            def min_o_s_version=(value)
                @min_o_s_version = value
            end
            ## 
            ## Gets the name property value. Name for object.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name for object.
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
            ## Gets the ruleType property value. Supported Applicability rule types for Device Configuration
            ## @return a device_management_applicability_rule_type
            ## 
            def rule_type
                return @rule_type
            end
            ## 
            ## Sets the ruleType property value. Supported Applicability rule types for Device Configuration
            ## @param value Value to set for the ruleType property.
            ## @return a void
            ## 
            def rule_type=(value)
                @rule_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("maxOSVersion", @max_o_s_version)
                writer.write_string_value("minOSVersion", @min_o_s_version)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("ruleType", @rule_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
