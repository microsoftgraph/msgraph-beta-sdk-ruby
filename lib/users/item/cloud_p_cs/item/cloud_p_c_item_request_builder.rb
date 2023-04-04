require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/cloud_p_c'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../users'
require_relative '../../item'
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
    module Users
        module Item
            module CloudPCs
                module Item
                    ## 
                    # Provides operations to manage the cloudPCs property of the microsoft.graph.user entity.
                    class CloudPCItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to call the changeUserAccountType method.
                        def change_user_account_type()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::ChangeUserAccountType::ChangeUserAccountTypeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the endGracePeriod method.
                        def end_grace_period()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::EndGracePeriod::EndGracePeriodRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getCloudPcConnectivityHistory method.
                        def get_cloud_pc_connectivity_history()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::GetCloudPcConnectivityHistory::GetCloudPcConnectivityHistoryRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getCloudPcLaunchInfo method.
                        def get_cloud_pc_launch_info()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::GetCloudPcLaunchInfo::GetCloudPcLaunchInfoRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getShiftWorkCloudPcAccessState method.
                        def get_shift_work_cloud_pc_access_state()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::GetShiftWorkCloudPcAccessState::GetShiftWorkCloudPcAccessStateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getSupportedCloudPcRemoteActions method.
                        def get_supported_cloud_pc_remote_actions()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::GetSupportedCloudPcRemoteActions::GetSupportedCloudPcRemoteActionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the reboot method.
                        def reboot()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::Reboot::RebootRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the rename method.
                        def rename()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::Rename::RenameRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the reprovision method.
                        def reprovision()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::Reprovision::ReprovisionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the restore method.
                        def restore()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the retryPartnerAgentInstallation method.
                        def retry_partner_agent_installation()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::RetryPartnerAgentInstallation::RetryPartnerAgentInstallationRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the start method.
                        def start()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::Start::StartRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the stop method.
                        def stop()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::Stop::StopRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the troubleshoot method.
                        def troubleshoot()
                            return MicrosoftGraphBeta::Users::Item::CloudPCs::Item::Troubleshoot::TroubleshootRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new CloudPCItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/cloudPCs/{cloudPC%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete navigation property cloudPCs for users
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of binary
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, Binary, error_mapping)
                        end
                        ## 
                        ## Get cloudPCs from users
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## Get cloudPCs from users
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
                        ## Update the navigation property cloudPCs in users
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
    end
end
