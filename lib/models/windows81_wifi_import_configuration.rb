require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows 8.1+ Wi-Fi import configuration. By configuring this profile you can instruct Windows 8.1 (and later) devices to connect to desired Wi-Fi endpoint. Connect a Windows 8.1 device to the desired Wi-Fi network and extract the XML from that device to later embed into this Wi-Fi profile.
        class Windows81WifiImportConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Payload. (UTF8 encoded byte array). This is the XML file saved on the device you used to connect to the Wi-Fi endpoint.
            @payload
            ## 
            # Payload file name (.xml).
            @payload_file_name
            ## 
            # Profile name displayed in the UI.
            @profile_name
            ## 
            ## Instantiates a new Windows81WifiImportConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows81WifiImportConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows81_wifi_import_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows81WifiImportConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "payload" => lambda {|n| @payload = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "payloadFileName" => lambda {|n| @payload_file_name = n.get_string_value() },
                    "profileName" => lambda {|n| @profile_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the payload property value. Payload. (UTF8 encoded byte array). This is the XML file saved on the device you used to connect to the Wi-Fi endpoint.
            ## @return a base64url
            ## 
            def payload
                return @payload
            end
            ## 
            ## Sets the payload property value. Payload. (UTF8 encoded byte array). This is the XML file saved on the device you used to connect to the Wi-Fi endpoint.
            ## @param value Value to set for the payload property.
            ## @return a void
            ## 
            def payload=(value)
                @payload = value
            end
            ## 
            ## Gets the payloadFileName property value. Payload file name (.xml).
            ## @return a string
            ## 
            def payload_file_name
                return @payload_file_name
            end
            ## 
            ## Sets the payloadFileName property value. Payload file name (.xml).
            ## @param value Value to set for the payloadFileName property.
            ## @return a void
            ## 
            def payload_file_name=(value)
                @payload_file_name = value
            end
            ## 
            ## Gets the profileName property value. Profile name displayed in the UI.
            ## @return a string
            ## 
            def profile_name
                return @profile_name
            end
            ## 
            ## Sets the profileName property value. Profile name displayed in the UI.
            ## @param value Value to set for the profileName property.
            ## @return a void
            ## 
            def profile_name=(value)
                @profile_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("payload", @payload)
                writer.write_string_value("payloadFileName", @payload_file_name)
                writer.write_string_value("profileName", @profile_name)
            end
        end
    end
end
