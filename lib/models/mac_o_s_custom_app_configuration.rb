require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MacOSCustomAppConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Bundle id for targeting.
        @bundle_id
        ## 
        # Configuration xml. (UTF8 encoded byte array)
        @configuration_xml
        ## 
        # Configuration file name (.plist
        @file_name
        ## 
        ## Gets the bundleId property value. Bundle id for targeting.
        ## @return a string
        ## 
        def bundle_id
            return @bundle_id
        end
        ## 
        ## Sets the bundleId property value. Bundle id for targeting.
        ## @param value Value to set for the bundle_id property.
        ## @return a void
        ## 
        def bundle_id=(value)
            @bundle_id = value
        end
        ## 
        ## Gets the configurationXml property value. Configuration xml. (UTF8 encoded byte array)
        ## @return a binary
        ## 
        def configuration_xml
            return @configuration_xml
        end
        ## 
        ## Sets the configurationXml property value. Configuration xml. (UTF8 encoded byte array)
        ## @param value Value to set for the configuration_xml property.
        ## @return a void
        ## 
        def configuration_xml=(value)
            @configuration_xml = value
        end
        ## 
        ## Instantiates a new MacOSCustomAppConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.macOSCustomAppConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mac_o_s_custom_app_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MacOSCustomAppConfiguration.new
        end
        ## 
        ## Gets the fileName property value. Configuration file name (.plist
        ## @return a string
        ## 
        def file_name
            return @file_name
        end
        ## 
        ## Sets the fileName property value. Configuration file name (.plist
        ## @param value Value to set for the file_name property.
        ## @return a void
        ## 
        def file_name=(value)
            @file_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "bundleId" => lambda {|n| @bundle_id = n.get_string_value() },
                "configurationXml" => lambda {|n| @configuration_xml = n.get_string_value() },
                "fileName" => lambda {|n| @file_name = n.get_string_value() },
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
            writer.write_string_value("bundleId", @bundle_id)
            writer.write_object_value("configurationXml", @configuration_xml)
            writer.write_string_value("fileName", @file_name)
        end
    end
end
