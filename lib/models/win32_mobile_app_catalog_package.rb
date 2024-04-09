require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # win32MobileAppCatalogPackage extends mobileAppCatalogPackage by providing information necessary for the creation of a win32CatalogApp instance.
        class Win32MobileAppCatalogPackage < MicrosoftGraphBeta::Models::MobileAppCatalogPackage
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains properties for Windows architecture.
            @applicable_architectures
            ## 
            # The product branch name, which is a specific subset of product functionality as defined by the publisher (example: "Fabrikam for Business (x64)"). A specific product will have one or more branchDisplayNames. Read-only. Supports $filter, $search, $select. This property is read-only.
            @branch_display_name
            ## 
            # One or more locale(s) supported by the branch. Value is a two-letter ISO 639 language tags with optional two-letter subtags (example: en-US, ko, de, de-DE), or mul to indicate multi-language. Read-only. This property is read-only.
            @locales
            ## 
            # Indicates whether the package is capable to auto-update to latest when software/application updates are available. When TRUE, it indicates it is an auto-updating application. When FALSE, it indicates that it is not an auto-updating application. This property is read-only.
            @package_auto_update_capable
            ## 
            ## Gets the applicableArchitectures property value. Contains properties for Windows architecture.
            ## @return a windows_architecture
            ## 
            def applicable_architectures
                return @applicable_architectures
            end
            ## 
            ## Sets the applicableArchitectures property value. Contains properties for Windows architecture.
            ## @param value Value to set for the applicableArchitectures property.
            ## @return a void
            ## 
            def applicable_architectures=(value)
                @applicable_architectures = value
            end
            ## 
            ## Gets the branchDisplayName property value. The product branch name, which is a specific subset of product functionality as defined by the publisher (example: "Fabrikam for Business (x64)"). A specific product will have one or more branchDisplayNames. Read-only. Supports $filter, $search, $select. This property is read-only.
            ## @return a string
            ## 
            def branch_display_name
                return @branch_display_name
            end
            ## 
            ## Sets the branchDisplayName property value. The product branch name, which is a specific subset of product functionality as defined by the publisher (example: "Fabrikam for Business (x64)"). A specific product will have one or more branchDisplayNames. Read-only. Supports $filter, $search, $select. This property is read-only.
            ## @param value Value to set for the branchDisplayName property.
            ## @return a void
            ## 
            def branch_display_name=(value)
                @branch_display_name = value
            end
            ## 
            ## Instantiates a new Win32MobileAppCatalogPackage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32MobileAppCatalogPackage"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a win32_mobile_app_catalog_package
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32MobileAppCatalogPackage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicableArchitectures" => lambda {|n| @applicable_architectures = n.get_enum_values(MicrosoftGraphBeta::Models::WindowsArchitecture) },
                    "branchDisplayName" => lambda {|n| @branch_display_name = n.get_string_value() },
                    "locales" => lambda {|n| @locales = n.get_collection_of_primitive_values(String) },
                    "packageAutoUpdateCapable" => lambda {|n| @package_auto_update_capable = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the locales property value. One or more locale(s) supported by the branch. Value is a two-letter ISO 639 language tags with optional two-letter subtags (example: en-US, ko, de, de-DE), or mul to indicate multi-language. Read-only. This property is read-only.
            ## @return a string
            ## 
            def locales
                return @locales
            end
            ## 
            ## Sets the locales property value. One or more locale(s) supported by the branch. Value is a two-letter ISO 639 language tags with optional two-letter subtags (example: en-US, ko, de, de-DE), or mul to indicate multi-language. Read-only. This property is read-only.
            ## @param value Value to set for the locales property.
            ## @return a void
            ## 
            def locales=(value)
                @locales = value
            end
            ## 
            ## Gets the packageAutoUpdateCapable property value. Indicates whether the package is capable to auto-update to latest when software/application updates are available. When TRUE, it indicates it is an auto-updating application. When FALSE, it indicates that it is not an auto-updating application. This property is read-only.
            ## @return a boolean
            ## 
            def package_auto_update_capable
                return @package_auto_update_capable
            end
            ## 
            ## Sets the packageAutoUpdateCapable property value. Indicates whether the package is capable to auto-update to latest when software/application updates are available. When TRUE, it indicates it is an auto-updating application. When FALSE, it indicates that it is not an auto-updating application. This property is read-only.
            ## @param value Value to set for the packageAutoUpdateCapable property.
            ## @return a void
            ## 
            def package_auto_update_capable=(value)
                @package_auto_update_capable = value
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
            end
        end
    end
end
