require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/cloud_p_c'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../users'
require_relative '../../item'
require_relative '../cloud_p_cs'
require_relative './item'
require_relative './microsoft_graph_change_user_account_type/change_user_account_type_request_builder'
require_relative './microsoft_graph_end_grace_period/end_grace_period_request_builder'
require_relative './microsoft_graph_get_cloud_pc_connectivity_history/get_cloud_pc_connectivity_history_request_builder'
require_relative './microsoft_graph_get_cloud_pc_launch_info/get_cloud_pc_launch_info_request_builder'
require_relative './microsoft_graph_get_shift_work_cloud_pc_access_state/get_shift_work_cloud_pc_access_state_request_builder'
require_relative './microsoft_graph_get_supported_cloud_pc_remote_actions/get_supported_cloud_pc_remote_actions_request_builder'
require_relative './microsoft_graph_reboot/reboot_request_builder'
require_relative './microsoft_graph_rename/rename_request_builder'
require_relative './microsoft_graph_reprovision/reprovision_request_builder'
require_relative './microsoft_graph_restore/restore_request_builder'
require_relative './microsoft_graph_retry_partner_agent_installation/retry_partner_agent_installation_request_builder'
require_relative './microsoft_graph_troubleshoot/troubleshoot_request_builder'

module MicrosoftGraphBeta::Users::Item::CloudPCs::Item
    ## 
    # Provides operations to manage the cloudPCs property of the microsoft.graph.user entity.
    class CloudPCItemRequestBuilder
        
        ## 
        # Provides operations to call the changeUserAccountType method.
        def microsoft_graph_change_user_account_type()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphChangeUserAccountType::ChangeUserAccountTypeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the endGracePeriod method.
        def microsoft_graph_end_grace_period()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphEndGracePeriod::EndGracePeriodRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCloudPcConnectivityHistory method.
        def microsoft_graph_get_cloud_pc_connectivity_history()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphGetCloudPcConnectivityHistory::GetCloudPcConnectivityHistoryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCloudPcLaunchInfo method.
        def microsoft_graph_get_cloud_pc_launch_info()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphGetCloudPcLaunchInfo::GetCloudPcLaunchInfoRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getShiftWorkCloudPcAccessState method.
        def microsoft_graph_get_shift_work_cloud_pc_access_state()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphGetShiftWorkCloudPcAccessState::GetShiftWorkCloudPcAccessStateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getSupportedCloudPcRemoteActions method.
        def microsoft_graph_get_supported_cloud_pc_remote_actions()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphGetSupportedCloudPcRemoteActions::GetSupportedCloudPcRemoteActionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the reboot method.
        def microsoft_graph_reboot()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphReboot::RebootRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the rename method.
        def microsoft_graph_rename()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphRename::RenameRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the reprovision method.
        def microsoft_graph_reprovision()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphReprovision::ReprovisionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the restore method.
        def microsoft_graph_restore()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphRestore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the retryPartnerAgentInstallation method.
        def microsoft_graph_retry_partner_agent_installation()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphRetryPartnerAgentInstallation::RetryPartnerAgentInstallationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the troubleshoot method.
        def microsoft_graph_troubleshoot()
            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::MicrosoftGraphTroubleshoot::TroubleshootRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new CloudPCItemRequestBuilder and sets the default values.
        ## @param cloudPCId key: id of cloudPC
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter, cloud_p_c_id=nil)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/users/{user%2Did}/cloudPCs/{cloudPC%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property cloudPCs for users
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
        ## Get cloudPCs from users
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of cloud_p_c
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPC.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property cloudPCs in users
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of cloud_p_c
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPC.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Delete navigation property cloudPCs for users
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
        ## Get cloudPCs from users
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
        ## Update the navigation property cloudPCs in users
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
        class CloudPCItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Get cloudPCs from users
        class CloudPCItemRequestBuilderGetQueryParameters
            
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
        class CloudPCItemRequestBuilderGetRequestConfiguration
            
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
        class CloudPCItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
