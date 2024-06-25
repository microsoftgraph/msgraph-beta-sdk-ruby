require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DriveItemAccessOperationsViewpoint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the user can comment on this item.
            @can_comment
            ## 
            # Indicates whether the user can create files within this object. Returned only on folders.
            @can_create_file
            ## 
            # Indicates whether the user can create folders within this object. Returned only on folders.
            @can_create_folder
            ## 
            # Indicates whether the user can delete this item.
            @can_delete
            ## 
            # Indicates whether the user can download this item.
            @can_download
            ## 
            # Indicates whether the user can read this item.
            @can_read
            ## 
            # Indicates whether the user can update this item.
            @can_update
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the canComment property value. Indicates whether the user can comment on this item.
            ## @return a boolean
            ## 
            def can_comment
                return @can_comment
            end
            ## 
            ## Sets the canComment property value. Indicates whether the user can comment on this item.
            ## @param value Value to set for the canComment property.
            ## @return a void
            ## 
            def can_comment=(value)
                @can_comment = value
            end
            ## 
            ## Gets the canCreateFile property value. Indicates whether the user can create files within this object. Returned only on folders.
            ## @return a boolean
            ## 
            def can_create_file
                return @can_create_file
            end
            ## 
            ## Sets the canCreateFile property value. Indicates whether the user can create files within this object. Returned only on folders.
            ## @param value Value to set for the canCreateFile property.
            ## @return a void
            ## 
            def can_create_file=(value)
                @can_create_file = value
            end
            ## 
            ## Gets the canCreateFolder property value. Indicates whether the user can create folders within this object. Returned only on folders.
            ## @return a boolean
            ## 
            def can_create_folder
                return @can_create_folder
            end
            ## 
            ## Sets the canCreateFolder property value. Indicates whether the user can create folders within this object. Returned only on folders.
            ## @param value Value to set for the canCreateFolder property.
            ## @return a void
            ## 
            def can_create_folder=(value)
                @can_create_folder = value
            end
            ## 
            ## Gets the canDelete property value. Indicates whether the user can delete this item.
            ## @return a boolean
            ## 
            def can_delete
                return @can_delete
            end
            ## 
            ## Sets the canDelete property value. Indicates whether the user can delete this item.
            ## @param value Value to set for the canDelete property.
            ## @return a void
            ## 
            def can_delete=(value)
                @can_delete = value
            end
            ## 
            ## Gets the canDownload property value. Indicates whether the user can download this item.
            ## @return a boolean
            ## 
            def can_download
                return @can_download
            end
            ## 
            ## Sets the canDownload property value. Indicates whether the user can download this item.
            ## @param value Value to set for the canDownload property.
            ## @return a void
            ## 
            def can_download=(value)
                @can_download = value
            end
            ## 
            ## Gets the canRead property value. Indicates whether the user can read this item.
            ## @return a boolean
            ## 
            def can_read
                return @can_read
            end
            ## 
            ## Sets the canRead property value. Indicates whether the user can read this item.
            ## @param value Value to set for the canRead property.
            ## @return a void
            ## 
            def can_read=(value)
                @can_read = value
            end
            ## 
            ## Gets the canUpdate property value. Indicates whether the user can update this item.
            ## @return a boolean
            ## 
            def can_update
                return @can_update
            end
            ## 
            ## Sets the canUpdate property value. Indicates whether the user can update this item.
            ## @param value Value to set for the canUpdate property.
            ## @return a void
            ## 
            def can_update=(value)
                @can_update = value
            end
            ## 
            ## Instantiates a new DriveItemAccessOperationsViewpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a drive_item_access_operations_viewpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveItemAccessOperationsViewpoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "canComment" => lambda {|n| @can_comment = n.get_boolean_value() },
                    "canCreateFile" => lambda {|n| @can_create_file = n.get_boolean_value() },
                    "canCreateFolder" => lambda {|n| @can_create_folder = n.get_boolean_value() },
                    "canDelete" => lambda {|n| @can_delete = n.get_boolean_value() },
                    "canDownload" => lambda {|n| @can_download = n.get_boolean_value() },
                    "canRead" => lambda {|n| @can_read = n.get_boolean_value() },
                    "canUpdate" => lambda {|n| @can_update = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("canComment", @can_comment)
                writer.write_boolean_value("canCreateFile", @can_create_file)
                writer.write_boolean_value("canCreateFolder", @can_create_folder)
                writer.write_boolean_value("canDelete", @can_delete)
                writer.write_boolean_value("canDownload", @can_download)
                writer.write_boolean_value("canRead", @can_read)
                writer.write_boolean_value("canUpdate", @can_update)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
