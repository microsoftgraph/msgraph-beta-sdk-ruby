require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityDiscoveredCloudAppInfo < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The csaStarLevel property
            @csa_star_level
            ## 
            # The dataAtRestEncryptionMethod property
            @data_at_rest_encryption_method
            ## 
            # Indicates the countries or regions in which your data center resides.
            @data_center
            ## 
            # The dataRetentionPolicy property
            @data_retention_policy
            ## 
            # The dataTypes property
            @data_types
            ## 
            # Indicates the date when the app domain was registered.
            @domain_registration_date_time
            ## 
            # The encryptionProtocol property
            @encryption_protocol
            ## 
            # The fedRampLevel property
            @fed_ramp_level
            ## 
            # Indicates the year that the specific app vendor was established.
            @founded
            ## 
            # Indicates the GDPR readiness of the app in relation to policies app provides to safeguard personal user data.
            @gdpr_readiness_statement
            ## 
            # Indicates the location of the headquarters of the app.
            @headquarters
            ## 
            # The holding property
            @holding
            ## 
            # Indicates the company name that provides hosting services for the app.
            @hosting_company
            ## 
            # The isAdminAuditTrail property
            @is_admin_audit_trail
            ## 
            # The isCobitCompliant property
            @is_cobit_compliant
            ## 
            # The isCoppaCompliant property
            @is_coppa_compliant
            ## 
            # The isDataAuditTrail property
            @is_data_audit_trail
            ## 
            # The isDataClassification property
            @is_data_classification
            ## 
            # The isDataOwnership property
            @is_data_ownership
            ## 
            # The isDisasterRecoveryPlan property
            @is_disaster_recovery_plan
            ## 
            # The isDmca property
            @is_dmca
            ## 
            # The isFerpaCompliant property
            @is_ferpa_compliant
            ## 
            # The isFfiecCompliant property
            @is_ffiec_compliant
            ## 
            # The isFileSharing property
            @is_file_sharing
            ## 
            # The isFinraCompliant property
            @is_finra_compliant
            ## 
            # The isFismaCompliant property
            @is_fisma_compliant
            ## 
            # The isGaapCompliant property
            @is_gaap_compliant
            ## 
            # The isGdprDataProtectionImpactAssessment property
            @is_gdpr_data_protection_impact_assessment
            ## 
            # The isGdprDataProtectionOfficer property
            @is_gdpr_data_protection_officer
            ## 
            # The isGdprDataProtectionSecureCrossBorderDataTransfer property
            @is_gdpr_data_protection_secure_cross_border_data_transfer
            ## 
            # The isGdprImpactAssessment property
            @is_gdpr_impact_assessment
            ## 
            # The isGdprLawfulBasisForProcessing property
            @is_gdpr_lawful_basis_for_processing
            ## 
            # The isGdprReportDataBreaches property
            @is_gdpr_report_data_breaches
            ## 
            # The isGdprRightToAccess property
            @is_gdpr_right_to_access
            ## 
            # The isGdprRightToBeInformed property
            @is_gdpr_right_to_be_informed
            ## 
            # The isGdprRightToDataPortablility property
            @is_gdpr_right_to_data_portablility
            ## 
            # The isGdprRightToErasure property
            @is_gdpr_right_to_erasure
            ## 
            # The isGdprRightToObject property
            @is_gdpr_right_to_object
            ## 
            # The isGdprRightToRectification property
            @is_gdpr_right_to_rectification
            ## 
            # The isGdprRightToRestrictionOfProcessing property
            @is_gdpr_right_to_restriction_of_processing
            ## 
            # The isGdprRightsRelatedToAutomatedDecisionMaking property
            @is_gdpr_rights_related_to_automated_decision_making
            ## 
            # The isGdprSecureCrossBorderDataControl property
            @is_gdpr_secure_cross_border_data_control
            ## 
            # The isGlbaCompliant property
            @is_glba_compliant
            ## 
            # The isHipaaCompliant property
            @is_hipaa_compliant
            ## 
            # The isHitrustCsfCompliant property
            @is_hitrust_csf_compliant
            ## 
            # The isHttpSecurityHeadersContentSecurityPolicy property
            @is_http_security_headers_content_security_policy
            ## 
            # The isHttpSecurityHeadersStrictTransportSecurity property
            @is_http_security_headers_strict_transport_security
            ## 
            # The isHttpSecurityHeadersXContentTypeOptions property
            @is_http_security_headers_x_content_type_options
            ## 
            # The isHttpSecurityHeadersXFrameOptions property
            @is_http_security_headers_x_frame_options
            ## 
            # The isHttpSecurityHeadersXXssProtection property
            @is_http_security_headers_x_xss_protection
            ## 
            # The isIpAddressRestriction property
            @is_ip_address_restriction
            ## 
            # The isIsae3402Compliant property
            @is_isae3402_compliant
            ## 
            # The isIso27001Compliant property
            @is_iso27001_compliant
            ## 
            # The isIso27017Compliant property
            @is_iso27017_compliant
            ## 
            # The isIso27018Compliant property
            @is_iso27018_compliant
            ## 
            # The isItarCompliant property
            @is_itar_compliant
            ## 
            # The isMultiFactorAuthentication property
            @is_multi_factor_authentication
            ## 
            # The isPasswordPolicy property
            @is_password_policy
            ## 
            # The isPasswordPolicyChangePasswordPeriod property
            @is_password_policy_change_password_period
            ## 
            # The isPasswordPolicyCharacterCombination property
            @is_password_policy_character_combination
            ## 
            # The isPasswordPolicyPasswordHistoryAndReuse property
            @is_password_policy_password_history_and_reuse
            ## 
            # The isPasswordPolicyPasswordLengthLimit property
            @is_password_policy_password_length_limit
            ## 
            # The isPasswordPolicyPersonalInformationUse property
            @is_password_policy_personal_information_use
            ## 
            # The isPenetrationTesting property
            @is_penetration_testing
            ## 
            # The isPrivacyShieldCompliant property
            @is_privacy_shield_compliant
            ## 
            # The isRememberPassword property
            @is_remember_password
            ## 
            # The isRequiresUserAuthentication property
            @is_requires_user_authentication
            ## 
            # The isSoc1Compliant property
            @is_soc1_compliant
            ## 
            # The isSoc2Compliant property
            @is_soc2_compliant
            ## 
            # The isSoc3Compliant property
            @is_soc3_compliant
            ## 
            # The isSoxCompliant property
            @is_sox_compliant
            ## 
            # The isSp80053Compliant property
            @is_sp80053_compliant
            ## 
            # The isSsae16Compliant property
            @is_ssae16_compliant
            ## 
            # The isSupportsSaml property
            @is_supports_saml
            ## 
            # The isTrustedCertificate property
            @is_trusted_certificate
            ## 
            # The isUserAuditTrail property
            @is_user_audit_trail
            ## 
            # The isUserCanUploadData property
            @is_user_can_upload_data
            ## 
            # The isUserRolesSupport property
            @is_user_roles_support
            ## 
            # The isValidCertificateName property
            @is_valid_certificate_name
            ## 
            # Indicates the last date of the data breach for the company.
            @latest_breach_date_time
            ## 
            # Indicates the URL that users can use to sign into the app.
            @logon_urls
            ## 
            # The pciDssVersion property
            @pci_dss_version
            ## 
            # Indicates the app vendor.
            @vendor
            ## 
            ## Instantiates a new SecurityDiscoveredCloudAppInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_discovered_cloud_app_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDiscoveredCloudAppInfo.new
            end
            ## 
            ## Gets the csaStarLevel property value. The csaStarLevel property
            ## @return a security_app_info_csa_star_level
            ## 
            def csa_star_level
                return @csa_star_level
            end
            ## 
            ## Sets the csaStarLevel property value. The csaStarLevel property
            ## @param value Value to set for the csaStarLevel property.
            ## @return a void
            ## 
            def csa_star_level=(value)
                @csa_star_level = value
            end
            ## 
            ## Gets the dataAtRestEncryptionMethod property value. The dataAtRestEncryptionMethod property
            ## @return a security_app_info_data_at_rest_encryption_method
            ## 
            def data_at_rest_encryption_method
                return @data_at_rest_encryption_method
            end
            ## 
            ## Sets the dataAtRestEncryptionMethod property value. The dataAtRestEncryptionMethod property
            ## @param value Value to set for the dataAtRestEncryptionMethod property.
            ## @return a void
            ## 
            def data_at_rest_encryption_method=(value)
                @data_at_rest_encryption_method = value
            end
            ## 
            ## Gets the dataCenter property value. Indicates the countries or regions in which your data center resides.
            ## @return a string
            ## 
            def data_center
                return @data_center
            end
            ## 
            ## Sets the dataCenter property value. Indicates the countries or regions in which your data center resides.
            ## @param value Value to set for the dataCenter property.
            ## @return a void
            ## 
            def data_center=(value)
                @data_center = value
            end
            ## 
            ## Gets the dataRetentionPolicy property value. The dataRetentionPolicy property
            ## @return a security_app_info_data_retention_policy
            ## 
            def data_retention_policy
                return @data_retention_policy
            end
            ## 
            ## Sets the dataRetentionPolicy property value. The dataRetentionPolicy property
            ## @param value Value to set for the dataRetentionPolicy property.
            ## @return a void
            ## 
            def data_retention_policy=(value)
                @data_retention_policy = value
            end
            ## 
            ## Gets the dataTypes property value. The dataTypes property
            ## @return a security_app_info_uploaded_data_types
            ## 
            def data_types
                return @data_types
            end
            ## 
            ## Sets the dataTypes property value. The dataTypes property
            ## @param value Value to set for the dataTypes property.
            ## @return a void
            ## 
            def data_types=(value)
                @data_types = value
            end
            ## 
            ## Gets the domainRegistrationDateTime property value. Indicates the date when the app domain was registered.
            ## @return a date_time
            ## 
            def domain_registration_date_time
                return @domain_registration_date_time
            end
            ## 
            ## Sets the domainRegistrationDateTime property value. Indicates the date when the app domain was registered.
            ## @param value Value to set for the domainRegistrationDateTime property.
            ## @return a void
            ## 
            def domain_registration_date_time=(value)
                @domain_registration_date_time = value
            end
            ## 
            ## Gets the encryptionProtocol property value. The encryptionProtocol property
            ## @return a security_app_info_encryption_protocol
            ## 
            def encryption_protocol
                return @encryption_protocol
            end
            ## 
            ## Sets the encryptionProtocol property value. The encryptionProtocol property
            ## @param value Value to set for the encryptionProtocol property.
            ## @return a void
            ## 
            def encryption_protocol=(value)
                @encryption_protocol = value
            end
            ## 
            ## Gets the fedRampLevel property value. The fedRampLevel property
            ## @return a security_app_info_fed_ramp_level
            ## 
            def fed_ramp_level
                return @fed_ramp_level
            end
            ## 
            ## Sets the fedRampLevel property value. The fedRampLevel property
            ## @param value Value to set for the fedRampLevel property.
            ## @return a void
            ## 
            def fed_ramp_level=(value)
                @fed_ramp_level = value
            end
            ## 
            ## Gets the founded property value. Indicates the year that the specific app vendor was established.
            ## @return a integer
            ## 
            def founded
                return @founded
            end
            ## 
            ## Sets the founded property value. Indicates the year that the specific app vendor was established.
            ## @param value Value to set for the founded property.
            ## @return a void
            ## 
            def founded=(value)
                @founded = value
            end
            ## 
            ## Gets the gdprReadinessStatement property value. Indicates the GDPR readiness of the app in relation to policies app provides to safeguard personal user data.
            ## @return a string
            ## 
            def gdpr_readiness_statement
                return @gdpr_readiness_statement
            end
            ## 
            ## Sets the gdprReadinessStatement property value. Indicates the GDPR readiness of the app in relation to policies app provides to safeguard personal user data.
            ## @param value Value to set for the gdprReadinessStatement property.
            ## @return a void
            ## 
            def gdpr_readiness_statement=(value)
                @gdpr_readiness_statement = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "csaStarLevel" => lambda {|n| @csa_star_level = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppInfoCsaStarLevel) },
                    "dataAtRestEncryptionMethod" => lambda {|n| @data_at_rest_encryption_method = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppInfoDataAtRestEncryptionMethod) },
                    "dataCenter" => lambda {|n| @data_center = n.get_string_value() },
                    "dataRetentionPolicy" => lambda {|n| @data_retention_policy = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppInfoDataRetentionPolicy) },
                    "dataTypes" => lambda {|n| @data_types = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppInfoUploadedDataTypes) },
                    "domainRegistrationDateTime" => lambda {|n| @domain_registration_date_time = n.get_date_time_value() },
                    "encryptionProtocol" => lambda {|n| @encryption_protocol = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppInfoEncryptionProtocol) },
                    "fedRampLevel" => lambda {|n| @fed_ramp_level = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppInfoFedRampLevel) },
                    "founded" => lambda {|n| @founded = n.get_number_value() },
                    "gdprReadinessStatement" => lambda {|n| @gdpr_readiness_statement = n.get_string_value() },
                    "headquarters" => lambda {|n| @headquarters = n.get_string_value() },
                    "holding" => lambda {|n| @holding = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppInfoHolding) },
                    "hostingCompany" => lambda {|n| @hosting_company = n.get_string_value() },
                    "isAdminAuditTrail" => lambda {|n| @is_admin_audit_trail = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isCobitCompliant" => lambda {|n| @is_cobit_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isCoppaCompliant" => lambda {|n| @is_coppa_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isDataAuditTrail" => lambda {|n| @is_data_audit_trail = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isDataClassification" => lambda {|n| @is_data_classification = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isDataOwnership" => lambda {|n| @is_data_ownership = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isDisasterRecoveryPlan" => lambda {|n| @is_disaster_recovery_plan = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isDmca" => lambda {|n| @is_dmca = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isFerpaCompliant" => lambda {|n| @is_ferpa_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isFfiecCompliant" => lambda {|n| @is_ffiec_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isFileSharing" => lambda {|n| @is_file_sharing = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isFinraCompliant" => lambda {|n| @is_finra_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isFismaCompliant" => lambda {|n| @is_fisma_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGaapCompliant" => lambda {|n| @is_gaap_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprDataProtectionImpactAssessment" => lambda {|n| @is_gdpr_data_protection_impact_assessment = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprDataProtectionOfficer" => lambda {|n| @is_gdpr_data_protection_officer = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprDataProtectionSecureCrossBorderDataTransfer" => lambda {|n| @is_gdpr_data_protection_secure_cross_border_data_transfer = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprImpactAssessment" => lambda {|n| @is_gdpr_impact_assessment = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprLawfulBasisForProcessing" => lambda {|n| @is_gdpr_lawful_basis_for_processing = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprReportDataBreaches" => lambda {|n| @is_gdpr_report_data_breaches = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprRightToAccess" => lambda {|n| @is_gdpr_right_to_access = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprRightToBeInformed" => lambda {|n| @is_gdpr_right_to_be_informed = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprRightToDataPortablility" => lambda {|n| @is_gdpr_right_to_data_portablility = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprRightToErasure" => lambda {|n| @is_gdpr_right_to_erasure = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprRightToObject" => lambda {|n| @is_gdpr_right_to_object = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprRightToRectification" => lambda {|n| @is_gdpr_right_to_rectification = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprRightToRestrictionOfProcessing" => lambda {|n| @is_gdpr_right_to_restriction_of_processing = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprRightsRelatedToAutomatedDecisionMaking" => lambda {|n| @is_gdpr_rights_related_to_automated_decision_making = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGdprSecureCrossBorderDataControl" => lambda {|n| @is_gdpr_secure_cross_border_data_control = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isGlbaCompliant" => lambda {|n| @is_glba_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isHipaaCompliant" => lambda {|n| @is_hipaa_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isHitrustCsfCompliant" => lambda {|n| @is_hitrust_csf_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isHttpSecurityHeadersContentSecurityPolicy" => lambda {|n| @is_http_security_headers_content_security_policy = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isHttpSecurityHeadersStrictTransportSecurity" => lambda {|n| @is_http_security_headers_strict_transport_security = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isHttpSecurityHeadersXContentTypeOptions" => lambda {|n| @is_http_security_headers_x_content_type_options = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isHttpSecurityHeadersXFrameOptions" => lambda {|n| @is_http_security_headers_x_frame_options = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isHttpSecurityHeadersXXssProtection" => lambda {|n| @is_http_security_headers_x_xss_protection = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isIpAddressRestriction" => lambda {|n| @is_ip_address_restriction = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isIsae3402Compliant" => lambda {|n| @is_isae3402_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isIso27001Compliant" => lambda {|n| @is_iso27001_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isIso27017Compliant" => lambda {|n| @is_iso27017_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isIso27018Compliant" => lambda {|n| @is_iso27018_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isItarCompliant" => lambda {|n| @is_itar_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isMultiFactorAuthentication" => lambda {|n| @is_multi_factor_authentication = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isPasswordPolicy" => lambda {|n| @is_password_policy = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isPasswordPolicyChangePasswordPeriod" => lambda {|n| @is_password_policy_change_password_period = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isPasswordPolicyCharacterCombination" => lambda {|n| @is_password_policy_character_combination = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isPasswordPolicyPasswordHistoryAndReuse" => lambda {|n| @is_password_policy_password_history_and_reuse = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isPasswordPolicyPasswordLengthLimit" => lambda {|n| @is_password_policy_password_length_limit = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isPasswordPolicyPersonalInformationUse" => lambda {|n| @is_password_policy_personal_information_use = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isPenetrationTesting" => lambda {|n| @is_penetration_testing = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isPrivacyShieldCompliant" => lambda {|n| @is_privacy_shield_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isRememberPassword" => lambda {|n| @is_remember_password = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isRequiresUserAuthentication" => lambda {|n| @is_requires_user_authentication = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isSoc1Compliant" => lambda {|n| @is_soc1_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isSoc2Compliant" => lambda {|n| @is_soc2_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isSoc3Compliant" => lambda {|n| @is_soc3_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isSoxCompliant" => lambda {|n| @is_sox_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isSp80053Compliant" => lambda {|n| @is_sp80053_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isSsae16Compliant" => lambda {|n| @is_ssae16_compliant = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isSupportsSaml" => lambda {|n| @is_supports_saml = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isTrustedCertificate" => lambda {|n| @is_trusted_certificate = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isUserAuditTrail" => lambda {|n| @is_user_audit_trail = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isUserCanUploadData" => lambda {|n| @is_user_can_upload_data = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isUserRolesSupport" => lambda {|n| @is_user_roles_support = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "isValidCertificateName" => lambda {|n| @is_valid_certificate_name = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityCloudAppInfoState) },
                    "latestBreachDateTime" => lambda {|n| @latest_breach_date_time = n.get_date_time_value() },
                    "logonUrls" => lambda {|n| @logon_urls = n.get_string_value() },
                    "pciDssVersion" => lambda {|n| @pci_dss_version = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAppInfoPciDssVersion) },
                    "vendor" => lambda {|n| @vendor = n.get_string_value() },
                })
            end
            ## 
            ## Gets the headquarters property value. Indicates the location of the headquarters of the app.
            ## @return a string
            ## 
            def headquarters
                return @headquarters
            end
            ## 
            ## Sets the headquarters property value. Indicates the location of the headquarters of the app.
            ## @param value Value to set for the headquarters property.
            ## @return a void
            ## 
            def headquarters=(value)
                @headquarters = value
            end
            ## 
            ## Gets the holding property value. The holding property
            ## @return a security_app_info_holding
            ## 
            def holding
                return @holding
            end
            ## 
            ## Sets the holding property value. The holding property
            ## @param value Value to set for the holding property.
            ## @return a void
            ## 
            def holding=(value)
                @holding = value
            end
            ## 
            ## Gets the hostingCompany property value. Indicates the company name that provides hosting services for the app.
            ## @return a string
            ## 
            def hosting_company
                return @hosting_company
            end
            ## 
            ## Sets the hostingCompany property value. Indicates the company name that provides hosting services for the app.
            ## @param value Value to set for the hostingCompany property.
            ## @return a void
            ## 
            def hosting_company=(value)
                @hosting_company = value
            end
            ## 
            ## Gets the isAdminAuditTrail property value. The isAdminAuditTrail property
            ## @return a security_cloud_app_info_state
            ## 
            def is_admin_audit_trail
                return @is_admin_audit_trail
            end
            ## 
            ## Sets the isAdminAuditTrail property value. The isAdminAuditTrail property
            ## @param value Value to set for the isAdminAuditTrail property.
            ## @return a void
            ## 
            def is_admin_audit_trail=(value)
                @is_admin_audit_trail = value
            end
            ## 
            ## Gets the isCobitCompliant property value. The isCobitCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_cobit_compliant
                return @is_cobit_compliant
            end
            ## 
            ## Sets the isCobitCompliant property value. The isCobitCompliant property
            ## @param value Value to set for the isCobitCompliant property.
            ## @return a void
            ## 
            def is_cobit_compliant=(value)
                @is_cobit_compliant = value
            end
            ## 
            ## Gets the isCoppaCompliant property value. The isCoppaCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_coppa_compliant
                return @is_coppa_compliant
            end
            ## 
            ## Sets the isCoppaCompliant property value. The isCoppaCompliant property
            ## @param value Value to set for the isCoppaCompliant property.
            ## @return a void
            ## 
            def is_coppa_compliant=(value)
                @is_coppa_compliant = value
            end
            ## 
            ## Gets the isDataAuditTrail property value. The isDataAuditTrail property
            ## @return a security_cloud_app_info_state
            ## 
            def is_data_audit_trail
                return @is_data_audit_trail
            end
            ## 
            ## Sets the isDataAuditTrail property value. The isDataAuditTrail property
            ## @param value Value to set for the isDataAuditTrail property.
            ## @return a void
            ## 
            def is_data_audit_trail=(value)
                @is_data_audit_trail = value
            end
            ## 
            ## Gets the isDataClassification property value. The isDataClassification property
            ## @return a security_cloud_app_info_state
            ## 
            def is_data_classification
                return @is_data_classification
            end
            ## 
            ## Sets the isDataClassification property value. The isDataClassification property
            ## @param value Value to set for the isDataClassification property.
            ## @return a void
            ## 
            def is_data_classification=(value)
                @is_data_classification = value
            end
            ## 
            ## Gets the isDataOwnership property value. The isDataOwnership property
            ## @return a security_cloud_app_info_state
            ## 
            def is_data_ownership
                return @is_data_ownership
            end
            ## 
            ## Sets the isDataOwnership property value. The isDataOwnership property
            ## @param value Value to set for the isDataOwnership property.
            ## @return a void
            ## 
            def is_data_ownership=(value)
                @is_data_ownership = value
            end
            ## 
            ## Gets the isDisasterRecoveryPlan property value. The isDisasterRecoveryPlan property
            ## @return a security_cloud_app_info_state
            ## 
            def is_disaster_recovery_plan
                return @is_disaster_recovery_plan
            end
            ## 
            ## Sets the isDisasterRecoveryPlan property value. The isDisasterRecoveryPlan property
            ## @param value Value to set for the isDisasterRecoveryPlan property.
            ## @return a void
            ## 
            def is_disaster_recovery_plan=(value)
                @is_disaster_recovery_plan = value
            end
            ## 
            ## Gets the isDmca property value. The isDmca property
            ## @return a security_cloud_app_info_state
            ## 
            def is_dmca
                return @is_dmca
            end
            ## 
            ## Sets the isDmca property value. The isDmca property
            ## @param value Value to set for the isDmca property.
            ## @return a void
            ## 
            def is_dmca=(value)
                @is_dmca = value
            end
            ## 
            ## Gets the isFerpaCompliant property value. The isFerpaCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_ferpa_compliant
                return @is_ferpa_compliant
            end
            ## 
            ## Sets the isFerpaCompliant property value. The isFerpaCompliant property
            ## @param value Value to set for the isFerpaCompliant property.
            ## @return a void
            ## 
            def is_ferpa_compliant=(value)
                @is_ferpa_compliant = value
            end
            ## 
            ## Gets the isFfiecCompliant property value. The isFfiecCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_ffiec_compliant
                return @is_ffiec_compliant
            end
            ## 
            ## Sets the isFfiecCompliant property value. The isFfiecCompliant property
            ## @param value Value to set for the isFfiecCompliant property.
            ## @return a void
            ## 
            def is_ffiec_compliant=(value)
                @is_ffiec_compliant = value
            end
            ## 
            ## Gets the isFileSharing property value. The isFileSharing property
            ## @return a security_cloud_app_info_state
            ## 
            def is_file_sharing
                return @is_file_sharing
            end
            ## 
            ## Sets the isFileSharing property value. The isFileSharing property
            ## @param value Value to set for the isFileSharing property.
            ## @return a void
            ## 
            def is_file_sharing=(value)
                @is_file_sharing = value
            end
            ## 
            ## Gets the isFinraCompliant property value. The isFinraCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_finra_compliant
                return @is_finra_compliant
            end
            ## 
            ## Sets the isFinraCompliant property value. The isFinraCompliant property
            ## @param value Value to set for the isFinraCompliant property.
            ## @return a void
            ## 
            def is_finra_compliant=(value)
                @is_finra_compliant = value
            end
            ## 
            ## Gets the isFismaCompliant property value. The isFismaCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_fisma_compliant
                return @is_fisma_compliant
            end
            ## 
            ## Sets the isFismaCompliant property value. The isFismaCompliant property
            ## @param value Value to set for the isFismaCompliant property.
            ## @return a void
            ## 
            def is_fisma_compliant=(value)
                @is_fisma_compliant = value
            end
            ## 
            ## Gets the isGaapCompliant property value. The isGaapCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gaap_compliant
                return @is_gaap_compliant
            end
            ## 
            ## Sets the isGaapCompliant property value. The isGaapCompliant property
            ## @param value Value to set for the isGaapCompliant property.
            ## @return a void
            ## 
            def is_gaap_compliant=(value)
                @is_gaap_compliant = value
            end
            ## 
            ## Gets the isGdprDataProtectionImpactAssessment property value. The isGdprDataProtectionImpactAssessment property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_data_protection_impact_assessment
                return @is_gdpr_data_protection_impact_assessment
            end
            ## 
            ## Sets the isGdprDataProtectionImpactAssessment property value. The isGdprDataProtectionImpactAssessment property
            ## @param value Value to set for the isGdprDataProtectionImpactAssessment property.
            ## @return a void
            ## 
            def is_gdpr_data_protection_impact_assessment=(value)
                @is_gdpr_data_protection_impact_assessment = value
            end
            ## 
            ## Gets the isGdprDataProtectionOfficer property value. The isGdprDataProtectionOfficer property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_data_protection_officer
                return @is_gdpr_data_protection_officer
            end
            ## 
            ## Sets the isGdprDataProtectionOfficer property value. The isGdprDataProtectionOfficer property
            ## @param value Value to set for the isGdprDataProtectionOfficer property.
            ## @return a void
            ## 
            def is_gdpr_data_protection_officer=(value)
                @is_gdpr_data_protection_officer = value
            end
            ## 
            ## Gets the isGdprDataProtectionSecureCrossBorderDataTransfer property value. The isGdprDataProtectionSecureCrossBorderDataTransfer property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_data_protection_secure_cross_border_data_transfer
                return @is_gdpr_data_protection_secure_cross_border_data_transfer
            end
            ## 
            ## Sets the isGdprDataProtectionSecureCrossBorderDataTransfer property value. The isGdprDataProtectionSecureCrossBorderDataTransfer property
            ## @param value Value to set for the isGdprDataProtectionSecureCrossBorderDataTransfer property.
            ## @return a void
            ## 
            def is_gdpr_data_protection_secure_cross_border_data_transfer=(value)
                @is_gdpr_data_protection_secure_cross_border_data_transfer = value
            end
            ## 
            ## Gets the isGdprImpactAssessment property value. The isGdprImpactAssessment property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_impact_assessment
                return @is_gdpr_impact_assessment
            end
            ## 
            ## Sets the isGdprImpactAssessment property value. The isGdprImpactAssessment property
            ## @param value Value to set for the isGdprImpactAssessment property.
            ## @return a void
            ## 
            def is_gdpr_impact_assessment=(value)
                @is_gdpr_impact_assessment = value
            end
            ## 
            ## Gets the isGdprLawfulBasisForProcessing property value. The isGdprLawfulBasisForProcessing property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_lawful_basis_for_processing
                return @is_gdpr_lawful_basis_for_processing
            end
            ## 
            ## Sets the isGdprLawfulBasisForProcessing property value. The isGdprLawfulBasisForProcessing property
            ## @param value Value to set for the isGdprLawfulBasisForProcessing property.
            ## @return a void
            ## 
            def is_gdpr_lawful_basis_for_processing=(value)
                @is_gdpr_lawful_basis_for_processing = value
            end
            ## 
            ## Gets the isGdprReportDataBreaches property value. The isGdprReportDataBreaches property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_report_data_breaches
                return @is_gdpr_report_data_breaches
            end
            ## 
            ## Sets the isGdprReportDataBreaches property value. The isGdprReportDataBreaches property
            ## @param value Value to set for the isGdprReportDataBreaches property.
            ## @return a void
            ## 
            def is_gdpr_report_data_breaches=(value)
                @is_gdpr_report_data_breaches = value
            end
            ## 
            ## Gets the isGdprRightToAccess property value. The isGdprRightToAccess property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_right_to_access
                return @is_gdpr_right_to_access
            end
            ## 
            ## Sets the isGdprRightToAccess property value. The isGdprRightToAccess property
            ## @param value Value to set for the isGdprRightToAccess property.
            ## @return a void
            ## 
            def is_gdpr_right_to_access=(value)
                @is_gdpr_right_to_access = value
            end
            ## 
            ## Gets the isGdprRightToBeInformed property value. The isGdprRightToBeInformed property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_right_to_be_informed
                return @is_gdpr_right_to_be_informed
            end
            ## 
            ## Sets the isGdprRightToBeInformed property value. The isGdprRightToBeInformed property
            ## @param value Value to set for the isGdprRightToBeInformed property.
            ## @return a void
            ## 
            def is_gdpr_right_to_be_informed=(value)
                @is_gdpr_right_to_be_informed = value
            end
            ## 
            ## Gets the isGdprRightToDataPortablility property value. The isGdprRightToDataPortablility property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_right_to_data_portablility
                return @is_gdpr_right_to_data_portablility
            end
            ## 
            ## Sets the isGdprRightToDataPortablility property value. The isGdprRightToDataPortablility property
            ## @param value Value to set for the isGdprRightToDataPortablility property.
            ## @return a void
            ## 
            def is_gdpr_right_to_data_portablility=(value)
                @is_gdpr_right_to_data_portablility = value
            end
            ## 
            ## Gets the isGdprRightToErasure property value. The isGdprRightToErasure property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_right_to_erasure
                return @is_gdpr_right_to_erasure
            end
            ## 
            ## Sets the isGdprRightToErasure property value. The isGdprRightToErasure property
            ## @param value Value to set for the isGdprRightToErasure property.
            ## @return a void
            ## 
            def is_gdpr_right_to_erasure=(value)
                @is_gdpr_right_to_erasure = value
            end
            ## 
            ## Gets the isGdprRightToObject property value. The isGdprRightToObject property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_right_to_object
                return @is_gdpr_right_to_object
            end
            ## 
            ## Sets the isGdprRightToObject property value. The isGdprRightToObject property
            ## @param value Value to set for the isGdprRightToObject property.
            ## @return a void
            ## 
            def is_gdpr_right_to_object=(value)
                @is_gdpr_right_to_object = value
            end
            ## 
            ## Gets the isGdprRightToRectification property value. The isGdprRightToRectification property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_right_to_rectification
                return @is_gdpr_right_to_rectification
            end
            ## 
            ## Sets the isGdprRightToRectification property value. The isGdprRightToRectification property
            ## @param value Value to set for the isGdprRightToRectification property.
            ## @return a void
            ## 
            def is_gdpr_right_to_rectification=(value)
                @is_gdpr_right_to_rectification = value
            end
            ## 
            ## Gets the isGdprRightToRestrictionOfProcessing property value. The isGdprRightToRestrictionOfProcessing property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_right_to_restriction_of_processing
                return @is_gdpr_right_to_restriction_of_processing
            end
            ## 
            ## Sets the isGdprRightToRestrictionOfProcessing property value. The isGdprRightToRestrictionOfProcessing property
            ## @param value Value to set for the isGdprRightToRestrictionOfProcessing property.
            ## @return a void
            ## 
            def is_gdpr_right_to_restriction_of_processing=(value)
                @is_gdpr_right_to_restriction_of_processing = value
            end
            ## 
            ## Gets the isGdprRightsRelatedToAutomatedDecisionMaking property value. The isGdprRightsRelatedToAutomatedDecisionMaking property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_rights_related_to_automated_decision_making
                return @is_gdpr_rights_related_to_automated_decision_making
            end
            ## 
            ## Sets the isGdprRightsRelatedToAutomatedDecisionMaking property value. The isGdprRightsRelatedToAutomatedDecisionMaking property
            ## @param value Value to set for the isGdprRightsRelatedToAutomatedDecisionMaking property.
            ## @return a void
            ## 
            def is_gdpr_rights_related_to_automated_decision_making=(value)
                @is_gdpr_rights_related_to_automated_decision_making = value
            end
            ## 
            ## Gets the isGdprSecureCrossBorderDataControl property value. The isGdprSecureCrossBorderDataControl property
            ## @return a security_cloud_app_info_state
            ## 
            def is_gdpr_secure_cross_border_data_control
                return @is_gdpr_secure_cross_border_data_control
            end
            ## 
            ## Sets the isGdprSecureCrossBorderDataControl property value. The isGdprSecureCrossBorderDataControl property
            ## @param value Value to set for the isGdprSecureCrossBorderDataControl property.
            ## @return a void
            ## 
            def is_gdpr_secure_cross_border_data_control=(value)
                @is_gdpr_secure_cross_border_data_control = value
            end
            ## 
            ## Gets the isGlbaCompliant property value. The isGlbaCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_glba_compliant
                return @is_glba_compliant
            end
            ## 
            ## Sets the isGlbaCompliant property value. The isGlbaCompliant property
            ## @param value Value to set for the isGlbaCompliant property.
            ## @return a void
            ## 
            def is_glba_compliant=(value)
                @is_glba_compliant = value
            end
            ## 
            ## Gets the isHipaaCompliant property value. The isHipaaCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_hipaa_compliant
                return @is_hipaa_compliant
            end
            ## 
            ## Sets the isHipaaCompliant property value. The isHipaaCompliant property
            ## @param value Value to set for the isHipaaCompliant property.
            ## @return a void
            ## 
            def is_hipaa_compliant=(value)
                @is_hipaa_compliant = value
            end
            ## 
            ## Gets the isHitrustCsfCompliant property value. The isHitrustCsfCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_hitrust_csf_compliant
                return @is_hitrust_csf_compliant
            end
            ## 
            ## Sets the isHitrustCsfCompliant property value. The isHitrustCsfCompliant property
            ## @param value Value to set for the isHitrustCsfCompliant property.
            ## @return a void
            ## 
            def is_hitrust_csf_compliant=(value)
                @is_hitrust_csf_compliant = value
            end
            ## 
            ## Gets the isHttpSecurityHeadersContentSecurityPolicy property value. The isHttpSecurityHeadersContentSecurityPolicy property
            ## @return a security_cloud_app_info_state
            ## 
            def is_http_security_headers_content_security_policy
                return @is_http_security_headers_content_security_policy
            end
            ## 
            ## Sets the isHttpSecurityHeadersContentSecurityPolicy property value. The isHttpSecurityHeadersContentSecurityPolicy property
            ## @param value Value to set for the isHttpSecurityHeadersContentSecurityPolicy property.
            ## @return a void
            ## 
            def is_http_security_headers_content_security_policy=(value)
                @is_http_security_headers_content_security_policy = value
            end
            ## 
            ## Gets the isHttpSecurityHeadersStrictTransportSecurity property value. The isHttpSecurityHeadersStrictTransportSecurity property
            ## @return a security_cloud_app_info_state
            ## 
            def is_http_security_headers_strict_transport_security
                return @is_http_security_headers_strict_transport_security
            end
            ## 
            ## Sets the isHttpSecurityHeadersStrictTransportSecurity property value. The isHttpSecurityHeadersStrictTransportSecurity property
            ## @param value Value to set for the isHttpSecurityHeadersStrictTransportSecurity property.
            ## @return a void
            ## 
            def is_http_security_headers_strict_transport_security=(value)
                @is_http_security_headers_strict_transport_security = value
            end
            ## 
            ## Gets the isHttpSecurityHeadersXContentTypeOptions property value. The isHttpSecurityHeadersXContentTypeOptions property
            ## @return a security_cloud_app_info_state
            ## 
            def is_http_security_headers_x_content_type_options
                return @is_http_security_headers_x_content_type_options
            end
            ## 
            ## Sets the isHttpSecurityHeadersXContentTypeOptions property value. The isHttpSecurityHeadersXContentTypeOptions property
            ## @param value Value to set for the isHttpSecurityHeadersXContentTypeOptions property.
            ## @return a void
            ## 
            def is_http_security_headers_x_content_type_options=(value)
                @is_http_security_headers_x_content_type_options = value
            end
            ## 
            ## Gets the isHttpSecurityHeadersXFrameOptions property value. The isHttpSecurityHeadersXFrameOptions property
            ## @return a security_cloud_app_info_state
            ## 
            def is_http_security_headers_x_frame_options
                return @is_http_security_headers_x_frame_options
            end
            ## 
            ## Sets the isHttpSecurityHeadersXFrameOptions property value. The isHttpSecurityHeadersXFrameOptions property
            ## @param value Value to set for the isHttpSecurityHeadersXFrameOptions property.
            ## @return a void
            ## 
            def is_http_security_headers_x_frame_options=(value)
                @is_http_security_headers_x_frame_options = value
            end
            ## 
            ## Gets the isHttpSecurityHeadersXXssProtection property value. The isHttpSecurityHeadersXXssProtection property
            ## @return a security_cloud_app_info_state
            ## 
            def is_http_security_headers_x_xss_protection
                return @is_http_security_headers_x_xss_protection
            end
            ## 
            ## Sets the isHttpSecurityHeadersXXssProtection property value. The isHttpSecurityHeadersXXssProtection property
            ## @param value Value to set for the isHttpSecurityHeadersXXssProtection property.
            ## @return a void
            ## 
            def is_http_security_headers_x_xss_protection=(value)
                @is_http_security_headers_x_xss_protection = value
            end
            ## 
            ## Gets the isIpAddressRestriction property value. The isIpAddressRestriction property
            ## @return a security_cloud_app_info_state
            ## 
            def is_ip_address_restriction
                return @is_ip_address_restriction
            end
            ## 
            ## Sets the isIpAddressRestriction property value. The isIpAddressRestriction property
            ## @param value Value to set for the isIpAddressRestriction property.
            ## @return a void
            ## 
            def is_ip_address_restriction=(value)
                @is_ip_address_restriction = value
            end
            ## 
            ## Gets the isIsae3402Compliant property value. The isIsae3402Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_isae3402_compliant
                return @is_isae3402_compliant
            end
            ## 
            ## Sets the isIsae3402Compliant property value. The isIsae3402Compliant property
            ## @param value Value to set for the isIsae3402Compliant property.
            ## @return a void
            ## 
            def is_isae3402_compliant=(value)
                @is_isae3402_compliant = value
            end
            ## 
            ## Gets the isIso27001Compliant property value. The isIso27001Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_iso27001_compliant
                return @is_iso27001_compliant
            end
            ## 
            ## Sets the isIso27001Compliant property value. The isIso27001Compliant property
            ## @param value Value to set for the isIso27001Compliant property.
            ## @return a void
            ## 
            def is_iso27001_compliant=(value)
                @is_iso27001_compliant = value
            end
            ## 
            ## Gets the isIso27017Compliant property value. The isIso27017Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_iso27017_compliant
                return @is_iso27017_compliant
            end
            ## 
            ## Sets the isIso27017Compliant property value. The isIso27017Compliant property
            ## @param value Value to set for the isIso27017Compliant property.
            ## @return a void
            ## 
            def is_iso27017_compliant=(value)
                @is_iso27017_compliant = value
            end
            ## 
            ## Gets the isIso27018Compliant property value. The isIso27018Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_iso27018_compliant
                return @is_iso27018_compliant
            end
            ## 
            ## Sets the isIso27018Compliant property value. The isIso27018Compliant property
            ## @param value Value to set for the isIso27018Compliant property.
            ## @return a void
            ## 
            def is_iso27018_compliant=(value)
                @is_iso27018_compliant = value
            end
            ## 
            ## Gets the isItarCompliant property value. The isItarCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_itar_compliant
                return @is_itar_compliant
            end
            ## 
            ## Sets the isItarCompliant property value. The isItarCompliant property
            ## @param value Value to set for the isItarCompliant property.
            ## @return a void
            ## 
            def is_itar_compliant=(value)
                @is_itar_compliant = value
            end
            ## 
            ## Gets the isMultiFactorAuthentication property value. The isMultiFactorAuthentication property
            ## @return a security_cloud_app_info_state
            ## 
            def is_multi_factor_authentication
                return @is_multi_factor_authentication
            end
            ## 
            ## Sets the isMultiFactorAuthentication property value. The isMultiFactorAuthentication property
            ## @param value Value to set for the isMultiFactorAuthentication property.
            ## @return a void
            ## 
            def is_multi_factor_authentication=(value)
                @is_multi_factor_authentication = value
            end
            ## 
            ## Gets the isPasswordPolicy property value. The isPasswordPolicy property
            ## @return a security_cloud_app_info_state
            ## 
            def is_password_policy
                return @is_password_policy
            end
            ## 
            ## Sets the isPasswordPolicy property value. The isPasswordPolicy property
            ## @param value Value to set for the isPasswordPolicy property.
            ## @return a void
            ## 
            def is_password_policy=(value)
                @is_password_policy = value
            end
            ## 
            ## Gets the isPasswordPolicyChangePasswordPeriod property value. The isPasswordPolicyChangePasswordPeriod property
            ## @return a security_cloud_app_info_state
            ## 
            def is_password_policy_change_password_period
                return @is_password_policy_change_password_period
            end
            ## 
            ## Sets the isPasswordPolicyChangePasswordPeriod property value. The isPasswordPolicyChangePasswordPeriod property
            ## @param value Value to set for the isPasswordPolicyChangePasswordPeriod property.
            ## @return a void
            ## 
            def is_password_policy_change_password_period=(value)
                @is_password_policy_change_password_period = value
            end
            ## 
            ## Gets the isPasswordPolicyCharacterCombination property value. The isPasswordPolicyCharacterCombination property
            ## @return a security_cloud_app_info_state
            ## 
            def is_password_policy_character_combination
                return @is_password_policy_character_combination
            end
            ## 
            ## Sets the isPasswordPolicyCharacterCombination property value. The isPasswordPolicyCharacterCombination property
            ## @param value Value to set for the isPasswordPolicyCharacterCombination property.
            ## @return a void
            ## 
            def is_password_policy_character_combination=(value)
                @is_password_policy_character_combination = value
            end
            ## 
            ## Gets the isPasswordPolicyPasswordHistoryAndReuse property value. The isPasswordPolicyPasswordHistoryAndReuse property
            ## @return a security_cloud_app_info_state
            ## 
            def is_password_policy_password_history_and_reuse
                return @is_password_policy_password_history_and_reuse
            end
            ## 
            ## Sets the isPasswordPolicyPasswordHistoryAndReuse property value. The isPasswordPolicyPasswordHistoryAndReuse property
            ## @param value Value to set for the isPasswordPolicyPasswordHistoryAndReuse property.
            ## @return a void
            ## 
            def is_password_policy_password_history_and_reuse=(value)
                @is_password_policy_password_history_and_reuse = value
            end
            ## 
            ## Gets the isPasswordPolicyPasswordLengthLimit property value. The isPasswordPolicyPasswordLengthLimit property
            ## @return a security_cloud_app_info_state
            ## 
            def is_password_policy_password_length_limit
                return @is_password_policy_password_length_limit
            end
            ## 
            ## Sets the isPasswordPolicyPasswordLengthLimit property value. The isPasswordPolicyPasswordLengthLimit property
            ## @param value Value to set for the isPasswordPolicyPasswordLengthLimit property.
            ## @return a void
            ## 
            def is_password_policy_password_length_limit=(value)
                @is_password_policy_password_length_limit = value
            end
            ## 
            ## Gets the isPasswordPolicyPersonalInformationUse property value. The isPasswordPolicyPersonalInformationUse property
            ## @return a security_cloud_app_info_state
            ## 
            def is_password_policy_personal_information_use
                return @is_password_policy_personal_information_use
            end
            ## 
            ## Sets the isPasswordPolicyPersonalInformationUse property value. The isPasswordPolicyPersonalInformationUse property
            ## @param value Value to set for the isPasswordPolicyPersonalInformationUse property.
            ## @return a void
            ## 
            def is_password_policy_personal_information_use=(value)
                @is_password_policy_personal_information_use = value
            end
            ## 
            ## Gets the isPenetrationTesting property value. The isPenetrationTesting property
            ## @return a security_cloud_app_info_state
            ## 
            def is_penetration_testing
                return @is_penetration_testing
            end
            ## 
            ## Sets the isPenetrationTesting property value. The isPenetrationTesting property
            ## @param value Value to set for the isPenetrationTesting property.
            ## @return a void
            ## 
            def is_penetration_testing=(value)
                @is_penetration_testing = value
            end
            ## 
            ## Gets the isPrivacyShieldCompliant property value. The isPrivacyShieldCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_privacy_shield_compliant
                return @is_privacy_shield_compliant
            end
            ## 
            ## Sets the isPrivacyShieldCompliant property value. The isPrivacyShieldCompliant property
            ## @param value Value to set for the isPrivacyShieldCompliant property.
            ## @return a void
            ## 
            def is_privacy_shield_compliant=(value)
                @is_privacy_shield_compliant = value
            end
            ## 
            ## Gets the isRememberPassword property value. The isRememberPassword property
            ## @return a security_cloud_app_info_state
            ## 
            def is_remember_password
                return @is_remember_password
            end
            ## 
            ## Sets the isRememberPassword property value. The isRememberPassword property
            ## @param value Value to set for the isRememberPassword property.
            ## @return a void
            ## 
            def is_remember_password=(value)
                @is_remember_password = value
            end
            ## 
            ## Gets the isRequiresUserAuthentication property value. The isRequiresUserAuthentication property
            ## @return a security_cloud_app_info_state
            ## 
            def is_requires_user_authentication
                return @is_requires_user_authentication
            end
            ## 
            ## Sets the isRequiresUserAuthentication property value. The isRequiresUserAuthentication property
            ## @param value Value to set for the isRequiresUserAuthentication property.
            ## @return a void
            ## 
            def is_requires_user_authentication=(value)
                @is_requires_user_authentication = value
            end
            ## 
            ## Gets the isSoc1Compliant property value. The isSoc1Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_soc1_compliant
                return @is_soc1_compliant
            end
            ## 
            ## Sets the isSoc1Compliant property value. The isSoc1Compliant property
            ## @param value Value to set for the isSoc1Compliant property.
            ## @return a void
            ## 
            def is_soc1_compliant=(value)
                @is_soc1_compliant = value
            end
            ## 
            ## Gets the isSoc2Compliant property value. The isSoc2Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_soc2_compliant
                return @is_soc2_compliant
            end
            ## 
            ## Sets the isSoc2Compliant property value. The isSoc2Compliant property
            ## @param value Value to set for the isSoc2Compliant property.
            ## @return a void
            ## 
            def is_soc2_compliant=(value)
                @is_soc2_compliant = value
            end
            ## 
            ## Gets the isSoc3Compliant property value. The isSoc3Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_soc3_compliant
                return @is_soc3_compliant
            end
            ## 
            ## Sets the isSoc3Compliant property value. The isSoc3Compliant property
            ## @param value Value to set for the isSoc3Compliant property.
            ## @return a void
            ## 
            def is_soc3_compliant=(value)
                @is_soc3_compliant = value
            end
            ## 
            ## Gets the isSoxCompliant property value. The isSoxCompliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_sox_compliant
                return @is_sox_compliant
            end
            ## 
            ## Sets the isSoxCompliant property value. The isSoxCompliant property
            ## @param value Value to set for the isSoxCompliant property.
            ## @return a void
            ## 
            def is_sox_compliant=(value)
                @is_sox_compliant = value
            end
            ## 
            ## Gets the isSp80053Compliant property value. The isSp80053Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_sp80053_compliant
                return @is_sp80053_compliant
            end
            ## 
            ## Sets the isSp80053Compliant property value. The isSp80053Compliant property
            ## @param value Value to set for the isSp80053Compliant property.
            ## @return a void
            ## 
            def is_sp80053_compliant=(value)
                @is_sp80053_compliant = value
            end
            ## 
            ## Gets the isSsae16Compliant property value. The isSsae16Compliant property
            ## @return a security_cloud_app_info_state
            ## 
            def is_ssae16_compliant
                return @is_ssae16_compliant
            end
            ## 
            ## Sets the isSsae16Compliant property value. The isSsae16Compliant property
            ## @param value Value to set for the isSsae16Compliant property.
            ## @return a void
            ## 
            def is_ssae16_compliant=(value)
                @is_ssae16_compliant = value
            end
            ## 
            ## Gets the isSupportsSaml property value. The isSupportsSaml property
            ## @return a security_cloud_app_info_state
            ## 
            def is_supports_saml
                return @is_supports_saml
            end
            ## 
            ## Sets the isSupportsSaml property value. The isSupportsSaml property
            ## @param value Value to set for the isSupportsSaml property.
            ## @return a void
            ## 
            def is_supports_saml=(value)
                @is_supports_saml = value
            end
            ## 
            ## Gets the isTrustedCertificate property value. The isTrustedCertificate property
            ## @return a security_cloud_app_info_state
            ## 
            def is_trusted_certificate
                return @is_trusted_certificate
            end
            ## 
            ## Sets the isTrustedCertificate property value. The isTrustedCertificate property
            ## @param value Value to set for the isTrustedCertificate property.
            ## @return a void
            ## 
            def is_trusted_certificate=(value)
                @is_trusted_certificate = value
            end
            ## 
            ## Gets the isUserAuditTrail property value. The isUserAuditTrail property
            ## @return a security_cloud_app_info_state
            ## 
            def is_user_audit_trail
                return @is_user_audit_trail
            end
            ## 
            ## Sets the isUserAuditTrail property value. The isUserAuditTrail property
            ## @param value Value to set for the isUserAuditTrail property.
            ## @return a void
            ## 
            def is_user_audit_trail=(value)
                @is_user_audit_trail = value
            end
            ## 
            ## Gets the isUserCanUploadData property value. The isUserCanUploadData property
            ## @return a security_cloud_app_info_state
            ## 
            def is_user_can_upload_data
                return @is_user_can_upload_data
            end
            ## 
            ## Sets the isUserCanUploadData property value. The isUserCanUploadData property
            ## @param value Value to set for the isUserCanUploadData property.
            ## @return a void
            ## 
            def is_user_can_upload_data=(value)
                @is_user_can_upload_data = value
            end
            ## 
            ## Gets the isUserRolesSupport property value. The isUserRolesSupport property
            ## @return a security_cloud_app_info_state
            ## 
            def is_user_roles_support
                return @is_user_roles_support
            end
            ## 
            ## Sets the isUserRolesSupport property value. The isUserRolesSupport property
            ## @param value Value to set for the isUserRolesSupport property.
            ## @return a void
            ## 
            def is_user_roles_support=(value)
                @is_user_roles_support = value
            end
            ## 
            ## Gets the isValidCertificateName property value. The isValidCertificateName property
            ## @return a security_cloud_app_info_state
            ## 
            def is_valid_certificate_name
                return @is_valid_certificate_name
            end
            ## 
            ## Sets the isValidCertificateName property value. The isValidCertificateName property
            ## @param value Value to set for the isValidCertificateName property.
            ## @return a void
            ## 
            def is_valid_certificate_name=(value)
                @is_valid_certificate_name = value
            end
            ## 
            ## Gets the latestBreachDateTime property value. Indicates the last date of the data breach for the company.
            ## @return a date_time
            ## 
            def latest_breach_date_time
                return @latest_breach_date_time
            end
            ## 
            ## Sets the latestBreachDateTime property value. Indicates the last date of the data breach for the company.
            ## @param value Value to set for the latestBreachDateTime property.
            ## @return a void
            ## 
            def latest_breach_date_time=(value)
                @latest_breach_date_time = value
            end
            ## 
            ## Gets the logonUrls property value. Indicates the URL that users can use to sign into the app.
            ## @return a string
            ## 
            def logon_urls
                return @logon_urls
            end
            ## 
            ## Sets the logonUrls property value. Indicates the URL that users can use to sign into the app.
            ## @param value Value to set for the logonUrls property.
            ## @return a void
            ## 
            def logon_urls=(value)
                @logon_urls = value
            end
            ## 
            ## Gets the pciDssVersion property value. The pciDssVersion property
            ## @return a security_app_info_pci_dss_version
            ## 
            def pci_dss_version
                return @pci_dss_version
            end
            ## 
            ## Sets the pciDssVersion property value. The pciDssVersion property
            ## @param value Value to set for the pciDssVersion property.
            ## @return a void
            ## 
            def pci_dss_version=(value)
                @pci_dss_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("csaStarLevel", @csa_star_level)
                writer.write_enum_value("dataAtRestEncryptionMethod", @data_at_rest_encryption_method)
                writer.write_string_value("dataCenter", @data_center)
                writer.write_enum_value("dataRetentionPolicy", @data_retention_policy)
                writer.write_enum_value("dataTypes", @data_types)
                writer.write_date_time_value("domainRegistrationDateTime", @domain_registration_date_time)
                writer.write_enum_value("encryptionProtocol", @encryption_protocol)
                writer.write_enum_value("fedRampLevel", @fed_ramp_level)
                writer.write_number_value("founded", @founded)
                writer.write_string_value("gdprReadinessStatement", @gdpr_readiness_statement)
                writer.write_string_value("headquarters", @headquarters)
                writer.write_enum_value("holding", @holding)
                writer.write_string_value("hostingCompany", @hosting_company)
                writer.write_enum_value("isAdminAuditTrail", @is_admin_audit_trail)
                writer.write_enum_value("isCobitCompliant", @is_cobit_compliant)
                writer.write_enum_value("isCoppaCompliant", @is_coppa_compliant)
                writer.write_enum_value("isDataAuditTrail", @is_data_audit_trail)
                writer.write_enum_value("isDataClassification", @is_data_classification)
                writer.write_enum_value("isDataOwnership", @is_data_ownership)
                writer.write_enum_value("isDisasterRecoveryPlan", @is_disaster_recovery_plan)
                writer.write_enum_value("isDmca", @is_dmca)
                writer.write_enum_value("isFerpaCompliant", @is_ferpa_compliant)
                writer.write_enum_value("isFfiecCompliant", @is_ffiec_compliant)
                writer.write_enum_value("isFileSharing", @is_file_sharing)
                writer.write_enum_value("isFinraCompliant", @is_finra_compliant)
                writer.write_enum_value("isFismaCompliant", @is_fisma_compliant)
                writer.write_enum_value("isGaapCompliant", @is_gaap_compliant)
                writer.write_enum_value("isGdprDataProtectionImpactAssessment", @is_gdpr_data_protection_impact_assessment)
                writer.write_enum_value("isGdprDataProtectionOfficer", @is_gdpr_data_protection_officer)
                writer.write_enum_value("isGdprDataProtectionSecureCrossBorderDataTransfer", @is_gdpr_data_protection_secure_cross_border_data_transfer)
                writer.write_enum_value("isGdprImpactAssessment", @is_gdpr_impact_assessment)
                writer.write_enum_value("isGdprLawfulBasisForProcessing", @is_gdpr_lawful_basis_for_processing)
                writer.write_enum_value("isGdprReportDataBreaches", @is_gdpr_report_data_breaches)
                writer.write_enum_value("isGdprRightToAccess", @is_gdpr_right_to_access)
                writer.write_enum_value("isGdprRightToBeInformed", @is_gdpr_right_to_be_informed)
                writer.write_enum_value("isGdprRightToDataPortablility", @is_gdpr_right_to_data_portablility)
                writer.write_enum_value("isGdprRightToErasure", @is_gdpr_right_to_erasure)
                writer.write_enum_value("isGdprRightToObject", @is_gdpr_right_to_object)
                writer.write_enum_value("isGdprRightToRectification", @is_gdpr_right_to_rectification)
                writer.write_enum_value("isGdprRightToRestrictionOfProcessing", @is_gdpr_right_to_restriction_of_processing)
                writer.write_enum_value("isGdprRightsRelatedToAutomatedDecisionMaking", @is_gdpr_rights_related_to_automated_decision_making)
                writer.write_enum_value("isGdprSecureCrossBorderDataControl", @is_gdpr_secure_cross_border_data_control)
                writer.write_enum_value("isGlbaCompliant", @is_glba_compliant)
                writer.write_enum_value("isHipaaCompliant", @is_hipaa_compliant)
                writer.write_enum_value("isHitrustCsfCompliant", @is_hitrust_csf_compliant)
                writer.write_enum_value("isHttpSecurityHeadersContentSecurityPolicy", @is_http_security_headers_content_security_policy)
                writer.write_enum_value("isHttpSecurityHeadersStrictTransportSecurity", @is_http_security_headers_strict_transport_security)
                writer.write_enum_value("isHttpSecurityHeadersXContentTypeOptions", @is_http_security_headers_x_content_type_options)
                writer.write_enum_value("isHttpSecurityHeadersXFrameOptions", @is_http_security_headers_x_frame_options)
                writer.write_enum_value("isHttpSecurityHeadersXXssProtection", @is_http_security_headers_x_xss_protection)
                writer.write_enum_value("isIpAddressRestriction", @is_ip_address_restriction)
                writer.write_enum_value("isIsae3402Compliant", @is_isae3402_compliant)
                writer.write_enum_value("isIso27001Compliant", @is_iso27001_compliant)
                writer.write_enum_value("isIso27017Compliant", @is_iso27017_compliant)
                writer.write_enum_value("isIso27018Compliant", @is_iso27018_compliant)
                writer.write_enum_value("isItarCompliant", @is_itar_compliant)
                writer.write_enum_value("isMultiFactorAuthentication", @is_multi_factor_authentication)
                writer.write_enum_value("isPasswordPolicy", @is_password_policy)
                writer.write_enum_value("isPasswordPolicyChangePasswordPeriod", @is_password_policy_change_password_period)
                writer.write_enum_value("isPasswordPolicyCharacterCombination", @is_password_policy_character_combination)
                writer.write_enum_value("isPasswordPolicyPasswordHistoryAndReuse", @is_password_policy_password_history_and_reuse)
                writer.write_enum_value("isPasswordPolicyPasswordLengthLimit", @is_password_policy_password_length_limit)
                writer.write_enum_value("isPasswordPolicyPersonalInformationUse", @is_password_policy_personal_information_use)
                writer.write_enum_value("isPenetrationTesting", @is_penetration_testing)
                writer.write_enum_value("isPrivacyShieldCompliant", @is_privacy_shield_compliant)
                writer.write_enum_value("isRememberPassword", @is_remember_password)
                writer.write_enum_value("isRequiresUserAuthentication", @is_requires_user_authentication)
                writer.write_enum_value("isSoc1Compliant", @is_soc1_compliant)
                writer.write_enum_value("isSoc2Compliant", @is_soc2_compliant)
                writer.write_enum_value("isSoc3Compliant", @is_soc3_compliant)
                writer.write_enum_value("isSoxCompliant", @is_sox_compliant)
                writer.write_enum_value("isSp80053Compliant", @is_sp80053_compliant)
                writer.write_enum_value("isSsae16Compliant", @is_ssae16_compliant)
                writer.write_enum_value("isSupportsSaml", @is_supports_saml)
                writer.write_enum_value("isTrustedCertificate", @is_trusted_certificate)
                writer.write_enum_value("isUserAuditTrail", @is_user_audit_trail)
                writer.write_enum_value("isUserCanUploadData", @is_user_can_upload_data)
                writer.write_enum_value("isUserRolesSupport", @is_user_roles_support)
                writer.write_enum_value("isValidCertificateName", @is_valid_certificate_name)
                writer.write_date_time_value("latestBreachDateTime", @latest_breach_date_time)
                writer.write_string_value("logonUrls", @logon_urls)
                writer.write_enum_value("pciDssVersion", @pci_dss_version)
                writer.write_string_value("vendor", @vendor)
            end
            ## 
            ## Gets the vendor property value. Indicates the app vendor.
            ## @return a string
            ## 
            def vendor
                return @vendor
            end
            ## 
            ## Sets the vendor property value. Indicates the app vendor.
            ## @param value Value to set for the vendor property.
            ## @return a void
            ## 
            def vendor=(value)
                @vendor = value
            end
        end
    end
end
