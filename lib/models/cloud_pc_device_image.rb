require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcDeviceImage < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the image.
            @display_name
            ## 
            # The date the image became unavailable.
            @expiration_date
            ## 
            # The data and time that the image was last modified. The time is shown in ISO 8601 format and  Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # The operating system of the image. For example, Windows 10 Enterprise.
            @operating_system
            ## 
            # The OS build version of the image. For example, 1909.
            @os_build_number
            ## 
            # The OS status of this image. Possible values are: supported, supportedWithWarning, unknownFutureValue.
            @os_status
            ## 
            # The scopeIds property
            @scope_ids
            ## 
            # The ID of the source image resource on Azure. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}.
            @source_image_resource_id
            ## 
            # The status of the image on Cloud PC. Possible values are: pending, ready, failed.
            @status
            ## 
            # The details of the status of the image that indicates why the upload failed, if applicable. Possible values are: internalServerError, sourceImageNotFound, osVersionNotSupported, sourceImageInvalid, and sourceImageNotGeneralized.
            @status_details
            ## 
            # The image version. For example, 0.0.1 and 1.5.13.
            @version
            ## 
            ## Instantiates a new cloudPcDeviceImage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_device_image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcDeviceImage.new
            end
            ## 
            ## Gets the displayName property value. The display name of the image.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the image.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the expirationDate property value. The date the image became unavailable.
            ## @return a date
            ## 
            def expiration_date
                return @expiration_date
            end
            ## 
            ## Sets the expirationDate property value. The date the image became unavailable.
            ## @param value Value to set for the expirationDate property.
            ## @return a void
            ## 
            def expiration_date=(value)
                @expiration_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "expirationDate" => lambda {|n| @expiration_date = n.get_date_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "osBuildNumber" => lambda {|n| @os_build_number = n.get_string_value() },
                    "osStatus" => lambda {|n| @os_status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcDeviceImageOsStatus) },
                    "scopeIds" => lambda {|n| @scope_ids = n.get_collection_of_primitive_values(String) },
                    "sourceImageResourceId" => lambda {|n| @source_image_resource_id = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcDeviceImageStatus) },
                    "statusDetails" => lambda {|n| @status_details = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcDeviceImageStatusDetails) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The data and time that the image was last modified. The time is shown in ISO 8601 format and  Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The data and time that the image was last modified. The time is shown in ISO 8601 format and  Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the operatingSystem property value. The operating system of the image. For example, Windows 10 Enterprise.
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The operating system of the image. For example, Windows 10 Enterprise.
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Gets the osBuildNumber property value. The OS build version of the image. For example, 1909.
            ## @return a string
            ## 
            def os_build_number
                return @os_build_number
            end
            ## 
            ## Sets the osBuildNumber property value. The OS build version of the image. For example, 1909.
            ## @param value Value to set for the osBuildNumber property.
            ## @return a void
            ## 
            def os_build_number=(value)
                @os_build_number = value
            end
            ## 
            ## Gets the osStatus property value. The OS status of this image. Possible values are: supported, supportedWithWarning, unknownFutureValue.
            ## @return a cloud_pc_device_image_os_status
            ## 
            def os_status
                return @os_status
            end
            ## 
            ## Sets the osStatus property value. The OS status of this image. Possible values are: supported, supportedWithWarning, unknownFutureValue.
            ## @param value Value to set for the osStatus property.
            ## @return a void
            ## 
            def os_status=(value)
                @os_status = value
            end
            ## 
            ## Gets the scopeIds property value. The scopeIds property
            ## @return a string
            ## 
            def scope_ids
                return @scope_ids
            end
            ## 
            ## Sets the scopeIds property value. The scopeIds property
            ## @param value Value to set for the scopeIds property.
            ## @return a void
            ## 
            def scope_ids=(value)
                @scope_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_date_value("expirationDate", @expiration_date)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_string_value("osBuildNumber", @os_build_number)
                writer.write_enum_value("osStatus", @os_status)
                writer.write_collection_of_primitive_values("scopeIds", @scope_ids)
                writer.write_string_value("sourceImageResourceId", @source_image_resource_id)
                writer.write_enum_value("status", @status)
                writer.write_enum_value("statusDetails", @status_details)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the sourceImageResourceId property value. The ID of the source image resource on Azure. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}.
            ## @return a string
            ## 
            def source_image_resource_id
                return @source_image_resource_id
            end
            ## 
            ## Sets the sourceImageResourceId property value. The ID of the source image resource on Azure. Required format: /subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}.
            ## @param value Value to set for the sourceImageResourceId property.
            ## @return a void
            ## 
            def source_image_resource_id=(value)
                @source_image_resource_id = value
            end
            ## 
            ## Gets the status property value. The status of the image on Cloud PC. Possible values are: pending, ready, failed.
            ## @return a cloud_pc_device_image_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the image on Cloud PC. Possible values are: pending, ready, failed.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the statusDetails property value. The details of the status of the image that indicates why the upload failed, if applicable. Possible values are: internalServerError, sourceImageNotFound, osVersionNotSupported, sourceImageInvalid, and sourceImageNotGeneralized.
            ## @return a cloud_pc_device_image_status_details
            ## 
            def status_details
                return @status_details
            end
            ## 
            ## Sets the statusDetails property value. The details of the status of the image that indicates why the upload failed, if applicable. Possible values are: internalServerError, sourceImageNotFound, osVersionNotSupported, sourceImageInvalid, and sourceImageNotGeneralized.
            ## @param value Value to set for the statusDetails property.
            ## @return a void
            ## 
            def status_details=(value)
                @status_details = value
            end
            ## 
            ## Gets the version property value. The image version. For example, 0.0.1 and 1.5.13.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The image version. For example, 0.0.1 and 1.5.13.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
