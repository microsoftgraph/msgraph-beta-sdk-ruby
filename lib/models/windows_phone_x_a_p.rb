require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsPhoneXAP < MicrosoftGraphBeta::Models::MobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identity version.
            @identity_version
            ## 
            # The minimum operating system required for a Windows mobile app.
            @minimum_supported_operating_system
            ## 
            # The Product Identifier.
            @product_identifier
            ## 
            ## Instantiates a new WindowsPhoneXAP and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsPhoneXAP"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_phone_x_a_p
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsPhoneXAP.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "identityVersion" => lambda {|n| @identity_version = n.get_string_value() },
                    "minimumSupportedOperatingSystem" => lambda {|n| @minimum_supported_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsMinimumOperatingSystem.create_from_discriminator_value(pn) }) },
                    "productIdentifier" => lambda {|n| @product_identifier = n.get_string_value() },
                })
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
            ## Gets the productIdentifier property value. The Product Identifier.
            ## @return a string
            ## 
            def product_identifier
                return @product_identifier
            end
            ## 
            ## Sets the productIdentifier property value. The Product Identifier.
            ## @param value Value to set for the product_identifier property.
            ## @return a void
            ## 
            def product_identifier=(value)
                @product_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("identityVersion", @identity_version)
                writer.write_object_value("minimumSupportedOperatingSystem", @minimum_supported_operating_system)
                writer.write_string_value("productIdentifier", @product_identifier)
            end
        end
    end
end
