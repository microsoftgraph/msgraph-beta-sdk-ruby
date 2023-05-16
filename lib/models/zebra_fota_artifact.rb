require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ZebraFotaArtifact < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The version of the Board Support Package (BSP. E.g.: 01.18.02.00)
            @board_support_package_version
            ## 
            # Artifact description. (e.g.: `LifeGuard Update 98 (released 24-September-2021)
            @description
            ## 
            # Applicable device model (e.g.: TC8300)
            @device_model
            ## 
            # Artifact OS version (e.g.: 8.1.0)
            @os_version
            ## 
            # Artifact patch version (e.g.: U00)
            @patch_version
            ## 
            # Artifact release notes URL (e.g.: https://www.zebra.com/<filename.pdf>)
            @release_notes_url
            ## 
            ## Gets the boardSupportPackageVersion property value. The version of the Board Support Package (BSP. E.g.: 01.18.02.00)
            ## @return a string
            ## 
            def board_support_package_version
                return @board_support_package_version
            end
            ## 
            ## Sets the boardSupportPackageVersion property value. The version of the Board Support Package (BSP. E.g.: 01.18.02.00)
            ## @param value Value to set for the board_support_package_version property.
            ## @return a void
            ## 
            def board_support_package_version=(value)
                @board_support_package_version = value
            end
            ## 
            ## Instantiates a new ZebraFotaArtifact and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a zebra_fota_artifact
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ZebraFotaArtifact.new
            end
            ## 
            ## Gets the description property value. Artifact description. (e.g.: `LifeGuard Update 98 (released 24-September-2021)
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Artifact description. (e.g.: `LifeGuard Update 98 (released 24-September-2021)
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceModel property value. Applicable device model (e.g.: TC8300)
            ## @return a string
            ## 
            def device_model
                return @device_model
            end
            ## 
            ## Sets the deviceModel property value. Applicable device model (e.g.: TC8300)
            ## @param value Value to set for the device_model property.
            ## @return a void
            ## 
            def device_model=(value)
                @device_model = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "boardSupportPackageVersion" => lambda {|n| @board_support_package_version = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "patchVersion" => lambda {|n| @patch_version = n.get_string_value() },
                    "releaseNotesUrl" => lambda {|n| @release_notes_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the osVersion property value. Artifact OS version (e.g.: 8.1.0)
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. Artifact OS version (e.g.: 8.1.0)
            ## @param value Value to set for the os_version property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the patchVersion property value. Artifact patch version (e.g.: U00)
            ## @return a string
            ## 
            def patch_version
                return @patch_version
            end
            ## 
            ## Sets the patchVersion property value. Artifact patch version (e.g.: U00)
            ## @param value Value to set for the patch_version property.
            ## @return a void
            ## 
            def patch_version=(value)
                @patch_version = value
            end
            ## 
            ## Gets the releaseNotesUrl property value. Artifact release notes URL (e.g.: https://www.zebra.com/<filename.pdf>)
            ## @return a string
            ## 
            def release_notes_url
                return @release_notes_url
            end
            ## 
            ## Sets the releaseNotesUrl property value. Artifact release notes URL (e.g.: https://www.zebra.com/<filename.pdf>)
            ## @param value Value to set for the release_notes_url property.
            ## @return a void
            ## 
            def release_notes_url=(value)
                @release_notes_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("boardSupportPackageVersion", @board_support_package_version)
                writer.write_string_value("description", @description)
                writer.write_string_value("deviceModel", @device_model)
                writer.write_string_value("osVersion", @os_version)
                writer.write_string_value("patchVersion", @patch_version)
                writer.write_string_value("releaseNotesUrl", @release_notes_url)
            end
        end
    end
end
