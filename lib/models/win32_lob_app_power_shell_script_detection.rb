require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Win32LobAppPowerShellScriptDetection < MicrosoftGraphBeta::Models::Win32LobAppDetection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A value indicating whether signature check is enforced
            @enforce_signature_check
            ## 
            # A value indicating whether this script should run as 32-bit
            @run_as32_bit
            ## 
            # The base64 encoded script content to detect Win32 Line of Business (LoB) app
            @script_content
            ## 
            ## Instantiates a new Win32LobAppPowerShellScriptDetection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32LobAppPowerShellScriptDetection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_power_shell_script_detection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppPowerShellScriptDetection.new
            end
            ## 
            ## Gets the enforceSignatureCheck property value. A value indicating whether signature check is enforced
            ## @return a boolean
            ## 
            def enforce_signature_check
                return @enforce_signature_check
            end
            ## 
            ## Sets the enforceSignatureCheck property value. A value indicating whether signature check is enforced
            ## @param value Value to set for the enforce_signature_check property.
            ## @return a void
            ## 
            def enforce_signature_check=(value)
                @enforce_signature_check = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enforceSignatureCheck" => lambda {|n| @enforce_signature_check = n.get_boolean_value() },
                    "runAs32Bit" => lambda {|n| @run_as32_bit = n.get_boolean_value() },
                    "scriptContent" => lambda {|n| @script_content = n.get_string_value() },
                })
            end
            ## 
            ## Gets the runAs32Bit property value. A value indicating whether this script should run as 32-bit
            ## @return a boolean
            ## 
            def run_as32_bit
                return @run_as32_bit
            end
            ## 
            ## Sets the runAs32Bit property value. A value indicating whether this script should run as 32-bit
            ## @param value Value to set for the run_as32_bit property.
            ## @return a void
            ## 
            def run_as32_bit=(value)
                @run_as32_bit = value
            end
            ## 
            ## Gets the scriptContent property value. The base64 encoded script content to detect Win32 Line of Business (LoB) app
            ## @return a string
            ## 
            def script_content
                return @script_content
            end
            ## 
            ## Sets the scriptContent property value. The base64 encoded script content to detect Win32 Line of Business (LoB) app
            ## @param value Value to set for the script_content property.
            ## @return a void
            ## 
            def script_content=(value)
                @script_content = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("enforceSignatureCheck", @enforce_signature_check)
                writer.write_boolean_value("runAs32Bit", @run_as32_bit)
                writer.write_string_value("scriptContent", @script_content)
            end
        end
    end
end
