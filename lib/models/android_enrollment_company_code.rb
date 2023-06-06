require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A class to hold specialty enrollment data used for enrolling via Google's Android Management API, such as Token, Url, and QR code content
        class AndroidEnrollmentCompanyCode
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Enrollment Token used by the User to enroll their device.
            @enrollment_token
            ## 
            # The OdataType property
            @odata_type
            ## 
            # String used to generate a QR code for the token.
            @qr_code_content
            ## 
            # Generated QR code for the token.
            @qr_code_image
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new androidEnrollmentCompanyCode and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_enrollment_company_code
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidEnrollmentCompanyCode.new
            end
            ## 
            ## Gets the enrollmentToken property value. Enrollment Token used by the User to enroll their device.
            ## @return a string
            ## 
            def enrollment_token
                return @enrollment_token
            end
            ## 
            ## Sets the enrollmentToken property value. Enrollment Token used by the User to enroll their device.
            ## @param value Value to set for the enrollment_token property.
            ## @return a void
            ## 
            def enrollment_token=(value)
                @enrollment_token = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "enrollmentToken" => lambda {|n| @enrollment_token = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "qrCodeContent" => lambda {|n| @qr_code_content = n.get_string_value() },
                    "qrCodeImage" => lambda {|n| @qr_code_image = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the qrCodeContent property value. String used to generate a QR code for the token.
            ## @return a string
            ## 
            def qr_code_content
                return @qr_code_content
            end
            ## 
            ## Sets the qrCodeContent property value. String used to generate a QR code for the token.
            ## @param value Value to set for the qr_code_content property.
            ## @return a void
            ## 
            def qr_code_content=(value)
                @qr_code_content = value
            end
            ## 
            ## Gets the qrCodeImage property value. Generated QR code for the token.
            ## @return a mime_content
            ## 
            def qr_code_image
                return @qr_code_image
            end
            ## 
            ## Sets the qrCodeImage property value. Generated QR code for the token.
            ## @param value Value to set for the qr_code_image property.
            ## @return a void
            ## 
            def qr_code_image=(value)
                @qr_code_image = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("enrollmentToken", @enrollment_token)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("qrCodeContent", @qr_code_content)
                writer.write_object_value("qrCodeImage", @qr_code_image)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
