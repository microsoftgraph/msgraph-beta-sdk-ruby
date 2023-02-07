require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsPhone81AppXBundle < MicrosoftGraphBeta::Models::WindowsPhone81AppX
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The list of AppX Package Information.
        @app_x_package_information_list
        ## 
        ## Gets the appXPackageInformationList property value. The list of AppX Package Information.
        ## @return a windows_package_information
        ## 
        def app_x_package_information_list
            return @app_x_package_information_list
        end
        ## 
        ## Sets the appXPackageInformationList property value. The list of AppX Package Information.
        ## @param value Value to set for the app_x_package_information_list property.
        ## @return a void
        ## 
        def app_x_package_information_list=(value)
            @app_x_package_information_list = value
        end
        ## 
        ## Instantiates a new WindowsPhone81AppXBundle and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsPhone81AppXBundle"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_phone81_app_x_bundle
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsPhone81AppXBundle.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appXPackageInformationList" => lambda {|n| @app_x_package_information_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsPackageInformation.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("appXPackageInformationList", @app_x_package_information_list)
        end
    end
end
