require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/bitlocker_recovery_key'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../information_protection'
require_relative '../../bitlocker'
require_relative '../recovery_keys'
require_relative './item'

module MicrosoftGraphBeta
    module InformationProtection
        module Bitlocker
            module RecoveryKeys
                module Item
                    ## 
                    # Provides operations to manage the recoveryKeys property of the microsoft.graph.bitlocker entity.
                    class BitlockerRecoveryKeyItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new BitlockerRecoveryKeyItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/informationProtection/bitlocker/recoveryKeys/{bitlockerRecoveryKey%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Retrieve the properties and relationships of a bitlockerRecoveryKey object.  By default, this operation does not return the key property that represents the actual recovery key. To include the key property in the response, use the $select OData query parameter. Including the $select query parameter triggers an Azure AD audit of the operation and generates an audit log. You can find the log in Azure AD audit logs under the KeyManagement category.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of bitlocker_recovery_key
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::BitlockerRecoveryKey.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Retrieve the properties and relationships of a bitlockerRecoveryKey object.  By default, this operation does not return the key property that represents the actual recovery key. To include the key property in the response, use the $select OData query parameter. Including the $select query parameter triggers an Azure AD audit of the operation and generates an audit log. You can find the log in Azure AD audit logs under the KeyManagement category.
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
                        # Retrieve the properties and relationships of a bitlockerRecoveryKey object.  By default, this operation does not return the key property that represents the actual recovery key. To include the key property in the response, use the $select OData query parameter. Including the $select query parameter triggers an Azure AD audit of the operation and generates an audit log. You can find the log in Azure AD audit logs under the KeyManagement category.
                        class BitlockerRecoveryKeyItemRequestBuilderGetQueryParameters
                            
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
