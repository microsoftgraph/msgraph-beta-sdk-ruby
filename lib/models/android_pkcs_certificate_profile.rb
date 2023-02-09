require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidPkcsCertificateProfile < MicrosoftGraphBeta::Models::AndroidCertificateProfileBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # PKCS Certificate Template Name
            @certificate_template_name
            ## 
            # PKCS Certification Authority
            @certification_authority
            ## 
            # PKCS Certification Authority Name
            @certification_authority_name
            ## 
            # Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            @managed_device_certificate_states
            ## 
            # Custom String that defines the AAD Attribute.
            @subject_alternative_name_format_string
            ## 
            ## Gets the certificateTemplateName property value. PKCS Certificate Template Name
            ## @return a string
            ## 
            def certificate_template_name
                return @certificate_template_name
            end
            ## 
            ## Sets the certificateTemplateName property value. PKCS Certificate Template Name
            ## @param value Value to set for the certificate_template_name property.
            ## @return a void
            ## 
            def certificate_template_name=(value)
                @certificate_template_name = value
            end
            ## 
            ## Gets the certificationAuthority property value. PKCS Certification Authority
            ## @return a string
            ## 
            def certification_authority
                return @certification_authority
            end
            ## 
            ## Sets the certificationAuthority property value. PKCS Certification Authority
            ## @param value Value to set for the certification_authority property.
            ## @return a void
            ## 
            def certification_authority=(value)
                @certification_authority = value
            end
            ## 
            ## Gets the certificationAuthorityName property value. PKCS Certification Authority Name
            ## @return a string
            ## 
            def certification_authority_name
                return @certification_authority_name
            end
            ## 
            ## Sets the certificationAuthorityName property value. PKCS Certification Authority Name
            ## @param value Value to set for the certification_authority_name property.
            ## @return a void
            ## 
            def certification_authority_name=(value)
                @certification_authority_name = value
            end
            ## 
            ## Instantiates a new AndroidPkcsCertificateProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidPkcsCertificateProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_pkcs_certificate_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidPkcsCertificateProfile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateTemplateName" => lambda {|n| @certificate_template_name = n.get_string_value() },
                    "certificationAuthority" => lambda {|n| @certification_authority = n.get_string_value() },
                    "certificationAuthorityName" => lambda {|n| @certification_authority_name = n.get_string_value() },
                    "managedDeviceCertificateStates" => lambda {|n| @managed_device_certificate_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCertificateState.create_from_discriminator_value(pn) }) },
                    "subjectAlternativeNameFormatString" => lambda {|n| @subject_alternative_name_format_string = n.get_string_value() },
                })
            end
            ## 
            ## Gets the managedDeviceCertificateStates property value. Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            ## @return a managed_device_certificate_state
            ## 
            def managed_device_certificate_states
                return @managed_device_certificate_states
            end
            ## 
            ## Sets the managedDeviceCertificateStates property value. Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            ## @param value Value to set for the managed_device_certificate_states property.
            ## @return a void
            ## 
            def managed_device_certificate_states=(value)
                @managed_device_certificate_states = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("certificateTemplateName", @certificate_template_name)
                writer.write_string_value("certificationAuthority", @certification_authority)
                writer.write_string_value("certificationAuthorityName", @certification_authority_name)
                writer.write_collection_of_object_values("managedDeviceCertificateStates", @managed_device_certificate_states)
                writer.write_string_value("subjectAlternativeNameFormatString", @subject_alternative_name_format_string)
            end
            ## 
            ## Gets the subjectAlternativeNameFormatString property value. Custom String that defines the AAD Attribute.
            ## @return a string
            ## 
            def subject_alternative_name_format_string
                return @subject_alternative_name_format_string
            end
            ## 
            ## Sets the subjectAlternativeNameFormatString property value. Custom String that defines the AAD Attribute.
            ## @param value Value to set for the subject_alternative_name_format_string property.
            ## @return a void
            ## 
            def subject_alternative_name_format_string=(value)
                @subject_alternative_name_format_string = value
            end
        end
    end
end
