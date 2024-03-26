require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/cloud_pc_policy_setting_type'
require_relative '../../../../device_management'
require_relative '../../../virtual_endpoint'
require_relative '../../provisioning_policies'
require_relative '../item'
require_relative './apply'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            module ProvisioningPolicies
                module Item
                    module Apply
                        class ApplyPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
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
                            ## Instantiates a new ApplyPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a apply_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ApplyPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "policySettings" => lambda {|n| @policy_settings = n.get_enum_values(MicrosoftGraphBeta::Models::CloudPcPolicySettingType) },
                                }
                            end
                            ## 
                            ## Gets the policySettings property value. The policySettings property
                            ## @return a cloud_pc_policy_setting_type
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
                                writer.write_enum_value("policySettings", @policy_settings)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
