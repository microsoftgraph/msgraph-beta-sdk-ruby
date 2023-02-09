require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Trusted Root and PFX certificates for iOS EDU.
        class IosEduCertificateSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # File name to display in UI.
            @cert_file_name
            ## 
            # PKCS Certificate Template Name.
            @certificate_template_name
            ## 
            # Certificate Validity Period Options.
            @certificate_validity_period_scale
            ## 
            # Value for the Certificate Validity Period.
            @certificate_validity_period_value
            ## 
            # PKCS Certification Authority.
            @certification_authority
            ## 
            # PKCS Certification Authority Name.
            @certification_authority_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Certificate renewal threshold percentage. Valid values 1 to 99
            @renewal_threshold_percentage
            ## 
            # Trusted Root Certificate.
            @trusted_root_certificate
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
            ## Gets the certFileName property value. File name to display in UI.
            ## @return a string
            ## 
            def cert_file_name
                return @cert_file_name
            end
            ## 
            ## Sets the certFileName property value. File name to display in UI.
            ## @param value Value to set for the cert_file_name property.
            ## @return a void
            ## 
            def cert_file_name=(value)
                @cert_file_name = value
            end
            ## 
            ## Gets the certificateTemplateName property value. PKCS Certificate Template Name.
            ## @return a string
            ## 
            def certificate_template_name
                return @certificate_template_name
            end
            ## 
            ## Sets the certificateTemplateName property value. PKCS Certificate Template Name.
            ## @param value Value to set for the certificate_template_name property.
            ## @return a void
            ## 
            def certificate_template_name=(value)
                @certificate_template_name = value
            end
            ## 
            ## Gets the certificateValidityPeriodScale property value. Certificate Validity Period Options.
            ## @return a certificate_validity_period_scale
            ## 
            def certificate_validity_period_scale
                return @certificate_validity_period_scale
            end
            ## 
            ## Sets the certificateValidityPeriodScale property value. Certificate Validity Period Options.
            ## @param value Value to set for the certificate_validity_period_scale property.
            ## @return a void
            ## 
            def certificate_validity_period_scale=(value)
                @certificate_validity_period_scale = value
            end
            ## 
            ## Gets the certificateValidityPeriodValue property value. Value for the Certificate Validity Period.
            ## @return a integer
            ## 
            def certificate_validity_period_value
                return @certificate_validity_period_value
            end
            ## 
            ## Sets the certificateValidityPeriodValue property value. Value for the Certificate Validity Period.
            ## @param value Value to set for the certificate_validity_period_value property.
            ## @return a void
            ## 
            def certificate_validity_period_value=(value)
                @certificate_validity_period_value = value
            end
            ## 
            ## Gets the certificationAuthority property value. PKCS Certification Authority.
            ## @return a string
            ## 
            def certification_authority
                return @certification_authority
            end
            ## 
            ## Sets the certificationAuthority property value. PKCS Certification Authority.
            ## @param value Value to set for the certification_authority property.
            ## @return a void
            ## 
            def certification_authority=(value)
                @certification_authority = value
            end
            ## 
            ## Gets the certificationAuthorityName property value. PKCS Certification Authority Name.
            ## @return a string
            ## 
            def certification_authority_name
                return @certification_authority_name
            end
            ## 
            ## Sets the certificationAuthorityName property value. PKCS Certification Authority Name.
            ## @param value Value to set for the certification_authority_name property.
            ## @return a void
            ## 
            def certification_authority_name=(value)
                @certification_authority_name = value
            end
            ## 
            ## Instantiates a new iosEduCertificateSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_edu_certificate_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosEduCertificateSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "certFileName" => lambda {|n| @cert_file_name = n.get_string_value() },
                    "certificateTemplateName" => lambda {|n| @certificate_template_name = n.get_string_value() },
                    "certificateValidityPeriodScale" => lambda {|n| @certificate_validity_period_scale = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateValidityPeriodScale) },
                    "certificateValidityPeriodValue" => lambda {|n| @certificate_validity_period_value = n.get_number_value() },
                    "certificationAuthority" => lambda {|n| @certification_authority = n.get_string_value() },
                    "certificationAuthorityName" => lambda {|n| @certification_authority_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "renewalThresholdPercentage" => lambda {|n| @renewal_threshold_percentage = n.get_number_value() },
                    "trustedRootCertificate" => lambda {|n| @trusted_root_certificate = n.get_string_value() },
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
            ## Gets the renewalThresholdPercentage property value. Certificate renewal threshold percentage. Valid values 1 to 99
            ## @return a integer
            ## 
            def renewal_threshold_percentage
                return @renewal_threshold_percentage
            end
            ## 
            ## Sets the renewalThresholdPercentage property value. Certificate renewal threshold percentage. Valid values 1 to 99
            ## @param value Value to set for the renewal_threshold_percentage property.
            ## @return a void
            ## 
            def renewal_threshold_percentage=(value)
                @renewal_threshold_percentage = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("certFileName", @cert_file_name)
                writer.write_string_value("certificateTemplateName", @certificate_template_name)
                writer.write_enum_value("certificateValidityPeriodScale", @certificate_validity_period_scale)
                writer.write_number_value("certificateValidityPeriodValue", @certificate_validity_period_value)
                writer.write_string_value("certificationAuthority", @certification_authority)
                writer.write_string_value("certificationAuthorityName", @certification_authority_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("renewalThresholdPercentage", @renewal_threshold_percentage)
                writer.write_object_value("trustedRootCertificate", @trusted_root_certificate)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trustedRootCertificate property value. Trusted Root Certificate.
            ## @return a binary
            ## 
            def trusted_root_certificate
                return @trusted_root_certificate
            end
            ## 
            ## Sets the trustedRootCertificate property value. Trusted Root Certificate.
            ## @param value Value to set for the trusted_root_certificate property.
            ## @return a void
            ## 
            def trusted_root_certificate=(value)
                @trusted_root_certificate = value
            end
        end
    end
end
