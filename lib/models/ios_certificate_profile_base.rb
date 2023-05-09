require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IosCertificateProfileBase < MicrosoftGraphBeta::Models::IosCertificateProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Certificate Validity Period Options.
            @certificate_validity_period_scale
            ## 
            # Value for the Certificate Validity Period.
            @certificate_validity_period_value
            ## 
            # Certificate renewal threshold percentage. Valid values 1 to 99
            @renewal_threshold_percentage
            ## 
            # Certificate Subject Alternative Name type. Possible values are: none, emailAddress, userPrincipalName, customAzureADAttribute, domainNameService, universalResourceIdentifier.
            @subject_alternative_name_type
            ## 
            # Subject Name Format Options for Apple devices.
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
            ## Instantiates a new IosCertificateProfileBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosCertificateProfileBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_certificate_profile_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.iosPkcsCertificateProfile"
                            return IosPkcsCertificateProfile.new
                        when "#microsoft.graph.iosScepCertificateProfile"
                            return IosScepCertificateProfile.new
                    end
                end
                return IosCertificateProfileBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateValidityPeriodScale" => lambda {|n| @certificate_validity_period_scale = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateValidityPeriodScale) },
                    "certificateValidityPeriodValue" => lambda {|n| @certificate_validity_period_value = n.get_number_value() },
                    "renewalThresholdPercentage" => lambda {|n| @renewal_threshold_percentage = n.get_number_value() },
                    "subjectAlternativeNameType" => lambda {|n| @subject_alternative_name_type = n.get_enum_value(MicrosoftGraphBeta::Models::SubjectAlternativeNameType) },
                    "subjectNameFormat" => lambda {|n| @subject_name_format = n.get_enum_value(MicrosoftGraphBeta::Models::AppleSubjectNameFormat) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("certificateValidityPeriodScale", @certificate_validity_period_scale)
                writer.write_number_value("certificateValidityPeriodValue", @certificate_validity_period_value)
                writer.write_number_value("renewalThresholdPercentage", @renewal_threshold_percentage)
                writer.write_enum_value("subjectAlternativeNameType", @subject_alternative_name_type)
                writer.write_enum_value("subjectNameFormat", @subject_name_format)
            end
            ## 
            ## Gets the subjectAlternativeNameType property value. Certificate Subject Alternative Name type. Possible values are: none, emailAddress, userPrincipalName, customAzureADAttribute, domainNameService, universalResourceIdentifier.
            ## @return a subject_alternative_name_type
            ## 
            def subject_alternative_name_type
                return @subject_alternative_name_type
            end
            ## 
            ## Sets the subjectAlternativeNameType property value. Certificate Subject Alternative Name type. Possible values are: none, emailAddress, userPrincipalName, customAzureADAttribute, domainNameService, universalResourceIdentifier.
            ## @param value Value to set for the subject_alternative_name_type property.
            ## @return a void
            ## 
            def subject_alternative_name_type=(value)
                @subject_alternative_name_type = value
            end
            ## 
            ## Gets the subjectNameFormat property value. Subject Name Format Options for Apple devices.
            ## @return a apple_subject_name_format
            ## 
            def subject_name_format
                return @subject_name_format
            end
            ## 
            ## Sets the subjectNameFormat property value. Subject Name Format Options for Apple devices.
            ## @param value Value to set for the subject_name_format property.
            ## @return a void
            ## 
            def subject_name_format=(value)
                @subject_name_format = value
            end
        end
    end
end
