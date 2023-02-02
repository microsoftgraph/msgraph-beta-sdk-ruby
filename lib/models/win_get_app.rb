require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WinGetApp < MicrosoftGraphBeta::Models::MobileApp
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The install experience settings associated with this application, which are used to ensure the desired install experiences on the target device are taken into account. This includes the account type (System or User) that actions should be run as on target devices. Required at creation time.
        @install_experience
        ## 
        # Hash of package metadata properties used to validate that the application matches the metadata in the source repository.
        @manifest_hash
        ## 
        # The PackageIdentifier from the WinGet source repository REST API. This also maps to the Id when using the WinGet client command line application. Required at creation time, cannot be modified on existing objects.
        @package_identifier
        ## 
        ## Instantiates a new WinGetApp and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.winGetApp"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a win_get_app
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WinGetApp.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "installExperience" => lambda {|n| @install_experience = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WinGetAppInstallExperience.create_from_discriminator_value(pn) }) },
                "manifestHash" => lambda {|n| @manifest_hash = n.get_string_value() },
                "packageIdentifier" => lambda {|n| @package_identifier = n.get_string_value() },
            })
        end
        ## 
        ## Gets the installExperience property value. The install experience settings associated with this application, which are used to ensure the desired install experiences on the target device are taken into account. This includes the account type (System or User) that actions should be run as on target devices. Required at creation time.
        ## @return a win_get_app_install_experience
        ## 
        def install_experience
            return @install_experience
        end
        ## 
        ## Sets the installExperience property value. The install experience settings associated with this application, which are used to ensure the desired install experiences on the target device are taken into account. This includes the account type (System or User) that actions should be run as on target devices. Required at creation time.
        ## @param value Value to set for the install_experience property.
        ## @return a void
        ## 
        def install_experience=(value)
            @install_experience = value
        end
        ## 
        ## Gets the manifestHash property value. Hash of package metadata properties used to validate that the application matches the metadata in the source repository.
        ## @return a string
        ## 
        def manifest_hash
            return @manifest_hash
        end
        ## 
        ## Sets the manifestHash property value. Hash of package metadata properties used to validate that the application matches the metadata in the source repository.
        ## @param value Value to set for the manifest_hash property.
        ## @return a void
        ## 
        def manifest_hash=(value)
            @manifest_hash = value
        end
        ## 
        ## Gets the packageIdentifier property value. The PackageIdentifier from the WinGet source repository REST API. This also maps to the Id when using the WinGet client command line application. Required at creation time, cannot be modified on existing objects.
        ## @return a string
        ## 
        def package_identifier
            return @package_identifier
        end
        ## 
        ## Sets the packageIdentifier property value. The PackageIdentifier from the WinGet source repository REST API. This also maps to the Id when using the WinGet client command line application. Required at creation time, cannot be modified on existing objects.
        ## @param value Value to set for the package_identifier property.
        ## @return a void
        ## 
        def package_identifier=(value)
            @package_identifier = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("installExperience", @install_experience)
            writer.write_string_value("manifestHash", @manifest_hash)
            writer.write_string_value("packageIdentifier", @package_identifier)
        end
    end
end
