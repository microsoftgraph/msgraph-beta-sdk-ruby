require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementApplicabilityRuleOsEdition
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Name for object.
        @name
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Applicability rule OS edition type.
        @os_edition_types
        ## 
        # Supported Applicability rule types for Device Configuration
        @rule_type
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
        ## Instantiates a new deviceManagementApplicabilityRuleOsEdition and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_applicability_rule_os_edition
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementApplicabilityRuleOsEdition.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "name" => lambda {|n| @name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "osEditionTypes" => lambda {|n| @os_edition_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Windows10EditionType.create_from_discriminator_value(pn) }) },
                "ruleType" => lambda {|n| @rule_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementApplicabilityRuleType) },
            }
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
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the osEditionTypes property value. Applicability rule OS edition type.
        ## @return a windows10_edition_type
        ## 
        def os_edition_types
            return @os_edition_types
        end
        ## 
        ## Sets the osEditionTypes property value. Applicability rule OS edition type.
        ## @param value Value to set for the os_edition_types property.
        ## @return a void
        ## 
        def os_edition_types=(value)
            @os_edition_types = value
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
        ## @param value Value to set for the rule_type property.
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
            writer.write_string_value("name", @name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_object_values("osEditionTypes", @os_edition_types)
            writer.write_enum_value("ruleType", @rule_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
