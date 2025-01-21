require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudLicensingUsageRight < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Information about the services associated with the usageRight. Not nullable. Read-only. Supports $filter on the planId property.
            @services
            ## 
            # Unique identifier (GUID) for the service SKU that is equal to the skuId property on the related subscribedSku object. Read-only. Supports $filter.
            @sku_id
            ## 
            # Unique SKU display name that is equal to the skuPartNumber on the related subscribedSku object; for example, AAD_Premium. Read-only.
            @sku_part_number
            ## 
            ## Instantiates a new CloudLicensingUsageRight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_licensing_usage_right
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudLicensingUsageRight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "services" => lambda {|n| @services = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudLicensingService.create_from_discriminator_value(pn) }) },
                    "skuId" => lambda {|n| @sku_id = n.get_guid_value() },
                    "skuPartNumber" => lambda {|n| @sku_part_number = n.get_string_value() },
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
                writer.write_collection_of_object_values("services", @services)
                writer.write_guid_value("skuId", @sku_id)
                writer.write_string_value("skuPartNumber", @sku_part_number)
            end
            ## 
            ## Gets the services property value. Information about the services associated with the usageRight. Not nullable. Read-only. Supports $filter on the planId property.
            ## @return a cloud_licensing_service
            ## 
            def services
                return @services
            end
            ## 
            ## Sets the services property value. Information about the services associated with the usageRight. Not nullable. Read-only. Supports $filter on the planId property.
            ## @param value Value to set for the services property.
            ## @return a void
            ## 
            def services=(value)
                @services = value
            end
            ## 
            ## Gets the skuId property value. Unique identifier (GUID) for the service SKU that is equal to the skuId property on the related subscribedSku object. Read-only. Supports $filter.
            ## @return a guid
            ## 
            def sku_id
                return @sku_id
            end
            ## 
            ## Sets the skuId property value. Unique identifier (GUID) for the service SKU that is equal to the skuId property on the related subscribedSku object. Read-only. Supports $filter.
            ## @param value Value to set for the skuId property.
            ## @return a void
            ## 
            def sku_id=(value)
                @sku_id = value
            end
            ## 
            ## Gets the skuPartNumber property value. Unique SKU display name that is equal to the skuPartNumber on the related subscribedSku object; for example, AAD_Premium. Read-only.
            ## @return a string
            ## 
            def sku_part_number
                return @sku_part_number
            end
            ## 
            ## Sets the skuPartNumber property value. Unique SKU display name that is equal to the skuPartNumber on the related subscribedSku object; for example, AAD_Premium. Read-only.
            ## @param value Value to set for the skuPartNumber property.
            ## @return a void
            ## 
            def sku_part_number=(value)
                @sku_part_number = value
            end
        end
    end
end
