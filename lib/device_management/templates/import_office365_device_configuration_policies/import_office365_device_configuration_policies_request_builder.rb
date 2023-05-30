require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../device_management'
require_relative '../templates'
require_relative './import_office365_device_configuration_policies'

module MicrosoftGraphBeta
    module DeviceManagement
        module Templates
            module ImportOffice365DeviceConfigurationPolicies
                ## 
                # Provides operations to call the importOffice365DeviceConfigurationPolicies method.
                class ImportOffice365DeviceConfigurationPoliciesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new ImportOffice365DeviceConfigurationPoliciesRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/templates/importOffice365DeviceConfigurationPolicies")
                    end
                    ## 
                    ## Invoke action importOffice365DeviceConfigurationPolicies
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of import_office365_device_configuration_policies_response
                    ## 
                    def post(request_configuration=nil)
                        request_info = self.to_post_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::DeviceManagement::Templates::ImportOffice365DeviceConfigurationPolicies::ImportOffice365DeviceConfigurationPoliciesResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Invoke action importOffice365DeviceConfigurationPolicies
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
