require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudPcGalleryImage < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The official display name of the gallery image. Read-only.
        @display_name
        ## 
        # The date in which this image is no longer within long-term support. The Cloud PC will continue to provide short-term support. Read-only.
        @end_date
        ## 
        # The date when the image is no longer available. Read-only.
        @expiration_date
        ## 
        # The offer name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        @offer
        ## 
        # The official display offer name of the gallery image. For example, Windows 10 Enterprise + OS Optimizations. Read-only.
        @offer_display_name
        ## 
        # The publisher name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        @publisher
        ## 
        # Recommended Cloud PC SKU for this gallery image. Read-only.
        @recommended_sku
        ## 
        # The size of this image in gigabytes. Read-only.
        @size_in_g_b
        ## 
        # The SKU name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        @sku
        ## 
        # The official display stock keeping unit (SKU) name of this gallery image. For example, 2004. Read-only.
        @sku_display_name
        ## 
        # The date when the image becomes available. Read-only.
        @start_date
        ## 
        # The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. Read-only.
        @status
        ## 
        ## Instantiates a new cloudPcGalleryImage and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_pc_gallery_image
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPcGalleryImage.new
        end
        ## 
        ## Gets the displayName property value. The official display name of the gallery image. Read-only.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The official display name of the gallery image. Read-only.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the endDate property value. The date in which this image is no longer within long-term support. The Cloud PC will continue to provide short-term support. Read-only.
        ## @return a date
        ## 
        def end_date
            return @end_date
        end
        ## 
        ## Sets the endDate property value. The date in which this image is no longer within long-term support. The Cloud PC will continue to provide short-term support. Read-only.
        ## @param value Value to set for the endDate property.
        ## @return a void
        ## 
        def end_date=(value)
            @end_date = value
        end
        ## 
        ## Gets the expirationDate property value. The date when the image is no longer available. Read-only.
        ## @return a date
        ## 
        def expiration_date
            return @expiration_date
        end
        ## 
        ## Sets the expirationDate property value. The date when the image is no longer available. Read-only.
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
                "publisher" => lambda {|n| @publisher = n.get_string_value() },
                "recommendedSku" => lambda {|n| @recommended_sku = n.get_string_value() },
                "sizeInGB" => lambda {|n| @size_in_g_b = n.get_number_value() },
                "sku" => lambda {|n| @sku = n.get_string_value() },
                "skuDisplayName" => lambda {|n| @sku_display_name = n.get_string_value() },
                "startDate" => lambda {|n| @start_date = n.get_date_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcGalleryImageStatus) },
            })
        end
        ## 
        ## Gets the offer property value. The offer name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        ## @return a string
        ## 
        def offer
            return @offer
        end
        ## 
        ## Sets the offer property value. The offer name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        ## @param value Value to set for the offer property.
        ## @return a void
        ## 
        def offer=(value)
            @offer = value
        end
        ## 
        ## Gets the offerDisplayName property value. The official display offer name of the gallery image. For example, Windows 10 Enterprise + OS Optimizations. Read-only.
        ## @return a string
        ## 
        def offer_display_name
            return @offer_display_name
        end
        ## 
        ## Sets the offerDisplayName property value. The official display offer name of the gallery image. For example, Windows 10 Enterprise + OS Optimizations. Read-only.
        ## @param value Value to set for the offerDisplayName property.
        ## @return a void
        ## 
        def offer_display_name=(value)
            @offer_display_name = value
        end
        ## 
        ## Gets the publisher property value. The publisher name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        ## @return a string
        ## 
        def publisher
            return @publisher
        end
        ## 
        ## Sets the publisher property value. The publisher name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        ## @param value Value to set for the publisher property.
        ## @return a void
        ## 
        def publisher=(value)
            @publisher = value
        end
        ## 
        ## Gets the recommendedSku property value. Recommended Cloud PC SKU for this gallery image. Read-only.
        ## @return a string
        ## 
        def recommended_sku
            return @recommended_sku
        end
        ## 
        ## Sets the recommendedSku property value. Recommended Cloud PC SKU for this gallery image. Read-only.
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
            writer.write_string_value("publisher", @publisher)
            writer.write_string_value("recommendedSku", @recommended_sku)
            writer.write_number_value("sizeInGB", @size_in_g_b)
            writer.write_string_value("sku", @sku)
            writer.write_string_value("skuDisplayName", @sku_display_name)
            writer.write_date_value("startDate", @start_date)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the sizeInGB property value. The size of this image in gigabytes. Read-only.
        ## @return a integer
        ## 
        def size_in_g_b
            return @size_in_g_b
        end
        ## 
        ## Sets the sizeInGB property value. The size of this image in gigabytes. Read-only.
        ## @param value Value to set for the sizeInGB property.
        ## @return a void
        ## 
        def size_in_g_b=(value)
            @size_in_g_b = value
        end
        ## 
        ## Gets the sku property value. The SKU name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        ## @return a string
        ## 
        def sku
            return @sku
        end
        ## 
        ## Sets the sku property value. The SKU name of the gallery image. This value will be passed to Azure to get the image resource. Read-only.
        ## @param value Value to set for the sku property.
        ## @return a void
        ## 
        def sku=(value)
            @sku = value
        end
        ## 
        ## Gets the skuDisplayName property value. The official display stock keeping unit (SKU) name of this gallery image. For example, 2004. Read-only.
        ## @return a string
        ## 
        def sku_display_name
            return @sku_display_name
        end
        ## 
        ## Sets the skuDisplayName property value. The official display stock keeping unit (SKU) name of this gallery image. For example, 2004. Read-only.
        ## @param value Value to set for the skuDisplayName property.
        ## @return a void
        ## 
        def sku_display_name=(value)
            @sku_display_name = value
        end
        ## 
        ## Gets the startDate property value. The date when the image becomes available. Read-only.
        ## @return a date
        ## 
        def start_date
            return @start_date
        end
        ## 
        ## Sets the startDate property value. The date when the image becomes available. Read-only.
        ## @param value Value to set for the startDate property.
        ## @return a void
        ## 
        def start_date=(value)
            @start_date = value
        end
        ## 
        ## Gets the status property value. The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. Read-only.
        ## @return a cloud_pc_gallery_image_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The status of the gallery image on the Cloud PC. Possible values are: supported, supportedWithWarning, notSupported, unknownFutureValue. Read-only.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
