require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessPackageAssignmentRequestRequirements
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Answers that have already been provided.
        @existing_answers
        ## 
        # Indicates whether a request must be approved by an approver.
        @is_approval_required
        ## 
        # Indicates whether approval is required when a user tries to extend their access.
        @is_approval_required_for_extension
        ## 
        # Indicates whether the requestor is allowed to set a custom schedule.
        @is_custom_assignment_schedule_allowed
        ## 
        # Indicates whether a requestor must supply justification when submitting an assignment request.
        @is_requestor_justification_required
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The description of the policy that the user is trying to request access using.
        @policy_description
        ## 
        # The display name of the policy that the user is trying to request access using.
        @policy_display_name
        ## 
        # The identifier of the policy that these requirements are associated with. This identifier can be used when creating a new assignment request.
        @policy_id
        ## 
        # Questions that are configured on the policy. The questions can be required or optional; callers can determine whether a question is required or optional based on the isRequired property on accessPackageQuestion.
        @questions
        ## 
        # Schedule restrictions enforced, if any.
        @schedule
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
        ## Instantiates a new accessPackageAssignmentRequestRequirements and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_package_assignment_request_requirements
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AccessPackageAssignmentRequestRequirements.new
        end
        ## 
        ## Gets the existingAnswers property value. Answers that have already been provided.
        ## @return a access_package_answer
        ## 
        def existing_answers
            return @existing_answers
        end
        ## 
        ## Sets the existingAnswers property value. Answers that have already been provided.
        ## @param value Value to set for the existingAnswers property.
        ## @return a void
        ## 
        def existing_answers=(value)
            @existing_answers = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "existingAnswers" => lambda {|n| @existing_answers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAnswer.create_from_discriminator_value(pn) }) },
                "isApprovalRequired" => lambda {|n| @is_approval_required = n.get_boolean_value() },
                "isApprovalRequiredForExtension" => lambda {|n| @is_approval_required_for_extension = n.get_boolean_value() },
                "isCustomAssignmentScheduleAllowed" => lambda {|n| @is_custom_assignment_schedule_allowed = n.get_boolean_value() },
                "isRequestorJustificationRequired" => lambda {|n| @is_requestor_justification_required = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "policyDescription" => lambda {|n| @policy_description = n.get_string_value() },
                "policyDisplayName" => lambda {|n| @policy_display_name = n.get_string_value() },
                "policyId" => lambda {|n| @policy_id = n.get_string_value() },
                "questions" => lambda {|n| @questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageQuestion.create_from_discriminator_value(pn) }) },
                "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RequestSchedule.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the isApprovalRequired property value. Indicates whether a request must be approved by an approver.
        ## @return a boolean
        ## 
        def is_approval_required
            return @is_approval_required
        end
        ## 
        ## Sets the isApprovalRequired property value. Indicates whether a request must be approved by an approver.
        ## @param value Value to set for the isApprovalRequired property.
        ## @return a void
        ## 
        def is_approval_required=(value)
            @is_approval_required = value
        end
        ## 
        ## Gets the isApprovalRequiredForExtension property value. Indicates whether approval is required when a user tries to extend their access.
        ## @return a boolean
        ## 
        def is_approval_required_for_extension
            return @is_approval_required_for_extension
        end
        ## 
        ## Sets the isApprovalRequiredForExtension property value. Indicates whether approval is required when a user tries to extend their access.
        ## @param value Value to set for the isApprovalRequiredForExtension property.
        ## @return a void
        ## 
        def is_approval_required_for_extension=(value)
            @is_approval_required_for_extension = value
        end
        ## 
        ## Gets the isCustomAssignmentScheduleAllowed property value. Indicates whether the requestor is allowed to set a custom schedule.
        ## @return a boolean
        ## 
        def is_custom_assignment_schedule_allowed
            return @is_custom_assignment_schedule_allowed
        end
        ## 
        ## Sets the isCustomAssignmentScheduleAllowed property value. Indicates whether the requestor is allowed to set a custom schedule.
        ## @param value Value to set for the isCustomAssignmentScheduleAllowed property.
        ## @return a void
        ## 
        def is_custom_assignment_schedule_allowed=(value)
            @is_custom_assignment_schedule_allowed = value
        end
        ## 
        ## Gets the isRequestorJustificationRequired property value. Indicates whether a requestor must supply justification when submitting an assignment request.
        ## @return a boolean
        ## 
        def is_requestor_justification_required
            return @is_requestor_justification_required
        end
        ## 
        ## Sets the isRequestorJustificationRequired property value. Indicates whether a requestor must supply justification when submitting an assignment request.
        ## @param value Value to set for the isRequestorJustificationRequired property.
        ## @return a void
        ## 
        def is_requestor_justification_required=(value)
            @is_requestor_justification_required = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the policyDescription property value. The description of the policy that the user is trying to request access using.
        ## @return a string
        ## 
        def policy_description
            return @policy_description
        end
        ## 
        ## Sets the policyDescription property value. The description of the policy that the user is trying to request access using.
        ## @param value Value to set for the policyDescription property.
        ## @return a void
        ## 
        def policy_description=(value)
            @policy_description = value
        end
        ## 
        ## Gets the policyDisplayName property value. The display name of the policy that the user is trying to request access using.
        ## @return a string
        ## 
        def policy_display_name
            return @policy_display_name
        end
        ## 
        ## Sets the policyDisplayName property value. The display name of the policy that the user is trying to request access using.
        ## @param value Value to set for the policyDisplayName property.
        ## @return a void
        ## 
        def policy_display_name=(value)
            @policy_display_name = value
        end
        ## 
        ## Gets the policyId property value. The identifier of the policy that these requirements are associated with. This identifier can be used when creating a new assignment request.
        ## @return a string
        ## 
        def policy_id
            return @policy_id
        end
        ## 
        ## Sets the policyId property value. The identifier of the policy that these requirements are associated with. This identifier can be used when creating a new assignment request.
        ## @param value Value to set for the policyId property.
        ## @return a void
        ## 
        def policy_id=(value)
            @policy_id = value
        end
        ## 
        ## Gets the questions property value. Questions that are configured on the policy. The questions can be required or optional; callers can determine whether a question is required or optional based on the isRequired property on accessPackageQuestion.
        ## @return a access_package_question
        ## 
        def questions
            return @questions
        end
        ## 
        ## Sets the questions property value. Questions that are configured on the policy. The questions can be required or optional; callers can determine whether a question is required or optional based on the isRequired property on accessPackageQuestion.
        ## @param value Value to set for the questions property.
        ## @return a void
        ## 
        def questions=(value)
            @questions = value
        end
        ## 
        ## Gets the schedule property value. Schedule restrictions enforced, if any.
        ## @return a request_schedule
        ## 
        def schedule
            return @schedule
        end
        ## 
        ## Sets the schedule property value. Schedule restrictions enforced, if any.
        ## @param value Value to set for the schedule property.
        ## @return a void
        ## 
        def schedule=(value)
            @schedule = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("existingAnswers", @existing_answers)
            writer.write_boolean_value("isApprovalRequired", @is_approval_required)
            writer.write_boolean_value("isApprovalRequiredForExtension", @is_approval_required_for_extension)
            writer.write_boolean_value("isCustomAssignmentScheduleAllowed", @is_custom_assignment_schedule_allowed)
            writer.write_boolean_value("isRequestorJustificationRequired", @is_requestor_justification_required)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("policyDescription", @policy_description)
            writer.write_string_value("policyDisplayName", @policy_display_name)
            writer.write_string_value("policyId", @policy_id)
            writer.write_collection_of_object_values("questions", @questions)
            writer.write_object_value("schedule", @schedule)
            writer.write_additional_data(@additional_data)
        end
    end
end
