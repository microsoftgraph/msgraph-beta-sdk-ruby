require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base class to detect a Win32 App
        class Win32LobAppRequirement
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The detection value
            @detection_value
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Contains properties for detection operator.
            @operator
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new win32LobAppRequirement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_requirement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.win32LobAppFileSystemRequirement"
                            return Win32LobAppFileSystemRequirement.new
                        when "#microsoft.graph.win32LobAppPowerShellScriptRequirement"
                            return Win32LobAppPowerShellScriptRequirement.new
                        when "#microsoft.graph.win32LobAppRegistryRequirement"
                            return Win32LobAppRegistryRequirement.new
                    end
                end
                return Win32LobAppRequirement.new
            end
            ## 
            ## Gets the detectionValue property value. The detection value
            ## @return a string
            ## 
            def detection_value
                return @detection_value
            end
            ## 
            ## Sets the detectionValue property value. The detection value
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
                return {
                    "detectionValue" => lambda {|n| @detection_value = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraphBeta::Models::Win32LobAppDetectionOperator) },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
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
                writer.write_string_value("detectionValue", @detection_value)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("operator", @operator)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
