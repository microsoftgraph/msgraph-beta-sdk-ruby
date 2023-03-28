require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/data_classification_service'
require_relative '../models/o_data_errors/o_data_error'
require_relative './classify_exact_matches/classify_exact_matches_request_builder'
require_relative './classify_file/classify_file_request_builder'
require_relative './classify_file_jobs/classify_file_jobs_request_builder'
require_relative './classify_file_jobs/item/job_response_base_item_request_builder'
require_relative './classify_text_jobs/classify_text_jobs_request_builder'
require_relative './classify_text_jobs/item/job_response_base_item_request_builder'
require_relative './data_classification'
require_relative './evaluate_dlp_policies_jobs/evaluate_dlp_policies_jobs_request_builder'
require_relative './evaluate_dlp_policies_jobs/item/job_response_base_item_request_builder'
require_relative './evaluate_label_jobs/evaluate_label_jobs_request_builder'
require_relative './evaluate_label_jobs/item/job_response_base_item_request_builder'
require_relative './exact_match_data_stores/exact_match_data_stores_request_builder'
require_relative './exact_match_data_stores/item/exact_match_data_store_item_request_builder'
require_relative './exact_match_upload_agents/exact_match_upload_agents_request_builder'
require_relative './exact_match_upload_agents/item/exact_match_upload_agent_item_request_builder'
require_relative './jobs/item/job_response_base_item_request_builder'
require_relative './jobs/jobs_request_builder'
require_relative './sensitive_types/item/sensitive_type_item_request_builder'
require_relative './sensitive_types/sensitive_types_request_builder'
require_relative './sensitivity_labels/item/sensitivity_label_item_request_builder'
require_relative './sensitivity_labels/sensitivity_labels_request_builder'

module MicrosoftGraphBeta
    module DataClassification
        ## 
        # Provides operations to manage the dataClassificationService singleton.
        class DataClassificationRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to call the classifyExactMatches method.
            def classify_exact_matches()
                return MicrosoftGraphBeta::DataClassification::ClassifyExactMatches::ClassifyExactMatchesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the classifyFile method.
            def classify_file()
                return MicrosoftGraphBeta::DataClassification::ClassifyFile::ClassifyFileRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the classifyFileJobs property of the microsoft.graph.dataClassificationService entity.
            def classify_file_jobs()
                return MicrosoftGraphBeta::DataClassification::ClassifyFileJobs::ClassifyFileJobsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the classifyTextJobs property of the microsoft.graph.dataClassificationService entity.
            def classify_text_jobs()
                return MicrosoftGraphBeta::DataClassification::ClassifyTextJobs::ClassifyTextJobsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the evaluateDlpPoliciesJobs property of the microsoft.graph.dataClassificationService entity.
            def evaluate_dlp_policies_jobs()
                return MicrosoftGraphBeta::DataClassification::EvaluateDlpPoliciesJobs::EvaluateDlpPoliciesJobsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the evaluateLabelJobs property of the microsoft.graph.dataClassificationService entity.
            def evaluate_label_jobs()
                return MicrosoftGraphBeta::DataClassification::EvaluateLabelJobs::EvaluateLabelJobsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the exactMatchDataStores property of the microsoft.graph.dataClassificationService entity.
            def exact_match_data_stores()
                return MicrosoftGraphBeta::DataClassification::ExactMatchDataStores::ExactMatchDataStoresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the exactMatchUploadAgents property of the microsoft.graph.dataClassificationService entity.
            def exact_match_upload_agents()
                return MicrosoftGraphBeta::DataClassification::ExactMatchUploadAgents::ExactMatchUploadAgentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the jobs property of the microsoft.graph.dataClassificationService entity.
            def jobs()
                return MicrosoftGraphBeta::DataClassification::Jobs::JobsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the sensitiveTypes property of the microsoft.graph.dataClassificationService entity.
            def sensitive_types()
                return MicrosoftGraphBeta::DataClassification::SensitiveTypes::SensitiveTypesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the sensitivityLabels property of the microsoft.graph.dataClassificationService entity.
            def sensitivity_labels()
                return MicrosoftGraphBeta::DataClassification::SensitivityLabels::SensitivityLabelsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Provides operations to manage the classifyFileJobs property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a job_response_base_item_request_builder
            ## 
            def classify_file_jobs_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["jobResponseBase%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::ClassifyFileJobs::Item::JobResponseBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the classifyTextJobs property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a job_response_base_item_request_builder
            ## 
            def classify_text_jobs_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["jobResponseBase%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::ClassifyTextJobs::Item::JobResponseBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new DataClassificationRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/dataClassification{?%24select,%24expand}")
            end
            ## 
            ## Provides operations to manage the evaluateDlpPoliciesJobs property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a job_response_base_item_request_builder
            ## 
            def evaluate_dlp_policies_jobs_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["jobResponseBase%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::EvaluateDlpPoliciesJobs::Item::JobResponseBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the evaluateLabelJobs property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a job_response_base_item_request_builder
            ## 
            def evaluate_label_jobs_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["jobResponseBase%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::EvaluateLabelJobs::Item::JobResponseBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the exactMatchDataStores property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a exact_match_data_store_item_request_builder
            ## 
            def exact_match_data_stores_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["exactMatchDataStore%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::ExactMatchDataStores::Item::ExactMatchDataStoreItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the exactMatchUploadAgents property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a exact_match_upload_agent_item_request_builder
            ## 
            def exact_match_upload_agents_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["exactMatchUploadAgent%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::ExactMatchUploadAgents::Item::ExactMatchUploadAgentItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get dataClassification
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of data_classification_service
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DataClassificationService.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the jobs property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a job_response_base_item_request_builder
            ## 
            def jobs_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["jobResponseBase%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::Jobs::Item::JobResponseBaseItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update dataClassification
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of data_classification_service
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DataClassificationService.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the sensitiveTypes property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a sensitive_type_item_request_builder
            ## 
            def sensitive_types_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["sensitiveType%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::SensitiveTypes::Item::SensitiveTypeItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the sensitivityLabels property of the microsoft.graph.dataClassificationService entity.
            ## @param id Unique identifier of the item
            ## @return a sensitivity_label_item_request_builder
            ## 
            def sensitivity_labels_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["sensitivityLabel%2Did"] = id
                return MicrosoftGraphBeta::DataClassification::SensitivityLabels::Item::SensitivityLabelItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get dataClassification
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
            ## Update dataClassification
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
                request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                return request_info
            end

            ## 
            # Get dataClassification
            class DataClassificationRequestBuilderGetQueryParameters
                
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
