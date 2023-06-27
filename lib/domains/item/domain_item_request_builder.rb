require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/domain'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../domains'
require_relative './domain_name_references/domain_name_references_request_builder'
require_relative './federation_configuration/federation_configuration_request_builder'
require_relative './force_delete/force_delete_request_builder'
require_relative './item'
require_relative './promote/promote_request_builder'
require_relative './service_configuration_records/service_configuration_records_request_builder'
require_relative './shared_email_domain_invitations/shared_email_domain_invitations_request_builder'
require_relative './verification_dns_records/verification_dns_records_request_builder'
require_relative './verify/verify_request_builder'

module MicrosoftGraphBeta
    module Domains
        module Item
            ## 
            # Provides operations to manage the collection of domain entities.
            class DomainItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the domainNameReferences property of the microsoft.graph.domain entity.
                def domain_name_references()
                    return MicrosoftGraphBeta::Domains::Item::DomainNameReferences::DomainNameReferencesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the federationConfiguration property of the microsoft.graph.domain entity.
                def federation_configuration()
                    return MicrosoftGraphBeta::Domains::Item::FederationConfiguration::FederationConfigurationRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the forceDelete method.
                def force_delete()
                    return MicrosoftGraphBeta::Domains::Item::ForceDelete::ForceDeleteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the promote method.
                def promote()
                    return MicrosoftGraphBeta::Domains::Item::Promote::PromoteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the serviceConfigurationRecords property of the microsoft.graph.domain entity.
                def service_configuration_records()
                    return MicrosoftGraphBeta::Domains::Item::ServiceConfigurationRecords::ServiceConfigurationRecordsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the sharedEmailDomainInvitations property of the microsoft.graph.domain entity.
                def shared_email_domain_invitations()
                    return MicrosoftGraphBeta::Domains::Item::SharedEmailDomainInvitations::SharedEmailDomainInvitationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the verificationDnsRecords property of the microsoft.graph.domain entity.
                def verification_dns_records()
                    return MicrosoftGraphBeta::Domains::Item::VerificationDnsRecords::VerificationDnsRecordsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the verify method.
                def verify()
                    return MicrosoftGraphBeta::Domains::Item::Verify::VerifyRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new DomainItemRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/domains/{domain%2Did}{?%24select,%24expand}")
                end
                ## 
                ## Deletes a domain from a tenant.
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
                ## Retrieve the properties and relationships of domain object.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of domain
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Domain.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the properties of domain object.
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of domain
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Domain.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Deletes a domain from a tenant.
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
                ## Retrieve the properties and relationships of domain object.
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
                ## Update the properties of domain object.
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
                # Retrieve the properties and relationships of domain object.
                class DomainItemRequestBuilderGetQueryParameters
                    
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
