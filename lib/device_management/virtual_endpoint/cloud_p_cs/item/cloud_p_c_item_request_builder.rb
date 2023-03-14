require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/cloud_p_c'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../device_management'
require_relative '../../virtual_endpoint'
require_relative '../cloud_p_cs'
require_relative './change_user_account_type/change_user_account_type_request_builder'
require_relative './end_grace_period/end_grace_period_request_builder'
require_relative './get_cloud_pc_connectivity_history/get_cloud_pc_connectivity_history_request_builder'
require_relative './get_cloud_pc_launch_info/get_cloud_pc_launch_info_request_builder'
require_relative './get_shift_work_cloud_pc_access_state/get_shift_work_cloud_pc_access_state_request_builder'
require_relative './get_supported_cloud_pc_remote_actions/get_supported_cloud_pc_remote_actions_request_builder'
require_relative './item'
require_relative './reboot/reboot_request_builder'
require_relative './rename/rename_request_builder'
require_relative './reprovision/reprovision_request_builder'
require_relative './restore/restore_request_builder'
require_relative './retry_partner_agent_installation/retry_partner_agent_installation_request_builder'
require_relative './start/start_request_builder'
require_relative './stop/stop_request_builder'
require_relative './troubleshoot/troubleshoot_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            module CloudPCs
                module Item
                    ## 
                    # Provides operations to manage the cloudPCs property of the microsoft.graph.virtualEndpoint entity.
                    class CloudPCItemRequestBuilder
                        
                        ## 
                        # Provides operations to call the changeUserAccountType method.
                        def change_user_account_type()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::ChangeUserAccountType::ChangeUserAccountTypeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the endGracePeriod method.
                        def end_grace_period()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::EndGracePeriod::EndGracePeriodRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getCloudPcConnectivityHistory method.
                        def get_cloud_pc_connectivity_history()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::GetCloudPcConnectivityHistory::GetCloudPcConnectivityHistoryRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getCloudPcLaunchInfo method.
                        def get_cloud_pc_launch_info()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::GetCloudPcLaunchInfo::GetCloudPcLaunchInfoRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getShiftWorkCloudPcAccessState method.
                        def get_shift_work_cloud_pc_access_state()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::GetShiftWorkCloudPcAccessState::GetShiftWorkCloudPcAccessStateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getSupportedCloudPcRemoteActions method.
                        def get_supported_cloud_pc_remote_actions()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::GetSupportedCloudPcRemoteActions::GetSupportedCloudPcRemoteActionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # Provides operations to call the reboot method.
                        def reboot()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::Reboot::RebootRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the rename method.
                        def rename()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::Rename::RenameRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the reprovision method.
                        def reprovision()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::Reprovision::ReprovisionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Provides operations to call the restore method.
                        def restore()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the retryPartnerAgentInstallation method.
                        def retry_partner_agent_installation()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::RetryPartnerAgentInstallation::RetryPartnerAgentInstallationRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the start method.
                        def start()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::Start::StartRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the stop method.
                        def stop()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::Stop::StopRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the troubleshoot method.
                        def troubleshoot()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::CloudPCs::Item::Troubleshoot::TroubleshootRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Instantiates a new CloudPCItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/deviceManagement/virtualEndpoint/cloudPCs/{cloudPC%2Did}{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Delete navigation property cloudPCs for deviceManagement
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
                        ## Cloud managed virtual desktops.
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
                        ## Update the navigation property cloudPCs in deviceManagement
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
                        ## Delete navigation property cloudPCs for deviceManagement
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
                        ## Cloud managed virtual desktops.
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
                        ## Update the navigation property cloudPCs in deviceManagement
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
                        # Cloud managed virtual desktops.
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
            end
        end
    end
end
