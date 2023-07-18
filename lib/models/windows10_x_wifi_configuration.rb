require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows X WifiXml configuration profile
        class Windows10XWifiConfiguration < MicrosoftGraphBeta::Models::DeviceManagementResourceAccessProfileBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # ID to the Authentication Certificate
            @authentication_certificate_id
            ## 
            # Custom XML commands that configures the VPN connection. (UTF8 byte encoding)
            @custom_xml
            ## 
            # Custom Xml file name.
            @custom_xml_file_name
            ## 
            ## Gets the authenticationCertificateId property value. ID to the Authentication Certificate
            ## @return a guid
            ## 
            def authentication_certificate_id
                return @authentication_certificate_id
            end
            ## 
            ## Sets the authenticationCertificateId property value. ID to the Authentication Certificate
            ## @param value Value to set for the authentication_certificate_id property.
            ## @return a void
            ## 
            def authentication_certificate_id=(value)
                @authentication_certificate_id = value
            end
            ## 
            ## Instantiates a new windows10XWifiConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10XWifiConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows10_x_wifi_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10XWifiConfiguration.new
            end
            ## 
            ## Gets the customXml property value. Custom XML commands that configures the VPN connection. (UTF8 byte encoding)
            ## @return a base64url
            ## 
            def custom_xml
                return @custom_xml
            end
            ## 
            ## Sets the customXml property value. Custom XML commands that configures the VPN connection. (UTF8 byte encoding)
            ## @param value Value to set for the custom_xml property.
            ## @return a void
            ## 
            def custom_xml=(value)
                @custom_xml = value
            end
            ## 
            ## Gets the customXmlFileName property value. Custom Xml file name.
            ## @return a string
            ## 
            def custom_xml_file_name
                return @custom_xml_file_name
            end
            ## 
            ## Sets the customXmlFileName property value. Custom Xml file name.
            ## @param value Value to set for the custom_xml_file_name property.
            ## @return a void
            ## 
            def custom_xml_file_name=(value)
                @custom_xml_file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationCertificateId" => lambda {|n| @authentication_certificate_id = n.get_guid_value() },
                    "customXml" => lambda {|n| @custom_xml = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "customXmlFileName" => lambda {|n| @custom_xml_file_name = n.get_string_value() },
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
                writer.write_guid_value("authenticationCertificateId", @authentication_certificate_id)
                writer.write_object_value("customXml", @custom_xml)
                writer.write_string_value("customXmlFileName", @custom_xml_file_name)
            end
        end
    end
end
