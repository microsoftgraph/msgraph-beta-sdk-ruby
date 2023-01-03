require 'microsoft_kiota_abstractions'
require_relative '../models/directory'
require_relative '../models/o_data_errors/o_data_error'
require_relative './administrative_units/administrative_units_request_builder'
require_relative './administrative_units/item/administrative_unit_item_request_builder'
require_relative './attribute_sets/attribute_sets_request_builder'
require_relative './attribute_sets/item/attribute_set_item_request_builder'
require_relative './custom_security_attribute_definitions/custom_security_attribute_definitions_request_builder'
require_relative './custom_security_attribute_definitions/item/custom_security_attribute_definition_item_request_builder'
require_relative './deleted_items/deleted_items_request_builder'
require_relative './deleted_items/item/directory_object_item_request_builder'
require_relative './directory'
require_relative './feature_rollout_policies/feature_rollout_policies_request_builder'
require_relative './feature_rollout_policies/item/feature_rollout_policy_item_request_builder'
require_relative './federation_configurations/federation_configurations_request_builder'
require_relative './federation_configurations/item/identity_provider_base_item_request_builder'
require_relative './impacted_resources/impacted_resources_request_builder'
require_relative './impacted_resources/item/recommendation_resource_item_request_builder'
require_relative './inbound_shared_user_profiles/inbound_shared_user_profiles_request_builder'
require_relative './inbound_shared_user_profiles/item/inbound_shared_user_profile_user_item_request_builder'
require_relative './on_premises_synchronization/item/on_premises_directory_synchronization_item_request_builder'
require_relative './on_premises_synchronization/on_premises_synchronization_request_builder'
require_relative './outbound_shared_user_profiles/item/outbound_shared_user_profile_user_item_request_builder'
require_relative './outbound_shared_user_profiles/outbound_shared_user_profiles_request_builder'
require_relative './recommendations/item/recommendation_item_request_builder'
require_relative './recommendations/recommendations_request_builder'
require_relative './shared_email_domains/item/shared_email_domain_item_request_builder'
require_relative './shared_email_domains/shared_email_domains_request_builder'

module MicrosoftGraphBeta::Directory
    ## 
    # Provides operations to manage the directory singleton.
    class DirectoryRequestBuilder
        
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
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the recommendations property of the microsoft.graph.directory entity.
        def recommendations()
            return MicrosoftGraphBeta::Directory::Recommendations::RecommendationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the sharedEmailDomains property of the microsoft.graph.directory entity.
        def shared_email_domains()
            return MicrosoftGraphBeta::Directory::SharedEmailDomains::SharedEmailDomainsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the administrativeUnits property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a administrative_unit_item_request_builder
        ## 
        def administrative_units_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["administrativeUnit%2Did"] = id
            return MicrosoftGraphBeta::Directory::AdministrativeUnits::Item::AdministrativeUnitItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the attributeSets property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a attribute_set_item_request_builder
        ## 
        def attribute_sets_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["attributeSet%2Did"] = id
            return MicrosoftGraphBeta::Directory::AttributeSets::Item::AttributeSetItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new DirectoryRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/directory{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Get directory
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_get_request_information(request_configuration=nil)
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
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_patch_request_information(body, request_configuration=nil)
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
        ## Provides operations to manage the customSecurityAttributeDefinitions property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a custom_security_attribute_definition_item_request_builder
        ## 
        def custom_security_attribute_definitions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["customSecurityAttributeDefinition%2Did"] = id
            return MicrosoftGraphBeta::Directory::CustomSecurityAttributeDefinitions::Item::CustomSecurityAttributeDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the deletedItems property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def deleted_items_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Directory::DeletedItems::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the featureRolloutPolicies property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a feature_rollout_policy_item_request_builder
        ## 
        def feature_rollout_policies_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["featureRolloutPolicy%2Did"] = id
            return MicrosoftGraphBeta::Directory::FeatureRolloutPolicies::Item::FeatureRolloutPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the federationConfigurations property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a identity_provider_base_item_request_builder
        ## 
        def federation_configurations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["identityProviderBase%2Did"] = id
            return MicrosoftGraphBeta::Directory::FederationConfigurations::Item::IdentityProviderBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Get directory
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of directory
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Directory.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the impactedResources property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a recommendation_resource_item_request_builder
        ## 
        def impacted_resources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["recommendationResource%2Did"] = id
            return MicrosoftGraphBeta::Directory::ImpactedResources::Item::RecommendationResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the inboundSharedUserProfiles property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a inbound_shared_user_profile_user_item_request_builder
        ## 
        def inbound_shared_user_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["inboundSharedUserProfile%2DuserId"] = id
            return MicrosoftGraphBeta::Directory::InboundSharedUserProfiles::Item::InboundSharedUserProfileUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the onPremisesSynchronization property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a on_premises_directory_synchronization_item_request_builder
        ## 
        def on_premises_synchronization_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["onPremisesDirectorySynchronization%2Did"] = id
            return MicrosoftGraphBeta::Directory::OnPremisesSynchronization::Item::OnPremisesDirectorySynchronizationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the outboundSharedUserProfiles property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a outbound_shared_user_profile_user_item_request_builder
        ## 
        def outbound_shared_user_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["outboundSharedUserProfile%2DuserId"] = id
            return MicrosoftGraphBeta::Directory::OutboundSharedUserProfiles::Item::OutboundSharedUserProfileUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update directory
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of directory
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.create_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Directory.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the recommendations property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a recommendation_item_request_builder
        ## 
        def recommendations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["recommendation%2Did"] = id
            return MicrosoftGraphBeta::Directory::Recommendations::Item::RecommendationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the sharedEmailDomains property of the microsoft.graph.directory entity.
        ## @param id Unique identifier of the item
        ## @return a shared_email_domain_item_request_builder
        ## 
        def shared_email_domains_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["sharedEmailDomain%2Did"] = id
            return MicrosoftGraphBeta::Directory::SharedEmailDomains::Item::SharedEmailDomainItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
        class DirectoryRequestBuilderGetRequestConfiguration
            
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
        class DirectoryRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
