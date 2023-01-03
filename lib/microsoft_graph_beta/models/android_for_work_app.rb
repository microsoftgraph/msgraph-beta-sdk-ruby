require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidForWorkApp < MicrosoftGraphBeta::Models::MobileApp
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Identity Name.
        @app_identifier
        ## 
        # The Play for Work Store app URL.
        @app_store_url
        ## 
        # The package identifier.
        @package_id
        ## 
        # The total number of VPP licenses.
        @total_license_count
        ## 
        # The number of VPP licenses in use.
        @used_license_count
        ## 
        ## Gets the appIdentifier property value. The Identity Name.
        ## @return a string
        ## 
        def app_identifier
            return @app_identifier
        end
        ## 
        ## Sets the appIdentifier property value. The Identity Name.
        ## @param value Value to set for the appIdentifier property.
        ## @return a void
        ## 
        def app_identifier=(value)
            @app_identifier = value
        end
        ## 
        ## Gets the appStoreUrl property value. The Play for Work Store app URL.
        ## @return a string
        ## 
        def app_store_url
            return @app_store_url
        end
        ## 
        ## Sets the appStoreUrl property value. The Play for Work Store app URL.
        ## @param value Value to set for the appStoreUrl property.
        ## @return a void
        ## 
        def app_store_url=(value)
            @app_store_url = value
        end
        ## 
        ## Instantiates a new AndroidForWorkApp and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidForWorkApp"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_for_work_app
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidForWorkApp.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appIdentifier" => lambda {|n| @app_identifier = n.get_string_value() },
                "appStoreUrl" => lambda {|n| @app_store_url = n.get_string_value() },
                "packageId" => lambda {|n| @package_id = n.get_string_value() },
                "totalLicenseCount" => lambda {|n| @total_license_count = n.get_number_value() },
                "usedLicenseCount" => lambda {|n| @used_license_count = n.get_number_value() },
            })
        end
        ## 
        ## Gets the packageId property value. The package identifier.
        ## @return a string
        ## 
        def package_id
            return @package_id
        end
        ## 
        ## Sets the packageId property value. The package identifier.
        ## @param value Value to set for the packageId property.
        ## @return a void
        ## 
        def package_id=(value)
            @package_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("appIdentifier", @app_identifier)
            writer.write_string_value("appStoreUrl", @app_store_url)
            writer.write_string_value("packageId", @package_id)
            writer.write_number_value("totalLicenseCount", @total_license_count)
            writer.write_number_value("usedLicenseCount", @used_license_count)
        end
        ## 
        ## Gets the totalLicenseCount property value. The total number of VPP licenses.
        ## @return a integer
        ## 
        def total_license_count
            return @total_license_count
        end
        ## 
        ## Sets the totalLicenseCount property value. The total number of VPP licenses.
        ## @param value Value to set for the totalLicenseCount property.
        ## @return a void
        ## 
        def total_license_count=(value)
            @total_license_count = value
        end
        ## 
        ## Gets the usedLicenseCount property value. The number of VPP licenses in use.
        ## @return a integer
        ## 
        def used_license_count
            return @used_license_count
        end
        ## 
        ## Sets the usedLicenseCount property value. The number of VPP licenses in use.
        ## @param value Value to set for the usedLicenseCount property.
        ## @return a void
        ## 
        def used_license_count=(value)
            @used_license_count = value
        end
    end
end
