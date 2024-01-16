require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/o_data_errors_o_data_error'
require_relative '../models/risk_detection'
require_relative '../models/risk_detection_collection_response'
require_relative './item/risk_detection_item_request_builder'
require_relative './risk_detections'

module MicrosoftGraphBeta
    module RiskDetections
        ## 
        # Provides operations to manage the collection of riskDetection entities.
        class RiskDetectionsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            ## Provides operations to manage the collection of riskDetection entities.
            ## @param risk_detection_id The unique identifier of riskDetection
            ## @return a risk_detection_item_request_builder
            ## 
            def by_risk_detection_id(risk_detection_id)
                raise StandardError, 'risk_detection_id cannot be null' if risk_detection_id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["riskDetection%2Did"] = risk_detection_id
                return MicrosoftGraphBeta::RiskDetections::Item::RiskDetectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new RiskDetectionsRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/riskDetections{?%24top,%24search,%24filter,%24orderby,%24select,%24expand}")
            end
            ## 
            ## Retrieve the properties of a collection of riskDetection objects.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of risk_detection_collection_response
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::RiskDetectionCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Add new entity to riskDetections
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of risk_detection
            ## 
            def post(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_post_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::RiskDetection.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Retrieve the properties of a collection of riskDetection objects.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_get_request_information(request_configuration=nil)
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :GET
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Add new entity to riskDetections
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_post_request_information(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :POST
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
            ## @param raw_url The raw URL to use for the request builder.
            ## @return a risk_detections_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return RiskDetectionsRequestBuilder.new(raw_url, @request_adapter)
            end

            ## 
            # Retrieve the properties of a collection of riskDetection objects.
            class RiskDetectionsRequestBuilderGetQueryParameters
                
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
