require 'microsoft_kiota_abstractions'
require_relative '../models/o_data_errors/o_data_error'
require_relative '../models/security_model'
require_relative './alerts/alerts_request_builder'
require_relative './alerts/item/alert_item_request_builder'
require_relative './alerts_v2/alerts_v2_request_builder'
require_relative './alerts_v2/item/alert_item_request_builder'
require_relative './attack_simulation/attack_simulation_request_builder'
require_relative './cases/cases_request_builder'
require_relative './cloud_app_security_profiles/cloud_app_security_profiles_request_builder'
require_relative './cloud_app_security_profiles/item/cloud_app_security_profile_item_request_builder'
require_relative './domain_security_profiles/domain_security_profiles_request_builder'
require_relative './domain_security_profiles/item/domain_security_profile_item_request_builder'
require_relative './file_security_profiles/file_security_profiles_request_builder'
require_relative './file_security_profiles/item/file_security_profile_item_request_builder'
require_relative './host_security_profiles/host_security_profiles_request_builder'
require_relative './host_security_profiles/item/host_security_profile_item_request_builder'
require_relative './incidents/incidents_request_builder'
require_relative './incidents/item/incident_item_request_builder'
require_relative './information_protection/information_protection_request_builder'
require_relative './ip_security_profiles/ip_security_profiles_request_builder'
require_relative './ip_security_profiles/item/ip_security_profile_item_request_builder'
require_relative './labels/labels_request_builder'
require_relative './provider_tenant_settings/item/provider_tenant_setting_item_request_builder'
require_relative './provider_tenant_settings/provider_tenant_settings_request_builder'
require_relative './run_hunting_query/run_hunting_query_request_builder'
require_relative './secure_score_control_profiles/item/secure_score_control_profile_item_request_builder'
require_relative './secure_score_control_profiles/secure_score_control_profiles_request_builder'
require_relative './secure_scores/item/secure_score_item_request_builder'
require_relative './secure_scores/secure_scores_request_builder'
require_relative './security'
require_relative './security_actions/item/security_action_item_request_builder'
require_relative './security_actions/security_actions_request_builder'
require_relative './subject_rights_requests/item/subject_rights_request_item_request_builder'
require_relative './subject_rights_requests/subject_rights_requests_request_builder'
require_relative './threat_submission/threat_submission_request_builder'
require_relative './ti_indicators/item/ti_indicator_item_request_builder'
require_relative './ti_indicators/ti_indicators_request_builder'
require_relative './triggers/triggers_request_builder'
require_relative './trigger_types/trigger_types_request_builder'
require_relative './user_security_profiles/item/user_security_profile_item_request_builder'
require_relative './user_security_profiles/user_security_profiles_request_builder'

module MicrosoftGraphBeta::Security
    ## 
    # Provides operations to manage the security singleton.
    class SecurityRequestBuilder
        
        ## 
        # Provides operations to manage the alerts property of the microsoft.graph.security entity.
        def alerts()
            return MicrosoftGraphBeta::Security::Alerts::AlertsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the alerts_v2 property of the microsoft.graph.security entity.
        def alerts_v2()
            return MicrosoftGraphBeta::Security::Alerts_v2::Alerts_v2RequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the attackSimulation property of the microsoft.graph.security entity.
        def attack_simulation()
            return MicrosoftGraphBeta::Security::AttackSimulation::AttackSimulationRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the providerTenantSettings property of the microsoft.graph.security entity.
        def provider_tenant_settings()
            return MicrosoftGraphBeta::Security::ProviderTenantSettings::ProviderTenantSettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to call the runHuntingQuery method.
        def run_hunting_query()
            return MicrosoftGraphBeta::Security::RunHuntingQuery::RunHuntingQueryRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the userSecurityProfiles property of the microsoft.graph.security entity.
        def user_security_profiles()
            return MicrosoftGraphBeta::Security::UserSecurityProfiles::UserSecurityProfilesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the alerts property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a alert_item_request_builder
        ## 
        def alerts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["alert%2Did"] = id
            return MicrosoftGraphBeta::Security::Alerts::Item::AlertItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the alerts_v2 property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a alert_item_request_builder
        ## 
        def alerts_v2_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["alert%2Did"] = id
            return MicrosoftGraphBeta::Security::Alerts_v2::Item::AlertItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the cloudAppSecurityProfiles property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a cloud_app_security_profile_item_request_builder
        ## 
        def cloud_app_security_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["cloudAppSecurityProfile%2Did"] = id
            return MicrosoftGraphBeta::Security::CloudAppSecurityProfiles::Item::CloudAppSecurityProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new SecurityRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/security{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Provides operations to manage the domainSecurityProfiles property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a domain_security_profile_item_request_builder
        ## 
        def domain_security_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["domainSecurityProfile%2Did"] = id
            return MicrosoftGraphBeta::Security::DomainSecurityProfiles::Item::DomainSecurityProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the fileSecurityProfiles property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a file_security_profile_item_request_builder
        ## 
        def file_security_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["fileSecurityProfile%2Did"] = id
            return MicrosoftGraphBeta::Security::FileSecurityProfiles::Item::FileSecurityProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Get security
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of security_model
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SecurityModel.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the hostSecurityProfiles property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a host_security_profile_item_request_builder
        ## 
        def host_security_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["hostSecurityProfile%2Did"] = id
            return MicrosoftGraphBeta::Security::HostSecurityProfiles::Item::HostSecurityProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the incidents property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a incident_item_request_builder
        ## 
        def incidents_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["incident%2Did"] = id
            return MicrosoftGraphBeta::Security::Incidents::Item::IncidentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the ipSecurityProfiles property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a ip_security_profile_item_request_builder
        ## 
        def ip_security_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["ipSecurityProfile%2Did"] = id
            return MicrosoftGraphBeta::Security::IpSecurityProfiles::Item::IpSecurityProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update security
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of security_model
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SecurityModel.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the providerTenantSettings property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a provider_tenant_setting_item_request_builder
        ## 
        def provider_tenant_settings_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["providerTenantSetting%2Did"] = id
            return MicrosoftGraphBeta::Security::ProviderTenantSettings::Item::ProviderTenantSettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the secureScoreControlProfiles property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a secure_score_control_profile_item_request_builder
        ## 
        def secure_score_control_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["secureScoreControlProfile%2Did"] = id
            return MicrosoftGraphBeta::Security::SecureScoreControlProfiles::Item::SecureScoreControlProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the secureScores property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a secure_score_item_request_builder
        ## 
        def secure_scores_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["secureScore%2Did"] = id
            return MicrosoftGraphBeta::Security::SecureScores::Item::SecureScoreItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the securityActions property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a security_action_item_request_builder
        ## 
        def security_actions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["securityAction%2Did"] = id
            return MicrosoftGraphBeta::Security::SecurityActions::Item::SecurityActionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the subjectRightsRequests property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a subject_rights_request_item_request_builder
        ## 
        def subject_rights_requests_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["subjectRightsRequest%2Did"] = id
            return MicrosoftGraphBeta::Security::SubjectRightsRequests::Item::SubjectRightsRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the tiIndicators property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a ti_indicator_item_request_builder
        ## 
        def ti_indicators_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["tiIndicator%2Did"] = id
            return MicrosoftGraphBeta::Security::TiIndicators::Item::TiIndicatorItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Get security
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_get_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :GET
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Update security
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :PATCH
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end
        ## 
        ## Provides operations to manage the userSecurityProfiles property of the microsoft.graph.security entity.
        ## @param id Unique identifier of the item
        ## @return a user_security_profile_item_request_builder
        ## 
        def user_security_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["userSecurityProfile%2Did"] = id
            return MicrosoftGraphBeta::Security::UserSecurityProfiles::Item::UserSecurityProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
            ## @param originalName The original query parameter name in the class.
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class SecurityRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class SecurityRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
