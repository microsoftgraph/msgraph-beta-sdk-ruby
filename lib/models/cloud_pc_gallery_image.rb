require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcGalleryImage < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of this gallery image. For example, Windows 11 Enterprise + Microsoft 365 Apps 22H2. Read-only.
            @display_name
            ## 
            # The date when the status of image becomes supportedWithWarning. Users can still provision new Cloud PCs if the current time is later than endDate and earlier than expirationDate. For example, assume the endDate of a gallery image is 2023-9-14 and expirationDate is 2024-3-14, users are able to provision new Cloud PCs if today is 2023-10-01. Read-only.
            @end_date
            ## 
            # The date when the image is no longer available. Users are unable to provision new Cloud PCs if the current time is later than expirationDate. The value is usually endDate plus six months. For example, if the startDate is 2025-10-14, the expirationDate is usually 2026-04-14. Read-only.
            @expiration_date
            ## 
            # The offer name of this gallery image that is passed to ARM to retrieve the image resource. Read-only. The offer property is deprecated and will stop returning data on January 31, 2024. Going forward, use the offerName property.
            @offer
            ## 
            # The official display offer name of this gallery image. For example, Windows 10 Enterprise + OS Optimizations. The offerDisplayName property is deprecated and will stop returning data on January 31, 2024.
            @offer_display_name
            ## 
            # The offer name of this gallery image that is passed to ARM to retrieve the image resource. Read-only.
            @offer_name
            ## 
            # The publisher name of this gallery image that is passed to ARM to retrieve the image resource. Read-only. The publisher property is deprecated and will stop returning data on January 31, 2024. Going forward, use the publisherName property.
            @publisher
            ## 
            # The publisher name of this gallery image that is passed to ARM to retrieve the image resource. Read-only.
            @publisher_name
            ## 
            # The recommended Cloud PC SKU for this gallery image. Read-only. The recommendedSku property is deprecated and will stop returning data on January 31, 2024.
            @recommended_sku
            ## 
            # Indicates the size of this image in gigabytes. For example, 64. Read-only.
            @size_in_g_b
            ## 
            # The SKU name of this image that is passed to ARM to retrieve the image resource. Read-only. The sku property is deprecated and will stop returning data on January 31, 2024. Going forward, use the skuName property.
            @sku
            ## 
            # The official display SKU name of this gallery image. For example, 2004. Read-only. The skuDisplayName property is deprecated and will stop returning data on January 31, 2024.
            @sku_display_name
            ## 
            # The SKU name of this image that is passed to ARM to retrieve the image resource. Read-only.
            @sku_name
            ## 
            # The date when the Cloud PC image is available for provisioning new Cloud PCs. For example, 2022-09-20. Read-only.
            @start_date
            ## 
            # The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. The default value is supported. Read-only.
            @status
            ## 
            ## Instantiates a new CloudPcGalleryImage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_gallery_image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcGalleryImage.new
            end
            ## 
            ## Gets the displayName property value. The display name of this gallery image. For example, Windows 11 Enterprise + Microsoft 365 Apps 22H2. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of this gallery image. For example, Windows 11 Enterprise + Microsoft 365 Apps 22H2. Read-only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDate property value. The date when the status of image becomes supportedWithWarning. Users can still provision new Cloud PCs if the current time is later than endDate and earlier than expirationDate. For example, assume the endDate of a gallery image is 2023-9-14 and expirationDate is 2024-3-14, users are able to provision new Cloud PCs if today is 2023-10-01. Read-only.
            ## @return a date
            ## 
            def end_date
                return @end_date
            end
            ## 
            ## Sets the endDate property value. The date when the status of image becomes supportedWithWarning. Users can still provision new Cloud PCs if the current time is later than endDate and earlier than expirationDate. For example, assume the endDate of a gallery image is 2023-9-14 and expirationDate is 2024-3-14, users are able to provision new Cloud PCs if today is 2023-10-01. Read-only.
            ## @param value Value to set for the endDate property.
            ## @return a void
            ## 
            def end_date=(value)
                @end_date = value
            end
            ## 
            ## Gets the expirationDate property value. The date when the image is no longer available. Users are unable to provision new Cloud PCs if the current time is later than expirationDate. The value is usually endDate plus six months. For example, if the startDate is 2025-10-14, the expirationDate is usually 2026-04-14. Read-only.
            ## @return a date
            ## 
            def expiration_date
                return @expiration_date
            end
            ## 
            ## Sets the expirationDate property value. The date when the image is no longer available. Users are unable to provision new Cloud PCs if the current time is later than expirationDate. The value is usually endDate plus six months. For example, if the startDate is 2025-10-14, the expirationDate is usually 2026-04-14. Read-only.
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
                    "endDate" => lambda {|n| @end_date = n.get_date_value() },
                    "expirationDate" => lambda {|n| @expiration_date = n.get_date_value() },
                    "offer" => lambda {|n| @offer = n.get_string_value() },
                    "offerDisplayName" => lambda {|n| @offer_display_name = n.get_string_value() },
                    "offerName" => lambda {|n| @offer_name = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "publisherName" => lambda {|n| @publisher_name = n.get_string_value() },
                    "recommendedSku" => lambda {|n| @recommended_sku = n.get_string_value() },
                    "sizeInGB" => lambda {|n| @size_in_g_b = n.get_number_value() },
                    "sku" => lambda {|n| @sku = n.get_string_value() },
                    "skuDisplayName" => lambda {|n| @sku_display_name = n.get_string_value() },
                    "skuName" => lambda {|n| @sku_name = n.get_string_value() },
                    "startDate" => lambda {|n| @start_date = n.get_date_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcGalleryImageStatus) },
                })
            end
            ## 
            ## Gets the offer property value. The offer name of this gallery image that is passed to ARM to retrieve the image resource. Read-only. The offer property is deprecated and will stop returning data on January 31, 2024. Going forward, use the offerName property.
            ## @return a string
            ## 
            def offer
                return @offer
            end
            ## 
            ## Sets the offer property value. The offer name of this gallery image that is passed to ARM to retrieve the image resource. Read-only. The offer property is deprecated and will stop returning data on January 31, 2024. Going forward, use the offerName property.
            ## @param value Value to set for the offer property.
            ## @return a void
            ## 
            def offer=(value)
                @offer = value
            end
            ## 
            ## Gets the offerDisplayName property value. The official display offer name of this gallery image. For example, Windows 10 Enterprise + OS Optimizations. The offerDisplayName property is deprecated and will stop returning data on January 31, 2024.
            ## @return a string
            ## 
            def offer_display_name
                return @offer_display_name
            end
            ## 
            ## Sets the offerDisplayName property value. The official display offer name of this gallery image. For example, Windows 10 Enterprise + OS Optimizations. The offerDisplayName property is deprecated and will stop returning data on January 31, 2024.
            ## @param value Value to set for the offerDisplayName property.
            ## @return a void
            ## 
            def offer_display_name=(value)
                @offer_display_name = value
            end
            ## 
            ## Gets the offerName property value. The offer name of this gallery image that is passed to ARM to retrieve the image resource. Read-only.
            ## @return a string
            ## 
            def offer_name
                return @offer_name
            end
            ## 
            ## Sets the offerName property value. The offer name of this gallery image that is passed to ARM to retrieve the image resource. Read-only.
            ## @param value Value to set for the offerName property.
            ## @return a void
            ## 
            def offer_name=(value)
                @offer_name = value
            end
            ## 
            ## Gets the publisher property value. The publisher name of this gallery image that is passed to ARM to retrieve the image resource. Read-only. The publisher property is deprecated and will stop returning data on January 31, 2024. Going forward, use the publisherName property.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The publisher name of this gallery image that is passed to ARM to retrieve the image resource. Read-only. The publisher property is deprecated and will stop returning data on January 31, 2024. Going forward, use the publisherName property.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Gets the publisherName property value. The publisher name of this gallery image that is passed to ARM to retrieve the image resource. Read-only.
            ## @return a string
            ## 
            def publisher_name
                return @publisher_name
            end
            ## 
            ## Sets the publisherName property value. The publisher name of this gallery image that is passed to ARM to retrieve the image resource. Read-only.
            ## @param value Value to set for the publisherName property.
            ## @return a void
            ## 
            def publisher_name=(value)
                @publisher_name = value
            end
            ## 
            ## Gets the recommendedSku property value. The recommended Cloud PC SKU for this gallery image. Read-only. The recommendedSku property is deprecated and will stop returning data on January 31, 2024.
            ## @return a string
            ## 
            def recommended_sku
                return @recommended_sku
            end
            ## 
            ## Sets the recommendedSku property value. The recommended Cloud PC SKU for this gallery image. Read-only. The recommendedSku property is deprecated and will stop returning data on January 31, 2024.
            ## @param value Value to set for the recommendedSku property.
            ## @return a void
            ## 
            def recommended_sku=(value)
                @recommended_sku = value
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
                writer.write_date_value("endDate", @end_date)
                writer.write_date_value("expirationDate", @expiration_date)
                writer.write_string_value("offer", @offer)
                writer.write_string_value("offerDisplayName", @offer_display_name)
                writer.write_string_value("offerName", @offer_name)
                writer.write_string_value("publisher", @publisher)
                writer.write_string_value("publisherName", @publisher_name)
                writer.write_string_value("recommendedSku", @recommended_sku)
                writer.write_number_value("sizeInGB", @size_in_g_b)
                writer.write_string_value("sku", @sku)
                writer.write_string_value("skuDisplayName", @sku_display_name)
                writer.write_string_value("skuName", @sku_name)
                writer.write_date_value("startDate", @start_date)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the sizeInGB property value. Indicates the size of this image in gigabytes. For example, 64. Read-only.
            ## @return a integer
            ## 
            def size_in_g_b
                return @size_in_g_b
            end
            ## 
            ## Sets the sizeInGB property value. Indicates the size of this image in gigabytes. For example, 64. Read-only.
            ## @param value Value to set for the sizeInGB property.
            ## @return a void
            ## 
            def size_in_g_b=(value)
                @size_in_g_b = value
            end
            ## 
            ## Gets the sku property value. The SKU name of this image that is passed to ARM to retrieve the image resource. Read-only. The sku property is deprecated and will stop returning data on January 31, 2024. Going forward, use the skuName property.
            ## @return a string
            ## 
            def sku
                return @sku
            end
            ## 
            ## Sets the sku property value. The SKU name of this image that is passed to ARM to retrieve the image resource. Read-only. The sku property is deprecated and will stop returning data on January 31, 2024. Going forward, use the skuName property.
            ## @param value Value to set for the sku property.
            ## @return a void
            ## 
            def sku=(value)
                @sku = value
            end
            ## 
            ## Gets the skuDisplayName property value. The official display SKU name of this gallery image. For example, 2004. Read-only. The skuDisplayName property is deprecated and will stop returning data on January 31, 2024.
            ## @return a string
            ## 
            def sku_display_name
                return @sku_display_name
            end
            ## 
            ## Sets the skuDisplayName property value. The official display SKU name of this gallery image. For example, 2004. Read-only. The skuDisplayName property is deprecated and will stop returning data on January 31, 2024.
            ## @param value Value to set for the skuDisplayName property.
            ## @return a void
            ## 
            def sku_display_name=(value)
                @sku_display_name = value
            end
            ## 
            ## Gets the skuName property value. The SKU name of this image that is passed to ARM to retrieve the image resource. Read-only.
            ## @return a string
            ## 
            def sku_name
                return @sku_name
            end
            ## 
            ## Sets the skuName property value. The SKU name of this image that is passed to ARM to retrieve the image resource. Read-only.
            ## @param value Value to set for the skuName property.
            ## @return a void
            ## 
            def sku_name=(value)
                @sku_name = value
            end
            ## 
            ## Gets the startDate property value. The date when the Cloud PC image is available for provisioning new Cloud PCs. For example, 2022-09-20. Read-only.
            ## @return a date
            ## 
            def start_date
                return @start_date
            end
            ## 
            ## Sets the startDate property value. The date when the Cloud PC image is available for provisioning new Cloud PCs. For example, 2022-09-20. Read-only.
            ## @param value Value to set for the startDate property.
            ## @return a void
            ## 
            def start_date=(value)
                @start_date = value
            end
            ## 
            ## Gets the status property value. The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. The default value is supported. Read-only.
            ## @return a cloud_pc_gallery_image_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. The default value is supported. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
