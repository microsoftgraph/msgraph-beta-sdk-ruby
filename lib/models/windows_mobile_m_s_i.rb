require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties and inherited properties for Windows Mobile MSI Line Of Business apps.
        class WindowsMobileMSI < MicrosoftGraphBeta::Models::MobileLobApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The command line.
            @command_line
            ## 
            # The identity version.
            @identity_version
            ## 
            # A boolean to control whether the app's version will be used to detect the app after it is installed on a device. Set this to true for Windows Mobile MSI Line of Business (LoB) apps that use a self update feature.
            @ignore_version_detection
            ## 
            # The product code.
            @product_code
            ## 
            # The product version of Windows Mobile MSI Line of Business (LoB) app.
            @product_version
            ## 
            # Indicates whether to install a dual-mode MSI in the device context. If true, app will be installed for all users. If false, app will be installed per-user. If null, service will use the MSI package's default install context. In case of dual-mode MSI, this default will be per-user.  Cannot be set for non-dual-mode apps.  Cannot be changed after initial creation of the application.
            @use_device_context
            ## 
            ## Gets the commandLine property value. The command line.
            ## @return a string
            ## 
            def command_line
                return @command_line
            end
            ## 
            ## Sets the commandLine property value. The command line.
            ## @param value Value to set for the commandLine property.
            ## @return a void
            ## 
            def command_line=(value)
                @command_line = value
            end
            ## 
            ## Instantiates a new windowsMobileMSI and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsMobileMSI"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_mobile_m_s_i
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsMobileMSI.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "commandLine" => lambda {|n| @command_line = n.get_string_value() },
                    "identityVersion" => lambda {|n| @identity_version = n.get_string_value() },
                    "ignoreVersionDetection" => lambda {|n| @ignore_version_detection = n.get_boolean_value() },
                    "productCode" => lambda {|n| @product_code = n.get_string_value() },
                    "productVersion" => lambda {|n| @product_version = n.get_string_value() },
                    "useDeviceContext" => lambda {|n| @use_device_context = n.get_boolean_value() },
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
            ## @param value Value to set for the identityVersion property.
            ## @return a void
            ## 
            def identity_version=(value)
                @identity_version = value
            end
            ## 
            ## Gets the ignoreVersionDetection property value. A boolean to control whether the app's version will be used to detect the app after it is installed on a device. Set this to true for Windows Mobile MSI Line of Business (LoB) apps that use a self update feature.
            ## @return a boolean
            ## 
            def ignore_version_detection
                return @ignore_version_detection
            end
            ## 
            ## Sets the ignoreVersionDetection property value. A boolean to control whether the app's version will be used to detect the app after it is installed on a device. Set this to true for Windows Mobile MSI Line of Business (LoB) apps that use a self update feature.
            ## @param value Value to set for the ignoreVersionDetection property.
            ## @return a void
            ## 
            def ignore_version_detection=(value)
                @ignore_version_detection = value
            end
            ## 
            ## Gets the productCode property value. The product code.
            ## @return a string
            ## 
            def product_code
                return @product_code
            end
            ## 
            ## Sets the productCode property value. The product code.
            ## @param value Value to set for the productCode property.
            ## @return a void
            ## 
            def product_code=(value)
                @product_code = value
            end
            ## 
            ## Gets the productVersion property value. The product version of Windows Mobile MSI Line of Business (LoB) app.
            ## @return a string
            ## 
            def product_version
                return @product_version
            end
            ## 
            ## Sets the productVersion property value. The product version of Windows Mobile MSI Line of Business (LoB) app.
            ## @param value Value to set for the productVersion property.
            ## @return a void
            ## 
            def product_version=(value)
                @product_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("commandLine", @command_line)
                writer.write_string_value("identityVersion", @identity_version)
                writer.write_boolean_value("ignoreVersionDetection", @ignore_version_detection)
                writer.write_string_value("productCode", @product_code)
                writer.write_string_value("productVersion", @product_version)
                writer.write_boolean_value("useDeviceContext", @use_device_context)
            end
            ## 
            ## Gets the useDeviceContext property value. Indicates whether to install a dual-mode MSI in the device context. If true, app will be installed for all users. If false, app will be installed per-user. If null, service will use the MSI package's default install context. In case of dual-mode MSI, this default will be per-user.  Cannot be set for non-dual-mode apps.  Cannot be changed after initial creation of the application.
            ## @return a boolean
            ## 
            def use_device_context
                return @use_device_context
            end
            ## 
            ## Sets the useDeviceContext property value. Indicates whether to install a dual-mode MSI in the device context. If true, app will be installed for all users. If false, app will be installed per-user. If null, service will use the MSI package's default install context. In case of dual-mode MSI, this default will be per-user.  Cannot be set for non-dual-mode apps.  Cannot be changed after initial creation of the application.
            ## @param value Value to set for the useDeviceContext property.
            ## @return a void
            ## 
            def use_device_context=(value)
                @use_device_context = value
            end
        end
    end
end
