require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Microsoft Store for Business Apps. This class does not support Create, Delete, or Update.
        class MicrosoftStoreForBusinessApp < MicrosoftGraphBeta::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of contained apps in a mobileApp acting as a package.
            @contained_apps
            ## 
            # The licenseType property
            @license_type
            ## 
            # The supported License Type.
            @licensing_type
            ## 
            # The app package identifier
            @package_identity_name
            ## 
            # The app product key
            @product_key
            ## 
            # The total number of Microsoft Store for Business licenses.
            @total_license_count
            ## 
            # The number of Microsoft Store for Business licenses in use.
            @used_license_count
            ## 
            ## Instantiates a new microsoftStoreForBusinessApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.microsoftStoreForBusinessApp"
            end
            ## 
            ## Gets the containedApps property value. The collection of contained apps in a mobileApp acting as a package.
            ## @return a mobile_contained_app
            ## 
            def contained_apps
                return @contained_apps
            end
            ## 
            ## Sets the containedApps property value. The collection of contained apps in a mobileApp acting as a package.
            ## @param value Value to set for the containedApps property.
            ## @return a void
            ## 
            def contained_apps=(value)
                @contained_apps = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_store_for_business_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftStoreForBusinessApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "containedApps" => lambda {|n| @contained_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileContainedApp.create_from_discriminator_value(pn) }) },
                    "licenseType" => lambda {|n| @license_type = n.get_enum_value(MicrosoftGraphBeta::Models::MicrosoftStoreForBusinessLicenseType) },
                    "licensingType" => lambda {|n| @licensing_type = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VppLicensingType.create_from_discriminator_value(pn) }) },
                    "packageIdentityName" => lambda {|n| @package_identity_name = n.get_string_value() },
                    "productKey" => lambda {|n| @product_key = n.get_string_value() },
                    "totalLicenseCount" => lambda {|n| @total_license_count = n.get_number_value() },
                    "usedLicenseCount" => lambda {|n| @used_license_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the licenseType property value. The licenseType property
            ## @return a microsoft_store_for_business_license_type
            ## 
            def license_type
                return @license_type
            end
            ## 
            ## Sets the licenseType property value. The licenseType property
            ## @param value Value to set for the licenseType property.
            ## @return a void
            ## 
            def license_type=(value)
                @license_type = value
            end
            ## 
            ## Gets the licensingType property value. The supported License Type.
            ## @return a vpp_licensing_type
            ## 
            def licensing_type
                return @licensing_type
            end
            ## 
            ## Sets the licensingType property value. The supported License Type.
            ## @param value Value to set for the licensingType property.
            ## @return a void
            ## 
            def licensing_type=(value)
                @licensing_type = value
            end
            ## 
            ## Gets the packageIdentityName property value. The app package identifier
            ## @return a string
            ## 
            def package_identity_name
                return @package_identity_name
            end
            ## 
            ## Sets the packageIdentityName property value. The app package identifier
            ## @param value Value to set for the packageIdentityName property.
            ## @return a void
            ## 
            def package_identity_name=(value)
                @package_identity_name = value
            end
            ## 
            ## Gets the productKey property value. The app product key
            ## @return a string
            ## 
            def product_key
                return @product_key
            end
            ## 
            ## Sets the productKey property value. The app product key
            ## @param value Value to set for the productKey property.
            ## @return a void
            ## 
            def product_key=(value)
                @product_key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("containedApps", @contained_apps)
                writer.write_enum_value("licenseType", @license_type)
                writer.write_object_value("licensingType", @licensing_type)
                writer.write_string_value("packageIdentityName", @package_identity_name)
                writer.write_string_value("productKey", @product_key)
                writer.write_number_value("totalLicenseCount", @total_license_count)
                writer.write_number_value("usedLicenseCount", @used_license_count)
            end
            ## 
            ## Gets the totalLicenseCount property value. The total number of Microsoft Store for Business licenses.
            ## @return a integer
            ## 
            def total_license_count
                return @total_license_count
            end
            ## 
            ## Sets the totalLicenseCount property value. The total number of Microsoft Store for Business licenses.
            ## @param value Value to set for the totalLicenseCount property.
            ## @return a void
            ## 
            def total_license_count=(value)
                @total_license_count = value
            end
            ## 
            ## Gets the usedLicenseCount property value. The number of Microsoft Store for Business licenses in use.
            ## @return a integer
            ## 
            def used_license_count
                return @used_license_count
            end
            ## 
            ## Sets the usedLicenseCount property value. The number of Microsoft Store for Business licenses in use.
            ## @param value Value to set for the usedLicenseCount property.
            ## @return a void
            ## 
            def used_license_count=(value)
                @used_license_count = value
            end
        end
    end
end
