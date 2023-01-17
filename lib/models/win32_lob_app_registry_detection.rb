require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Win32LobAppRegistryDetection < MicrosoftGraphBeta::Models::Win32LobAppDetection
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # A value indicating whether this registry path is for checking 32-bit app on 64-bit system
        @check32_bit_on64_system
        ## 
        # Contains all supported registry data detection type.
        @detection_type
        ## 
        # The registry detection value
        @detection_value
        ## 
        # The registry key path to detect Win32 Line of Business (LoB) app
        @key_path
        ## 
        # Contains properties for detection operator.
        @operator
        ## 
        # The registry value name
        @value_name
        ## 
        ## Gets the check32BitOn64System property value. A value indicating whether this registry path is for checking 32-bit app on 64-bit system
        ## @return a boolean
        ## 
        def check32_bit_on64_system
            return @check32_bit_on64_system
        end
        ## 
        ## Sets the check32BitOn64System property value. A value indicating whether this registry path is for checking 32-bit app on 64-bit system
        ## @param value Value to set for the check32BitOn64System property.
        ## @return a void
        ## 
        def check32_bit_on64_system=(value)
            @check32_bit_on64_system = value
        end
        ## 
        ## Instantiates a new Win32LobAppRegistryDetection and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.win32LobAppRegistryDetection"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a win32_lob_app_registry_detection
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Win32LobAppRegistryDetection.new
        end
        ## 
        ## Gets the detectionType property value. Contains all supported registry data detection type.
        ## @return a win32_lob_app_registry_detection_type
        ## 
        def detection_type
            return @detection_type
        end
        ## 
        ## Sets the detectionType property value. Contains all supported registry data detection type.
        ## @param value Value to set for the detectionType property.
        ## @return a void
        ## 
        def detection_type=(value)
            @detection_type = value
        end
        ## 
        ## Gets the detectionValue property value. The registry detection value
        ## @return a string
        ## 
        def detection_value
            return @detection_value
        end
        ## 
        ## Sets the detectionValue property value. The registry detection value
        ## @param value Value to set for the detectionValue property.
        ## @return a void
        ## 
        def detection_value=(value)
            @detection_value = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "check32BitOn64System" => lambda {|n| @check32_bit_on64_system = n.get_boolean_value() },
                "detectionType" => lambda {|n| @detection_type = n.get_enum_value(MicrosoftGraphBeta::Models::Win32LobAppRegistryDetectionType) },
                "detectionValue" => lambda {|n| @detection_value = n.get_string_value() },
                "keyPath" => lambda {|n| @key_path = n.get_string_value() },
                "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraphBeta::Models::Win32LobAppDetectionOperator) },
                "valueName" => lambda {|n| @value_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the keyPath property value. The registry key path to detect Win32 Line of Business (LoB) app
        ## @return a string
        ## 
        def key_path
            return @key_path
        end
        ## 
        ## Sets the keyPath property value. The registry key path to detect Win32 Line of Business (LoB) app
        ## @param value Value to set for the keyPath property.
        ## @return a void
        ## 
        def key_path=(value)
            @key_path = value
        end
        ## 
        ## Gets the operator property value. Contains properties for detection operator.
        ## @return a win32_lob_app_detection_operator
        ## 
        def operator
            return @operator
        end
        ## 
        ## Sets the operator property value. Contains properties for detection operator.
        ## @param value Value to set for the operator property.
        ## @return a void
        ## 
        def operator=(value)
            @operator = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("check32BitOn64System", @check32_bit_on64_system)
            writer.write_enum_value("detectionType", @detection_type)
            writer.write_string_value("detectionValue", @detection_value)
            writer.write_string_value("keyPath", @key_path)
            writer.write_enum_value("operator", @operator)
            writer.write_string_value("valueName", @value_name)
        end
        ## 
        ## Gets the valueName property value. The registry value name
        ## @return a string
        ## 
        def value_name
            return @value_name
        end
        ## 
        ## Sets the valueName property value. The registry value name
        ## @param value Value to set for the valueName property.
        ## @return a void
        ## 
        def value_name=(value)
            @value_name = value
        end
    end
end
