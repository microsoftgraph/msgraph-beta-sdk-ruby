require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidDeviceOwnerPkcsCertificateProfile < MicrosoftGraphBeta::Models::AndroidDeviceOwnerCertificateProfileBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Certificate access type. Possible values are: userApproval, specificApps, unknownFutureValue.
        @certificate_access_type
        ## 
        # CertificateStore types
        @certificate_store
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
        # Device Management Certification Authority Types.
        @certification_authority_type
        ## 
        # Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements.
        @custom_subject_alternative_names
        ## 
        # Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
        @managed_device_certificate_states
        ## 
        # Certificate access information. This collection can contain a maximum of 50 elements.
        @silent_certificate_access_details
        ## 
        # Custom String that defines the AAD Attribute.
        @subject_alternative_name_format_string
        ## 
        # Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
        @subject_name_format_string
        ## 
        ## Gets the certificateAccessType property value. Certificate access type. Possible values are: userApproval, specificApps, unknownFutureValue.
        ## @return a android_device_owner_certificate_access_type
        ## 
        def certificate_access_type
            return @certificate_access_type
        end
        ## 
        ## Sets the certificateAccessType property value. Certificate access type. Possible values are: userApproval, specificApps, unknownFutureValue.
        ## @param value Value to set for the certificateAccessType property.
        ## @return a void
        ## 
        def certificate_access_type=(value)
            @certificate_access_type = value
        end
        ## 
        ## Gets the certificateStore property value. CertificateStore types
        ## @return a certificate_store
        ## 
        def certificate_store
            return @certificate_store
        end
        ## 
        ## Sets the certificateStore property value. CertificateStore types
        ## @param value Value to set for the certificateStore property.
        ## @return a void
        ## 
        def certificate_store=(value)
            @certificate_store = value
        end
        ## 
        ## Gets the certificateTemplateName property value. PKCS Certificate Template Name
        ## @return a string
        ## 
        def certificate_template_name
            return @certificate_template_name
        end
        ## 
        ## Sets the certificateTemplateName property value. PKCS Certificate Template Name
        ## @param value Value to set for the certificateTemplateName property.
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
        ## @param value Value to set for the certificationAuthority property.
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
        ## @param value Value to set for the certificationAuthorityName property.
        ## @return a void
        ## 
        def certification_authority_name=(value)
            @certification_authority_name = value
        end
        ## 
        ## Gets the certificationAuthorityType property value. Device Management Certification Authority Types.
        ## @return a device_management_certification_authority
        ## 
        def certification_authority_type
            return @certification_authority_type
        end
        ## 
        ## Sets the certificationAuthorityType property value. Device Management Certification Authority Types.
        ## @param value Value to set for the certificationAuthorityType property.
        ## @return a void
        ## 
        def certification_authority_type=(value)
            @certification_authority_type = value
        end
        ## 
        ## Instantiates a new AndroidDeviceOwnerPkcsCertificateProfile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidDeviceOwnerPkcsCertificateProfile"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_device_owner_pkcs_certificate_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidDeviceOwnerPkcsCertificateProfile.new
        end
        ## 
        ## Gets the customSubjectAlternativeNames property value. Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements.
        ## @return a custom_subject_alternative_name
        ## 
        def custom_subject_alternative_names
            return @custom_subject_alternative_names
        end
        ## 
        ## Sets the customSubjectAlternativeNames property value. Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements.
        ## @param value Value to set for the customSubjectAlternativeNames property.
        ## @return a void
        ## 
        def custom_subject_alternative_names=(value)
            @custom_subject_alternative_names = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "certificateAccessType" => lambda {|n| @certificate_access_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerCertificateAccessType) },
                "certificateStore" => lambda {|n| @certificate_store = n.get_enum_value(MicrosoftGraphBeta::Models::CertificateStore) },
                "certificateTemplateName" => lambda {|n| @certificate_template_name = n.get_string_value() },
                "certificationAuthority" => lambda {|n| @certification_authority = n.get_string_value() },
                "certificationAuthorityName" => lambda {|n| @certification_authority_name = n.get_string_value() },
                "certificationAuthorityType" => lambda {|n| @certification_authority_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementCertificationAuthority) },
                "customSubjectAlternativeNames" => lambda {|n| @custom_subject_alternative_names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomSubjectAlternativeName.create_from_discriminator_value(pn) }) },
                "managedDeviceCertificateStates" => lambda {|n| @managed_device_certificate_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCertificateState.create_from_discriminator_value(pn) }) },
                "silentCertificateAccessDetails" => lambda {|n| @silent_certificate_access_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerSilentCertificateAccess.create_from_discriminator_value(pn) }) },
                "subjectAlternativeNameFormatString" => lambda {|n| @subject_alternative_name_format_string = n.get_string_value() },
                "subjectNameFormatString" => lambda {|n| @subject_name_format_string = n.get_string_value() },
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
        ## @param value Value to set for the managedDeviceCertificateStates property.
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
            writer.write_enum_value("certificateAccessType", @certificate_access_type)
            writer.write_enum_value("certificateStore", @certificate_store)
            writer.write_string_value("certificateTemplateName", @certificate_template_name)
            writer.write_string_value("certificationAuthority", @certification_authority)
            writer.write_string_value("certificationAuthorityName", @certification_authority_name)
            writer.write_enum_value("certificationAuthorityType", @certification_authority_type)
            writer.write_collection_of_object_values("customSubjectAlternativeNames", @custom_subject_alternative_names)
            writer.write_collection_of_object_values("managedDeviceCertificateStates", @managed_device_certificate_states)
            writer.write_collection_of_object_values("silentCertificateAccessDetails", @silent_certificate_access_details)
            writer.write_string_value("subjectAlternativeNameFormatString", @subject_alternative_name_format_string)
            writer.write_string_value("subjectNameFormatString", @subject_name_format_string)
        end
        ## 
        ## Gets the silentCertificateAccessDetails property value. Certificate access information. This collection can contain a maximum of 50 elements.
        ## @return a android_device_owner_silent_certificate_access
        ## 
        def silent_certificate_access_details
            return @silent_certificate_access_details
        end
        ## 
        ## Sets the silentCertificateAccessDetails property value. Certificate access information. This collection can contain a maximum of 50 elements.
        ## @param value Value to set for the silentCertificateAccessDetails property.
        ## @return a void
        ## 
        def silent_certificate_access_details=(value)
            @silent_certificate_access_details = value
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
        ## @param value Value to set for the subjectAlternativeNameFormatString property.
        ## @return a void
        ## 
        def subject_alternative_name_format_string=(value)
            @subject_alternative_name_format_string = value
        end
        ## 
        ## Gets the subjectNameFormatString property value. Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
        ## @return a string
        ## 
        def subject_name_format_string
            return @subject_name_format_string
        end
        ## 
        ## Sets the subjectNameFormatString property value. Custom format to use with SubjectNameFormat = Custom. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
        ## @param value Value to set for the subjectNameFormatString property.
        ## @return a void
        ## 
        def subject_name_format_string=(value)
            @subject_name_format_string = value
        end
    end
end
