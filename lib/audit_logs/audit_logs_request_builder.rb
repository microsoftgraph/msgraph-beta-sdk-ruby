require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/audit_log_root'
require_relative '../models/o_data_errors_o_data_error'
require_relative './audit_logs'
require_relative './custom_security_attribute_audits/custom_security_attribute_audits_request_builder'
require_relative './directory_audits/directory_audits_request_builder'
require_relative './directory_provisioning/directory_provisioning_request_builder'
require_relative './provisioning/provisioning_request_builder'
require_relative './sign_ins/sign_ins_request_builder'

module MicrosoftGraphBeta
    module AuditLogs
        ## 
        # Provides operations to manage the auditLogRoot singleton.
        class AuditLogsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the customSecurityAttributeAudits property of the microsoft.graph.auditLogRoot entity.
            def custom_security_attribute_audits()
                return MicrosoftGraphBeta::AuditLogs::CustomSecurityAttributeAudits::CustomSecurityAttributeAuditsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the directoryAudits property of the microsoft.graph.auditLogRoot entity.
            def directory_audits()
                return MicrosoftGraphBeta::AuditLogs::DirectoryAudits::DirectoryAuditsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the directoryProvisioning property of the microsoft.graph.auditLogRoot entity.
            def directory_provisioning()
                return MicrosoftGraphBeta::AuditLogs::DirectoryProvisioning::DirectoryProvisioningRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the provisioning property of the microsoft.graph.auditLogRoot entity.
            def provisioning()
                return MicrosoftGraphBeta::AuditLogs::Provisioning::ProvisioningRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the signIns property of the microsoft.graph.auditLogRoot entity.
            def sign_ins()
                return MicrosoftGraphBeta::AuditLogs::SignIns::SignInsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new AuditLogsRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/auditLogs{?%24select,%24expand}")
            end
            ## 
            ## Get auditLogs
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of audit_log_root
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AuditLogRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Update auditLogs
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of audit_log_root
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AuditLogRoot.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get auditLogs
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
            ## Update auditLogs
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
            # Get auditLogs
            class AuditLogsRequestBuilderGetQueryParameters
                
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
