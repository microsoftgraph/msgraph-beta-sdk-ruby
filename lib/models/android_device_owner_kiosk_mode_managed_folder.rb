require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # A folder containing pages of apps and weblinks on the Managed Home Screen
    class AndroidDeviceOwnerKioskModeManagedFolder
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Unique identifier for the folder
        @folder_identifier
        ## 
        # Display name for the folder
        @folder_name
        ## 
        # Items to be added to managed folder. This collection can contain a maximum of 500 elements.
        @items
        ## 
        # The OdataType property
        @odata_type
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
        ## Instantiates a new androidDeviceOwnerKioskModeManagedFolder and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_device_owner_kiosk_mode_managed_folder
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidDeviceOwnerKioskModeManagedFolder.new
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
        ## @param value Value to set for the folderIdentifier property.
        ## @return a void
        ## 
        def folder_identifier=(value)
            @folder_identifier = value
        end
        ## 
        ## Gets the folderName property value. Display name for the folder
        ## @return a string
        ## 
        def folder_name
            return @folder_name
        end
        ## 
        ## Sets the folderName property value. Display name for the folder
        ## @param value Value to set for the folderName property.
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
            return {
                "folderIdentifier" => lambda {|n| @folder_identifier = n.get_string_value() },
                "folderName" => lambda {|n| @folder_name = n.get_string_value() },
                "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerKioskModeFolderItem.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the items property value. Items to be added to managed folder. This collection can contain a maximum of 500 elements.
        ## @return a android_device_owner_kiosk_mode_folder_item
        ## 
        def items
            return @items
        end
        ## 
        ## Sets the items property value. Items to be added to managed folder. This collection can contain a maximum of 500 elements.
        ## @param value Value to set for the items property.
        ## @return a void
        ## 
        def items=(value)
            @items = value
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("folderIdentifier", @folder_identifier)
            writer.write_string_value("folderName", @folder_name)
            writer.write_collection_of_object_values("items", @items)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
