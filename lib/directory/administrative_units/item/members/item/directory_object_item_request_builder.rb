require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../directory'
require_relative '../../../administrative_units'
require_relative '../../item'
require_relative '../members'
require_relative './graph_application/graph_application_request_builder'
require_relative './graph_device/graph_device_request_builder'
require_relative './graph_group/graph_group_request_builder'
require_relative './graph_org_contact/graph_org_contact_request_builder'
require_relative './graph_service_principal/graph_service_principal_request_builder'
require_relative './graph_user/graph_user_request_builder'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module Directory
        module AdministrativeUnits
            module Item
                module Members
                    module Item
                        ## 
                        # Builds and executes requests for operations under \directory\administrativeUnits\{administrativeUnit-id}\members\{directoryObject-id}
                        class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Casts the previous resource to application.
                            def graph_application()
                                return MicrosoftGraphBeta::Directory::AdministrativeUnits::Item::Members::Item::GraphApplication::GraphApplicationRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to device.
                            def graph_device()
                                return MicrosoftGraphBeta::Directory::AdministrativeUnits::Item::Members::Item::GraphDevice::GraphDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to group.
                            def graph_group()
                                return MicrosoftGraphBeta::Directory::AdministrativeUnits::Item::Members::Item::GraphGroup::GraphGroupRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to orgContact.
                            def graph_org_contact()
                                return MicrosoftGraphBeta::Directory::AdministrativeUnits::Item::Members::Item::GraphOrgContact::GraphOrgContactRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to servicePrincipal.
                            def graph_service_principal()
                                return MicrosoftGraphBeta::Directory::AdministrativeUnits::Item::Members::Item::GraphServicePrincipal::GraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Casts the previous resource to user.
                            def graph_user()
                                return MicrosoftGraphBeta::Directory::AdministrativeUnits::Item::Members::Item::GraphUser::GraphUserRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the collection of directory entities.
                            def ref()
                                return MicrosoftGraphBeta::Directory::AdministrativeUnits::Item::Members::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/directory/administrativeUnits/{administrativeUnit%2Did}/members/{directoryObject%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
