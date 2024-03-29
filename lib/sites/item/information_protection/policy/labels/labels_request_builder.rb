require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/information_protection_label'
require_relative '../../../../../models/information_protection_label_collection_response'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../sites'
require_relative '../../../item'
require_relative '../../information_protection'
require_relative '../policy'
require_relative './count/count_request_builder'
require_relative './evaluate_application/evaluate_application_request_builder'
require_relative './evaluate_classification_results/evaluate_classification_results_request_builder'
require_relative './evaluate_removal/evaluate_removal_request_builder'
require_relative './extract_label/extract_label_request_builder'
require_relative './item/information_protection_label_item_request_builder'
require_relative './labels'

module MicrosoftGraphBeta
    module Sites
        module Item
            module InformationProtection
                module Policy
                    module Labels
                        ## 
                        # Provides operations to manage the labels property of the microsoft.graph.informationProtectionPolicy entity.
                        class LabelsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to count the resources in the collection.
                            def count()
                                return MicrosoftGraphBeta::Sites::Item::InformationProtection::Policy::Labels::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the evaluateApplication method.
                            def evaluate_application()
                                return MicrosoftGraphBeta::Sites::Item::InformationProtection::Policy::Labels::EvaluateApplication::EvaluateApplicationRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the evaluateClassificationResults method.
                            def evaluate_classification_results()
                                return MicrosoftGraphBeta::Sites::Item::InformationProtection::Policy::Labels::EvaluateClassificationResults::EvaluateClassificationResultsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the evaluateRemoval method.
                            def evaluate_removal()
                                return MicrosoftGraphBeta::Sites::Item::InformationProtection::Policy::Labels::EvaluateRemoval::EvaluateRemovalRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the extractLabel method.
                            def extract_label()
                                return MicrosoftGraphBeta::Sites::Item::InformationProtection::Policy::Labels::ExtractLabel::ExtractLabelRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the labels property of the microsoft.graph.informationProtectionPolicy entity.
                            ## @param information_protection_label_id The unique identifier of informationProtectionLabel
                            ## @return a information_protection_label_item_request_builder
                            ## 
                            def by_information_protection_label_id(information_protection_label_id)
                                raise StandardError, 'information_protection_label_id cannot be null' if information_protection_label_id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["informationProtectionLabel%2Did"] = information_protection_label_id
                                return MicrosoftGraphBeta::Sites::Item::InformationProtection::Policy::Labels::Item::InformationProtectionLabelItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new LabelsRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}/informationProtection/policy/labels{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                            end
                            ## 
                            ## Get a collection of information protection labels available to the user or to the organization.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of information_protection_label_collection_response
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::InformationProtectionLabelCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Create new navigation property to labels for sites
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of information_protection_label
                            ## 
                            def post(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_post_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::InformationProtectionLabel.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Get a collection of information protection labels available to the user or to the organization.
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
                            ## Create new navigation property to labels for sites
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_post_request_information(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :POST
                                request_info.headers.add('Accept', 'application/json')
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                return request_info
                            end

                            ## 
                            # Get a collection of information protection labels available to the user or to the organization.
                            class LabelsRequestBuilderGetQueryParameters
                                
                                ## 
                                # Include count of items
                                attr_accessor :count
                                ## 
                                # Expand related entities
                                attr_accessor :expand
                                ## 
                                # Filter items by property values
                                attr_accessor :filter
                                ## 
                                # Order items by property values
                                attr_accessor :orderby
                                ## 
                                # Search items by search phrases
                                attr_accessor :search
                                ## 
                                # Select properties to be returned
                                attr_accessor :select
                                ## 
                                # Skip the first n items
                                attr_accessor :skip
                                ## 
                                # Show only the first n items
                                attr_accessor :top
                                ## 
                                ## Maps the query parameters names to their encoded names for the URI template parsing.
                                ## @param original_name The original query parameter name in the class.
                                ## @return a string
                                ## 
                                def get_query_parameter(original_name)
                                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                                    case original_name
                                        when "count"
                                            return "%24count"
                                        when "expand"
                                            return "%24expand"
                                        when "filter"
                                            return "%24filter"
                                        when "orderby"
                                            return "%24orderby"
                                        when "search"
                                            return "%24search"
                                        when "select"
                                            return "%24select"
                                        when "skip"
                                            return "%24skip"
                                        when "top"
                                            return "%24top"
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
end
