require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains file or folder path to detect a Win32 App
        class Win32LobAppFileSystemRequirement < MicrosoftGraphBeta::Models::Win32LobAppRequirement
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A value indicating whether this file or folder is for checking 32-bit app on 64-bit system
            @check32_bit_on64_system
            ## 
            # Contains all supported file system detection type.
            @detection_type
            ## 
            # The file or folder name to detect Win32 Line of Business (LoB) app
            @file_or_folder_name
            ## 
            # The file or folder path to detect Win32 Line of Business (LoB) app
            @path
            ## 
            ## Gets the check32BitOn64System property value. A value indicating whether this file or folder is for checking 32-bit app on 64-bit system
            ## @return a boolean
            ## 
            def check32_bit_on64_system
                return @check32_bit_on64_system
            end
            ## 
            ## Sets the check32BitOn64System property value. A value indicating whether this file or folder is for checking 32-bit app on 64-bit system
            ## @param value Value to set for the check32_bit_on64_system property.
            ## @return a void
            ## 
            def check32_bit_on64_system=(value)
                @check32_bit_on64_system = value
            end
            ## 
            ## Instantiates a new win32LobAppFileSystemRequirement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32LobAppFileSystemRequirement"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_file_system_requirement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppFileSystemRequirement.new
            end
            ## 
            ## Gets the detectionType property value. Contains all supported file system detection type.
            ## @return a win32_lob_app_file_system_detection_type
            ## 
            def detection_type
                return @detection_type
            end
            ## 
            ## Sets the detectionType property value. Contains all supported file system detection type.
            ## @param value Value to set for the detection_type property.
            ## @return a void
            ## 
            def detection_type=(value)
                @detection_type = value
            end
            ## 
            ## Gets the fileOrFolderName property value. The file or folder name to detect Win32 Line of Business (LoB) app
            ## @return a string
            ## 
            def file_or_folder_name
                return @file_or_folder_name
            end
            ## 
            ## Sets the fileOrFolderName property value. The file or folder name to detect Win32 Line of Business (LoB) app
            ## @param value Value to set for the file_or_folder_name property.
            ## @return a void
            ## 
            def file_or_folder_name=(value)
                @file_or_folder_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "check32BitOn64System" => lambda {|n| @check32_bit_on64_system = n.get_boolean_value() },
                    "detectionType" => lambda {|n| @detection_type = n.get_enum_value(MicrosoftGraphBeta::Models::Win32LobAppFileSystemDetectionType) },
                    "fileOrFolderName" => lambda {|n| @file_or_folder_name = n.get_string_value() },
                    "path" => lambda {|n| @path = n.get_string_value() },
                })
            end
            ## 
            ## Gets the path property value. The file or folder path to detect Win32 Line of Business (LoB) app
            ## @return a string
            ## 
            def path
                return @path
            end
            ## 
            ## Sets the path property value. The file or folder path to detect Win32 Line of Business (LoB) app
            ## @param value Value to set for the path property.
            ## @return a void
            ## 
            def path=(value)
                @path = value
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
                writer.write_string_value("fileOrFolderName", @file_or_folder_name)
                writer.write_string_value("path", @path)
            end
        end
    end
end
