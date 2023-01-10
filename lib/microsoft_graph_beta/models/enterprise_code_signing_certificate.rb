require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EnterpriseCodeSigningCertificate < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Windows Enterprise Code-Signing Certificate in the raw data format.
        @content
        ## 
        # The Cert Expiration Date.
        @expiration_date_time
        ## 
        # The Issuer value for the cert.
        @issuer
        ## 
        # The Issuer Name for the cert.
        @issuer_name
        ## 
        # The status property
        @status
        ## 
        # The Subject Value for the cert.
        @subject
        ## 
        # The Subject Name for the cert.
        @subject_name
        ## 
        # The date time of CodeSigning Cert when it is uploaded.
        @upload_date_time
        ## 
        ## Instantiates a new enterpriseCodeSigningCertificate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the content property value. The Windows Enterprise Code-Signing Certificate in the raw data format.
        ## @return a binary
        ## 
        def content
            return @content
        end
        ## 
        ## Sets the content property value. The Windows Enterprise Code-Signing Certificate in the raw data format.
        ## @param value Value to set for the content property.
        ## @return a void
        ## 
        def content=(value)
            @content = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a enterprise_code_signing_certificate
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EnterpriseCodeSigningCertificate.new
        end
        ## 
        ## Gets the expirationDateTime property value. The Cert Expiration Date.
        ## @return a date_time
        ## 
        def expiration_date_time
            return @expiration_date_time
        end
        ## 
        ## Sets the expirationDateTime property value. The Cert Expiration Date.
        ## @param value Value to set for the expirationDateTime property.
        ## @return a void
        ## 
        def expiration_date_time=(value)
            @expiration_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "content" => lambda {|n| @content = n.get_string_value() },
                "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                "issuer" => lambda {|n| @issuer = n.get_string_value() },
                "issuerName" => lambda {|n| @issuer_name = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateStatus) },
                "subject" => lambda {|n| @subject = n.get_string_value() },
                "subjectName" => lambda {|n| @subject_name = n.get_string_value() },
                "uploadDateTime" => lambda {|n| @upload_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the issuer property value. The Issuer value for the cert.
        ## @return a string
        ## 
        def issuer
            return @issuer
        end
        ## 
        ## Sets the issuer property value. The Issuer value for the cert.
        ## @param value Value to set for the issuer property.
        ## @return a void
        ## 
        def issuer=(value)
            @issuer = value
        end
        ## 
        ## Gets the issuerName property value. The Issuer Name for the cert.
        ## @return a string
        ## 
        def issuer_name
            return @issuer_name
        end
        ## 
        ## Sets the issuerName property value. The Issuer Name for the cert.
        ## @param value Value to set for the issuerName property.
        ## @return a void
        ## 
        def issuer_name=(value)
            @issuer_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("content", @content)
            writer.write_date_time_value("expirationDateTime", @expiration_date_time)
            writer.write_string_value("issuer", @issuer)
            writer.write_string_value("issuerName", @issuer_name)
            writer.write_enum_value("status", @status)
            writer.write_string_value("subject", @subject)
            writer.write_string_value("subjectName", @subject_name)
            writer.write_date_time_value("uploadDateTime", @upload_date_time)
        end
        ## 
        ## Gets the status property value. The status property
        ## @return a certificate_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The status property
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
        ## 
        ## Gets the subject property value. The Subject Value for the cert.
        ## @return a string
        ## 
        def subject
            return @subject
        end
        ## 
        ## Sets the subject property value. The Subject Value for the cert.
        ## @param value Value to set for the subject property.
        ## @return a void
        ## 
        def subject=(value)
            @subject = value
        end
        ## 
        ## Gets the subjectName property value. The Subject Name for the cert.
        ## @return a string
        ## 
        def subject_name
            return @subject_name
        end
        ## 
        ## Sets the subjectName property value. The Subject Name for the cert.
        ## @param value Value to set for the subjectName property.
        ## @return a void
        ## 
        def subject_name=(value)
            @subject_name = value
        end
        ## 
        ## Gets the uploadDateTime property value. The date time of CodeSigning Cert when it is uploaded.
        ## @return a date_time
        ## 
        def upload_date_time
            return @upload_date_time
        end
        ## 
        ## Sets the uploadDateTime property value. The date time of CodeSigning Cert when it is uploaded.
        ## @param value Value to set for the uploadDateTime property.
        ## @return a void
        ## 
        def upload_date_time=(value)
            @upload_date_time = value
        end
    end
end
