require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for a single installer file that is associated with a given mobileAppContent version.
        class MobileAppContentFile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the Azure Storage URI that the file is uploaded to. Created by the service upon receiving a valid mobileAppContentFile. Read-only. This property is read-only.
            @azure_storage_uri
            ## 
            # Indicates the date and time when the Azure storage URI expires, in ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.
            @azure_storage_uri_expiration_date_time
            ## 
            # Indicates created date and time associated with app content file, in ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.
            @created_date_time
            ## 
            # A value indicating whether the file is committed. A committed app content file has been fully uploaded and validated by the Intune service. TRUE means that app content file is committed, FALSE means that app content file is not committed. Defaults to FALSE. Read-only. This property is read-only.
            @is_committed
            ## 
            # Indicates whether this content file is a dependency for the main content file. TRUE means that the content file is a dependency, FALSE means that the content file is not a dependency and is the main content file. Defaults to FALSE.
            @is_dependency
            ## 
            # A value indicating whether the file is a framework file. To be deprecated.
            @is_framework_file
            ## 
            # Indicates the manifest information, containing file metadata.
            @manifest
            ## 
            # Indicates the name of the file.
            @name
            ## 
            # The size of the file prior to encryption. To be deprecated, please use sizeInBytes property instead.
            @size
            ## 
            # The size of the file after encryption. To be deprecated, please use sizeEncryptedInBytes property instead.
            @size_encrypted
            ## 
            # Indicates the size of the file after encryption, in bytes. Valid values 0 to 9.22337203685478E+18
            @size_encrypted_in_bytes
            ## 
            # Indicates the original size of the file, in bytes. Valid values 0 to 9.22337203685478E+18
            @size_in_bytes
            ## 
            # Contains properties for upload request states.
            @upload_state
            ## 
            ## Gets the azureStorageUri property value. Indicates the Azure Storage URI that the file is uploaded to. Created by the service upon receiving a valid mobileAppContentFile. Read-only. This property is read-only.
            ## @return a string
            ## 
            def azure_storage_uri
                return @azure_storage_uri
            end
            ## 
            ## Sets the azureStorageUri property value. Indicates the Azure Storage URI that the file is uploaded to. Created by the service upon receiving a valid mobileAppContentFile. Read-only. This property is read-only.
            ## @param value Value to set for the azureStorageUri property.
            ## @return a void
            ## 
            def azure_storage_uri=(value)
                @azure_storage_uri = value
            end
            ## 
            ## Gets the azureStorageUriExpirationDateTime property value. Indicates the date and time when the Azure storage URI expires, in ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.
            ## @return a date_time
            ## 
            def azure_storage_uri_expiration_date_time
                return @azure_storage_uri_expiration_date_time
            end
            ## 
            ## Sets the azureStorageUriExpirationDateTime property value. Indicates the date and time when the Azure storage URI expires, in ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.
            ## @param value Value to set for the azureStorageUriExpirationDateTime property.
            ## @return a void
            ## 
            def azure_storage_uri_expiration_date_time=(value)
                @azure_storage_uri_expiration_date_time = value
            end
            ## 
            ## Instantiates a new MobileAppContentFile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Indicates created date and time associated with app content file, in ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Indicates created date and time associated with app content file, in ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only. This property is read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_content_file
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppContentFile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureStorageUri" => lambda {|n| @azure_storage_uri = n.get_string_value() },
                    "azureStorageUriExpirationDateTime" => lambda {|n| @azure_storage_uri_expiration_date_time = n.get_date_time_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "isCommitted" => lambda {|n| @is_committed = n.get_boolean_value() },
                    "isDependency" => lambda {|n| @is_dependency = n.get_boolean_value() },
                    "isFrameworkFile" => lambda {|n| @is_framework_file = n.get_boolean_value() },
                    "manifest" => lambda {|n| @manifest = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sizeEncrypted" => lambda {|n| @size_encrypted = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sizeEncryptedInBytes" => lambda {|n| @size_encrypted_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "sizeInBytes" => lambda {|n| @size_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "uploadState" => lambda {|n| @upload_state = n.get_enum_value(MicrosoftGraphBeta::Models::MobileAppContentFileUploadState) },
                })
            end
            ## 
            ## Gets the isCommitted property value. A value indicating whether the file is committed. A committed app content file has been fully uploaded and validated by the Intune service. TRUE means that app content file is committed, FALSE means that app content file is not committed. Defaults to FALSE. Read-only. This property is read-only.
            ## @return a boolean
            ## 
            def is_committed
                return @is_committed
            end
            ## 
            ## Sets the isCommitted property value. A value indicating whether the file is committed. A committed app content file has been fully uploaded and validated by the Intune service. TRUE means that app content file is committed, FALSE means that app content file is not committed. Defaults to FALSE. Read-only. This property is read-only.
            ## @param value Value to set for the isCommitted property.
            ## @return a void
            ## 
            def is_committed=(value)
                @is_committed = value
            end
            ## 
            ## Gets the isDependency property value. Indicates whether this content file is a dependency for the main content file. TRUE means that the content file is a dependency, FALSE means that the content file is not a dependency and is the main content file. Defaults to FALSE.
            ## @return a boolean
            ## 
            def is_dependency
                return @is_dependency
            end
            ## 
            ## Sets the isDependency property value. Indicates whether this content file is a dependency for the main content file. TRUE means that the content file is a dependency, FALSE means that the content file is not a dependency and is the main content file. Defaults to FALSE.
            ## @param value Value to set for the isDependency property.
            ## @return a void
            ## 
            def is_dependency=(value)
                @is_dependency = value
            end
            ## 
            ## Gets the isFrameworkFile property value. A value indicating whether the file is a framework file. To be deprecated.
            ## @return a boolean
            ## 
            def is_framework_file
                return @is_framework_file
            end
            ## 
            ## Sets the isFrameworkFile property value. A value indicating whether the file is a framework file. To be deprecated.
            ## @param value Value to set for the isFrameworkFile property.
            ## @return a void
            ## 
            def is_framework_file=(value)
                @is_framework_file = value
            end
            ## 
            ## Gets the manifest property value. Indicates the manifest information, containing file metadata.
            ## @return a base64url
            ## 
            def manifest
                return @manifest
            end
            ## 
            ## Sets the manifest property value. Indicates the manifest information, containing file metadata.
            ## @param value Value to set for the manifest property.
            ## @return a void
            ## 
            def manifest=(value)
                @manifest = value
            end
            ## 
            ## Gets the name property value. Indicates the name of the file.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Indicates the name of the file.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isDependency", @is_dependency)
                writer.write_boolean_value("isFrameworkFile", @is_framework_file)
                writer.write_object_value("manifest", @manifest)
                writer.write_string_value("name", @name)
                writer.write_object_value("size", @size)
                writer.write_object_value("sizeEncrypted", @size_encrypted)
                writer.write_object_value("sizeEncryptedInBytes", @size_encrypted_in_bytes)
                writer.write_object_value("sizeInBytes", @size_in_bytes)
                writer.write_enum_value("uploadState", @upload_state)
            end
            ## 
            ## Gets the size property value. The size of the file prior to encryption. To be deprecated, please use sizeInBytes property instead.
            ## @return a int64
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The size of the file prior to encryption. To be deprecated, please use sizeInBytes property instead.
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the sizeEncrypted property value. The size of the file after encryption. To be deprecated, please use sizeEncryptedInBytes property instead.
            ## @return a int64
            ## 
            def size_encrypted
                return @size_encrypted
            end
            ## 
            ## Sets the sizeEncrypted property value. The size of the file after encryption. To be deprecated, please use sizeEncryptedInBytes property instead.
            ## @param value Value to set for the sizeEncrypted property.
            ## @return a void
            ## 
            def size_encrypted=(value)
                @size_encrypted = value
            end
            ## 
            ## Gets the sizeEncryptedInBytes property value. Indicates the size of the file after encryption, in bytes. Valid values 0 to 9.22337203685478E+18
            ## @return a int64
            ## 
            def size_encrypted_in_bytes
                return @size_encrypted_in_bytes
            end
            ## 
            ## Sets the sizeEncryptedInBytes property value. Indicates the size of the file after encryption, in bytes. Valid values 0 to 9.22337203685478E+18
            ## @param value Value to set for the sizeEncryptedInBytes property.
            ## @return a void
            ## 
            def size_encrypted_in_bytes=(value)
                @size_encrypted_in_bytes = value
            end
            ## 
            ## Gets the sizeInBytes property value. Indicates the original size of the file, in bytes. Valid values 0 to 9.22337203685478E+18
            ## @return a int64
            ## 
            def size_in_bytes
                return @size_in_bytes
            end
            ## 
            ## Sets the sizeInBytes property value. Indicates the original size of the file, in bytes. Valid values 0 to 9.22337203685478E+18
            ## @param value Value to set for the sizeInBytes property.
            ## @return a void
            ## 
            def size_in_bytes=(value)
                @size_in_bytes = value
            end
            ## 
            ## Gets the uploadState property value. Contains properties for upload request states.
            ## @return a mobile_app_content_file_upload_state
            ## 
            def upload_state
                return @upload_state
            end
            ## 
            ## Sets the uploadState property value. Contains properties for upload request states.
            ## @param value Value to set for the uploadState property.
            ## @return a void
            ## 
            def upload_state=(value)
                @upload_state = value
            end
        end
    end
end
