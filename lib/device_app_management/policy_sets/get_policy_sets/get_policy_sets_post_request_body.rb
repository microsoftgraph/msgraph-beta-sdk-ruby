require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_app_management'
require_relative '../policy_sets'
require_relative './get_policy_sets'

module MicrosoftGraphBeta
    module DeviceAppManagement
        module PolicySets
            module GetPolicySets
                class GetPolicySetsPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The policySetIds property
                    @policy_set_ids
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
                    ## Instantiates a new getPolicySetsPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a get_policy_sets_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GetPolicySetsPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "policySetIds" => lambda {|n| @policy_set_ids = n.get_collection_of_primitive_values(String) },
                        }
                    end
                    ## 
                    ## Gets the policySetIds property value. The policySetIds property
                    ## @return a string
                    ## 
                    def policy_set_ids
                        return @policy_set_ids
                    end
                    ## 
                    ## Sets the policySetIds property value. The policySetIds property
                    ## @param value Value to set for the policySetIds property.
                    ## @return a void
                    ## 
                    def policy_set_ids=(value)
                        @policy_set_ids = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_primitive_values("policySetIds", @policy_set_ids)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
