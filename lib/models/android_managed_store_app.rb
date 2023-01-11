require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidManagedStoreApp < MicrosoftGraphBeta::Models::MobileApp
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Identity Name.
        @app_identifier
        ## 
        # The Play for Work Store app URL.
        @app_store_url
        ## 
        # The tracks that are visible to this enterprise.
        @app_tracks
        ## 
        # Indicates whether the app is only available to a given enterprise's users.
        @is_private
        ## 
        # Indicates whether the app is a preinstalled system app.
        @is_system_app
        ## 
        # The package identifier.
        @package_id
        ## 
        # Whether this app supports OEMConfig policy.
        @supports_oem_config
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
        ## Gets the appTracks property value. The tracks that are visible to this enterprise.
        ## @return a android_managed_store_app_track
        ## 
        def app_tracks
            return @app_tracks
        end
        ## 
        ## Sets the appTracks property value. The tracks that are visible to this enterprise.
        ## @param value Value to set for the appTracks property.
        ## @return a void
        ## 
        def app_tracks=(value)
            @app_tracks = value
        end
        ## 
        ## Instantiates a new AndroidManagedStoreApp and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidManagedStoreApp"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_managed_store_app
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.androidManagedStoreWebApp"
                        return AndroidManagedStoreWebApp.new
                end
            end
            return AndroidManagedStoreApp.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appIdentifier" => lambda {|n| @app_identifier = n.get_string_value() },
                "appStoreUrl" => lambda {|n| @app_store_url = n.get_string_value() },
                "appTracks" => lambda {|n| @app_tracks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidManagedStoreAppTrack.create_from_discriminator_value(pn) }) },
                "isPrivate" => lambda {|n| @is_private = n.get_boolean_value() },
                "isSystemApp" => lambda {|n| @is_system_app = n.get_boolean_value() },
                "packageId" => lambda {|n| @package_id = n.get_string_value() },
                "supportsOemConfig" => lambda {|n| @supports_oem_config = n.get_boolean_value() },
                "totalLicenseCount" => lambda {|n| @total_license_count = n.get_number_value() },
                "usedLicenseCount" => lambda {|n| @used_license_count = n.get_number_value() },
            })
        end
        ## 
        ## Gets the isPrivate property value. Indicates whether the app is only available to a given enterprise's users.
        ## @return a boolean
        ## 
        def is_private
            return @is_private
        end
        ## 
        ## Sets the isPrivate property value. Indicates whether the app is only available to a given enterprise's users.
        ## @param value Value to set for the isPrivate property.
        ## @return a void
        ## 
        def is_private=(value)
            @is_private = value
        end
        ## 
        ## Gets the isSystemApp property value. Indicates whether the app is a preinstalled system app.
        ## @return a boolean
        ## 
        def is_system_app
            return @is_system_app
        end
        ## 
        ## Sets the isSystemApp property value. Indicates whether the app is a preinstalled system app.
        ## @param value Value to set for the isSystemApp property.
        ## @return a void
        ## 
        def is_system_app=(value)
            @is_system_app = value
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
            writer.write_collection_of_object_values("appTracks", @app_tracks)
            writer.write_boolean_value("isPrivate", @is_private)
            writer.write_boolean_value("isSystemApp", @is_system_app)
            writer.write_string_value("packageId", @package_id)
            writer.write_boolean_value("supportsOemConfig", @supports_oem_config)
            writer.write_number_value("totalLicenseCount", @total_license_count)
            writer.write_number_value("usedLicenseCount", @used_license_count)
        end
        ## 
        ## Gets the supportsOemConfig property value. Whether this app supports OEMConfig policy.
        ## @return a boolean
        ## 
        def supports_oem_config
            return @supports_oem_config
        end
        ## 
        ## Sets the supportsOemConfig property value. Whether this app supports OEMConfig policy.
        ## @param value Value to set for the supportsOemConfig property.
        ## @return a void
        ## 
        def supports_oem_config=(value)
            @supports_oem_config = value
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
