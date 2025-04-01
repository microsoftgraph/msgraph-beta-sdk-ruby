require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAuditData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new SecurityAuditData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_audit_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.aadRiskDetectionAuditRecord"
                            return SecurityAadRiskDetectionAuditRecord.new
                        when "#microsoft.graph.security.aedAuditRecord"
                            return SecurityAedAuditRecord.new
                        when "#microsoft.graph.security.aiAppInteractionAuditRecord"
                            return SecurityAiAppInteractionAuditRecord.new
                        when "#microsoft.graph.security.aipFileDeleted"
                            return SecurityAipFileDeleted.new
                        when "#microsoft.graph.security.aipHeartBeat"
                            return SecurityAipHeartBeat.new
                        when "#microsoft.graph.security.aipProtectionActionLogRequest"
                            return SecurityAipProtectionActionLogRequest.new
                        when "#microsoft.graph.security.aipScannerDiscoverEvent"
                            return SecurityAipScannerDiscoverEvent.new
                        when "#microsoft.graph.security.aipSensitivityLabelActionLogRequest"
                            return SecurityAipSensitivityLabelActionLogRequest.new
                        when "#microsoft.graph.security.airAdminActionInvestigationData"
                            return SecurityAirAdminActionInvestigationData.new
                        when "#microsoft.graph.security.airInvestigationData"
                            return SecurityAirInvestigationData.new
                        when "#microsoft.graph.security.airManualInvestigationData"
                            return SecurityAirManualInvestigationData.new
                        when "#microsoft.graph.security.attackSimAdminAuditRecord"
                            return SecurityAttackSimAdminAuditRecord.new
                        when "#microsoft.graph.security.auditSearchAuditRecord"
                            return SecurityAuditSearchAuditRecord.new
                        when "#microsoft.graph.security.azureActiveDirectoryAccountLogonAuditRecord"
                            return SecurityAzureActiveDirectoryAccountLogonAuditRecord.new
                        when "#microsoft.graph.security.azureActiveDirectoryAuditRecord"
                            return SecurityAzureActiveDirectoryAuditRecord.new
                        when "#microsoft.graph.security.azureActiveDirectoryBaseAuditRecord"
                            return SecurityAzureActiveDirectoryBaseAuditRecord.new
                        when "#microsoft.graph.security.azureActiveDirectoryStsLogonAuditRecord"
                            return SecurityAzureActiveDirectoryStsLogonAuditRecord.new
                        when "#microsoft.graph.security.campaignAuditRecord"
                            return SecurityCampaignAuditRecord.new
                        when "#microsoft.graph.security.caseAuditRecord"
                            return SecurityCaseAuditRecord.new
                        when "#microsoft.graph.security.caseInvestigation"
                            return SecurityCaseInvestigation.new
                        when "#microsoft.graph.security.cdpColdCrawlStatusRecord"
                            return SecurityCdpColdCrawlStatusRecord.new
                        when "#microsoft.graph.security.cdpContentExplorerAggregateRecord"
                            return SecurityCdpContentExplorerAggregateRecord.new
                        when "#microsoft.graph.security.cdpDlpSensitiveAuditRecord"
                            return SecurityCdpDlpSensitiveAuditRecord.new
                        when "#microsoft.graph.security.cdpDlpSensitiveEndpointAuditRecord"
                            return SecurityCdpDlpSensitiveEndpointAuditRecord.new
                        when "#microsoft.graph.security.cdpLogRecord"
                            return SecurityCdpLogRecord.new
                        when "#microsoft.graph.security.cdpOcrBillingRecord"
                            return SecurityCdpOcrBillingRecord.new
                        when "#microsoft.graph.security.cdpResourceScopeChangeEventRecord"
                            return SecurityCdpResourceScopeChangeEventRecord.new
                        when "#microsoft.graph.security.cernerSMSLinkRecord"
                            return SecurityCernerSMSLinkRecord.new
                        when "#microsoft.graph.security.cernerSMSSettingsUpdateRecord"
                            return SecurityCernerSMSSettingsUpdateRecord.new
                        when "#microsoft.graph.security.cernerSMSUnlinkRecord"
                            return SecurityCernerSMSUnlinkRecord.new
                        when "#microsoft.graph.security.complianceConnectorAuditRecord"
                            return SecurityComplianceConnectorAuditRecord.new
                        when "#microsoft.graph.security.complianceDLMExchangeAuditRecord"
                            return SecurityComplianceDLMExchangeAuditRecord.new
                        when "#microsoft.graph.security.complianceDLMSharePointAuditRecord"
                            return SecurityComplianceDLMSharePointAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpApplicationsAuditRecord"
                            return SecurityComplianceDlpApplicationsAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpApplicationsClassificationAuditRecord"
                            return SecurityComplianceDlpApplicationsClassificationAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpBaseAuditRecord"
                            return SecurityComplianceDlpBaseAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpClassificationBaseAuditRecord"
                            return SecurityComplianceDlpClassificationBaseAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpClassificationBaseCdpRecord"
                            return SecurityComplianceDlpClassificationBaseCdpRecord.new
                        when "#microsoft.graph.security.complianceDlpEndpointAuditRecord"
                            return SecurityComplianceDlpEndpointAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpEndpointDiscoveryAuditRecord"
                            return SecurityComplianceDlpEndpointDiscoveryAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpExchangeAuditRecord"
                            return SecurityComplianceDlpExchangeAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpExchangeClassificationAuditRecord"
                            return SecurityComplianceDlpExchangeClassificationAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpExchangeClassificationCdpRecord"
                            return SecurityComplianceDlpExchangeClassificationCdpRecord.new
                        when "#microsoft.graph.security.complianceDlpExchangeDiscoveryAuditRecord"
                            return SecurityComplianceDlpExchangeDiscoveryAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpSharePointAuditRecord"
                            return SecurityComplianceDlpSharePointAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpSharePointClassificationAuditRecord"
                            return SecurityComplianceDlpSharePointClassificationAuditRecord.new
                        when "#microsoft.graph.security.complianceDlpSharePointClassificationExtendedAuditRecord"
                            return SecurityComplianceDlpSharePointClassificationExtendedAuditRecord.new
                        when "#microsoft.graph.security.complianceManagerActionRecord"
                            return SecurityComplianceManagerActionRecord.new
                        when "#microsoft.graph.security.complianceSupervisionBaseAuditRecord"
                            return SecurityComplianceSupervisionBaseAuditRecord.new
                        when "#microsoft.graph.security.complianceSupervisionExchangeAuditRecord"
                            return SecurityComplianceSupervisionExchangeAuditRecord.new
                        when "#microsoft.graph.security.consumptionResourceAuditRecord"
                            return SecurityConsumptionResourceAuditRecord.new
                        when "#microsoft.graph.security.copilotInteractionAuditRecord"
                            return SecurityCopilotInteractionAuditRecord.new
                        when "#microsoft.graph.security.coreReportingSettingsAuditRecord"
                            return SecurityCoreReportingSettingsAuditRecord.new
                        when "#microsoft.graph.security.cortanaBriefingAuditRecord"
                            return SecurityCortanaBriefingAuditRecord.new
                        when "#microsoft.graph.security.cpsCommonPolicyAuditRecord"
                            return SecurityCpsCommonPolicyAuditRecord.new
                        when "#microsoft.graph.security.cpsPolicyConfigAuditRecord"
                            return SecurityCpsPolicyConfigAuditRecord.new
                        when "#microsoft.graph.security.crmBaseAuditRecord"
                            return SecurityCrmBaseAuditRecord.new
                        when "#microsoft.graph.security.crmEntityOperationAuditRecord"
                            return SecurityCrmEntityOperationAuditRecord.new
                        when "#microsoft.graph.security.customerKeyServiceEncryptionAuditRecord"
                            return SecurityCustomerKeyServiceEncryptionAuditRecord.new
                        when "#microsoft.graph.security.dataCenterSecurityBaseAuditRecord"
                            return SecurityDataCenterSecurityBaseAuditRecord.new
                        when "#microsoft.graph.security.dataCenterSecurityCmdletAuditRecord"
                            return SecurityDataCenterSecurityCmdletAuditRecord.new
                        when "#microsoft.graph.security.dataGovernanceAuditRecord"
                            return SecurityDataGovernanceAuditRecord.new
                        when "#microsoft.graph.security.dataInsightsRestApiAuditRecord"
                            return SecurityDataInsightsRestApiAuditRecord.new
                        when "#microsoft.graph.security.dataLakeExportOperationAuditRecord"
                            return SecurityDataLakeExportOperationAuditRecord.new
                        when "#microsoft.graph.security.dataShareOperationAuditRecord"
                            return SecurityDataShareOperationAuditRecord.new
                        when "#microsoft.graph.security.defaultAuditData"
                            return SecurityDefaultAuditData.new
                        when "#microsoft.graph.security.defenderSecurityAlertBaseRecord"
                            return SecurityDefenderSecurityAlertBaseRecord.new
                        when "#microsoft.graph.security.deleteCertificateRecord"
                            return SecurityDeleteCertificateRecord.new
                        when "#microsoft.graph.security.disableConsentRecord"
                            return SecurityDisableConsentRecord.new
                        when "#microsoft.graph.security.discoveryAuditRecord"
                            return SecurityDiscoveryAuditRecord.new
                        when "#microsoft.graph.security.dlpEndpointAuditRecord"
                            return SecurityDlpEndpointAuditRecord.new
                        when "#microsoft.graph.security.dlpSensitiveInformationTypeCmdletRecord"
                            return SecurityDlpSensitiveInformationTypeCmdletRecord.new
                        when "#microsoft.graph.security.dlpSensitiveInformationTypeRulePackageCmdletRecord"
                            return SecurityDlpSensitiveInformationTypeRulePackageCmdletRecord.new
                        when "#microsoft.graph.security.downloadCertificateRecord"
                            return SecurityDownloadCertificateRecord.new
                        when "#microsoft.graph.security.dynamics365BusinessCentralAuditRecord"
                            return SecurityDynamics365BusinessCentralAuditRecord.new
                        when "#microsoft.graph.security.enableConsentRecord"
                            return SecurityEnableConsentRecord.new
                        when "#microsoft.graph.security.epicSMSLinkRecord"
                            return SecurityEpicSMSLinkRecord.new
                        when "#microsoft.graph.security.epicSMSSettingsUpdateRecord"
                            return SecurityEpicSMSSettingsUpdateRecord.new
                        when "#microsoft.graph.security.epicSMSUnlinkRecord"
                            return SecurityEpicSMSUnlinkRecord.new
                        when "#microsoft.graph.security.exchangeAdminAuditRecord"
                            return SecurityExchangeAdminAuditRecord.new
                        when "#microsoft.graph.security.exchangeAggregatedMailboxAuditRecord"
                            return SecurityExchangeAggregatedMailboxAuditRecord.new
                        when "#microsoft.graph.security.exchangeAggregatedOperationRecord"
                            return SecurityExchangeAggregatedOperationRecord.new
                        when "#microsoft.graph.security.exchangeMailboxAuditBaseRecord"
                            return SecurityExchangeMailboxAuditBaseRecord.new
                        when "#microsoft.graph.security.exchangeMailboxAuditGroupRecord"
                            return SecurityExchangeMailboxAuditGroupRecord.new
                        when "#microsoft.graph.security.exchangeMailboxAuditRecord"
                            return SecurityExchangeMailboxAuditRecord.new
                        when "#microsoft.graph.security.fhirBaseUrlAddRecord"
                            return SecurityFhirBaseUrlAddRecord.new
                        when "#microsoft.graph.security.fhirBaseUrlApproveRecord"
                            return SecurityFhirBaseUrlApproveRecord.new
                        when "#microsoft.graph.security.fhirBaseUrlDeleteRecord"
                            return SecurityFhirBaseUrlDeleteRecord.new
                        when "#microsoft.graph.security.fhirBaseUrlUpdateRecord"
                            return SecurityFhirBaseUrlUpdateRecord.new
                        when "#microsoft.graph.security.healthcareSignalRecord"
                            return SecurityHealthcareSignalRecord.new
                        when "#microsoft.graph.security.hostedRpaAuditRecord"
                            return SecurityHostedRpaAuditRecord.new
                        when "#microsoft.graph.security.hrSignalAuditRecord"
                            return SecurityHrSignalAuditRecord.new
                        when "#microsoft.graph.security.hygieneEventRecord"
                            return SecurityHygieneEventRecord.new
                        when "#microsoft.graph.security.informationBarrierPolicyApplicationAuditRecord"
                            return SecurityInformationBarrierPolicyApplicationAuditRecord.new
                        when "#microsoft.graph.security.informationWorkerProtectionAuditRecord"
                            return SecurityInformationWorkerProtectionAuditRecord.new
                        when "#microsoft.graph.security.insiderRiskScopedUserInsightsRecord"
                            return SecurityInsiderRiskScopedUserInsightsRecord.new
                        when "#microsoft.graph.security.insiderRiskScopedUsersRecord"
                            return SecurityInsiderRiskScopedUsersRecord.new
                        when "#microsoft.graph.security.irmSecurityAlertRecord"
                            return SecurityIrmSecurityAlertRecord.new
                        when "#microsoft.graph.security.irmUserDefinedDetectionRecord"
                            return SecurityIrmUserDefinedDetectionRecord.new
                        when "#microsoft.graph.security.kaizalaAuditRecord"
                            return SecurityKaizalaAuditRecord.new
                        when "#microsoft.graph.security.labelAnalyticsAggregateAuditRecord"
                            return SecurityLabelAnalyticsAggregateAuditRecord.new
                        when "#microsoft.graph.security.labelContentExplorerAuditRecord"
                            return SecurityLabelContentExplorerAuditRecord.new
                        when "#microsoft.graph.security.largeContentMetadataAuditRecord"
                            return SecurityLargeContentMetadataAuditRecord.new
                        when "#microsoft.graph.security.m365ComplianceConnectorAuditRecord"
                            return SecurityM365ComplianceConnectorAuditRecord.new
                        when "#microsoft.graph.security.m365DAADAuditRecord"
                            return SecurityM365DAADAuditRecord.new
                        when "#microsoft.graph.security.mailSubmissionData"
                            return SecurityMailSubmissionData.new
                        when "#microsoft.graph.security.managedServicesAuditRecord"
                            return SecurityManagedServicesAuditRecord.new
                        when "#microsoft.graph.security.managedTenantsAuditRecord"
                            return SecurityManagedTenantsAuditRecord.new
                        when "#microsoft.graph.security.mapgAlertsAuditRecord"
                            return SecurityMapgAlertsAuditRecord.new
                        when "#microsoft.graph.security.mapgOnboardAuditRecord"
                            return SecurityMapgOnboardAuditRecord.new
                        when "#microsoft.graph.security.mapgPolicyAuditRecord"
                            return SecurityMapgPolicyAuditRecord.new
                        when "#microsoft.graph.security.mcasAlertsAuditRecord"
                            return SecurityMcasAlertsAuditRecord.new
                        when "#microsoft.graph.security.mdaDataSecuritySignalRecord"
                            return SecurityMdaDataSecuritySignalRecord.new
                        when "#microsoft.graph.security.mdatpAuditRecord"
                            return SecurityMdatpAuditRecord.new
                        when "#microsoft.graph.security.mdcEventsRecord"
                            return SecurityMdcEventsRecord.new
                        when "#microsoft.graph.security.mdiAuditRecord"
                            return SecurityMdiAuditRecord.new
                        when "#microsoft.graph.security.meshWorldsAuditRecord"
                            return SecurityMeshWorldsAuditRecord.new
                        when "#microsoft.graph.security.microsoft365BackupBackupItemAuditRecord"
                            return SecurityMicrosoft365BackupBackupItemAuditRecord.new
                        when "#microsoft.graph.security.microsoft365BackupBackupPolicyAuditRecord"
                            return SecurityMicrosoft365BackupBackupPolicyAuditRecord.new
                        when "#microsoft.graph.security.microsoft365BackupRestoreItemAuditRecord"
                            return SecurityMicrosoft365BackupRestoreItemAuditRecord.new
                        when "#microsoft.graph.security.microsoft365BackupRestoreTaskAuditRecord"
                            return SecurityMicrosoft365BackupRestoreTaskAuditRecord.new
                        when "#microsoft.graph.security.microsoftDefenderExpertsBaseAuditRecord"
                            return SecurityMicrosoftDefenderExpertsBaseAuditRecord.new
                        when "#microsoft.graph.security.microsoftDefenderExpertsXDRAuditRecord"
                            return SecurityMicrosoftDefenderExpertsXDRAuditRecord.new
                        when "#microsoft.graph.security.microsoftFlowAuditRecord"
                            return SecurityMicrosoftFlowAuditRecord.new
                        when "#microsoft.graph.security.microsoftFormsAuditRecord"
                            return SecurityMicrosoftFormsAuditRecord.new
                        when "#microsoft.graph.security.microsoftGraphDataConnectConsent"
                            return SecurityMicrosoftGraphDataConnectConsent.new
                        when "#microsoft.graph.security.microsoftGraphDataConnectOperation"
                            return SecurityMicrosoftGraphDataConnectOperation.new
                        when "#microsoft.graph.security.microsoftPurviewDataMapOperationRecord"
                            return SecurityMicrosoftPurviewDataMapOperationRecord.new
                        when "#microsoft.graph.security.microsoftPurviewMetadataPolicyOperationRecord"
                            return SecurityMicrosoftPurviewMetadataPolicyOperationRecord.new
                        when "#microsoft.graph.security.microsoftPurviewPolicyOperationRecord"
                            return SecurityMicrosoftPurviewPolicyOperationRecord.new
                        when "#microsoft.graph.security.microsoftPurviewPrivacyAuditEvent"
                            return SecurityMicrosoftPurviewPrivacyAuditEvent.new
                        when "#microsoft.graph.security.microsoftStreamAuditRecord"
                            return SecurityMicrosoftStreamAuditRecord.new
                        when "#microsoft.graph.security.microsoftTeamsAdminAuditRecord"
                            return SecurityMicrosoftTeamsAdminAuditRecord.new
                        when "#microsoft.graph.security.microsoftTeamsAnalyticsAuditRecord"
                            return SecurityMicrosoftTeamsAnalyticsAuditRecord.new
                        when "#microsoft.graph.security.microsoftTeamsAuditRecord"
                            return SecurityMicrosoftTeamsAuditRecord.new
                        when "#microsoft.graph.security.microsoftTeamsDeviceAuditRecord"
                            return SecurityMicrosoftTeamsDeviceAuditRecord.new
                        when "#microsoft.graph.security.microsoftTeamsRetentionLabelActionAuditRecord"
                            return SecurityMicrosoftTeamsRetentionLabelActionAuditRecord.new
                        when "#microsoft.graph.security.microsoftTeamsSensitivityLabelActionAuditRecord"
                            return SecurityMicrosoftTeamsSensitivityLabelActionAuditRecord.new
                        when "#microsoft.graph.security.microsoftTeamsShiftsAuditRecord"
                            return SecurityMicrosoftTeamsShiftsAuditRecord.new
                        when "#microsoft.graph.security.mipAutoLabelExchangeItemAuditRecord"
                            return SecurityMipAutoLabelExchangeItemAuditRecord.new
                        when "#microsoft.graph.security.mipAutoLabelItemAuditRecord"
                            return SecurityMipAutoLabelItemAuditRecord.new
                        when "#microsoft.graph.security.mipAutoLabelPolicyAuditRecord"
                            return SecurityMipAutoLabelPolicyAuditRecord.new
                        when "#microsoft.graph.security.mipAutoLabelProgressFeedbackAuditRecord"
                            return SecurityMipAutoLabelProgressFeedbackAuditRecord.new
                        when "#microsoft.graph.security.mipAutoLabelSharePointItemAuditRecord"
                            return SecurityMipAutoLabelSharePointItemAuditRecord.new
                        when "#microsoft.graph.security.mipAutoLabelSharePointPolicyLocationAuditRecord"
                            return SecurityMipAutoLabelSharePointPolicyLocationAuditRecord.new
                        when "#microsoft.graph.security.mipAutoLabelSimulationSharePointCompletionRecord"
                            return SecurityMipAutoLabelSimulationSharePointCompletionRecord.new
                        when "#microsoft.graph.security.mipAutoLabelSimulationSharePointProgressRecord"
                            return SecurityMipAutoLabelSimulationSharePointProgressRecord.new
                        when "#microsoft.graph.security.mipAutoLabelSimulationStatisticsRecord"
                            return SecurityMipAutoLabelSimulationStatisticsRecord.new
                        when "#microsoft.graph.security.mipAutoLabelSimulationStatusRecord"
                            return SecurityMipAutoLabelSimulationStatusRecord.new
                        when "#microsoft.graph.security.mipExactDataMatchAuditRecord"
                            return SecurityMipExactDataMatchAuditRecord.new
                        when "#microsoft.graph.security.mipLabelAnalyticsAuditRecord"
                            return SecurityMipLabelAnalyticsAuditRecord.new
                        when "#microsoft.graph.security.mipLabelAuditRecord"
                            return SecurityMipLabelAuditRecord.new
                        when "#microsoft.graph.security.mS365DCustomDetectionAuditRecord"
                            return SecurityMS365DCustomDetectionAuditRecord.new
                        when "#microsoft.graph.security.mS365DIncidentAuditRecord"
                            return SecurityMS365DIncidentAuditRecord.new
                        when "#microsoft.graph.security.mS365DSuppressionRuleAuditRecord"
                            return SecurityMS365DSuppressionRuleAuditRecord.new
                        when "#microsoft.graph.security.msdeGeneralSettingsAuditRecord"
                            return SecurityMsdeGeneralSettingsAuditRecord.new
                        when "#microsoft.graph.security.msdeIndicatorsSettingsAuditRecord"
                            return SecurityMsdeIndicatorsSettingsAuditRecord.new
                        when "#microsoft.graph.security.msdeResponseActionsAuditRecord"
                            return SecurityMsdeResponseActionsAuditRecord.new
                        when "#microsoft.graph.security.msdeRolesSettingsAuditRecord"
                            return SecurityMsdeRolesSettingsAuditRecord.new
                        when "#microsoft.graph.security.msticNationStateNotificationRecord"
                            return SecurityMsticNationStateNotificationRecord.new
                        when "#microsoft.graph.security.multiStageDispositionAuditRecord"
                            return SecurityMultiStageDispositionAuditRecord.new
                        when "#microsoft.graph.security.myAnalyticsSettingsAuditRecord"
                            return SecurityMyAnalyticsSettingsAuditRecord.new
                        when "#microsoft.graph.security.officeNativeAuditRecord"
                            return SecurityOfficeNativeAuditRecord.new
                        when "#microsoft.graph.security.omePortalAuditRecord"
                            return SecurityOmePortalAuditRecord.new
                        when "#microsoft.graph.security.oneDriveAuditRecord"
                            return SecurityOneDriveAuditRecord.new
                        when "#microsoft.graph.security.onPremisesFileShareScannerDlpAuditRecord"
                            return SecurityOnPremisesFileShareScannerDlpAuditRecord.new
                        when "#microsoft.graph.security.onPremisesScannerDlpAuditRecord"
                            return SecurityOnPremisesScannerDlpAuditRecord.new
                        when "#microsoft.graph.security.onPremisesSharePointScannerDlpAuditRecord"
                            return SecurityOnPremisesSharePointScannerDlpAuditRecord.new
                        when "#microsoft.graph.security.owaGetAccessTokenForResourceAuditRecord"
                            return SecurityOwaGetAccessTokenForResourceAuditRecord.new
                        when "#microsoft.graph.security.peopleAdminSettingsAuditRecord"
                            return SecurityPeopleAdminSettingsAuditRecord.new
                        when "#microsoft.graph.security.physicalBadgingSignalAuditRecord"
                            return SecurityPhysicalBadgingSignalAuditRecord.new
                        when "#microsoft.graph.security.plannerCopyPlanAuditRecord"
                            return SecurityPlannerCopyPlanAuditRecord.new
                        when "#microsoft.graph.security.plannerPlanAuditRecord"
                            return SecurityPlannerPlanAuditRecord.new
                        when "#microsoft.graph.security.plannerPlanListAuditRecord"
                            return SecurityPlannerPlanListAuditRecord.new
                        when "#microsoft.graph.security.plannerRosterAuditRecord"
                            return SecurityPlannerRosterAuditRecord.new
                        when "#microsoft.graph.security.plannerRosterSensitivityLabelAuditRecord"
                            return SecurityPlannerRosterSensitivityLabelAuditRecord.new
                        when "#microsoft.graph.security.plannerTaskAuditRecord"
                            return SecurityPlannerTaskAuditRecord.new
                        when "#microsoft.graph.security.plannerTaskListAuditRecord"
                            return SecurityPlannerTaskListAuditRecord.new
                        when "#microsoft.graph.security.plannerTenantSettingsAuditRecord"
                            return SecurityPlannerTenantSettingsAuditRecord.new
                        when "#microsoft.graph.security.powerAppsAuditAppRecord"
                            return SecurityPowerAppsAuditAppRecord.new
                        when "#microsoft.graph.security.powerAppsAuditPlanRecord"
                            return SecurityPowerAppsAuditPlanRecord.new
                        when "#microsoft.graph.security.powerAppsAuditResourceRecord"
                            return SecurityPowerAppsAuditResourceRecord.new
                        when "#microsoft.graph.security.powerBiAuditRecord"
                            return SecurityPowerBiAuditRecord.new
                        when "#microsoft.graph.security.powerBiDlpAuditRecord"
                            return SecurityPowerBiDlpAuditRecord.new
                        when "#microsoft.graph.security.powerPagesSiteAuditRecord"
                            return SecurityPowerPagesSiteAuditRecord.new
                        when "#microsoft.graph.security.powerPlatformAdminDlpAuditRecord"
                            return SecurityPowerPlatformAdminDlpAuditRecord.new
                        when "#microsoft.graph.security.powerPlatformAdminEnvironmentAuditRecord"
                            return SecurityPowerPlatformAdminEnvironmentAuditRecord.new
                        when "#microsoft.graph.security.powerPlatformAdministratorActivityRecord"
                            return SecurityPowerPlatformAdministratorActivityRecord.new
                        when "#microsoft.graph.security.powerPlatformLockboxResourceAccessRequestAuditRecord"
                            return SecurityPowerPlatformLockboxResourceAccessRequestAuditRecord.new
                        when "#microsoft.graph.security.powerPlatformLockboxResourceCommandAuditRecord"
                            return SecurityPowerPlatformLockboxResourceCommandAuditRecord.new
                        when "#microsoft.graph.security.powerPlatformServiceActivityAuditRecord"
                            return SecurityPowerPlatformServiceActivityAuditRecord.new
                        when "#microsoft.graph.security.privacyDataMatchAuditRecord"
                            return SecurityPrivacyDataMatchAuditRecord.new
                        when "#microsoft.graph.security.privacyDataMinimizationRecord"
                            return SecurityPrivacyDataMinimizationRecord.new
                        when "#microsoft.graph.security.privacyDigestEmailRecord"
                            return SecurityPrivacyDigestEmailRecord.new
                        when "#microsoft.graph.security.privacyOpenAccessAuditRecord"
                            return SecurityPrivacyOpenAccessAuditRecord.new
                        when "#microsoft.graph.security.privacyPortalAuditRecord"
                            return SecurityPrivacyPortalAuditRecord.new
                        when "#microsoft.graph.security.privacyRemediationActionRecord"
                            return SecurityPrivacyRemediationActionRecord.new
                        when "#microsoft.graph.security.privacyRemediationRecord"
                            return SecurityPrivacyRemediationRecord.new
                        when "#microsoft.graph.security.privacyTenantAuditHistoryRecord"
                            return SecurityPrivacyTenantAuditHistoryRecord.new
                        when "#microsoft.graph.security.projectAuditRecord"
                            return SecurityProjectAuditRecord.new
                        when "#microsoft.graph.security.projectForTheWebAssignedToMeSettingsAuditRecord"
                            return SecurityProjectForTheWebAssignedToMeSettingsAuditRecord.new
                        when "#microsoft.graph.security.projectForTheWebProjectAuditRecord"
                            return SecurityProjectForTheWebProjectAuditRecord.new
                        when "#microsoft.graph.security.projectForTheWebProjectSettingsAuditRecord"
                            return SecurityProjectForTheWebProjectSettingsAuditRecord.new
                        when "#microsoft.graph.security.projectForTheWebRoadmapAuditRecord"
                            return SecurityProjectForTheWebRoadmapAuditRecord.new
                        when "#microsoft.graph.security.projectForTheWebRoadmapItemAuditRecord"
                            return SecurityProjectForTheWebRoadmapItemAuditRecord.new
                        when "#microsoft.graph.security.projectForTheWebRoadmapSettingsAuditRecord"
                            return SecurityProjectForTheWebRoadmapSettingsAuditRecord.new
                        when "#microsoft.graph.security.projectForTheWebTaskAuditRecord"
                            return SecurityProjectForTheWebTaskAuditRecord.new
                        when "#microsoft.graph.security.publicFolderAuditRecord"
                            return SecurityPublicFolderAuditRecord.new
                        when "#microsoft.graph.security.purviewInsiderRiskAlertsRecord"
                            return SecurityPurviewInsiderRiskAlertsRecord.new
                        when "#microsoft.graph.security.purviewInsiderRiskCasesRecord"
                            return SecurityPurviewInsiderRiskCasesRecord.new
                        when "#microsoft.graph.security.quarantineAuditRecord"
                            return SecurityQuarantineAuditRecord.new
                        when "#microsoft.graph.security.recordsManagementAuditRecord"
                            return SecurityRecordsManagementAuditRecord.new
                        when "#microsoft.graph.security.retentionPolicyAuditRecord"
                            return SecurityRetentionPolicyAuditRecord.new
                        when "#microsoft.graph.security.scoreEvidence"
                            return SecurityScoreEvidence.new
                        when "#microsoft.graph.security.scorePlatformGenericAuditRecord"
                            return SecurityScorePlatformGenericAuditRecord.new
                        when "#microsoft.graph.security.scriptRunAuditRecord"
                            return SecurityScriptRunAuditRecord.new
                        when "#microsoft.graph.security.searchAuditRecord"
                            return SecuritySearchAuditRecord.new
                        when "#microsoft.graph.security.securityComplianceAlertRecord"
                            return SecuritySecurityComplianceAlertRecord.new
                        when "#microsoft.graph.security.securityComplianceCenterEOPCmdletAuditRecord"
                            return SecuritySecurityComplianceCenterEOPCmdletAuditRecord.new
                        when "#microsoft.graph.security.securityComplianceInsightsAuditRecord"
                            return SecuritySecurityComplianceInsightsAuditRecord.new
                        when "#microsoft.graph.security.securityComplianceRBACAuditRecord"
                            return SecuritySecurityComplianceRBACAuditRecord.new
                        when "#microsoft.graph.security.securityComplianceUserChangeAuditRecord"
                            return SecuritySecurityComplianceUserChangeAuditRecord.new
                        when "#microsoft.graph.security.sharePointAppPermissionOperationAuditRecord"
                            return SecuritySharePointAppPermissionOperationAuditRecord.new
                        when "#microsoft.graph.security.sharePointAuditRecord"
                            return SecuritySharePointAuditRecord.new
                        when "#microsoft.graph.security.sharePointCommentOperationAuditRecord"
                            return SecuritySharePointCommentOperationAuditRecord.new
                        when "#microsoft.graph.security.sharePointContentTypeOperationAuditRecord"
                            return SecuritySharePointContentTypeOperationAuditRecord.new
                        when "#microsoft.graph.security.sharePointESignatureAuditRecord"
                            return SecuritySharePointESignatureAuditRecord.new
                        when "#microsoft.graph.security.sharePointFieldOperationAuditRecord"
                            return SecuritySharePointFieldOperationAuditRecord.new
                        when "#microsoft.graph.security.sharePointFileOperationAuditRecord"
                            return SecuritySharePointFileOperationAuditRecord.new
                        when "#microsoft.graph.security.sharePointListOperationAuditRecord"
                            return SecuritySharePointListOperationAuditRecord.new
                        when "#microsoft.graph.security.sharePointSharingOperationAuditRecord"
                            return SecuritySharePointSharingOperationAuditRecord.new
                        when "#microsoft.graph.security.skypeForBusinessBaseAuditRecord"
                            return SecuritySkypeForBusinessBaseAuditRecord.new
                        when "#microsoft.graph.security.skypeForBusinessCmdletsAuditRecord"
                            return SecuritySkypeForBusinessCmdletsAuditRecord.new
                        when "#microsoft.graph.security.skypeForBusinessPSTNUsageAuditRecord"
                            return SecuritySkypeForBusinessPSTNUsageAuditRecord.new
                        when "#microsoft.graph.security.skypeForBusinessUsersBlockedAuditRecord"
                            return SecuritySkypeForBusinessUsersBlockedAuditRecord.new
                        when "#microsoft.graph.security.smsCreatePhoneNumberRecord"
                            return SecuritySmsCreatePhoneNumberRecord.new
                        when "#microsoft.graph.security.smsDeletePhoneNumberRecord"
                            return SecuritySmsDeletePhoneNumberRecord.new
                        when "#microsoft.graph.security.supervisoryReviewDayXInsightsAuditRecord"
                            return SecuritySupervisoryReviewDayXInsightsAuditRecord.new
                        when "#microsoft.graph.security.syntheticProbeAuditRecord"
                            return SecuritySyntheticProbeAuditRecord.new
                        when "#microsoft.graph.security.teamsEasyApprovalsAuditRecord"
                            return SecurityTeamsEasyApprovalsAuditRecord.new
                        when "#microsoft.graph.security.teamsHealthcareAuditRecord"
                            return SecurityTeamsHealthcareAuditRecord.new
                        when "#microsoft.graph.security.teamsUpdatesAuditRecord"
                            return SecurityTeamsUpdatesAuditRecord.new
                        when "#microsoft.graph.security.tenantAllowBlockListAuditRecord"
                            return SecurityTenantAllowBlockListAuditRecord.new
                        when "#microsoft.graph.security.threatFinderAuditRecord"
                            return SecurityThreatFinderAuditRecord.new
                        when "#microsoft.graph.security.threatIntelligenceAtpContentData"
                            return SecurityThreatIntelligenceAtpContentData.new
                        when "#microsoft.graph.security.threatIntelligenceMailData"
                            return SecurityThreatIntelligenceMailData.new
                        when "#microsoft.graph.security.threatIntelligenceUrlClickData"
                            return SecurityThreatIntelligenceUrlClickData.new
                        when "#microsoft.graph.security.todoAuditRecord"
                            return SecurityTodoAuditRecord.new
                        when "#microsoft.graph.security.uamOperationAuditRecord"
                            return SecurityUamOperationAuditRecord.new
                        when "#microsoft.graph.security.unifiedGroupAuditRecord"
                            return SecurityUnifiedGroupAuditRecord.new
                        when "#microsoft.graph.security.unifiedSimulationMatchedItemAuditRecord"
                            return SecurityUnifiedSimulationMatchedItemAuditRecord.new
                        when "#microsoft.graph.security.unifiedSimulationSummaryAuditRecord"
                            return SecurityUnifiedSimulationSummaryAuditRecord.new
                        when "#microsoft.graph.security.uploadCertificateRecord"
                            return SecurityUploadCertificateRecord.new
                        when "#microsoft.graph.security.urbacAssignmentAuditRecord"
                            return SecurityUrbacAssignmentAuditRecord.new
                        when "#microsoft.graph.security.urbacEnableStateAuditRecord"
                            return SecurityUrbacEnableStateAuditRecord.new
                        when "#microsoft.graph.security.urbacRoleAuditRecord"
                            return SecurityUrbacRoleAuditRecord.new
                        when "#microsoft.graph.security.userTrainingAuditRecord"
                            return SecurityUserTrainingAuditRecord.new
                        when "#microsoft.graph.security.vfamBasePolicyAuditRecord"
                            return SecurityVfamBasePolicyAuditRecord.new
                        when "#microsoft.graph.security.vfamCreatePolicyAuditRecord"
                            return SecurityVfamCreatePolicyAuditRecord.new
                        when "#microsoft.graph.security.vfamDeletePolicyAuditRecord"
                            return SecurityVfamDeletePolicyAuditRecord.new
                        when "#microsoft.graph.security.vfamUpdatePolicyAuditRecord"
                            return SecurityVfamUpdatePolicyAuditRecord.new
                        when "#microsoft.graph.security.vivaGoalsAuditRecord"
                            return SecurityVivaGoalsAuditRecord.new
                        when "#microsoft.graph.security.vivaLearningAdminAuditRecord"
                            return SecurityVivaLearningAdminAuditRecord.new
                        when "#microsoft.graph.security.vivaLearningAuditRecord"
                            return SecurityVivaLearningAuditRecord.new
                        when "#microsoft.graph.security.vivaPulseAdminAuditRecord"
                            return SecurityVivaPulseAdminAuditRecord.new
                        when "#microsoft.graph.security.vivaPulseOrganizerAuditRecord"
                            return SecurityVivaPulseOrganizerAuditRecord.new
                        when "#microsoft.graph.security.vivaPulseReportAuditRecord"
                            return SecurityVivaPulseReportAuditRecord.new
                        when "#microsoft.graph.security.vivaPulseResponseAuditRecord"
                            return SecurityVivaPulseResponseAuditRecord.new
                        when "#microsoft.graph.security.wdatpAlertsAuditRecord"
                            return SecurityWdatpAlertsAuditRecord.new
                        when "#microsoft.graph.security.windows365CustomerLockboxAuditRecord"
                            return SecurityWindows365CustomerLockboxAuditRecord.new
                        when "#microsoft.graph.security.workplaceAnalyticsAuditRecord"
                            return SecurityWorkplaceAnalyticsAuditRecord.new
                        when "#microsoft.graph.security.yammerAuditRecord"
                            return SecurityYammerAuditRecord.new
                    end
                end
                return SecurityAuditData.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
