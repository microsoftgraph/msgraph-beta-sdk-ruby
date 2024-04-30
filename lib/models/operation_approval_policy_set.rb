require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains the pair of OperationApprovalPolicyType and OperationApprovalPolicyPlatform determining the set of applicable OperationApprovalPolicies for a user. The OperationApprovalPolicySet complex type is used to indicate to the UX which policies are enabled for the current logged in user in order to correctly show the expected experience.
        class OperationApprovalPolicySet
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The set of available platforms for the OperationApprovalPolicy. Allows configuration of a policy to specific platform(s) for approval. If no specific platform is required or applicable, the platform is `notApplicable`.
            @policy_platform
            ## 
            # The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen.
            @policy_type
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
            ## Instantiates a new OperationApprovalPolicySet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a operation_approval_policy_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OperationApprovalPolicySet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "policyPlatform" => lambda {|n| @policy_platform = n.get_enum_values(MicrosoftGraphBeta::Models::OperationApprovalPolicyPlatform) },
                    "policyType" => lambda {|n| @policy_type = n.get_enum_value(MicrosoftGraphBeta::Models::OperationApprovalPolicyType) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the policyPlatform property value. The set of available platforms for the OperationApprovalPolicy. Allows configuration of a policy to specific platform(s) for approval. If no specific platform is required or applicable, the platform is `notApplicable`.
            ## @return a operation_approval_policy_platform
            ## 
            def policy_platform
                return @policy_platform
            end
            ## 
            ## Sets the policyPlatform property value. The set of available platforms for the OperationApprovalPolicy. Allows configuration of a policy to specific platform(s) for approval. If no specific platform is required or applicable, the platform is `notApplicable`.
            ## @param value Value to set for the policyPlatform property.
            ## @return a void
            ## 
            def policy_platform=(value)
                @policy_platform = value
            end
            ## 
            ## Gets the policyType property value. The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen.
            ## @return a operation_approval_policy_type
            ## 
            def policy_type
                return @policy_type
            end
            ## 
            ## Sets the policyType property value. The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen.
            ## @param value Value to set for the policyType property.
            ## @return a void
            ## 
            def policy_type=(value)
                @policy_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("policyPlatform", @policy_platform)
                writer.write_enum_value("policyType", @policy_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
