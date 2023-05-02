require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../identity_governance'
require_relative '../../../../../../entitlement_management'
require_relative '../../../../../access_package_catalogs'
require_relative '../../../../item'
require_relative '../../../access_packages'
require_relative '../../item'
require_relative '../incompatible_access_packages'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageCatalogs
                module Item
                    module AccessPackages
                        module Item
                            module IncompatibleAccessPackages
                                module Item
                                    ## 
                                    # Builds and executes requests for operations under \identityGovernance\entitlementManagement\accessPackageCatalogs\{accessPackageCatalog-id}\accessPackages\{accessPackage-id}\incompatibleAccessPackages\{accessPackage-id1}
                                    class AccessPackageItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to manage the collection of identityGovernance entities.
                                        def ref()
                                            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageCatalogs::Item::AccessPackages::Item::IncompatibleAccessPackages::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new AccessPackageItemRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalog%2Did}/accessPackages/{accessPackage%2Did}/incompatibleAccessPackages/{accessPackage%2Did1}")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
