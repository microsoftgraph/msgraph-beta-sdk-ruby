require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ApprovalWorkflowProvider < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The businessFlows property
            @business_flows
            ## 
            # The businessFlowsWithRequestsAwaitingMyDecision property
            @business_flows_with_requests_awaiting_my_decision
            ## 
            # The displayName property
            @display_name
            ## 
            # The policyTemplates property
            @policy_templates
            ## 
            ## Gets the businessFlows property value. The businessFlows property
            ## @return a business_flow
            ## 
            def business_flows
                return @business_flows
            end
            ## 
            ## Sets the businessFlows property value. The businessFlows property
            ## @param value Value to set for the business_flows property.
            ## @return a void
            ## 
            def business_flows=(value)
                @business_flows = value
            end
            ## 
            ## Gets the businessFlowsWithRequestsAwaitingMyDecision property value. The businessFlowsWithRequestsAwaitingMyDecision property
            ## @return a business_flow
            ## 
            def business_flows_with_requests_awaiting_my_decision
                return @business_flows_with_requests_awaiting_my_decision
            end
            ## 
            ## Sets the businessFlowsWithRequestsAwaitingMyDecision property value. The businessFlowsWithRequestsAwaitingMyDecision property
            ## @param value Value to set for the business_flows_with_requests_awaiting_my_decision property.
            ## @return a void
            ## 
            def business_flows_with_requests_awaiting_my_decision=(value)
                @business_flows_with_requests_awaiting_my_decision = value
            end
            ## 
            ## Instantiates a new ApprovalWorkflowProvider and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a approval_workflow_provider
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalWorkflowProvider.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "businessFlows" => lambda {|n| @business_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BusinessFlow.create_from_discriminator_value(pn) }) },
                    "businessFlowsWithRequestsAwaitingMyDecision" => lambda {|n| @business_flows_with_requests_awaiting_my_decision = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BusinessFlow.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "policyTemplates" => lambda {|n| @policy_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernancePolicyTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policyTemplates property value. The policyTemplates property
            ## @return a governance_policy_template
            ## 
            def policy_templates
                return @policy_templates
            end
            ## 
            ## Sets the policyTemplates property value. The policyTemplates property
            ## @param value Value to set for the policy_templates property.
            ## @return a void
            ## 
            def policy_templates=(value)
                @policy_templates = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("businessFlows", @business_flows)
                writer.write_collection_of_object_values("businessFlowsWithRequestsAwaitingMyDecision", @business_flows_with_requests_awaiting_my_decision)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("policyTemplates", @policy_templates)
            end
        end
    end
end
