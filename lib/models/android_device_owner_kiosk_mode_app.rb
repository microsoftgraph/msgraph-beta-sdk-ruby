require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidDeviceOwnerKioskModeApp < MicrosoftGraphBeta::Models::AndroidDeviceOwnerKioskModeFolderItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Class name of application
            @class_name
            ## 
            # Package name of application
            @package
            ## 
            ## Gets the className property value. Class name of application
            ## @return a string
            ## 
            def class_name
                return @class_name
            end
            ## 
            ## Sets the className property value. Class name of application
            ## @param value Value to set for the class_name property.
            ## @return a void
            ## 
            def class_name=(value)
                @class_name = value
            end
            ## 
            ## Instantiates a new AndroidDeviceOwnerKioskModeApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidDeviceOwnerKioskModeApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_kiosk_mode_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceOwnerKioskModeApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "className" => lambda {|n| @class_name = n.get_string_value() },
                    "package" => lambda {|n| @package = n.get_string_value() },
                })
            end
            ## 
            ## Gets the package property value. Package name of application
            ## @return a string
            ## 
            def package
                return @package
            end
            ## 
            ## Sets the package property value. Package name of application
            ## @param value Value to set for the package property.
            ## @return a void
            ## 
            def package=(value)
                @package = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("className", @class_name)
                writer.write_string_value("package", @package)
            end
        end
    end
end
