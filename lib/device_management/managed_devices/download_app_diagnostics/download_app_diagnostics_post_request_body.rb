require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/powerlift_download_request'
require_relative '../../device_management'
require_relative '../managed_devices'
require_relative './download_app_diagnostics'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module DownloadAppDiagnostics
                class DownloadAppDiagnosticsPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The request property
                    @request
                    ## 
                    ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @return a i_dictionary
                    ## 
                    def additional_data
                        return @additional_data
                    end
                    ## 
                    ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @param value Value to set for the AdditionalData property.
                    ## @return a void
                    ## 
                    def additional_data=(value)
                        @additional_data = value
                    end
                    ## 
                    ## Instantiates a new downloadAppDiagnosticsPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a download_app_diagnostics_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return DownloadAppDiagnosticsPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "request" => lambda {|n| @request = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PowerliftDownloadRequest.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Gets the request property value. The request property
                    ## @return a powerlift_download_request
                    ## 
                    def request
                        return @request
                    end
                    ## 
                    ## Sets the request property value. The request property
                    ## @param value Value to set for the request property.
                    ## @return a void
                    ## 
                    def request=(value)
                        @request = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("request", @request)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
