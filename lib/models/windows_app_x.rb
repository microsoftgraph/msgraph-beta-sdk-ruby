require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsAppX < MicrosoftGraphBeta::Models::MobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains properties for Windows architecture.
            @applicable_architectures
            ## 
            # The Identity Name.
            @identity_name
            ## 
            # The Identity Publisher Hash.
            @identity_publisher_hash
            ## 
            # The Identity Resource Identifier.
            @identity_resource_identifier
            ## 
            # The identity version.
            @identity_version
            ## 
            # Whether or not the app is a bundle.
            @is_bundle
            ## 
            # The minimum operating system required for a Windows mobile app.
            @minimum_supported_operating_system
            ## 
            ## Gets the applicableArchitectures property value. Contains properties for Windows architecture.
            ## @return a windows_architecture
            ## 
            def applicable_architectures
                return @applicable_architectures
            end
            ## 
            ## Sets the applicableArchitectures property value. Contains properties for Windows architecture.
            ## @param value Value to set for the applicable_architectures property.
            ## @return a void
            ## 
            def applicable_architectures=(value)
                @applicable_architectures = value
            end
            ## 
            ## Instantiates a new WindowsAppX and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsAppX"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_app_x
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsAppX.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicableArchitectures" => lambda {|n| @applicable_architectures = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsArchitecture) },
                    "identityName" => lambda {|n| @identity_name = n.get_string_value() },
                    "identityPublisherHash" => lambda {|n| @identity_publisher_hash = n.get_string_value() },
                    "identityResourceIdentifier" => lambda {|n| @identity_resource_identifier = n.get_string_value() },
                    "identityVersion" => lambda {|n| @identity_version = n.get_string_value() },
                    "isBundle" => lambda {|n| @is_bundle = n.get_boolean_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identityName property value. The Identity Name.
            ## @return a string
            ## 
            def identity_name
                return @identity_name
            end
            ## 
            ## Sets the identityName property value. The Identity Name.
            ## @param value Value to set for the identity_name property.
            ## @return a void
            ## 
            def identity_name=(value)
                @identity_name = value
            end
            ## 
            ## Gets the identityPublisherHash property value. The Identity Publisher Hash.
            ## @return a string
            ## 
            def identity_publisher_hash
                return @identity_publisher_hash
            end
            ## 
            ## Sets the identityPublisherHash property value. The Identity Publisher Hash.
            ## @param value Value to set for the identity_publisher_hash property.
            ## @return a void
            ## 
            def identity_publisher_hash=(value)
                @identity_publisher_hash = value
            end
            ## 
            ## Gets the identityResourceIdentifier property value. The Identity Resource Identifier.
            ## @return a string
            ## 
            def identity_resource_identifier
                return @identity_resource_identifier
            end
            ## 
            ## Sets the identityResourceIdentifier property value. The Identity Resource Identifier.
            ## @param value Value to set for the identity_resource_identifier property.
            ## @return a void
            ## 
            def identity_resource_identifier=(value)
                @identity_resource_identifier = value
            end
            ## 
            ## Gets the identityVersion property value. The identity version.
            ## @return a string
            ## 
            def identity_version
                return @identity_version
            end
            ## 
            ## Sets the identityVersion property value. The identity version.
            ## @param value Value to set for the identity_version property.
            ## @return a void
            ## 
            def identity_version=(value)
                @identity_version = value
            end
            ## 
            ## Gets the isBundle property value. Whether or not the app is a bundle.
            ## @return a boolean
            ## 
            def is_bundle
                return @is_bundle
            end
            ## 
            ## Sets the isBundle property value. Whether or not the app is a bundle.
            ## @param value Value to set for the is_bundle property.
            ## @return a void
            ## 
            def is_bundle=(value)
                @is_bundle = value
            end
            ## 
            ## Gets the minimumSupportedOperatingSystem property value. The minimum operating system required for a Windows mobile app.
            ## @return a windows_minimum_operating_system
            ## 
            def minimum_supported_operating_system
                return @minimum_supported_operating_system
            end
            ## 
            ## Sets the minimumSupportedOperatingSystem property value. The minimum operating system required for a Windows mobile app.
            ## @param value Value to set for the minimum_supported_operating_system property.
            ## @return a void
            ## 
            def minimum_supported_operating_system=(value)
                @minimum_supported_operating_system = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("applicableArchitectures", @applicable_architectures)
                writer.write_string_value("identityName", @identity_name)
                writer.write_string_value("identityPublisherHash", @identity_publisher_hash)
                writer.write_string_value("identityResourceIdentifier", @identity_resource_identifier)
                writer.write_string_value("identityVersion", @identity_version)
                writer.write_boolean_value("isBundle", @is_bundle)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
            end
        end
    end
end
