require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/security/threat_intelligence'
require_relative '../security'
require_relative './article_indicators/article_indicators_request_builder'
require_relative './article_indicators/item/article_indicator_item_request_builder'
require_relative './articles/articles_request_builder'
require_relative './articles/item/article_item_request_builder'
require_relative './host_components/host_components_request_builder'
require_relative './host_components/item/host_component_item_request_builder'
require_relative './host_cookies/host_cookies_request_builder'
require_relative './host_cookies/item/host_cookie_item_request_builder'
require_relative './hosts/hosts_request_builder'
require_relative './hosts/item/host_item_request_builder'
require_relative './host_trackers/host_trackers_request_builder'
require_relative './host_trackers/item/host_tracker_item_request_builder'
require_relative './intelligence_profile_indicators/intelligence_profile_indicators_request_builder'
require_relative './intelligence_profile_indicators/item/intelligence_profile_indicator_item_request_builder'
require_relative './intel_profiles/intel_profiles_request_builder'
require_relative './intel_profiles/item/intelligence_profile_item_request_builder'
require_relative './passive_dns_records/item/passive_dns_record_item_request_builder'
require_relative './passive_dns_records/passive_dns_records_request_builder'
require_relative './threat_intelligence'
require_relative './vulnerabilities/item/vulnerability_item_request_builder'
require_relative './vulnerabilities/vulnerabilities_request_builder'

module MicrosoftGraphBeta
    module Security
        module ThreatIntelligence
            ## 
            # Provides operations to manage the threatIntelligence property of the microsoft.graph.security entity.
            class ThreatIntelligenceRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the articleIndicators property of the microsoft.graph.security.threatIntelligence entity.
                def article_indicators()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::ArticleIndicators::ArticleIndicatorsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the articles property of the microsoft.graph.security.threatIntelligence entity.
                def articles()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::Articles::ArticlesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostComponents property of the microsoft.graph.security.threatIntelligence entity.
                def host_components()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::HostComponents::HostComponentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostCookies property of the microsoft.graph.security.threatIntelligence entity.
                def host_cookies()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::HostCookies::HostCookiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hosts property of the microsoft.graph.security.threatIntelligence entity.
                def hosts()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::Hosts::HostsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the hostTrackers property of the microsoft.graph.security.threatIntelligence entity.
                def host_trackers()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::HostTrackers::HostTrackersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the intelligenceProfileIndicators property of the microsoft.graph.security.threatIntelligence entity.
                def intelligence_profile_indicators()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::IntelligenceProfileIndicators::IntelligenceProfileIndicatorsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the intelProfiles property of the microsoft.graph.security.threatIntelligence entity.
                def intel_profiles()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::IntelProfiles::IntelProfilesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the passiveDnsRecords property of the microsoft.graph.security.threatIntelligence entity.
                def passive_dns_records()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::PassiveDnsRecords::PassiveDnsRecordsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the vulnerabilities property of the microsoft.graph.security.threatIntelligence entity.
                def vulnerabilities()
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::Vulnerabilities::VulnerabilitiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to manage the articleIndicators property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a article_indicator_item_request_builder
                ## 
                def article_indicators_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["articleIndicator%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::ArticleIndicators::Item::ArticleIndicatorItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the articles property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a article_item_request_builder
                ## 
                def articles_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["article%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::Articles::Item::ArticleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new ThreatIntelligenceRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/security/threatIntelligence{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property threatIntelligence for security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## Get threatIntelligence from security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of threat_intelligence
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Security::ThreatIntelligence.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the hostComponents property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a host_component_item_request_builder
                ## 
                def host_components_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["hostComponent%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::HostComponents::Item::HostComponentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the hostCookies property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a host_cookie_item_request_builder
                ## 
                def host_cookies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["hostCookie%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::HostCookies::Item::HostCookieItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the hosts property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a host_item_request_builder
                ## 
                def hosts_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["host%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::Hosts::Item::HostItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the hostTrackers property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a host_tracker_item_request_builder
                ## 
                def host_trackers_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["hostTracker%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::HostTrackers::Item::HostTrackerItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the intelligenceProfileIndicators property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a intelligence_profile_indicator_item_request_builder
                ## 
                def intelligence_profile_indicators_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["intelligenceProfileIndicator%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::IntelligenceProfileIndicators::Item::IntelligenceProfileIndicatorItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the intelProfiles property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a intelligence_profile_item_request_builder
                ## 
                def intel_profiles_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["intelligenceProfile%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::IntelProfiles::Item::IntelligenceProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the passiveDnsRecords property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a passive_dns_record_item_request_builder
                ## 
                def passive_dns_records_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["passiveDnsRecord%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::PassiveDnsRecords::Item::PassiveDnsRecordItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update the navigation property threatIntelligence in security
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of threat_intelligence
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Security::ThreatIntelligence.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property threatIntelligence for security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    return request_info
                end
                ## 
                ## Get threatIntelligence from security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Update the navigation property threatIntelligence in security
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Provides operations to manage the vulnerabilities property of the microsoft.graph.security.threatIntelligence entity.
                ## @param id Unique identifier of the item
                ## @return a vulnerability_item_request_builder
                ## 
                def vulnerabilities_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["vulnerability%2Did"] = id
                    return MicrosoftGraphBeta::Security::ThreatIntelligence::Vulnerabilities::Item::VulnerabilityItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # Get threatIntelligence from security
                class ThreatIntelligenceRequestBuilderGetQueryParameters
                    
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
end
