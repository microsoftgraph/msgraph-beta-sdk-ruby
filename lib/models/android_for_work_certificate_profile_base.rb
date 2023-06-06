require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidForWorkCertificateProfileBase < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Certificate Validity Period Options.
            @certificate_validity_period_scale
            ## 
            # Value for the Certificate Validity Period.
            @certificate_validity_period_value
            ## 
            # Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements.
            @extended_key_usages
            ## 
            # Certificate renewal threshold percentage. Valid values 1 to 99
            @renewal_threshold_percentage
            ## 
            # Trusted Root Certificate.
            @root_certificate
            ## 
            # Certificate Subject Alternative Name Type. Possible values are: none, emailAddress, userPrincipalName, customAzureADAttribute, domainNameService, universalResourceIdentifier.
            @subject_alternative_name_type
            ## 
            # Subject Name Format Options.
            @subject_name_format
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
            ## Instantiates a new AndroidForWorkCertificateProfileBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidForWorkCertificateProfileBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_for_work_certificate_profile_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidForWorkPkcsCertificateProfile"
                            return AndroidForWorkPkcsCertificateProfile.new
                        when "#microsoft.graph.androidForWorkScepCertificateProfile"
                            return AndroidForWorkScepCertificateProfile.new
                    end
                end
                return AndroidForWorkCertificateProfileBase.new
            end
            ## 
            ## Gets the extendedKeyUsages property value. Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements.
            ## @return a extended_key_usage
            ## 
            def extended_key_usages
                return @extended_key_usages
            end
            ## 
            ## Sets the extendedKeyUsages property value. Extended Key Usage (EKU) settings. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the extended_key_usages property.
            ## @return a void
            ## 
            def extended_key_usages=(value)
                @extended_key_usages = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateValidityPeriodScale" => lambda {|n| @certificate_validity_period_scale = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateValidityPeriodScale) },
                    "certificateValidityPeriodValue" => lambda {|n| @certificate_validity_period_value = n.get_number_value() },
                    "extendedKeyUsages" => lambda {|n| @extended_key_usages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExtendedKeyUsage.create_from_discriminator_value(pn) }) },
                    "renewalThresholdPercentage" => lambda {|n| @renewal_threshold_percentage = n.get_number_value() },
                    "rootCertificate" => lambda {|n| @root_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkTrustedRootCertificate.create_from_discriminator_value(pn) }) },
                    "subjectAlternativeNameType" => lambda {|n| @subject_alternative_name_type = n.get_enum_value(MicrosoftGraphBeta::Models::SubjectAlternativeNameType) },
                    "subjectNameFormat" => lambda {|n| @subject_name_format = n.get_enum_value(MicrosoftGraphBeta::Models::SubjectNameFormat) },
                })
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
            ## Gets the rootCertificate property value. Trusted Root Certificate.
            ## @return a android_for_work_trusted_root_certificate
            ## 
            def root_certificate
                return @root_certificate
            end
            ## 
            ## Sets the rootCertificate property value. Trusted Root Certificate.
            ## @param value Value to set for the root_certificate property.
            ## @return a void
            ## 
            def root_certificate=(value)
                @root_certificate = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("certificateValidityPeriodScale", @certificate_validity_period_scale)
                writer.write_number_value("certificateValidityPeriodValue", @certificate_validity_period_value)
                writer.write_collection_of_object_values("extendedKeyUsages", @extended_key_usages)
                writer.write_number_value("renewalThresholdPercentage", @renewal_threshold_percentage)
                writer.write_object_value("rootCertificate", @root_certificate)
                writer.write_enum_value("subjectAlternativeNameType", @subject_alternative_name_type)
                writer.write_enum_value("subjectNameFormat", @subject_name_format)
            end
            ## 
            ## Gets the subjectAlternativeNameType property value. Certificate Subject Alternative Name Type. Possible values are: none, emailAddress, userPrincipalName, customAzureADAttribute, domainNameService, universalResourceIdentifier.
            ## @return a subject_alternative_name_type
            ## 
            def subject_alternative_name_type
                return @subject_alternative_name_type
            end
            ## 
            ## Sets the subjectAlternativeNameType property value. Certificate Subject Alternative Name Type. Possible values are: none, emailAddress, userPrincipalName, customAzureADAttribute, domainNameService, universalResourceIdentifier.
            ## @param value Value to set for the subject_alternative_name_type property.
            ## @return a void
            ## 
            def subject_alternative_name_type=(value)
                @subject_alternative_name_type = value
            end
            ## 
            ## Gets the subjectNameFormat property value. Subject Name Format Options.
            ## @return a subject_name_format
            ## 
            def subject_name_format
                return @subject_name_format
            end
            ## 
            ## Sets the subjectNameFormat property value. Subject Name Format Options.
            ## @param value Value to set for the subject_name_format property.
            ## @return a void
            ## 
            def subject_name_format=(value)
                @subject_name_format = value
            end
        end
    end
end
