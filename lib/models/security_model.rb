require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './security/alert'
require_relative './security/cases_root'
require_relative './security/incident'
require_relative './security/information_protection'
require_relative './security/labels_root'
require_relative './security/threat_intelligence'
require_relative './security/threat_submission_root'
require_relative './security/triggers_root'
require_relative './security/trigger_types_root'

module MicrosoftGraphBeta
    module Models
        class SecurityModel < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Notifications for suspicious or potential security issues in a customer’s tenant.
            @alerts
            ## 
            # A collection of alerts in Microsoft 365 Defender.
            @alerts_v2
            ## 
            # Provides tenants capability to launch a simulated and realistic phishing attack and learn from it.
            @attack_simulation
            ## 
            # The cases property
            @cases
            ## 
            # The cloudAppSecurityProfiles property
            @cloud_app_security_profiles
            ## 
            # The domainSecurityProfiles property
            @domain_security_profiles
            ## 
            # The fileSecurityProfiles property
            @file_security_profiles
            ## 
            # The hostSecurityProfiles property
            @host_security_profiles
            ## 
            # A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.
            @incidents
            ## 
            # The informationProtection property
            @information_protection
            ## 
            # The ipSecurityProfiles property
            @ip_security_profiles
            ## 
            # The labels property
            @labels
            ## 
            # The providerStatus property
            @provider_status
            ## 
            # The providerTenantSettings property
            @provider_tenant_settings
            ## 
            # The secureScoreControlProfiles property
            @secure_score_control_profiles
            ## 
            # Measurements of tenants’ security posture to help protect them from threats.
            @secure_scores
            ## 
            # The securityActions property
            @security_actions
            ## 
            # The subjectRightsRequests property
            @subject_rights_requests
            ## 
            # The threatIntelligence property
            @threat_intelligence
            ## 
            # A threat submission sent to Microsoft; for example, a suspicious email threat, URL threat, or file threat.
            @threat_submission
            ## 
            # The tiIndicators property
            @ti_indicators
            ## 
            # The triggerTypes property
            @trigger_types
            ## 
            # The triggers property
            @triggers
            ## 
            # The userSecurityProfiles property
            @user_security_profiles
            ## 
            ## Gets the alerts property value. Notifications for suspicious or potential security issues in a customer’s tenant.
            ## @return a alert
            ## 
            def alerts
                return @alerts
            end
            ## 
            ## Sets the alerts property value. Notifications for suspicious or potential security issues in a customer’s tenant.
            ## @param value Value to set for the alerts property.
            ## @return a void
            ## 
            def alerts=(value)
                @alerts = value
            end
            ## 
            ## Gets the alerts_v2 property value. A collection of alerts in Microsoft 365 Defender.
            ## @return a alert
            ## 
            def alerts_v2
                return @alerts_v2
            end
            ## 
            ## Sets the alerts_v2 property value. A collection of alerts in Microsoft 365 Defender.
            ## @param value Value to set for the alerts_v2 property.
            ## @return a void
            ## 
            def alerts_v2=(value)
                @alerts_v2 = value
            end
            ## 
            ## Gets the attackSimulation property value. Provides tenants capability to launch a simulated and realistic phishing attack and learn from it.
            ## @return a attack_simulation_root
            ## 
            def attack_simulation
                return @attack_simulation
            end
            ## 
            ## Sets the attackSimulation property value. Provides tenants capability to launch a simulated and realistic phishing attack and learn from it.
            ## @param value Value to set for the attackSimulation property.
            ## @return a void
            ## 
            def attack_simulation=(value)
                @attack_simulation = value
            end
            ## 
            ## Gets the cases property value. The cases property
            ## @return a cases_root
            ## 
            def cases
                return @cases
            end
            ## 
            ## Sets the cases property value. The cases property
            ## @param value Value to set for the cases property.
            ## @return a void
            ## 
            def cases=(value)
                @cases = value
            end
            ## 
            ## Gets the cloudAppSecurityProfiles property value. The cloudAppSecurityProfiles property
            ## @return a cloud_app_security_profile
            ## 
            def cloud_app_security_profiles
                return @cloud_app_security_profiles
            end
            ## 
            ## Sets the cloudAppSecurityProfiles property value. The cloudAppSecurityProfiles property
            ## @param value Value to set for the cloudAppSecurityProfiles property.
            ## @return a void
            ## 
            def cloud_app_security_profiles=(value)
                @cloud_app_security_profiles = value
            end
            ## 
            ## Instantiates a new securityModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityModel.new
            end
            ## 
            ## Gets the domainSecurityProfiles property value. The domainSecurityProfiles property
            ## @return a domain_security_profile
            ## 
            def domain_security_profiles
                return @domain_security_profiles
            end
            ## 
            ## Sets the domainSecurityProfiles property value. The domainSecurityProfiles property
            ## @param value Value to set for the domainSecurityProfiles property.
            ## @return a void
            ## 
            def domain_security_profiles=(value)
                @domain_security_profiles = value
            end
            ## 
            ## Gets the fileSecurityProfiles property value. The fileSecurityProfiles property
            ## @return a file_security_profile
            ## 
            def file_security_profiles
                return @file_security_profiles
            end
            ## 
            ## Sets the fileSecurityProfiles property value. The fileSecurityProfiles property
            ## @param value Value to set for the fileSecurityProfiles property.
            ## @return a void
            ## 
            def file_security_profiles=(value)
                @file_security_profiles = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alerts" => lambda {|n| @alerts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Alert.create_from_discriminator_value(pn) }) },
                    "alerts_v2" => lambda {|n| @alerts_v2 = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::Alert.create_from_discriminator_value(pn) }) },
                    "attackSimulation" => lambda {|n| @attack_simulation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AttackSimulationRoot.create_from_discriminator_value(pn) }) },
                    "cases" => lambda {|n| @cases = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::CasesRoot.create_from_discriminator_value(pn) }) },
                    "cloudAppSecurityProfiles" => lambda {|n| @cloud_app_security_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudAppSecurityProfile.create_from_discriminator_value(pn) }) },
                    "domainSecurityProfiles" => lambda {|n| @domain_security_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DomainSecurityProfile.create_from_discriminator_value(pn) }) },
                    "fileSecurityProfiles" => lambda {|n| @file_security_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::FileSecurityProfile.create_from_discriminator_value(pn) }) },
                    "hostSecurityProfiles" => lambda {|n| @host_security_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HostSecurityProfile.create_from_discriminator_value(pn) }) },
                    "incidents" => lambda {|n| @incidents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::Incident.create_from_discriminator_value(pn) }) },
                    "informationProtection" => lambda {|n| @information_protection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::InformationProtection.create_from_discriminator_value(pn) }) },
                    "ipSecurityProfiles" => lambda {|n| @ip_security_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IpSecurityProfile.create_from_discriminator_value(pn) }) },
                    "labels" => lambda {|n| @labels = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::LabelsRoot.create_from_discriminator_value(pn) }) },
                    "providerStatus" => lambda {|n| @provider_status = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityProviderStatus.create_from_discriminator_value(pn) }) },
                    "providerTenantSettings" => lambda {|n| @provider_tenant_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ProviderTenantSetting.create_from_discriminator_value(pn) }) },
                    "secureScoreControlProfiles" => lambda {|n| @secure_score_control_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecureScoreControlProfile.create_from_discriminator_value(pn) }) },
                    "secureScores" => lambda {|n| @secure_scores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecureScore.create_from_discriminator_value(pn) }) },
                    "securityActions" => lambda {|n| @security_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAction.create_from_discriminator_value(pn) }) },
                    "subjectRightsRequests" => lambda {|n| @subject_rights_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SubjectRightsRequest.create_from_discriminator_value(pn) }) },
                    "threatIntelligence" => lambda {|n| @threat_intelligence = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::ThreatIntelligence.create_from_discriminator_value(pn) }) },
                    "threatSubmission" => lambda {|n| @threat_submission = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::ThreatSubmissionRoot.create_from_discriminator_value(pn) }) },
                    "tiIndicators" => lambda {|n| @ti_indicators = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TiIndicator.create_from_discriminator_value(pn) }) },
                    "triggerTypes" => lambda {|n| @trigger_types = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::TriggerTypesRoot.create_from_discriminator_value(pn) }) },
                    "triggers" => lambda {|n| @triggers = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::TriggersRoot.create_from_discriminator_value(pn) }) },
                    "userSecurityProfiles" => lambda {|n| @user_security_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserSecurityProfile.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hostSecurityProfiles property value. The hostSecurityProfiles property
            ## @return a host_security_profile
            ## 
            def host_security_profiles
                return @host_security_profiles
            end
            ## 
            ## Sets the hostSecurityProfiles property value. The hostSecurityProfiles property
            ## @param value Value to set for the hostSecurityProfiles property.
            ## @return a void
            ## 
            def host_security_profiles=(value)
                @host_security_profiles = value
            end
            ## 
            ## Gets the incidents property value. A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.
            ## @return a incident
            ## 
            def incidents
                return @incidents
            end
            ## 
            ## Sets the incidents property value. A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.
            ## @param value Value to set for the incidents property.
            ## @return a void
            ## 
            def incidents=(value)
                @incidents = value
            end
            ## 
            ## Gets the informationProtection property value. The informationProtection property
            ## @return a information_protection
            ## 
            def information_protection
                return @information_protection
            end
            ## 
            ## Sets the informationProtection property value. The informationProtection property
            ## @param value Value to set for the informationProtection property.
            ## @return a void
            ## 
            def information_protection=(value)
                @information_protection = value
            end
            ## 
            ## Gets the ipSecurityProfiles property value. The ipSecurityProfiles property
            ## @return a ip_security_profile
            ## 
            def ip_security_profiles
                return @ip_security_profiles
            end
            ## 
            ## Sets the ipSecurityProfiles property value. The ipSecurityProfiles property
            ## @param value Value to set for the ipSecurityProfiles property.
            ## @return a void
            ## 
            def ip_security_profiles=(value)
                @ip_security_profiles = value
            end
            ## 
            ## Gets the labels property value. The labels property
            ## @return a labels_root
            ## 
            def labels
                return @labels
            end
            ## 
            ## Sets the labels property value. The labels property
            ## @param value Value to set for the labels property.
            ## @return a void
            ## 
            def labels=(value)
                @labels = value
            end
            ## 
            ## Gets the providerStatus property value. The providerStatus property
            ## @return a security_provider_status
            ## 
            def provider_status
                return @provider_status
            end
            ## 
            ## Sets the providerStatus property value. The providerStatus property
            ## @param value Value to set for the providerStatus property.
            ## @return a void
            ## 
            def provider_status=(value)
                @provider_status = value
            end
            ## 
            ## Gets the providerTenantSettings property value. The providerTenantSettings property
            ## @return a provider_tenant_setting
            ## 
            def provider_tenant_settings
                return @provider_tenant_settings
            end
            ## 
            ## Sets the providerTenantSettings property value. The providerTenantSettings property
            ## @param value Value to set for the providerTenantSettings property.
            ## @return a void
            ## 
            def provider_tenant_settings=(value)
                @provider_tenant_settings = value
            end
            ## 
            ## Gets the secureScoreControlProfiles property value. The secureScoreControlProfiles property
            ## @return a secure_score_control_profile
            ## 
            def secure_score_control_profiles
                return @secure_score_control_profiles
            end
            ## 
            ## Sets the secureScoreControlProfiles property value. The secureScoreControlProfiles property
            ## @param value Value to set for the secureScoreControlProfiles property.
            ## @return a void
            ## 
            def secure_score_control_profiles=(value)
                @secure_score_control_profiles = value
            end
            ## 
            ## Gets the secureScores property value. Measurements of tenants’ security posture to help protect them from threats.
            ## @return a secure_score
            ## 
            def secure_scores
                return @secure_scores
            end
            ## 
            ## Sets the secureScores property value. Measurements of tenants’ security posture to help protect them from threats.
            ## @param value Value to set for the secureScores property.
            ## @return a void
            ## 
            def secure_scores=(value)
                @secure_scores = value
            end
            ## 
            ## Gets the securityActions property value. The securityActions property
            ## @return a security_action
            ## 
            def security_actions
                return @security_actions
            end
            ## 
            ## Sets the securityActions property value. The securityActions property
            ## @param value Value to set for the securityActions property.
            ## @return a void
            ## 
            def security_actions=(value)
                @security_actions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("alerts", @alerts)
                writer.write_collection_of_object_values("alerts_v2", @alerts_v2)
                writer.write_object_value("attackSimulation", @attack_simulation)
                writer.write_object_value("cases", @cases)
                writer.write_collection_of_object_values("cloudAppSecurityProfiles", @cloud_app_security_profiles)
                writer.write_collection_of_object_values("domainSecurityProfiles", @domain_security_profiles)
                writer.write_collection_of_object_values("fileSecurityProfiles", @file_security_profiles)
                writer.write_collection_of_object_values("hostSecurityProfiles", @host_security_profiles)
                writer.write_collection_of_object_values("incidents", @incidents)
                writer.write_object_value("informationProtection", @information_protection)
                writer.write_collection_of_object_values("ipSecurityProfiles", @ip_security_profiles)
                writer.write_object_value("labels", @labels)
                writer.write_collection_of_object_values("providerStatus", @provider_status)
                writer.write_collection_of_object_values("providerTenantSettings", @provider_tenant_settings)
                writer.write_collection_of_object_values("secureScoreControlProfiles", @secure_score_control_profiles)
                writer.write_collection_of_object_values("secureScores", @secure_scores)
                writer.write_collection_of_object_values("securityActions", @security_actions)
                writer.write_collection_of_object_values("subjectRightsRequests", @subject_rights_requests)
                writer.write_object_value("threatIntelligence", @threat_intelligence)
                writer.write_object_value("threatSubmission", @threat_submission)
                writer.write_collection_of_object_values("tiIndicators", @ti_indicators)
                writer.write_object_value("triggerTypes", @trigger_types)
                writer.write_object_value("triggers", @triggers)
                writer.write_collection_of_object_values("userSecurityProfiles", @user_security_profiles)
            end
            ## 
            ## Gets the subjectRightsRequests property value. The subjectRightsRequests property
            ## @return a subject_rights_request
            ## 
            def subject_rights_requests
                return @subject_rights_requests
            end
            ## 
            ## Sets the subjectRightsRequests property value. The subjectRightsRequests property
            ## @param value Value to set for the subjectRightsRequests property.
            ## @return a void
            ## 
            def subject_rights_requests=(value)
                @subject_rights_requests = value
            end
            ## 
            ## Gets the threatIntelligence property value. The threatIntelligence property
            ## @return a threat_intelligence
            ## 
            def threat_intelligence
                return @threat_intelligence
            end
            ## 
            ## Sets the threatIntelligence property value. The threatIntelligence property
            ## @param value Value to set for the threatIntelligence property.
            ## @return a void
            ## 
            def threat_intelligence=(value)
                @threat_intelligence = value
            end
            ## 
            ## Gets the threatSubmission property value. A threat submission sent to Microsoft; for example, a suspicious email threat, URL threat, or file threat.
            ## @return a threat_submission_root
            ## 
            def threat_submission
                return @threat_submission
            end
            ## 
            ## Sets the threatSubmission property value. A threat submission sent to Microsoft; for example, a suspicious email threat, URL threat, or file threat.
            ## @param value Value to set for the threatSubmission property.
            ## @return a void
            ## 
            def threat_submission=(value)
                @threat_submission = value
            end
            ## 
            ## Gets the tiIndicators property value. The tiIndicators property
            ## @return a ti_indicator
            ## 
            def ti_indicators
                return @ti_indicators
            end
            ## 
            ## Sets the tiIndicators property value. The tiIndicators property
            ## @param value Value to set for the tiIndicators property.
            ## @return a void
            ## 
            def ti_indicators=(value)
                @ti_indicators = value
            end
            ## 
            ## Gets the triggerTypes property value. The triggerTypes property
            ## @return a trigger_types_root
            ## 
            def trigger_types
                return @trigger_types
            end
            ## 
            ## Sets the triggerTypes property value. The triggerTypes property
            ## @param value Value to set for the triggerTypes property.
            ## @return a void
            ## 
            def trigger_types=(value)
                @trigger_types = value
            end
            ## 
            ## Gets the triggers property value. The triggers property
            ## @return a triggers_root
            ## 
            def triggers
                return @triggers
            end
            ## 
            ## Sets the triggers property value. The triggers property
            ## @param value Value to set for the triggers property.
            ## @return a void
            ## 
            def triggers=(value)
                @triggers = value
            end
            ## 
            ## Gets the userSecurityProfiles property value. The userSecurityProfiles property
            ## @return a user_security_profile
            ## 
            def user_security_profiles
                return @user_security_profiles
            end
            ## 
            ## Sets the userSecurityProfiles property value. The userSecurityProfiles property
            ## @param value Value to set for the userSecurityProfiles property.
            ## @return a void
            ## 
            def user_security_profiles=(value)
                @user_security_profiles = value
            end
        end
    end
end
