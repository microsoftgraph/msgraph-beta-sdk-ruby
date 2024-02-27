require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A mobileApp that is based on a referenced application in a Win32CatalogApp repository
        class Win32CatalogApp < MicrosoftGraphBeta::Models::Win32LobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The mobileAppCatalogPackageId property references the mobileAppCatalogPackage entity which contains information about an application catalog package that can be deployed to Intune-managed devices
            @mobile_app_catalog_package_id
            ## 
            ## Instantiates a new Win32CatalogApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.win32CatalogApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a win32_catalog_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32CatalogApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mobileAppCatalogPackageId" => lambda {|n| @mobile_app_catalog_package_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the mobileAppCatalogPackageId property value. The mobileAppCatalogPackageId property references the mobileAppCatalogPackage entity which contains information about an application catalog package that can be deployed to Intune-managed devices
            ## @return a string
            ## 
            def mobile_app_catalog_package_id
                return @mobile_app_catalog_package_id
            end
            ## 
            ## Sets the mobileAppCatalogPackageId property value. The mobileAppCatalogPackageId property references the mobileAppCatalogPackage entity which contains information about an application catalog package that can be deployed to Intune-managed devices
            ## @param value Value to set for the mobileAppCatalogPackageId property.
            ## @return a void
            ## 
            def mobile_app_catalog_package_id=(value)
                @mobile_app_catalog_package_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("mobileAppCatalogPackageId", @mobile_app_catalog_package_id)
            end
        end
    end
end
