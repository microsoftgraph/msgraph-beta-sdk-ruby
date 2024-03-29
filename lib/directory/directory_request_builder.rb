require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/directory'
require_relative '../models/o_data_errors_o_data_error'
require_relative './administrative_units/administrative_units_request_builder'
require_relative './attribute_sets/attribute_sets_request_builder'
require_relative './certificate_authorities/certificate_authorities_request_builder'
require_relative './custom_security_attribute_definitions/custom_security_attribute_definitions_request_builder'
require_relative './deleted_items/deleted_items_request_builder'
require_relative './directory'
require_relative './feature_rollout_policies/feature_rollout_policies_request_builder'
require_relative './federation_configurations/federation_configurations_request_builder'
require_relative './impacted_resources/impacted_resources_request_builder'
require_relative './inbound_shared_user_profiles/inbound_shared_user_profiles_request_builder'
require_relative './on_premises_synchronization/on_premises_synchronization_request_builder'
require_relative './outbound_shared_user_profiles/outbound_shared_user_profiles_request_builder'
require_relative './recommendations/recommendations_request_builder'
require_relative './shared_email_domains/shared_email_domains_request_builder'
require_relative './subscriptions/subscriptions_request_builder'

module MicrosoftGraphBeta
    module Directory
        ## 
        # Provides operations to manage the directory singleton.
        class DirectoryRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the administrativeUnits property of the microsoft.graph.directory entity.
            def administrative_units()
                return MicrosoftGraphBeta::Directory::AdministrativeUnits::AdministrativeUnitsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the attributeSets property of the microsoft.graph.directory entity.
            def attribute_sets()
                return MicrosoftGraphBeta::Directory::AttributeSets::AttributeSetsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the certificateAuthorities property of the microsoft.graph.directory entity.
            def certificate_authorities()
                return MicrosoftGraphBeta::Directory::CertificateAuthorities::CertificateAuthoritiesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the customSecurityAttributeDefinitions property of the microsoft.graph.directory entity.
            def custom_security_attribute_definitions()
                return MicrosoftGraphBeta::Directory::CustomSecurityAttributeDefinitions::CustomSecurityAttributeDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deletedItems property of the microsoft.graph.directory entity.
            def deleted_items()
                return MicrosoftGraphBeta::Directory::DeletedItems::DeletedItemsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the featureRolloutPolicies property of the microsoft.graph.directory entity.
            def feature_rollout_policies()
                return MicrosoftGraphBeta::Directory::FeatureRolloutPolicies::FeatureRolloutPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the federationConfigurations property of the microsoft.graph.directory entity.
            def federation_configurations()
                return MicrosoftGraphBeta::Directory::FederationConfigurations::FederationConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the impactedResources property of the microsoft.graph.directory entity.
            def impacted_resources()
                return MicrosoftGraphBeta::Directory::ImpactedResources::ImpactedResourcesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the inboundSharedUserProfiles property of the microsoft.graph.directory entity.
            def inbound_shared_user_profiles()
                return MicrosoftGraphBeta::Directory::InboundSharedUserProfiles::InboundSharedUserProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the onPremisesSynchronization property of the microsoft.graph.directory entity.
            def on_premises_synchronization()
                return MicrosoftGraphBeta::Directory::OnPremisesSynchronization::OnPremisesSynchronizationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the outboundSharedUserProfiles property of the microsoft.graph.directory entity.
            def outbound_shared_user_profiles()
                return MicrosoftGraphBeta::Directory::OutboundSharedUserProfiles::OutboundSharedUserProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the recommendations property of the microsoft.graph.directory entity.
            def recommendations()
                return MicrosoftGraphBeta::Directory::Recommendations::RecommendationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the sharedEmailDomains property of the microsoft.graph.directory entity.
            def shared_email_domains()
                return MicrosoftGraphBeta::Directory::SharedEmailDomains::SharedEmailDomainsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the subscriptions property of the microsoft.graph.directory entity.
            def subscriptions()
                return MicrosoftGraphBeta::Directory::Subscriptions::SubscriptionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new DirectoryRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/directory{?%24select,%24expand}")
            end
            ## 
            ## Get directory
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of directory
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Directory.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update directory
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of directory
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Directory.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get directory
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
            ## Update directory
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
                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                return request_info
            end

            ## 
            # Get directory
            class DirectoryRequestBuilderGetQueryParameters
                
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
