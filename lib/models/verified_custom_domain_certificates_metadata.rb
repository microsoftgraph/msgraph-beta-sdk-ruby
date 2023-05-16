require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VerifiedCustomDomainCertificatesMetadata
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The expiry date of the custom domain certificate. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @expiry_date
            ## 
            # The issue date of the custom domain. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @issue_date
            ## 
            # The issuer name of the custom domain certificate.
            @issuer_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The subject name of the custom domain certificate.
            @subject_name
            ## 
            # The thumbprint associated with the custom domain certificate.
            @thumbprint
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
            ## Instantiates a new verifiedCustomDomainCertificatesMetadata and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a verified_custom_domain_certificates_metadata
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VerifiedCustomDomainCertificatesMetadata.new
            end
            ## 
            ## Gets the expiryDate property value. The expiry date of the custom domain certificate. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def expiry_date
                return @expiry_date
            end
            ## 
            ## Sets the expiryDate property value. The expiry date of the custom domain certificate. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the expiry_date property.
            ## @return a void
            ## 
            def expiry_date=(value)
                @expiry_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "expiryDate" => lambda {|n| @expiry_date = n.get_date_time_value() },
                    "issueDate" => lambda {|n| @issue_date = n.get_date_time_value() },
                    "issuerName" => lambda {|n| @issuer_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "subjectName" => lambda {|n| @subject_name = n.get_string_value() },
                    "thumbprint" => lambda {|n| @thumbprint = n.get_string_value() },
                }
            end
            ## 
            ## Gets the issueDate property value. The issue date of the custom domain. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def issue_date
                return @issue_date
            end
            ## 
            ## Sets the issueDate property value. The issue date of the custom domain. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the issue_date property.
            ## @return a void
            ## 
            def issue_date=(value)
                @issue_date = value
            end
            ## 
            ## Gets the issuerName property value. The issuer name of the custom domain certificate.
            ## @return a string
            ## 
            def issuer_name
                return @issuer_name
            end
            ## 
            ## Sets the issuerName property value. The issuer name of the custom domain certificate.
            ## @param value Value to set for the issuer_name property.
            ## @return a void
            ## 
            def issuer_name=(value)
                @issuer_name = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("expiryDate", @expiry_date)
                writer.write_date_time_value("issueDate", @issue_date)
                writer.write_string_value("issuerName", @issuer_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("subjectName", @subject_name)
                writer.write_string_value("thumbprint", @thumbprint)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the subjectName property value. The subject name of the custom domain certificate.
            ## @return a string
            ## 
            def subject_name
                return @subject_name
            end
            ## 
            ## Sets the subjectName property value. The subject name of the custom domain certificate.
            ## @param value Value to set for the subject_name property.
            ## @return a void
            ## 
            def subject_name=(value)
                @subject_name = value
            end
            ## 
            ## Gets the thumbprint property value. The thumbprint associated with the custom domain certificate.
            ## @return a string
            ## 
            def thumbprint
                return @thumbprint
            end
            ## 
            ## Sets the thumbprint property value. The thumbprint associated with the custom domain certificate.
            ## @param value Value to set for the thumbprint property.
            ## @return a void
            ## 
            def thumbprint=(value)
                @thumbprint = value
            end
        end
    end
end
