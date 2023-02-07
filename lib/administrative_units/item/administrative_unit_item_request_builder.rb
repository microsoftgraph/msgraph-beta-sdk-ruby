require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/administrative_unit'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../administrative_units'
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './item'
require_relative './members/item/directory_object_item_request_builder'
require_relative './members/members_request_builder'
require_relative './microsoft_graph_check_member_groups/microsoft_graph_check_member_groups_request_builder'
require_relative './microsoft_graph_check_member_objects/microsoft_graph_check_member_objects_request_builder'
require_relative './microsoft_graph_get_member_groups/microsoft_graph_get_member_groups_request_builder'
require_relative './microsoft_graph_get_member_objects/microsoft_graph_get_member_objects_request_builder'
require_relative './microsoft_graph_restore/microsoft_graph_restore_request_builder'
require_relative './scoped_role_members/item/scoped_role_membership_item_request_builder'
require_relative './scoped_role_members/scoped_role_members_request_builder'

module MicrosoftGraphBeta::AdministrativeUnits::Item
    ## 
    # Provides operations to manage the collection of administrativeUnit entities.
    class AdministrativeUnitItemRequestBuilder
        
        ## 
        # Provides operations to manage the extensions property of the microsoft.graph.administrativeUnit entity.
        def extensions()
            return MicrosoftGraphBeta::AdministrativeUnits::Item::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the members property of the microsoft.graph.administrativeUnit entity.
        def members()
            return MicrosoftGraphBeta::AdministrativeUnits::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the checkMemberGroups method.
        def microsoft_graph_check_member_groups()
            return MicrosoftGraphBeta::AdministrativeUnits::Item::MicrosoftGraphCheckMemberGroups::MicrosoftGraphCheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the checkMemberObjects method.
        def microsoft_graph_check_member_objects()
            return MicrosoftGraphBeta::AdministrativeUnits::Item::MicrosoftGraphCheckMemberObjects::MicrosoftGraphCheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberGroups method.
        def microsoft_graph_get_member_groups()
            return MicrosoftGraphBeta::AdministrativeUnits::Item::MicrosoftGraphGetMemberGroups::MicrosoftGraphGetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberObjects method.
        def microsoft_graph_get_member_objects()
            return MicrosoftGraphBeta::AdministrativeUnits::Item::MicrosoftGraphGetMemberObjects::MicrosoftGraphGetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the restore method.
        def microsoft_graph_restore()
            return MicrosoftGraphBeta::AdministrativeUnits::Item::MicrosoftGraphRestore::MicrosoftGraphRestoreRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the scopedRoleMembers property of the microsoft.graph.administrativeUnit entity.
        def scoped_role_members()
            return MicrosoftGraphBeta::AdministrativeUnits::Item::ScopedRoleMembers::ScopedRoleMembersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new AdministrativeUnitItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/administrativeUnits/{administrativeUnit%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete an administrativeUnit.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
        ## Provides operations to manage the extensions property of the microsoft.graph.administrativeUnit entity.
        ## @param id Unique identifier of the item
        ## @return a extension_item_request_builder
        ## 
        def extensions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["extension%2Did"] = id
            return MicrosoftGraphBeta::AdministrativeUnits::Item::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Retrieve the properties and relationships of an administrativeUnit object. Since the **administrativeUnit** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in an **administrativeUnit** instance.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of administrative_unit
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AdministrativeUnit.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Gets an item from the MicrosoftGraphBeta.administrativeUnits.item.members.item collection
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def members_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::AdministrativeUnits::Item::Members::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the properties of an administrativeUnit object.
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of administrative_unit
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AdministrativeUnit.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the scopedRoleMembers property of the microsoft.graph.administrativeUnit entity.
        ## @param id Unique identifier of the item
        ## @return a scoped_role_membership_item_request_builder
        ## 
        def scoped_role_members_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["scopedRoleMembership%2Did"] = id
            return MicrosoftGraphBeta::AdministrativeUnits::Item::ScopedRoleMembers::Item::ScopedRoleMembershipItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete an administrativeUnit.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
        ## Retrieve the properties and relationships of an administrativeUnit object. Since the **administrativeUnit** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in an **administrativeUnit** instance.
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
        ## Update the properties of an administrativeUnit object.
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
        # Configuration for the request such as headers, query parameters, and middleware options.
        class AdministrativeUnitItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Retrieve the properties and relationships of an administrativeUnit object. Since the **administrativeUnit** resource supports extensions, you can also use the `GET` operation to get custom properties and extension data in an **administrativeUnit** instance.
        class AdministrativeUnitItemRequestBuilderGetQueryParameters
            
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
        class AdministrativeUnitItemRequestBuilderGetRequestConfiguration
            
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
        class AdministrativeUnitItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
