require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # mobileAppCatalogPackage is an abstract type that application catalog package entities derive from. A mobileAppCatalogPackage entity contains information about an application catalog package that can be deployed to Intune-managed devices.
        class MobileAppCatalogPackage < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the product (example: "Fabrikam for Business"). Returned by default. Read-only. Supports: $filter, $search, $select. This property is read-only.
            @product_display_name
            ## 
            # The identifier of a specific product irrespective of version, or other attributes. Read-only. Returned by default. Supports: $filter, $select. This property is read-only.
            @product_id
            ## 
            # The name of the application catalog package publisher (example: "Fabrikam"). Returned by default. Read-only. Supports $filter, $search, $select. This property is read-only.
            @publisher_display_name
            ## 
            # The name of the product version (example: "1.2203.156"). Returned by default. Read-only. Supports: $filter, $search, $select. This property is read-only.
            @version_display_name
            ## 
            ## Instantiates a new MobileAppCatalogPackage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_catalog_package
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.win32MobileAppCatalogPackage"
                            return Win32MobileAppCatalogPackage.new
                    end
                end
                return MobileAppCatalogPackage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "productDisplayName" => lambda {|n| @product_display_name = n.get_string_value() },
                    "productId" => lambda {|n| @product_id = n.get_string_value() },
                    "publisherDisplayName" => lambda {|n| @publisher_display_name = n.get_string_value() },
                    "versionDisplayName" => lambda {|n| @version_display_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the productDisplayName property value. The name of the product (example: "Fabrikam for Business"). Returned by default. Read-only. Supports: $filter, $search, $select. This property is read-only.
            ## @return a string
            ## 
            def product_display_name
                return @product_display_name
            end
            ## 
            ## Sets the productDisplayName property value. The name of the product (example: "Fabrikam for Business"). Returned by default. Read-only. Supports: $filter, $search, $select. This property is read-only.
            ## @param value Value to set for the productDisplayName property.
            ## @return a void
            ## 
            def product_display_name=(value)
                @product_display_name = value
            end
            ## 
            ## Gets the productId property value. The identifier of a specific product irrespective of version, or other attributes. Read-only. Returned by default. Supports: $filter, $select. This property is read-only.
            ## @return a string
            ## 
            def product_id
                return @product_id
            end
            ## 
            ## Sets the productId property value. The identifier of a specific product irrespective of version, or other attributes. Read-only. Returned by default. Supports: $filter, $select. This property is read-only.
            ## @param value Value to set for the productId property.
            ## @return a void
            ## 
            def product_id=(value)
                @product_id = value
            end
            ## 
            ## Gets the publisherDisplayName property value. The name of the application catalog package publisher (example: "Fabrikam"). Returned by default. Read-only. Supports $filter, $search, $select. This property is read-only.
            ## @return a string
            ## 
            def publisher_display_name
                return @publisher_display_name
            end
            ## 
            ## Sets the publisherDisplayName property value. The name of the application catalog package publisher (example: "Fabrikam"). Returned by default. Read-only. Supports $filter, $search, $select. This property is read-only.
            ## @param value Value to set for the publisherDisplayName property.
            ## @return a void
            ## 
            def publisher_display_name=(value)
                @publisher_display_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
            end
            ## 
            ## Gets the versionDisplayName property value. The name of the product version (example: "1.2203.156"). Returned by default. Read-only. Supports: $filter, $search, $select. This property is read-only.
            ## @return a string
            ## 
            def version_display_name
                return @version_display_name
            end
            ## 
            ## Sets the versionDisplayName property value. The name of the product version (example: "1.2203.156"). Returned by default. Read-only. Supports: $filter, $search, $select. This property is read-only.
            ## @param value Value to set for the versionDisplayName property.
            ## @return a void
            ## 
            def version_display_name=(value)
                @version_display_name = value
            end
        end
    end
end
