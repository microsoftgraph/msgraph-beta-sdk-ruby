require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidDeviceOwnerKioskModeManagedFolderReference < MicrosoftGraphBeta::Models::AndroidDeviceOwnerKioskModeHomeScreenItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unique identifier for the folder
            @folder_identifier
            ## 
            # Name of the folder
            @folder_name
            ## 
            ## Instantiates a new AndroidDeviceOwnerKioskModeManagedFolderReference and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidDeviceOwnerKioskModeManagedFolderReference"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_kiosk_mode_managed_folder_reference
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceOwnerKioskModeManagedFolderReference.new
            end
            ## 
            ## Gets the folderIdentifier property value. Unique identifier for the folder
            ## @return a string
            ## 
            def folder_identifier
                return @folder_identifier
            end
            ## 
            ## Sets the folderIdentifier property value. Unique identifier for the folder
            ## @param value Value to set for the folder_identifier property.
            ## @return a void
            ## 
            def folder_identifier=(value)
                @folder_identifier = value
            end
            ## 
            ## Gets the folderName property value. Name of the folder
            ## @return a string
            ## 
            def folder_name
                return @folder_name
            end
            ## 
            ## Sets the folderName property value. Name of the folder
            ## @param value Value to set for the folder_name property.
            ## @return a void
            ## 
            def folder_name=(value)
                @folder_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "folderIdentifier" => lambda {|n| @folder_identifier = n.get_string_value() },
                    "folderName" => lambda {|n| @folder_name = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("folderIdentifier", @folder_identifier)
                writer.write_string_value("folderName", @folder_name)
            end
        end
    end
end
