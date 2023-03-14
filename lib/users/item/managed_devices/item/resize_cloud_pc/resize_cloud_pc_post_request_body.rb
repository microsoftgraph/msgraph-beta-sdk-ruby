require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './resize_cloud_pc'

module MicrosoftGraphBeta
    module Users
        module Item
            module ManagedDevices
                module Item
                    module ResizeCloudPc
                        class ResizeCloudPcPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The targetServicePlanId property
                            @target_service_plan_id
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
                            ## Instantiates a new resizeCloudPcPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parseNode The parse node to use to read the discriminator value and create the object
                            ## @return a resize_cloud_pc_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ResizeCloudPcPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "targetServicePlanId" => lambda {|n| @target_service_plan_id = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("targetServicePlanId", @target_service_plan_id)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the targetServicePlanId property value. The targetServicePlanId property
                            ## @return a string
                            ## 
                            def target_service_plan_id
                                return @target_service_plan_id
                            end
                            ## 
                            ## Sets the targetServicePlanId property value. The targetServicePlanId property
                            ## @param value Value to set for the target_service_plan_id property.
                            ## @return a void
                            ## 
                            def target_service_plan_id=(value)
                                @target_service_plan_id = value
                            end
                        end
                    end
                end
            end
        end
    end
end
