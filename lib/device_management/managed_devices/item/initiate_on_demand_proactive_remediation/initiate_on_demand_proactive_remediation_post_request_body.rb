require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './initiate_on_demand_proactive_remediation'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module Item
                module InitiateOnDemandProactiveRemediation
                    class InitiateOnDemandProactiveRemediationPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The scriptPolicyId property
                        @script_policy_id
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
                        ## Instantiates a new initiateOnDemandProactiveRemediationPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a initiate_on_demand_proactive_remediation_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return InitiateOnDemandProactiveRemediationPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "scriptPolicyId" => lambda {|n| @script_policy_id = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the scriptPolicyId property value. The scriptPolicyId property
                        ## @return a string
                        ## 
                        def script_policy_id
                            return @script_policy_id
                        end
                        ## 
                        ## Sets the scriptPolicyId property value. The scriptPolicyId property
                        ## @param value Value to set for the script_policy_id property.
                        ## @return a void
                        ## 
                        def script_policy_id=(value)
                            @script_policy_id = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("scriptPolicyId", @script_policy_id)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
