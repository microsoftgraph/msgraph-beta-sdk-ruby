require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerBasicApprovalAttachment < MicrosoftGraphBeta::Models::PlannerBaseApprovalAttachment
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The approvalId property
            @approval_id
            ## 
            ## Gets the approvalId property value. The approvalId property
            ## @return a string
            ## 
            def approval_id
                return @approval_id
            end
            ## 
            ## Sets the approvalId property value. The approvalId property
            ## @param value Value to set for the approvalId property.
            ## @return a void
            ## 
            def approval_id=(value)
                @approval_id = value
            end
            ## 
            ## Instantiates a new PlannerBasicApprovalAttachment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerBasicApprovalAttachment"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_basic_approval_attachment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerBasicApprovalAttachment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approvalId" => lambda {|n| @approval_id = n.get_string_value() },
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
                writer.write_string_value("approvalId", @approval_id)
            end
        end
    end
end
