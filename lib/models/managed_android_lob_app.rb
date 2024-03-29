require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties and inherited properties for Managed Android Line Of Business apps.
        class ManagedAndroidLobApp < MicrosoftGraphBeta::Models::ManagedMobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Identity Name. This property is being deprecated in 2302(February 2023).
            @identity_name
            ## 
            # The identity version. This property is being deprecated in 2302(February 2023).
            @identity_version
            ## 
            # The value for the minimum applicable operating system.
            @minimum_supported_operating_system
            ## 
            # The package identifier.
            @package_id
            ## 
            # Specifies which platform(s) can be targeted for a given Android LOB application or Managed Android LOB application.
            @targeted_platforms
            ## 
            # The version code of managed Android Line of Business (LoB) app.
            @version_code
            ## 
            # The version name of managed Android Line of Business (LoB) app.
            @version_name
            ## 
            ## Instantiates a new managedAndroidLobApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.managedAndroidLobApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_android_lob_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedAndroidLobApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "identityName" => lambda {|n| @identity_name = n.get_string_value() },
                    "identityVersion" => lambda {|n| @identity_version = n.get_string_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "packageId" => lambda {|n| @package_id = n.get_string_value() },
                    "targetedPlatforms" => lambda {|n| @targeted_platforms = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidTargetedPlatforms) },
                    "versionCode" => lambda {|n| @version_code = n.get_string_value() },
                    "versionName" => lambda {|n| @version_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the identityName property value. The Identity Name. This property is being deprecated in 2302(February 2023).
            ## @return a string
            ## 
            def identity_name
                return @identity_name
            end
            ## 
            ## Sets the identityName property value. The Identity Name. This property is being deprecated in 2302(February 2023).
            ## @param value Value to set for the identityName property.
            ## @return a void
            ## 
            def identity_name=(value)
                @identity_name = value
            end
            ## 
            ## Gets the identityVersion property value. The identity version. This property is being deprecated in 2302(February 2023).
            ## @return a string
            ## 
            def identity_version
                return @identity_version
            end
            ## 
            ## Sets the identityVersion property value. The identity version. This property is being deprecated in 2302(February 2023).
            ## @param value Value to set for the identityVersion property.
            ## @return a void
            ## 
            def identity_version=(value)
                @identity_version = value
            end
            ## 
            ## Gets the minimumSupportedOperatingSystem property value. The value for the minimum applicable operating system.
            ## @return a android_minimum_operating_system
            ## 
            def minimum_supported_operating_system
                return @minimum_supported_operating_system
            end
            ## 
            ## Sets the minimumSupportedOperatingSystem property value. The value for the minimum applicable operating system.
            ## @param value Value to set for the minimumSupportedOperatingSystem property.
            ## @return a void
            ## 
            def minimum_supported_operating_system=(value)
                @minimum_supported_operating_system = value
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
                writer.write_string_value("identityName", @identity_name)
                writer.write_string_value("identityVersion", @identity_version)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("packageId", @package_id)
                writer.write_enum_value("targetedPlatforms", @targeted_platforms)
                writer.write_string_value("versionCode", @version_code)
                writer.write_string_value("versionName", @version_name)
            end
            ## 
            ## Gets the targetedPlatforms property value. Specifies which platform(s) can be targeted for a given Android LOB application or Managed Android LOB application.
            ## @return a android_targeted_platforms
            ## 
            def targeted_platforms
                return @targeted_platforms
            end
            ## 
            ## Sets the targetedPlatforms property value. Specifies which platform(s) can be targeted for a given Android LOB application or Managed Android LOB application.
            ## @param value Value to set for the targetedPlatforms property.
            ## @return a void
            ## 
            def targeted_platforms=(value)
                @targeted_platforms = value
            end
            ## 
            ## Gets the versionCode property value. The version code of managed Android Line of Business (LoB) app.
            ## @return a string
            ## 
            def version_code
                return @version_code
            end
            ## 
            ## Sets the versionCode property value. The version code of managed Android Line of Business (LoB) app.
            ## @param value Value to set for the versionCode property.
            ## @return a void
            ## 
            def version_code=(value)
                @version_code = value
            end
            ## 
            ## Gets the versionName property value. The version name of managed Android Line of Business (LoB) app.
            ## @return a string
            ## 
            def version_name
                return @version_name
            end
            ## 
            ## Sets the versionName property value. The version name of managed Android Line of Business (LoB) app.
            ## @param value Value to set for the versionName property.
            ## @return a void
            ## 
            def version_name=(value)
                @version_name = value
            end
        end
    end
end
