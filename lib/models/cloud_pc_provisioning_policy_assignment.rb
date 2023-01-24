require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudPcProvisioningPolicyAssignment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The assignment target for the provisioning policy. Currently, the only target supported for this policy is a user group. For details, see cloudPcManagementGroupAssignmentTarget.
        @target
        ## 
        ## Instantiates a new cloudPcProvisioningPolicyAssignment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_pc_provisioning_policy_assignment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPcProvisioningPolicyAssignment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("target", @target)
        end
        ## 
        ## Gets the target property value. The assignment target for the provisioning policy. Currently, the only target supported for this policy is a user group. For details, see cloudPcManagementGroupAssignmentTarget.
        ## @return a cloud_pc_management_assignment_target
        ## 
        def target
            return @target
        end
        ## 
        ## Sets the target property value. The assignment target for the provisioning policy. Currently, the only target supported for this policy is a user group. For details, see cloudPcManagementGroupAssignmentTarget.
        ## @param value Value to set for the target property.
        ## @return a void
        ## 
        def target=(value)
            @target = value
        end
    end
end
