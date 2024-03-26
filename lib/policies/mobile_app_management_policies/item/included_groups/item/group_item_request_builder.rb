require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../policies'
require_relative '../../../mobile_app_management_policies'
require_relative '../../item'
require_relative '../included_groups'
require_relative './item'
require_relative './ref/ref_request_builder'
require_relative './service_provisioning_errors/service_provisioning_errors_request_builder'

module MicrosoftGraphBeta
    module Policies
        module MobileAppManagementPolicies
            module Item
                module IncludedGroups
                    module Item
                        ## 
                        # Builds and executes requests for operations under \policies\mobileAppManagementPolicies\{mobilityManagementPolicy-id}\includedGroups\{group-id}
                        class GroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of policyRoot entities.
                            def ref()
                                return MicrosoftGraphBeta::Policies::MobileAppManagementPolicies::Item::IncludedGroups::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The serviceProvisioningErrors property
                            def service_provisioning_errors()
                                return MicrosoftGraphBeta::Policies::MobileAppManagementPolicies::Item::IncludedGroups::Item::ServiceProvisioningErrors::ServiceProvisioningErrorsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new GroupItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/policies/mobileAppManagementPolicies/{mobilityManagementPolicy%2Did}/includedGroups/{group%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
