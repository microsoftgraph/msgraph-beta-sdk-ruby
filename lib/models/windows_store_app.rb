require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties and inherited properties for Windows Store apps.
        class WindowsStoreApp < MicrosoftGraphBeta::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Windows app store URL.
            @app_store_url
            ## 
            ## Gets the appStoreUrl property value. The Windows app store URL.
            ## @return a string
            ## 
            def app_store_url
                return @app_store_url
            end
            ## 
            ## Sets the appStoreUrl property value. The Windows app store URL.
            ## @param value Value to set for the appStoreUrl property.
            ## @return a void
            ## 
            def app_store_url=(value)
                @app_store_url = value
            end
            ## 
            ## Instantiates a new windowsStoreApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsStoreApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_store_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsStoreApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appStoreUrl" => lambda {|n| @app_store_url = n.get_string_value() },
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
                writer.write_string_value("appStoreUrl", @app_store_url)
            end
        end
    end
end
