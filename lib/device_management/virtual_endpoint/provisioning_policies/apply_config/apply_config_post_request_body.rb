require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../virtual_endpoint'
require_relative '../provisioning_policies'
require_relative './apply_config'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            module ProvisioningPolicies
                module ApplyConfig
                    class ApplyConfigPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The cloudPcIds property
                        @cloud_pc_ids
                        ## 
                        # The policySettings property
                        @policy_settings
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
                        ## Gets the cloudPcIds property value. The cloudPcIds property
                        ## @return a string
                        ## 
                        def cloud_pc_ids
                            return @cloud_pc_ids
                        end
                        ## 
                        ## Sets the cloudPcIds property value. The cloudPcIds property
                        ## @param value Value to set for the cloudPcIds property.
                        ## @return a void
                        ## 
                        def cloud_pc_ids=(value)
                            @cloud_pc_ids = value
                        end
                        ## 
                        ## Instantiates a new applyConfigPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a apply_config_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ApplyConfigPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "cloudPcIds" => lambda {|n| @cloud_pc_ids = n.get_collection_of_primitive_values(String) },
                                "policySettings" => lambda {|n| @policy_settings = n.get_enum_value(MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::ProvisioningPolicies::ApplyConfig::ApplyConfigPostRequestBodyPolicySettings) },
                            }
                        end
                        ## 
                        ## Gets the policySettings property value. The policySettings property
                        ## @return a apply_config_post_request_body_policy_settings
                        ## 
                        def policy_settings
                            return @policy_settings
                        end
                        ## 
                        ## Sets the policySettings property value. The policySettings property
                        ## @param value Value to set for the policySettings property.
                        ## @return a void
                        ## 
                        def policy_settings=(value)
                            @policy_settings = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_primitive_values("cloudPcIds", @cloud_pc_ids)
                            writer.write_enum_value("policySettings", @policy_settings)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
