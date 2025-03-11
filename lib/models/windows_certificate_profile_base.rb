require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device Configuration.
        class WindowsCertificateProfileBase < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Certificate Validity Period Options.
            @certificate_validity_period_scale
            ## 
            # Value for the Certificate Validity Period
            @certificate_validity_period_value
            ## 
            # Key Storage Provider (KSP) Import Options.
            @key_storage_provider
            ## 
            # Certificate renewal threshold percentage. Valid values 1 to 99
            @renewal_threshold_percentage
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
            ## @param value Value to set for the certificateValidityPeriodScale property.
            ## @return a void
            ## 
            def certificate_validity_period_scale=(value)
                @certificate_validity_period_scale = value
            end
            ## 
            ## Gets the certificateValidityPeriodValue property value. Value for the Certificate Validity Period
            ## @return a integer
            ## 
            def certificate_validity_period_value
                return @certificate_validity_period_value
            end
            ## 
            ## Sets the certificateValidityPeriodValue property value. Value for the Certificate Validity Period
            ## @param value Value to set for the certificateValidityPeriodValue property.
            ## @return a void
            ## 
            def certificate_validity_period_value=(value)
                @certificate_validity_period_value = value
            end
            ## 
            ## Instantiates a new WindowsCertificateProfileBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsCertificateProfileBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_certificate_profile_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.windows10CertificateProfileBase"
                            return Windows10CertificateProfileBase.new
                        when "#microsoft.graph.windows10ImportedPFXCertificateProfile"
                            return Windows10ImportedPFXCertificateProfile.new
                        when "#microsoft.graph.windows10PkcsCertificateProfile"
                            return Windows10PkcsCertificateProfile.new
                        when "#microsoft.graph.windows81CertificateProfileBase"
                            return Windows81CertificateProfileBase.new
                        when "#microsoft.graph.windows81SCEPCertificateProfile"
                            return Windows81SCEPCertificateProfile.new
                        when "#microsoft.graph.windowsPhone81ImportedPFXCertificateProfile"
                            return WindowsPhone81ImportedPFXCertificateProfile.new
                    end
                end
                return WindowsCertificateProfileBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateValidityPeriodScale" => lambda {|n| @certificate_validity_period_scale = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateValidityPeriodScale) },
                    "certificateValidityPeriodValue" => lambda {|n| @certificate_validity_period_value = n.get_number_value() },
                    "keyStorageProvider" => lambda {|n| @key_storage_provider = n.get_enum_value(MicrosoftGraphBeta::Models::KeyStorageProviderOption) },
                    "renewalThresholdPercentage" => lambda {|n| @renewal_threshold_percentage = n.get_number_value() },
                    "subjectAlternativeNameType" => lambda {|n| @subject_alternative_name_type = n.get_enum_values(MicrosoftGraphBeta::Models::SubjectAlternativeNameType) },
                    "subjectNameFormat" => lambda {|n| @subject_name_format = n.get_enum_value(MicrosoftGraphBeta::Models::SubjectNameFormat) },
                })
            end
            ## 
            ## Gets the keyStorageProvider property value. Key Storage Provider (KSP) Import Options.
            ## @return a key_storage_provider_option
            ## 
            def key_storage_provider
                return @key_storage_provider
            end
            ## 
            ## Sets the keyStorageProvider property value. Key Storage Provider (KSP) Import Options.
            ## @param value Value to set for the keyStorageProvider property.
            ## @return a void
            ## 
            def key_storage_provider=(value)
                @key_storage_provider = value
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
            ## @param value Value to set for the renewalThresholdPercentage property.
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
                super
                writer.write_enum_value("certificateValidityPeriodScale", @certificate_validity_period_scale)
                writer.write_number_value("certificateValidityPeriodValue", @certificate_validity_period_value)
                writer.write_enum_value("keyStorageProvider", @key_storage_provider)
                writer.write_number_value("renewalThresholdPercentage", @renewal_threshold_percentage)
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
            ## @param value Value to set for the subjectAlternativeNameType property.
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
            ## @param value Value to set for the subjectNameFormat property.
            ## @return a void
            ## 
            def subject_name_format=(value)
                @subject_name_format = value
            end
        end
    end
end
