require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/education_assignment'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../education'
require_relative '../../../me'
require_relative '../../assignments'
require_relative '../item'
require_relative './activate'

module MicrosoftGraphBeta
    module Education
        module Me
            module Assignments
                module Item
                    module Activate
                        ## 
                        # Provides operations to call the activate method.
                        class ActivateRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new ActivateRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/education/me/assignments/{educationAssignment%2Did}/activate")
                            end
                            ## 
                            ## Activate an inactive educationAssignment to signal that the assignment has further action items for teachers and students. This action can only be performed by a teacher on currently inactive assignments.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of education_assignment
                            ## 
                            def post(request_configuration=nil)
                                request_info = self.to_post_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EducationAssignment.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Activate an inactive educationAssignment to signal that the assignment has further action items for teachers and students. This action can only be performed by a teacher on currently inactive assignments.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a request_information
                            ## 
                            def to_post_request_information(request_configuration=nil)
                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :POST
                                request_info.headers.add('Accept', 'application/json')
                                unless request_configuration.nil?
                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                    request_info.add_request_options(request_configuration.options)
                                end
                                return request_info
                            end
                        end
                    end
                end
            end
        end
    end
end
