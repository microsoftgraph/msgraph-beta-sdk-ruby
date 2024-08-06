require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/content_model'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../sites'
require_relative '../../item'
require_relative '../content_models'
require_relative './add_to_drive/add_to_drive_request_builder'
require_relative './get_applied_drives/get_applied_drives_request_builder'
require_relative './get_by_name_with_model_name'
require_relative './remove_from_drive/remove_from_drive_request_builder'

module MicrosoftGraphBeta
    module Sites
        module Item
            module ContentModels
                module GetByNameWithModelName
                    ## 
                    # Provides operations to call the getByName method.
                    class GetByNameWithModelNameRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to call the addToDrive method.
                        def add_to_drive()
                            return MicrosoftGraphBeta::Sites::Item::ContentModels::GetByNameWithModelName::AddToDrive::AddToDriveRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the getAppliedDrives method.
                        def get_applied_drives()
                            return MicrosoftGraphBeta::Sites::Item::ContentModels::GetByNameWithModelName::GetAppliedDrives::GetAppliedDrivesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the removeFromDrive method.
                        def remove_from_drive()
                            return MicrosoftGraphBeta::Sites::Item::ContentModels::GetByNameWithModelName::RemoveFromDrive::RemoveFromDriveRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new GetByNameWithModelNameRequestBuilder and sets the default values.
                        ## @param model_name Usage: modelName='{modelName}'
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter, model_name=nil)
                            super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}/contentModels/getByName(modelName='{modelName}')")
                        end
                        ## 
                        ## Read the properties and relationships of a contentModel object by its model name. The name should be the full model filename, including the file extension; for example, exampleModel.classifier.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of content_model
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ContentModel.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Read the properties and relationships of a contentModel object by its model name. The name should be the full model filename, including the file extension; for example, exampleModel.classifier.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a get_by_name_with_model_name_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return GetByNameWithModelNameRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
