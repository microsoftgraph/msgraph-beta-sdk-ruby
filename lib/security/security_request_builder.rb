require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/o_data_errors_o_data_error'
require_relative '../models/security_model_model_model_model_model_model_model'
require_relative './alerts/alerts_request_builder'
require_relative './alerts_v2/alerts_v2_request_builder'
require_relative './attack_simulation/attack_simulation_request_builder'
require_relative './audit_log/audit_log_request_builder'
require_relative './cases/cases_request_builder'
require_relative './cloud_app_security_profiles/cloud_app_security_profiles_request_builder'
require_relative './collaboration/collaboration_request_builder'
require_relative './domain_security_profiles/domain_security_profiles_request_builder'
require_relative './file_security_profiles/file_security_profiles_request_builder'
require_relative './host_security_profiles/host_security_profiles_request_builder'
require_relative './incidents/incidents_request_builder'
require_relative './information_protection/information_protection_request_builder'
require_relative './ip_security_profiles/ip_security_profiles_request_builder'
require_relative './labels/labels_request_builder'
require_relative './microsoft_graph_security_run_hunting_query/microsoft_graph_security_run_hunting_query_request_builder'
require_relative './provider_tenant_settings/provider_tenant_settings_request_builder'
require_relative './secure_score_control_profiles/secure_score_control_profiles_request_builder'
require_relative './secure_scores/secure_scores_request_builder'
require_relative './security'
require_relative './security_actions/security_actions_request_builder'
require_relative './subject_rights_requests/subject_rights_requests_request_builder'
require_relative './threat_intelligence/threat_intelligence_request_builder'
require_relative './threat_submission/threat_submission_request_builder'
require_relative './ti_indicators/ti_indicators_request_builder'
require_relative './triggers/triggers_request_builder'
require_relative './trigger_types/trigger_types_request_builder'
require_relative './user_security_profiles/user_security_profiles_request_builder'

module MicrosoftGraphBeta
    module Security
        ## 
        # Provides operations to manage the security singleton.
        class SecurityRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the alerts property of the microsoft.graph.security entity.
            def alerts()
                return MicrosoftGraphBeta::Security::Alerts::AlertsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the alerts_v2 property of the microsoft.graph.security entity.
            def alerts_v2()
                return MicrosoftGraphBeta::Security::Alerts_v2::AlertsV2RequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the attackSimulation property of the microsoft.graph.security entity.
            def attack_simulation()
                return MicrosoftGraphBeta::Security::AttackSimulation::AttackSimulationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the auditLog property of the microsoft.graph.security entity.
            def audit_log()
                return MicrosoftGraphBeta::Security::AuditLog::AuditLogRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the cases property of the microsoft.graph.security entity.
            def cases()
                return MicrosoftGraphBeta::Security::Cases::CasesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the cloudAppSecurityProfiles property of the microsoft.graph.security entity.
            def cloud_app_security_profiles()
                return MicrosoftGraphBeta::Security::CloudAppSecurityProfiles::CloudAppSecurityProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the collaboration property of the microsoft.graph.security entity.
            def collaboration()
                return MicrosoftGraphBeta::Security::Collaboration::CollaborationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the domainSecurityProfiles property of the microsoft.graph.security entity.
            def domain_security_profiles()
                return MicrosoftGraphBeta::Security::DomainSecurityProfiles::DomainSecurityProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the fileSecurityProfiles property of the microsoft.graph.security entity.
            def file_security_profiles()
                return MicrosoftGraphBeta::Security::FileSecurityProfiles::FileSecurityProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the hostSecurityProfiles property of the microsoft.graph.security entity.
            def host_security_profiles()
                return MicrosoftGraphBeta::Security::HostSecurityProfiles::HostSecurityProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the incidents property of the microsoft.graph.security entity.
            def incidents()
                return MicrosoftGraphBeta::Security::Incidents::IncidentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the informationProtection property of the microsoft.graph.security entity.
            def information_protection()
                return MicrosoftGraphBeta::Security::InformationProtection::InformationProtectionRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the ipSecurityProfiles property of the microsoft.graph.security entity.
            def ip_security_profiles()
                return MicrosoftGraphBeta::Security::IpSecurityProfiles::IpSecurityProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the labels property of the microsoft.graph.security entity.
            def labels()
                return MicrosoftGraphBeta::Security::Labels::LabelsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the runHuntingQuery method.
            def microsoft_graph_security_run_hunting_query()
                return MicrosoftGraphBeta::Security::MicrosoftGraphSecurityRunHuntingQuery::MicrosoftGraphSecurityRunHuntingQueryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the providerTenantSettings property of the microsoft.graph.security entity.
            def provider_tenant_settings()
                return MicrosoftGraphBeta::Security::ProviderTenantSettings::ProviderTenantSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the secureScoreControlProfiles property of the microsoft.graph.security entity.
            def secure_score_control_profiles()
                return MicrosoftGraphBeta::Security::SecureScoreControlProfiles::SecureScoreControlProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the secureScores property of the microsoft.graph.security entity.
            def secure_scores()
                return MicrosoftGraphBeta::Security::SecureScores::SecureScoresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the securityActions property of the microsoft.graph.security entity.
            def security_actions()
                return MicrosoftGraphBeta::Security::SecurityActions::SecurityActionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the subjectRightsRequests property of the microsoft.graph.security entity.
            def subject_rights_requests()
                return MicrosoftGraphBeta::Security::SubjectRightsRequests::SubjectRightsRequestsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the threatIntelligence property of the microsoft.graph.security entity.
            def threat_intelligence()
                return MicrosoftGraphBeta::Security::ThreatIntelligence::ThreatIntelligenceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the threatSubmission property of the microsoft.graph.security entity.
            def threat_submission()
                return MicrosoftGraphBeta::Security::ThreatSubmission::ThreatSubmissionRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the tiIndicators property of the microsoft.graph.security entity.
            def ti_indicators()
                return MicrosoftGraphBeta::Security::TiIndicators::TiIndicatorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the triggers property of the microsoft.graph.security entity.
            def triggers()
                return MicrosoftGraphBeta::Security::Triggers::TriggersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the triggerTypes property of the microsoft.graph.security entity.
            def trigger_types()
                return MicrosoftGraphBeta::Security::TriggerTypes::TriggerTypesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userSecurityProfiles property of the microsoft.graph.security entity.
            def user_security_profiles()
                return MicrosoftGraphBeta::Security::UserSecurityProfiles::UserSecurityProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new SecurityRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/security{?%24expand,%24select}")
            end
            ## 
            ## Get security
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of security_model_model_model_model_model_model_model
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SecurityModelModelModelModelModelModelModel.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update security
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of security_model_model_model_model_model_model_model
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SecurityModelModelModelModelModelModelModel.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get security
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_get_request_information(request_configuration=nil)
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :GET
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Update security
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_patch_request_information(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :PATCH
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
            ## @param raw_url The raw URL to use for the request builder.
            ## @return a security_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return SecurityRequestBuilder.new(raw_url, @request_adapter)
            end

            ## 
            # Get security
            class SecurityRequestBuilderGetQueryParameters
                
                ## 
                # Expand related entities
                attr_accessor :expand
                ## 
                # Select properties to be returned
                attr_accessor :select
                ## 
                ## Maps the query parameters names to their encoded names for the URI template parsing.
                ## @param original_name The original query parameter name in the class.
                ## @return a string
                ## 
                def get_query_parameter(original_name)
                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                    case original_name
                        when "expand"
                            return "%24expand"
                        when "select"
                            return "%24select"
                        else
                            return original_name
                    end
                end
            end
        end
    end
end
