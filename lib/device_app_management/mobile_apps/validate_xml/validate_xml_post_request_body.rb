require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_app_management'
require_relative '../mobile_apps'
require_relative './validate_xml'

module MicrosoftGraphBeta
    module DeviceAppManagement
        module MobileApps
            module ValidateXml
                class ValidateXmlPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The officeConfigurationXml property
                    @office_configuration_xml
                    ## 
                    ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @return a i_dictionary
                    ## 
                    def additional_data
                        return @additional_data
                    end
                    ## 
                    ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @param value Value to set for the AdditionalData property.
                    ## @return a void
                    ## 
                    def additional_data=(value)
                        @additional_data = value
                    end
                    ## 
                    ## Instantiates a new validateXmlPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a validate_xml_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ValidateXmlPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "officeConfigurationXml" => lambda {|n| @office_configuration_xml = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Gets the officeConfigurationXml property value. The officeConfigurationXml property
                    ## @return a base64url
                    ## 
                    def office_configuration_xml
                        return @office_configuration_xml
                    end
                    ## 
                    ## Sets the officeConfigurationXml property value. The officeConfigurationXml property
                    ## @param value Value to set for the officeConfigurationXml property.
                    ## @return a void
                    ## 
                    def office_configuration_xml=(value)
                        @office_configuration_xml = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("officeConfigurationXml", @office_configuration_xml)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
