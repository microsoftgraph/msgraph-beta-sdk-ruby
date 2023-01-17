require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ReferenceAttachment < MicrosoftGraphBeta::Models::Attachment
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies whether the attachment is a link to a folder. Must set this to true if sourceUrl is a link to a folder. Optional.
        @is_folder
        ## 
        # Specifies the permissions granted for the attachment by the type of provider in providerType. Possible values are: other, view, edit, anonymousView, anonymousEdit, organizationView, organizationEdit. Optional.
        @permission
        ## 
        # Applies to only a reference attachment of an image - URL to get a preview image. Use thumbnailUrl and previewUrl only when sourceUrl identifies an image file. Optional.
        @preview_url
        ## 
        # The type of provider that supports an attachment of this contentType. Possible values are: other, oneDriveBusiness, oneDriveConsumer, dropbox. Optional.
        @provider_type
        ## 
        # URL to get the attachment content. If this is a URL to a folder, then for the folder to be displayed correctly in Outlook or Outlook on the web, set isFolder to true. Required.
        @source_url
        ## 
        # Applies to only a reference attachment of an image - URL to get a thumbnail image. Use thumbnailUrl and previewUrl only when sourceUrl identifies an image file. Optional.
        @thumbnail_url
        ## 
        ## Instantiates a new ReferenceAttachment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.referenceAttachment"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a reference_attachment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ReferenceAttachment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "isFolder" => lambda {|n| @is_folder = n.get_boolean_value() },
                "permission" => lambda {|n| @permission = n.get_enum_value(MicrosoftGraphBeta::Models::ReferenceAttachmentPermission) },
                "previewUrl" => lambda {|n| @preview_url = n.get_string_value() },
                "providerType" => lambda {|n| @provider_type = n.get_enum_value(MicrosoftGraphBeta::Models::ReferenceAttachmentProvider) },
                "sourceUrl" => lambda {|n| @source_url = n.get_string_value() },
                "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isFolder property value. Specifies whether the attachment is a link to a folder. Must set this to true if sourceUrl is a link to a folder. Optional.
        ## @return a boolean
        ## 
        def is_folder
            return @is_folder
        end
        ## 
        ## Sets the isFolder property value. Specifies whether the attachment is a link to a folder. Must set this to true if sourceUrl is a link to a folder. Optional.
        ## @param value Value to set for the isFolder property.
        ## @return a void
        ## 
        def is_folder=(value)
            @is_folder = value
        end
        ## 
        ## Gets the permission property value. Specifies the permissions granted for the attachment by the type of provider in providerType. Possible values are: other, view, edit, anonymousView, anonymousEdit, organizationView, organizationEdit. Optional.
        ## @return a reference_attachment_permission
        ## 
        def permission
            return @permission
        end
        ## 
        ## Sets the permission property value. Specifies the permissions granted for the attachment by the type of provider in providerType. Possible values are: other, view, edit, anonymousView, anonymousEdit, organizationView, organizationEdit. Optional.
        ## @param value Value to set for the permission property.
        ## @return a void
        ## 
        def permission=(value)
            @permission = value
        end
        ## 
        ## Gets the previewUrl property value. Applies to only a reference attachment of an image - URL to get a preview image. Use thumbnailUrl and previewUrl only when sourceUrl identifies an image file. Optional.
        ## @return a string
        ## 
        def preview_url
            return @preview_url
        end
        ## 
        ## Sets the previewUrl property value. Applies to only a reference attachment of an image - URL to get a preview image. Use thumbnailUrl and previewUrl only when sourceUrl identifies an image file. Optional.
        ## @param value Value to set for the previewUrl property.
        ## @return a void
        ## 
        def preview_url=(value)
            @preview_url = value
        end
        ## 
        ## Gets the providerType property value. The type of provider that supports an attachment of this contentType. Possible values are: other, oneDriveBusiness, oneDriveConsumer, dropbox. Optional.
        ## @return a reference_attachment_provider
        ## 
        def provider_type
            return @provider_type
        end
        ## 
        ## Sets the providerType property value. The type of provider that supports an attachment of this contentType. Possible values are: other, oneDriveBusiness, oneDriveConsumer, dropbox. Optional.
        ## @param value Value to set for the providerType property.
        ## @return a void
        ## 
        def provider_type=(value)
            @provider_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("isFolder", @is_folder)
            writer.write_enum_value("permission", @permission)
            writer.write_string_value("previewUrl", @preview_url)
            writer.write_enum_value("providerType", @provider_type)
            writer.write_string_value("sourceUrl", @source_url)
            writer.write_string_value("thumbnailUrl", @thumbnail_url)
        end
        ## 
        ## Gets the sourceUrl property value. URL to get the attachment content. If this is a URL to a folder, then for the folder to be displayed correctly in Outlook or Outlook on the web, set isFolder to true. Required.
        ## @return a string
        ## 
        def source_url
            return @source_url
        end
        ## 
        ## Sets the sourceUrl property value. URL to get the attachment content. If this is a URL to a folder, then for the folder to be displayed correctly in Outlook or Outlook on the web, set isFolder to true. Required.
        ## @param value Value to set for the sourceUrl property.
        ## @return a void
        ## 
        def source_url=(value)
            @source_url = value
        end
        ## 
        ## Gets the thumbnailUrl property value. Applies to only a reference attachment of an image - URL to get a thumbnail image. Use thumbnailUrl and previewUrl only when sourceUrl identifies an image file. Optional.
        ## @return a string
        ## 
        def thumbnail_url
            return @thumbnail_url
        end
        ## 
        ## Sets the thumbnailUrl property value. Applies to only a reference attachment of an image - URL to get a thumbnail image. Use thumbnailUrl and previewUrl only when sourceUrl identifies an image file. Optional.
        ## @param value Value to set for the thumbnailUrl property.
        ## @return a void
        ## 
        def thumbnail_url=(value)
            @thumbnail_url = value
        end
    end
end
