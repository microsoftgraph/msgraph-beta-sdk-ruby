require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # OEM Warranty information for a given device
    class OemWarranty
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # List of additional warranty offers. This collection can contain a maximum of 100 elements.
        @additional_warranties
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # List of base warranty offers. This collection can contain a maximum of 100 elements.
        @base_warranties
        ## 
        # Device configuration page URL
        @device_configuration_url
        ## 
        # Device warranty page URL
        @device_warranty_url
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
        ## Gets the additionalWarranties property value. List of additional warranty offers. This collection can contain a maximum of 100 elements.
        ## @return a warranty_offer
        ## 
        def additional_warranties
            return @additional_warranties
        end
        ## 
        ## Sets the additionalWarranties property value. List of additional warranty offers. This collection can contain a maximum of 100 elements.
        ## @param value Value to set for the additional_warranties property.
        ## @return a void
        ## 
        def additional_warranties=(value)
            @additional_warranties = value
        end
        ## 
        ## Gets the baseWarranties property value. List of base warranty offers. This collection can contain a maximum of 100 elements.
        ## @return a warranty_offer
        ## 
        def base_warranties
            return @base_warranties
        end
        ## 
        ## Sets the baseWarranties property value. List of base warranty offers. This collection can contain a maximum of 100 elements.
        ## @param value Value to set for the base_warranties property.
        ## @return a void
        ## 
        def base_warranties=(value)
            @base_warranties = value
        end
        ## 
        ## Instantiates a new oemWarranty and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a oem_warranty
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OemWarranty.new
        end
        ## 
        ## Gets the deviceConfigurationUrl property value. Device configuration page URL
        ## @return a string
        ## 
        def device_configuration_url
            return @device_configuration_url
        end
        ## 
        ## Sets the deviceConfigurationUrl property value. Device configuration page URL
        ## @param value Value to set for the device_configuration_url property.
        ## @return a void
        ## 
        def device_configuration_url=(value)
            @device_configuration_url = value
        end
        ## 
        ## Gets the deviceWarrantyUrl property value. Device warranty page URL
        ## @return a string
        ## 
        def device_warranty_url
            return @device_warranty_url
        end
        ## 
        ## Sets the deviceWarrantyUrl property value. Device warranty page URL
        ## @param value Value to set for the device_warranty_url property.
        ## @return a void
        ## 
        def device_warranty_url=(value)
            @device_warranty_url = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "additionalWarranties" => lambda {|n| @additional_warranties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WarrantyOffer.create_from_discriminator_value(pn) }) },
                "baseWarranties" => lambda {|n| @base_warranties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WarrantyOffer.create_from_discriminator_value(pn) }) },
                "deviceConfigurationUrl" => lambda {|n| @device_configuration_url = n.get_string_value() },
                "deviceWarrantyUrl" => lambda {|n| @device_warranty_url = n.get_string_value() },
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_collection_of_object_values("additionalWarranties", @additional_warranties)
            writer.write_collection_of_object_values("baseWarranties", @base_warranties)
            writer.write_string_value("deviceConfigurationUrl", @device_configuration_url)
            writer.write_string_value("deviceWarrantyUrl", @device_warranty_url)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
