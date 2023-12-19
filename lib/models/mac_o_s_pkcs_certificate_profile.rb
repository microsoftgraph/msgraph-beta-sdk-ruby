require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # MacOS PKCS certificate profile.
        class MacOSPkcsCertificateProfile < MicrosoftGraphBeta::Models::MacOSCertificateProfileBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # AllowAllAppsAccess setting
            @allow_all_apps_access
            ## 
            # Target store certificate. Possible values are: user, machine.
            @certificate_store
            ## 
            # PKCS certificate template name.
            @certificate_template_name
            ## 
            # PKCS certification authority FQDN.
            @certification_authority
            ## 
            # PKCS certification authority Name.
            @certification_authority_name
            ## 
            # Custom Subject Alternative Name Settings. This collection can contain a maximum of 500 elements.
            @custom_subject_alternative_names
            ## 
            # Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            @managed_device_certificate_states
            ## 
            # Format string that defines the subject alternative name.
            @subject_alternative_name_format_string
            ## 
            # Format string that defines the subject name. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
            @subject_name_format_string
            ## 
            ## Gets the allowAllAppsAccess property value. AllowAllAppsAccess setting
            ## @return a boolean
            ## 
            def allow_all_apps_access
                return @allow_all_apps_access
            end
            ## 
            ## Sets the allowAllAppsAccess property value. AllowAllAppsAccess setting
            ## @param value Value to set for the allowAllAppsAccess property.
            ## @return a void
            ## 
            def allow_all_apps_access=(value)
                @allow_all_apps_access = value
            end
            ## 
            ## Gets the certificateStore property value. Target store certificate. Possible values are: user, machine.
            ## @return a mac_o_s_pkcs_certificate_profile_certificate_store
            ## 
            def certificate_store
                return @certificate_store
            end
            ## 
            ## Sets the certificateStore property value. Target store certificate. Possible values are: user, machine.
            ## @param value Value to set for the certificateStore property.
            ## @return a void
            ## 
            def certificate_store=(value)
                @certificate_store = value
            end
            ## 
            ## Gets the certificateTemplateName property value. PKCS certificate template name.
            ## @return a string
            ## 
            def certificate_template_name
                return @certificate_template_name
            end
            ## 
            ## Sets the certificateTemplateName property value. PKCS certificate template name.
            ## @param value Value to set for the certificateTemplateName property.
            ## @return a void
            ## 
            def certificate_template_name=(value)
                @certificate_template_name = value
            end
            ## 
            ## Gets the certificationAuthority property value. PKCS certification authority FQDN.
            ## @return a string
            ## 
            def certification_authority
                return @certification_authority
            end
            ## 
            ## Sets the certificationAuthority property value. PKCS certification authority FQDN.
            ## @param value Value to set for the certificationAuthority property.
            ## @return a void
            ## 
            def certification_authority=(value)
                @certification_authority = value
            end
            ## 
            ## Gets the certificationAuthorityName property value. PKCS certification authority Name.
            ## @return a string
            ## 
            def certification_authority_name
                return @certification_authority_name
            end
            ## 
            ## Sets the certificationAuthorityName property value. PKCS certification authority Name.
            ## @param value Value to set for the certificationAuthorityName property.
            ## @return a void
            ## 
            def certification_authority_name=(value)
                @certification_authority_name = value
            end
            ## 
            ## Instantiates a new macOSPkcsCertificateProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSPkcsCertificateProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_pkcs_certificate_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSPkcsCertificateProfile.new
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
                    "allowAllAppsAccess" => lambda {|n| @allow_all_apps_access = n.get_boolean_value() },
                    "certificateStore" => lambda {|n| @certificate_store = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSPkcsCertificateProfileCertificateStore) },
                    "certificateTemplateName" => lambda {|n| @certificate_template_name = n.get_string_value() },
                    "certificationAuthority" => lambda {|n| @certification_authority = n.get_string_value() },
                    "certificationAuthorityName" => lambda {|n| @certification_authority_name = n.get_string_value() },
                    "customSubjectAlternativeNames" => lambda {|n| @custom_subject_alternative_names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomSubjectAlternativeName.create_from_discriminator_value(pn) }) },
                    "managedDeviceCertificateStates" => lambda {|n| @managed_device_certificate_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCertificateState.create_from_discriminator_value(pn) }) },
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
                writer.write_boolean_value("allowAllAppsAccess", @allow_all_apps_access)
                writer.write_enum_value("certificateStore", @certificate_store)
                writer.write_string_value("certificateTemplateName", @certificate_template_name)
                writer.write_string_value("certificationAuthority", @certification_authority)
                writer.write_string_value("certificationAuthorityName", @certification_authority_name)
                writer.write_collection_of_object_values("customSubjectAlternativeNames", @custom_subject_alternative_names)
                writer.write_collection_of_object_values("managedDeviceCertificateStates", @managed_device_certificate_states)
                writer.write_string_value("subjectAlternativeNameFormatString", @subject_alternative_name_format_string)
                writer.write_string_value("subjectNameFormatString", @subject_name_format_string)
            end
            ## 
            ## Gets the subjectAlternativeNameFormatString property value. Format string that defines the subject alternative name.
            ## @return a string
            ## 
            def subject_alternative_name_format_string
                return @subject_alternative_name_format_string
            end
            ## 
            ## Sets the subjectAlternativeNameFormatString property value. Format string that defines the subject alternative name.
            ## @param value Value to set for the subjectAlternativeNameFormatString property.
            ## @return a void
            ## 
            def subject_alternative_name_format_string=(value)
                @subject_alternative_name_format_string = value
            end
            ## 
            ## Gets the subjectNameFormatString property value. Format string that defines the subject name. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
            ## @return a string
            ## 
            def subject_name_format_string
                return @subject_name_format_string
            end
            ## 
            ## Sets the subjectNameFormatString property value. Format string that defines the subject name. Example: CN={{EmailAddress}},E={{EmailAddress}},OU=Enterprise Users,O=Contoso Corporation,L=Redmond,ST=WA,C=US
            ## @param value Value to set for the subjectNameFormatString property.
            ## @return a void
            ## 
            def subject_name_format_string=(value)
                @subject_name_format_string = value
            end
        end
    end
end
