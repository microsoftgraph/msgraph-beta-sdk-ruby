require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for the package information for a Windows line of business app. Used as property within windowsPhone81AppXBundle object, which is also being deprecated. This complex type will be deprecated in February 2023.
        class WindowsPackageInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Contains properties for Windows architecture.
            @applicable_architecture
            ## 
            # The Display Name.
            @display_name
            ## 
            # The Identity Name.
            @identity_name
            ## 
            # The Identity Publisher.
            @identity_publisher
            ## 
            # The Identity Resource Identifier.
            @identity_resource_identifier
            ## 
            # The Identity Version.
            @identity_version
            ## 
            # The value for the minimum applicable operating system.
            @minimum_supported_operating_system
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the applicableArchitecture property value. Contains properties for Windows architecture.
            ## @return a windows_architecture
            ## 
            def applicable_architecture
                return @applicable_architecture
            end
            ## 
            ## Sets the applicableArchitecture property value. Contains properties for Windows architecture.
            ## @param value Value to set for the applicableArchitecture property.
            ## @return a void
            ## 
            def applicable_architecture=(value)
                @applicable_architecture = value
            end
            ## 
            ## Instantiates a new windowsPackageInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_package_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsPackageInformation.new
            end
            ## 
            ## Gets the displayName property value. The Display Name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The Display Name.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicableArchitecture" => lambda {|n| @applicable_architecture = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsArchitecture) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "identityName" => lambda {|n| @identity_name = n.get_string_value() },
                    "identityPublisher" => lambda {|n| @identity_publisher = n.get_string_value() },
                    "identityResourceIdentifier" => lambda {|n| @identity_resource_identifier = n.get_string_value() },
                    "identityVersion" => lambda {|n| @identity_version = n.get_string_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
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
            ## @param value Value to set for the identityName property.
            ## @return a void
            ## 
            def identity_name=(value)
                @identity_name = value
            end
            ## 
            ## Gets the identityPublisher property value. The Identity Publisher.
            ## @return a string
            ## 
            def identity_publisher
                return @identity_publisher
            end
            ## 
            ## Sets the identityPublisher property value. The Identity Publisher.
            ## @param value Value to set for the identityPublisher property.
            ## @return a void
            ## 
            def identity_publisher=(value)
                @identity_publisher = value
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
            ## @param value Value to set for the identityResourceIdentifier property.
            ## @return a void
            ## 
            def identity_resource_identifier=(value)
                @identity_resource_identifier = value
            end
            ## 
            ## Gets the identityVersion property value. The Identity Version.
            ## @return a string
            ## 
            def identity_version
                return @identity_version
            end
            ## 
            ## Sets the identityVersion property value. The Identity Version.
            ## @param value Value to set for the identityVersion property.
            ## @return a void
            ## 
            def identity_version=(value)
                @identity_version = value
            end
            ## 
            ## Gets the minimumSupportedOperatingSystem property value. The value for the minimum applicable operating system.
            ## @return a windows_minimum_operating_system
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
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
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
                writer.write_enum_value("applicableArchitecture", @applicable_architecture)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("identityName", @identity_name)
                writer.write_string_value("identityPublisher", @identity_publisher)
                writer.write_string_value("identityResourceIdentifier", @identity_resource_identifier)
                writer.write_string_value("identityVersion", @identity_version)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
