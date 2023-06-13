require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/cloud_pc_review_status'
require_relative '../../../device_management'
require_relative '../../comanaged_devices'
require_relative '../item'
require_relative './set_cloud_pc_review_status'

module MicrosoftGraphBeta
    module DeviceManagement
        module ComanagedDevices
            module Item
                module SetCloudPcReviewStatus
                    class SetCloudPcReviewStatusPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The reviewStatus property
                        @review_status
                        ## 
                        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new setCloudPcReviewStatusPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a set_cloud_pc_review_status_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SetCloudPcReviewStatusPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "reviewStatus" => lambda {|n| @review_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcReviewStatus.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the reviewStatus property value. The reviewStatus property
                        ## @return a cloud_pc_review_status
                        ## 
                        def review_status
                            return @review_status
                        end
                        ## 
                        ## Sets the reviewStatus property value. The reviewStatus property
                        ## @param value Value to set for the review_status property.
                        ## @return a void
                        ## 
                        def review_status=(value)
                            @review_status = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("reviewStatus", @review_status)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
