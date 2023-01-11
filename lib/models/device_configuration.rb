require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Device Configuration.
    class DeviceConfiguration < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The list of assignments for the device configuration profile.
        @assignments
        ## 
        # DateTime the object was created.
        @created_date_time
        ## 
        # Admin provided description of the Device Configuration.
        @description
        ## 
        # The device mode applicability rule for this Policy.
        @device_management_applicability_rule_device_mode
        ## 
        # The OS edition applicability for this Policy.
        @device_management_applicability_rule_os_edition
        ## 
        # The OS version applicability rule for this Policy.
        @device_management_applicability_rule_os_version
        ## 
        # Device Configuration Setting State Device Summary
        @device_setting_state_summaries
        ## 
        # Device configuration installation status by device.
        @device_statuses
        ## 
        # Device Configuration devices status overview
        @device_status_overview
        ## 
        # Admin provided name of the device configuration.
        @display_name
        ## 
        # The list of group assignments for the device configuration profile.
        @group_assignments
        ## 
        # DateTime the object was last modified.
        @last_modified_date_time
        ## 
        # List of Scope Tags for this Entity instance.
        @role_scope_tag_ids
        ## 
        # Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only.
        @supports_scope_tags
        ## 
        # Device configuration installation status by user.
        @user_statuses
        ## 
        # Device Configuration users status overview
        @user_status_overview
        ## 
        # Version of the device configuration.
        @version
        ## 
        ## Gets the assignments property value. The list of assignments for the device configuration profile.
        ## @return a device_configuration_assignment
        ## 
        def assignments
            return @assignments
        end
        ## 
        ## Sets the assignments property value. The list of assignments for the device configuration profile.
        ## @param value Value to set for the assignments property.
        ## @return a void
        ## 
        def assignments=(value)
            @assignments = value
        end
        ## 
        ## Instantiates a new deviceConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. DateTime the object was created.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. DateTime the object was created.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.androidCertificateProfileBase"
                        return AndroidCertificateProfileBase.new
                    when "#microsoft.graph.androidCustomConfiguration"
                        return AndroidCustomConfiguration.new
                    when "#microsoft.graph.androidDeviceOwnerCertificateProfileBase"
                        return AndroidDeviceOwnerCertificateProfileBase.new
                    when "#microsoft.graph.androidDeviceOwnerDerivedCredentialAuthenticationConfiguration"
                        return AndroidDeviceOwnerDerivedCredentialAuthenticationConfiguration.new
                    when "#microsoft.graph.androidDeviceOwnerEnterpriseWiFiConfiguration"
                        return AndroidDeviceOwnerEnterpriseWiFiConfiguration.new
                    when "#microsoft.graph.androidDeviceOwnerGeneralDeviceConfiguration"
                        return AndroidDeviceOwnerGeneralDeviceConfiguration.new
                    when "#microsoft.graph.androidDeviceOwnerImportedPFXCertificateProfile"
                        return AndroidDeviceOwnerImportedPFXCertificateProfile.new
                    when "#microsoft.graph.androidDeviceOwnerPkcsCertificateProfile"
                        return AndroidDeviceOwnerPkcsCertificateProfile.new
                    when "#microsoft.graph.androidDeviceOwnerScepCertificateProfile"
                        return AndroidDeviceOwnerScepCertificateProfile.new
                    when "#microsoft.graph.androidDeviceOwnerTrustedRootCertificate"
                        return AndroidDeviceOwnerTrustedRootCertificate.new
                    when "#microsoft.graph.androidDeviceOwnerVpnConfiguration"
                        return AndroidDeviceOwnerVpnConfiguration.new
                    when "#microsoft.graph.androidDeviceOwnerWiFiConfiguration"
                        return AndroidDeviceOwnerWiFiConfiguration.new
                    when "#microsoft.graph.androidEasEmailProfileConfiguration"
                        return AndroidEasEmailProfileConfiguration.new
                    when "#microsoft.graph.androidEnterpriseWiFiConfiguration"
                        return AndroidEnterpriseWiFiConfiguration.new
                    when "#microsoft.graph.androidForWorkCertificateProfileBase"
                        return AndroidForWorkCertificateProfileBase.new
                    when "#microsoft.graph.androidForWorkCustomConfiguration"
                        return AndroidForWorkCustomConfiguration.new
                    when "#microsoft.graph.androidForWorkEasEmailProfileBase"
                        return AndroidForWorkEasEmailProfileBase.new
                    when "#microsoft.graph.androidForWorkEnterpriseWiFiConfiguration"
                        return AndroidForWorkEnterpriseWiFiConfiguration.new
                    when "#microsoft.graph.androidForWorkGeneralDeviceConfiguration"
                        return AndroidForWorkGeneralDeviceConfiguration.new
                    when "#microsoft.graph.androidForWorkGmailEasConfiguration"
                        return AndroidForWorkGmailEasConfiguration.new
                    when "#microsoft.graph.androidForWorkImportedPFXCertificateProfile"
                        return AndroidForWorkImportedPFXCertificateProfile.new
                    when "#microsoft.graph.androidForWorkNineWorkEasConfiguration"
                        return AndroidForWorkNineWorkEasConfiguration.new
                    when "#microsoft.graph.androidForWorkPkcsCertificateProfile"
                        return AndroidForWorkPkcsCertificateProfile.new
                    when "#microsoft.graph.androidForWorkScepCertificateProfile"
                        return AndroidForWorkScepCertificateProfile.new
                    when "#microsoft.graph.androidForWorkTrustedRootCertificate"
                        return AndroidForWorkTrustedRootCertificate.new
                    when "#microsoft.graph.androidForWorkVpnConfiguration"
                        return AndroidForWorkVpnConfiguration.new
                    when "#microsoft.graph.androidForWorkWiFiConfiguration"
                        return AndroidForWorkWiFiConfiguration.new
                    when "#microsoft.graph.androidGeneralDeviceConfiguration"
                        return AndroidGeneralDeviceConfiguration.new
                    when "#microsoft.graph.androidImportedPFXCertificateProfile"
                        return AndroidImportedPFXCertificateProfile.new
                    when "#microsoft.graph.androidOmaCpConfiguration"
                        return AndroidOmaCpConfiguration.new
                    when "#microsoft.graph.androidPkcsCertificateProfile"
                        return AndroidPkcsCertificateProfile.new
                    when "#microsoft.graph.androidScepCertificateProfile"
                        return AndroidScepCertificateProfile.new
                    when "#microsoft.graph.androidTrustedRootCertificate"
                        return AndroidTrustedRootCertificate.new
                    when "#microsoft.graph.androidVpnConfiguration"
                        return AndroidVpnConfiguration.new
                    when "#microsoft.graph.androidWiFiConfiguration"
                        return AndroidWiFiConfiguration.new
                    when "#microsoft.graph.androidWorkProfileCertificateProfileBase"
                        return AndroidWorkProfileCertificateProfileBase.new
                    when "#microsoft.graph.androidWorkProfileCustomConfiguration"
                        return AndroidWorkProfileCustomConfiguration.new
                    when "#microsoft.graph.androidWorkProfileEasEmailProfileBase"
                        return AndroidWorkProfileEasEmailProfileBase.new
                    when "#microsoft.graph.androidWorkProfileEnterpriseWiFiConfiguration"
                        return AndroidWorkProfileEnterpriseWiFiConfiguration.new
                    when "#microsoft.graph.androidWorkProfileGeneralDeviceConfiguration"
                        return AndroidWorkProfileGeneralDeviceConfiguration.new
                    when "#microsoft.graph.androidWorkProfileGmailEasConfiguration"
                        return AndroidWorkProfileGmailEasConfiguration.new
                    when "#microsoft.graph.androidWorkProfileNineWorkEasConfiguration"
                        return AndroidWorkProfileNineWorkEasConfiguration.new
                    when "#microsoft.graph.androidWorkProfilePkcsCertificateProfile"
                        return AndroidWorkProfilePkcsCertificateProfile.new
                    when "#microsoft.graph.androidWorkProfileScepCertificateProfile"
                        return AndroidWorkProfileScepCertificateProfile.new
                    when "#microsoft.graph.androidWorkProfileTrustedRootCertificate"
                        return AndroidWorkProfileTrustedRootCertificate.new
                    when "#microsoft.graph.androidWorkProfileVpnConfiguration"
                        return AndroidWorkProfileVpnConfiguration.new
                    when "#microsoft.graph.androidWorkProfileWiFiConfiguration"
                        return AndroidWorkProfileWiFiConfiguration.new
                    when "#microsoft.graph.aospDeviceOwnerCertificateProfileBase"
                        return AospDeviceOwnerCertificateProfileBase.new
                    when "#microsoft.graph.aospDeviceOwnerDeviceConfiguration"
                        return AospDeviceOwnerDeviceConfiguration.new
                    when "#microsoft.graph.aospDeviceOwnerEnterpriseWiFiConfiguration"
                        return AospDeviceOwnerEnterpriseWiFiConfiguration.new
                    when "#microsoft.graph.aospDeviceOwnerPkcsCertificateProfile"
                        return AospDeviceOwnerPkcsCertificateProfile.new
                    when "#microsoft.graph.aospDeviceOwnerScepCertificateProfile"
                        return AospDeviceOwnerScepCertificateProfile.new
                    when "#microsoft.graph.aospDeviceOwnerTrustedRootCertificate"
                        return AospDeviceOwnerTrustedRootCertificate.new
                    when "#microsoft.graph.aospDeviceOwnerWiFiConfiguration"
                        return AospDeviceOwnerWiFiConfiguration.new
                    when "#microsoft.graph.appleDeviceFeaturesConfigurationBase"
                        return AppleDeviceFeaturesConfigurationBase.new
                    when "#microsoft.graph.appleExpeditedCheckinConfigurationBase"
                        return AppleExpeditedCheckinConfigurationBase.new
                    when "#microsoft.graph.appleVpnConfiguration"
                        return AppleVpnConfiguration.new
                    when "#microsoft.graph.easEmailProfileConfigurationBase"
                        return EasEmailProfileConfigurationBase.new
                    when "#microsoft.graph.editionUpgradeConfiguration"
                        return EditionUpgradeConfiguration.new
                    when "#microsoft.graph.iosCertificateProfile"
                        return IosCertificateProfile.new
                    when "#microsoft.graph.iosCertificateProfileBase"
                        return IosCertificateProfileBase.new
                    when "#microsoft.graph.iosCustomConfiguration"
                        return IosCustomConfiguration.new
                    when "#microsoft.graph.iosDerivedCredentialAuthenticationConfiguration"
                        return IosDerivedCredentialAuthenticationConfiguration.new
                    when "#microsoft.graph.iosDeviceFeaturesConfiguration"
                        return IosDeviceFeaturesConfiguration.new
                    when "#microsoft.graph.iosEasEmailProfileConfiguration"
                        return IosEasEmailProfileConfiguration.new
                    when "#microsoft.graph.iosEducationDeviceConfiguration"
                        return IosEducationDeviceConfiguration.new
                    when "#microsoft.graph.iosEduDeviceConfiguration"
                        return IosEduDeviceConfiguration.new
                    when "#microsoft.graph.iosEnterpriseWiFiConfiguration"
                        return IosEnterpriseWiFiConfiguration.new
                    when "#microsoft.graph.iosExpeditedCheckinConfiguration"
                        return IosExpeditedCheckinConfiguration.new
                    when "#microsoft.graph.iosGeneralDeviceConfiguration"
                        return IosGeneralDeviceConfiguration.new
                    when "#microsoft.graph.iosikEv2VpnConfiguration"
                        return IosikEv2VpnConfiguration.new
                    when "#microsoft.graph.iosImportedPFXCertificateProfile"
                        return IosImportedPFXCertificateProfile.new
                    when "#microsoft.graph.iosPkcsCertificateProfile"
                        return IosPkcsCertificateProfile.new
                    when "#microsoft.graph.iosScepCertificateProfile"
                        return IosScepCertificateProfile.new
                    when "#microsoft.graph.iosTrustedRootCertificate"
                        return IosTrustedRootCertificate.new
                    when "#microsoft.graph.iosUpdateConfiguration"
                        return IosUpdateConfiguration.new
                    when "#microsoft.graph.iosVpnConfiguration"
                        return IosVpnConfiguration.new
                    when "#microsoft.graph.iosWiFiConfiguration"
                        return IosWiFiConfiguration.new
                    when "#microsoft.graph.macOSCertificateProfileBase"
                        return MacOSCertificateProfileBase.new
                    when "#microsoft.graph.macOSCustomAppConfiguration"
                        return MacOSCustomAppConfiguration.new
                    when "#microsoft.graph.macOSCustomConfiguration"
                        return MacOSCustomConfiguration.new
                    when "#microsoft.graph.macOSDeviceFeaturesConfiguration"
                        return MacOSDeviceFeaturesConfiguration.new
                    when "#microsoft.graph.macOSEndpointProtectionConfiguration"
                        return MacOSEndpointProtectionConfiguration.new
                    when "#microsoft.graph.macOSEnterpriseWiFiConfiguration"
                        return MacOSEnterpriseWiFiConfiguration.new
                    when "#microsoft.graph.macOSExtensionsConfiguration"
                        return MacOSExtensionsConfiguration.new
                    when "#microsoft.graph.macOSGeneralDeviceConfiguration"
                        return MacOSGeneralDeviceConfiguration.new
                    when "#microsoft.graph.macOSImportedPFXCertificateProfile"
                        return MacOSImportedPFXCertificateProfile.new
                    when "#microsoft.graph.macOSPkcsCertificateProfile"
                        return MacOSPkcsCertificateProfile.new
                    when "#microsoft.graph.macOSScepCertificateProfile"
                        return MacOSScepCertificateProfile.new
                    when "#microsoft.graph.macOSSoftwareUpdateConfiguration"
                        return MacOSSoftwareUpdateConfiguration.new
                    when "#microsoft.graph.macOSTrustedRootCertificate"
                        return MacOSTrustedRootCertificate.new
                    when "#microsoft.graph.macOSVpnConfiguration"
                        return MacOSVpnConfiguration.new
                    when "#microsoft.graph.macOSWiFiConfiguration"
                        return MacOSWiFiConfiguration.new
                    when "#microsoft.graph.macOSWiredNetworkConfiguration"
                        return MacOSWiredNetworkConfiguration.new
                    when "#microsoft.graph.sharedPCConfiguration"
                        return SharedPCConfiguration.new
                    when "#microsoft.graph.unsupportedDeviceConfiguration"
                        return UnsupportedDeviceConfiguration.new
                    when "#microsoft.graph.vpnConfiguration"
                        return VpnConfiguration.new
                    when "#microsoft.graph.windows10CertificateProfileBase"
                        return Windows10CertificateProfileBase.new
                    when "#microsoft.graph.windows10CustomConfiguration"
                        return Windows10CustomConfiguration.new
                    when "#microsoft.graph.windows10DeviceFirmwareConfigurationInterface"
                        return Windows10DeviceFirmwareConfigurationInterface.new
                    when "#microsoft.graph.windows10EasEmailProfileConfiguration"
                        return Windows10EasEmailProfileConfiguration.new
                    when "#microsoft.graph.windows10EndpointProtectionConfiguration"
                        return Windows10EndpointProtectionConfiguration.new
                    when "#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration"
                        return Windows10EnterpriseModernAppManagementConfiguration.new
                    when "#microsoft.graph.windows10GeneralConfiguration"
                        return Windows10GeneralConfiguration.new
                    when "#microsoft.graph.windows10ImportedPFXCertificateProfile"
                        return Windows10ImportedPFXCertificateProfile.new
                    when "#microsoft.graph.windows10NetworkBoundaryConfiguration"
                        return Windows10NetworkBoundaryConfiguration.new
                    when "#microsoft.graph.windows10PFXImportCertificateProfile"
                        return Windows10PFXImportCertificateProfile.new
                    when "#microsoft.graph.windows10PkcsCertificateProfile"
                        return Windows10PkcsCertificateProfile.new
                    when "#microsoft.graph.windows10SecureAssessmentConfiguration"
                        return Windows10SecureAssessmentConfiguration.new
                    when "#microsoft.graph.windows10TeamGeneralConfiguration"
                        return Windows10TeamGeneralConfiguration.new
                    when "#microsoft.graph.windows10VpnConfiguration"
                        return Windows10VpnConfiguration.new
                    when "#microsoft.graph.windows81CertificateProfileBase"
                        return Windows81CertificateProfileBase.new
                    when "#microsoft.graph.windows81GeneralConfiguration"
                        return Windows81GeneralConfiguration.new
                    when "#microsoft.graph.windows81SCEPCertificateProfile"
                        return Windows81SCEPCertificateProfile.new
                    when "#microsoft.graph.windows81TrustedRootCertificate"
                        return Windows81TrustedRootCertificate.new
                    when "#microsoft.graph.windows81VpnConfiguration"
                        return Windows81VpnConfiguration.new
                    when "#microsoft.graph.windows81WifiImportConfiguration"
                        return Windows81WifiImportConfiguration.new
                    when "#microsoft.graph.windowsCertificateProfileBase"
                        return WindowsCertificateProfileBase.new
                    when "#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration"
                        return WindowsDefenderAdvancedThreatProtectionConfiguration.new
                    when "#microsoft.graph.windowsDeliveryOptimizationConfiguration"
                        return WindowsDeliveryOptimizationConfiguration.new
                    when "#microsoft.graph.windowsDomainJoinConfiguration"
                        return WindowsDomainJoinConfiguration.new
                    when "#microsoft.graph.windowsHealthMonitoringConfiguration"
                        return WindowsHealthMonitoringConfiguration.new
                    when "#microsoft.graph.windowsIdentityProtectionConfiguration"
                        return WindowsIdentityProtectionConfiguration.new
                    when "#microsoft.graph.windowsKioskConfiguration"
                        return WindowsKioskConfiguration.new
                    when "#microsoft.graph.windowsPhone81CertificateProfileBase"
                        return WindowsPhone81CertificateProfileBase.new
                    when "#microsoft.graph.windowsPhone81CustomConfiguration"
                        return WindowsPhone81CustomConfiguration.new
                    when "#microsoft.graph.windowsPhone81GeneralConfiguration"
                        return WindowsPhone81GeneralConfiguration.new
                    when "#microsoft.graph.windowsPhone81ImportedPFXCertificateProfile"
                        return WindowsPhone81ImportedPFXCertificateProfile.new
                    when "#microsoft.graph.windowsPhone81SCEPCertificateProfile"
                        return WindowsPhone81SCEPCertificateProfile.new
                    when "#microsoft.graph.windowsPhone81TrustedRootCertificate"
                        return WindowsPhone81TrustedRootCertificate.new
                    when "#microsoft.graph.windowsPhone81VpnConfiguration"
                        return WindowsPhone81VpnConfiguration.new
                    when "#microsoft.graph.windowsPhoneEASEmailProfileConfiguration"
                        return WindowsPhoneEASEmailProfileConfiguration.new
                    when "#microsoft.graph.windowsUpdateForBusinessConfiguration"
                        return WindowsUpdateForBusinessConfiguration.new
                    when "#microsoft.graph.windowsVpnConfiguration"
                        return WindowsVpnConfiguration.new
                    when "#microsoft.graph.windowsWifiConfiguration"
                        return WindowsWifiConfiguration.new
                    when "#microsoft.graph.windowsWifiEnterpriseEAPConfiguration"
                        return WindowsWifiEnterpriseEAPConfiguration.new
                    when "#microsoft.graph.windowsWiredNetworkConfiguration"
                        return WindowsWiredNetworkConfiguration.new
                end
            end
            return DeviceConfiguration.new
        end
        ## 
        ## Gets the description property value. Admin provided description of the Device Configuration.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Admin provided description of the Device Configuration.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the deviceManagementApplicabilityRuleDeviceMode property value. The device mode applicability rule for this Policy.
        ## @return a device_management_applicability_rule_device_mode
        ## 
        def device_management_applicability_rule_device_mode
            return @device_management_applicability_rule_device_mode
        end
        ## 
        ## Sets the deviceManagementApplicabilityRuleDeviceMode property value. The device mode applicability rule for this Policy.
        ## @param value Value to set for the deviceManagementApplicabilityRuleDeviceMode property.
        ## @return a void
        ## 
        def device_management_applicability_rule_device_mode=(value)
            @device_management_applicability_rule_device_mode = value
        end
        ## 
        ## Gets the deviceManagementApplicabilityRuleOsEdition property value. The OS edition applicability for this Policy.
        ## @return a device_management_applicability_rule_os_edition
        ## 
        def device_management_applicability_rule_os_edition
            return @device_management_applicability_rule_os_edition
        end
        ## 
        ## Sets the deviceManagementApplicabilityRuleOsEdition property value. The OS edition applicability for this Policy.
        ## @param value Value to set for the deviceManagementApplicabilityRuleOsEdition property.
        ## @return a void
        ## 
        def device_management_applicability_rule_os_edition=(value)
            @device_management_applicability_rule_os_edition = value
        end
        ## 
        ## Gets the deviceManagementApplicabilityRuleOsVersion property value. The OS version applicability rule for this Policy.
        ## @return a device_management_applicability_rule_os_version
        ## 
        def device_management_applicability_rule_os_version
            return @device_management_applicability_rule_os_version
        end
        ## 
        ## Sets the deviceManagementApplicabilityRuleOsVersion property value. The OS version applicability rule for this Policy.
        ## @param value Value to set for the deviceManagementApplicabilityRuleOsVersion property.
        ## @return a void
        ## 
        def device_management_applicability_rule_os_version=(value)
            @device_management_applicability_rule_os_version = value
        end
        ## 
        ## Gets the deviceSettingStateSummaries property value. Device Configuration Setting State Device Summary
        ## @return a setting_state_device_summary
        ## 
        def device_setting_state_summaries
            return @device_setting_state_summaries
        end
        ## 
        ## Sets the deviceSettingStateSummaries property value. Device Configuration Setting State Device Summary
        ## @param value Value to set for the deviceSettingStateSummaries property.
        ## @return a void
        ## 
        def device_setting_state_summaries=(value)
            @device_setting_state_summaries = value
        end
        ## 
        ## Gets the deviceStatuses property value. Device configuration installation status by device.
        ## @return a device_configuration_device_status
        ## 
        def device_statuses
            return @device_statuses
        end
        ## 
        ## Sets the deviceStatuses property value. Device configuration installation status by device.
        ## @param value Value to set for the deviceStatuses property.
        ## @return a void
        ## 
        def device_statuses=(value)
            @device_statuses = value
        end
        ## 
        ## Gets the deviceStatusOverview property value. Device Configuration devices status overview
        ## @return a device_configuration_device_overview
        ## 
        def device_status_overview
            return @device_status_overview
        end
        ## 
        ## Sets the deviceStatusOverview property value. Device Configuration devices status overview
        ## @param value Value to set for the deviceStatusOverview property.
        ## @return a void
        ## 
        def device_status_overview=(value)
            @device_status_overview = value
        end
        ## 
        ## Gets the displayName property value. Admin provided name of the device configuration.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Admin provided name of the device configuration.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationAssignment.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "deviceManagementApplicabilityRuleDeviceMode" => lambda {|n| @device_management_applicability_rule_device_mode = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementApplicabilityRuleDeviceMode.create_from_discriminator_value(pn) }) },
                "deviceManagementApplicabilityRuleOsEdition" => lambda {|n| @device_management_applicability_rule_os_edition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementApplicabilityRuleOsEdition.create_from_discriminator_value(pn) }) },
                "deviceManagementApplicabilityRuleOsVersion" => lambda {|n| @device_management_applicability_rule_os_version = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementApplicabilityRuleOsVersion.create_from_discriminator_value(pn) }) },
                "deviceSettingStateSummaries" => lambda {|n| @device_setting_state_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SettingStateDeviceSummary.create_from_discriminator_value(pn) }) },
                "deviceStatuses" => lambda {|n| @device_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationDeviceStatus.create_from_discriminator_value(pn) }) },
                "deviceStatusOverview" => lambda {|n| @device_status_overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationDeviceOverview.create_from_discriminator_value(pn) }) },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "groupAssignments" => lambda {|n| @group_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationGroupAssignment.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                "supportsScopeTags" => lambda {|n| @supports_scope_tags = n.get_boolean_value() },
                "userStatuses" => lambda {|n| @user_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationUserStatus.create_from_discriminator_value(pn) }) },
                "userStatusOverview" => lambda {|n| @user_status_overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationUserOverview.create_from_discriminator_value(pn) }) },
                "version" => lambda {|n| @version = n.get_number_value() },
            })
        end
        ## 
        ## Gets the groupAssignments property value. The list of group assignments for the device configuration profile.
        ## @return a device_configuration_group_assignment
        ## 
        def group_assignments
            return @group_assignments
        end
        ## 
        ## Sets the groupAssignments property value. The list of group assignments for the device configuration profile.
        ## @param value Value to set for the groupAssignments property.
        ## @return a void
        ## 
        def group_assignments=(value)
            @group_assignments = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. DateTime the object was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. DateTime the object was last modified.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
        ## @return a string
        ## 
        def role_scope_tag_ids
            return @role_scope_tag_ids
        end
        ## 
        ## Sets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
        ## @param value Value to set for the roleScopeTagIds property.
        ## @return a void
        ## 
        def role_scope_tag_ids=(value)
            @role_scope_tag_ids = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("assignments", @assignments)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("description", @description)
            writer.write_object_value("deviceManagementApplicabilityRuleDeviceMode", @device_management_applicability_rule_device_mode)
            writer.write_object_value("deviceManagementApplicabilityRuleOsEdition", @device_management_applicability_rule_os_edition)
            writer.write_object_value("deviceManagementApplicabilityRuleOsVersion", @device_management_applicability_rule_os_version)
            writer.write_collection_of_object_values("deviceSettingStateSummaries", @device_setting_state_summaries)
            writer.write_collection_of_object_values("deviceStatuses", @device_statuses)
            writer.write_object_value("deviceStatusOverview", @device_status_overview)
            writer.write_string_value("displayName", @display_name)
            writer.write_collection_of_object_values("groupAssignments", @group_assignments)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            writer.write_collection_of_object_values("userStatuses", @user_statuses)
            writer.write_object_value("userStatusOverview", @user_status_overview)
            writer.write_number_value("version", @version)
        end
        ## 
        ## Gets the supportsScopeTags property value. Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only.
        ## @return a boolean
        ## 
        def supports_scope_tags
            return @supports_scope_tags
        end
        ## 
        ## Sets the supportsScopeTags property value. Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only.
        ## @param value Value to set for the supportsScopeTags property.
        ## @return a void
        ## 
        def supports_scope_tags=(value)
            @supports_scope_tags = value
        end
        ## 
        ## Gets the userStatuses property value. Device configuration installation status by user.
        ## @return a device_configuration_user_status
        ## 
        def user_statuses
            return @user_statuses
        end
        ## 
        ## Sets the userStatuses property value. Device configuration installation status by user.
        ## @param value Value to set for the userStatuses property.
        ## @return a void
        ## 
        def user_statuses=(value)
            @user_statuses = value
        end
        ## 
        ## Gets the userStatusOverview property value. Device Configuration users status overview
        ## @return a device_configuration_user_overview
        ## 
        def user_status_overview
            return @user_status_overview
        end
        ## 
        ## Sets the userStatusOverview property value. Device Configuration users status overview
        ## @param value Value to set for the userStatusOverview property.
        ## @return a void
        ## 
        def user_status_overview=(value)
            @user_status_overview = value
        end
        ## 
        ## Gets the version property value. Version of the device configuration.
        ## @return a integer
        ## 
        def version
            return @version
        end
        ## 
        ## Sets the version property value. Version of the device configuration.
        ## @param value Value to set for the version property.
        ## @return a void
        ## 
        def version=(value)
            @version = value
        end
    end
end
