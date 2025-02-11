require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ApprovalSolution < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of approval items.
            @approval_items
            ## 
            # The operations property
            @operations
            ## 
            # The approval provisioning status for a tenant on an environment. The possible values are: notProvisioned, provisioningInProgress, provisioningFailed, provisioningCompleted, unknownFutureValue.
            @provisioning_status
            ## 
            ## Gets the approvalItems property value. A collection of approval items.
            ## @return a approval_item
            ## 
            def approval_items
                return @approval_items
            end
            ## 
            ## Sets the approvalItems property value. A collection of approval items.
            ## @param value Value to set for the approvalItems property.
            ## @return a void
            ## 
            def approval_items=(value)
                @approval_items = value
            end
            ## 
            ## Instantiates a new ApprovalSolution and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a approval_solution
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalSolution.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approvalItems" => lambda {|n| @approval_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalItem.create_from_discriminator_value(pn) }) },
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalOperation.create_from_discriminator_value(pn) }) },
                    "provisioningStatus" => lambda {|n| @provisioning_status = n.get_enum_value(MicrosoftGraphBeta::Models::ProvisionState) },
                })
            end
            ## 
            ## Gets the operations property value. The operations property
            ## @return a approval_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. The operations property
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the provisioningStatus property value. The approval provisioning status for a tenant on an environment. The possible values are: notProvisioned, provisioningInProgress, provisioningFailed, provisioningCompleted, unknownFutureValue.
            ## @return a provision_state
            ## 
            def provisioning_status
                return @provisioning_status
            end
            ## 
            ## Sets the provisioningStatus property value. The approval provisioning status for a tenant on an environment. The possible values are: notProvisioned, provisioningInProgress, provisioningFailed, provisioningCompleted, unknownFutureValue.
            ## @param value Value to set for the provisioningStatus property.
            ## @return a void
            ## 
            def provisioning_status=(value)
                @provisioning_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("approvalItems", @approval_items)
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_enum_value("provisioningStatus", @provisioning_status)
            end
        end
    end
end
