require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../owners'
require_relative './item'
require_relative './microsoft_graph_application/microsoft_graph_application_request_builder'
require_relative './microsoft_graph_device/microsoft_graph_device_request_builder'
require_relative './microsoft_graph_group/microsoft_graph_group_request_builder'
require_relative './microsoft_graph_org_contact/microsoft_graph_org_contact_request_builder'
require_relative './microsoft_graph_service_principal/microsoft_graph_service_principal_request_builder'
require_relative './microsoft_graph_user/microsoft_graph_user_request_builder'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta::Groups::Item::Owners::Item
    ## 
    # Builds and executes requests for operations under \groups\{group-id}\owners\{directoryObject-id}
    class DirectoryObjectItemRequestBuilder
        
        ## 
        # Casts the previous resource to application.
        def microsoft_graph_application()
            return MicrosoftGraphBeta::Groups::Item::Owners::Item::MicrosoftGraphApplication::MicrosoftGraphApplicationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to device.
        def microsoft_graph_device()
            return MicrosoftGraphBeta::Groups::Item::Owners::Item::MicrosoftGraphDevice::MicrosoftGraphDeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to group.
        def microsoft_graph_group()
            return MicrosoftGraphBeta::Groups::Item::Owners::Item::MicrosoftGraphGroup::MicrosoftGraphGroupRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to orgContact.
        def microsoft_graph_org_contact()
            return MicrosoftGraphBeta::Groups::Item::Owners::Item::MicrosoftGraphOrgContact::MicrosoftGraphOrgContactRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to servicePrincipal.
        def microsoft_graph_service_principal()
            return MicrosoftGraphBeta::Groups::Item::Owners::Item::MicrosoftGraphServicePrincipal::MicrosoftGraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to user.
        def microsoft_graph_user()
            return MicrosoftGraphBeta::Groups::Item::Owners::Item::MicrosoftGraphUser::MicrosoftGraphUserRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of group entities.
        def ref()
            return MicrosoftGraphBeta::Groups::Item::Owners::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/groups/{group%2Did}/owners/{directoryObject%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
