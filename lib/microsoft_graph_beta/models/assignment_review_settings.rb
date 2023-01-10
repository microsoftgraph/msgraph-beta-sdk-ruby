require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AssignmentReviewSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # The default decision to apply if the request is not reviewed within the period specified in durationInDays. The possible values are: acceptAccessRecommendation, keepAccess, removeAccess, and unknownFutureValue.
        @access_review_timeout_behavior
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The number of days within which reviewers should provide input.
        @duration_in_days
        ## 
        # Specifies whether to display recommendations to the reviewer. The default value is true
        @is_access_recommendation_enabled
        ## 
        # Specifies whether the reviewer must provide justification for the approval. The default value is true.
        @is_approval_justification_required
        ## 
        # If true, access reviews are required for assignments from this policy.
        @is_enabled
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The interval for recurrence, such as monthly or quarterly.
        @recurrence_type
        ## 
        # If the reviewerType is Reviewers, this collection specifies the users who will be reviewers, either by ID or as members of a group, using a collection of singleUser and groupMembers.
        @reviewers
        ## 
        # Who should be asked to do the review, either Self or Reviewers.
        @reviewer_type
        ## 
        # When the first review should start.
        @start_date_time
        ## 
        ## Gets the accessReviewTimeoutBehavior property value. The default decision to apply if the request is not reviewed within the period specified in durationInDays. The possible values are: acceptAccessRecommendation, keepAccess, removeAccess, and unknownFutureValue.
        ## @return a access_review_timeout_behavior
        ## 
        def access_review_timeout_behavior
            return @access_review_timeout_behavior
        end
        ## 
        ## Sets the accessReviewTimeoutBehavior property value. The default decision to apply if the request is not reviewed within the period specified in durationInDays. The possible values are: acceptAccessRecommendation, keepAccess, removeAccess, and unknownFutureValue.
        ## @param value Value to set for the accessReviewTimeoutBehavior property.
        ## @return a void
        ## 
        def access_review_timeout_behavior=(value)
            @access_review_timeout_behavior = value
        end
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
        ## Instantiates a new assignmentReviewSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a assignment_review_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AssignmentReviewSettings.new
        end
        ## 
        ## Gets the durationInDays property value. The number of days within which reviewers should provide input.
        ## @return a integer
        ## 
        def duration_in_days
            return @duration_in_days
        end
        ## 
        ## Sets the durationInDays property value. The number of days within which reviewers should provide input.
        ## @param value Value to set for the durationInDays property.
        ## @return a void
        ## 
        def duration_in_days=(value)
            @duration_in_days = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "accessReviewTimeoutBehavior" => lambda {|n| @access_review_timeout_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::AccessReviewTimeoutBehavior) },
                "durationInDays" => lambda {|n| @duration_in_days = n.get_number_value() },
                "isAccessRecommendationEnabled" => lambda {|n| @is_access_recommendation_enabled = n.get_boolean_value() },
                "isApprovalJustificationRequired" => lambda {|n| @is_approval_justification_required = n.get_boolean_value() },
                "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "recurrenceType" => lambda {|n| @recurrence_type = n.get_string_value() },
                "reviewers" => lambda {|n| @reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserSet.create_from_discriminator_value(pn) }) },
                "reviewerType" => lambda {|n| @reviewer_type = n.get_string_value() },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
            }
        end
        ## 
        ## Gets the isAccessRecommendationEnabled property value. Specifies whether to display recommendations to the reviewer. The default value is true
        ## @return a boolean
        ## 
        def is_access_recommendation_enabled
            return @is_access_recommendation_enabled
        end
        ## 
        ## Sets the isAccessRecommendationEnabled property value. Specifies whether to display recommendations to the reviewer. The default value is true
        ## @param value Value to set for the isAccessRecommendationEnabled property.
        ## @return a void
        ## 
        def is_access_recommendation_enabled=(value)
            @is_access_recommendation_enabled = value
        end
        ## 
        ## Gets the isApprovalJustificationRequired property value. Specifies whether the reviewer must provide justification for the approval. The default value is true.
        ## @return a boolean
        ## 
        def is_approval_justification_required
            return @is_approval_justification_required
        end
        ## 
        ## Sets the isApprovalJustificationRequired property value. Specifies whether the reviewer must provide justification for the approval. The default value is true.
        ## @param value Value to set for the isApprovalJustificationRequired property.
        ## @return a void
        ## 
        def is_approval_justification_required=(value)
            @is_approval_justification_required = value
        end
        ## 
        ## Gets the isEnabled property value. If true, access reviews are required for assignments from this policy.
        ## @return a boolean
        ## 
        def is_enabled
            return @is_enabled
        end
        ## 
        ## Sets the isEnabled property value. If true, access reviews are required for assignments from this policy.
        ## @param value Value to set for the isEnabled property.
        ## @return a void
        ## 
        def is_enabled=(value)
            @is_enabled = value
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
        ## Gets the recurrenceType property value. The interval for recurrence, such as monthly or quarterly.
        ## @return a string
        ## 
        def recurrence_type
            return @recurrence_type
        end
        ## 
        ## Sets the recurrenceType property value. The interval for recurrence, such as monthly or quarterly.
        ## @param value Value to set for the recurrenceType property.
        ## @return a void
        ## 
        def recurrence_type=(value)
            @recurrence_type = value
        end
        ## 
        ## Gets the reviewers property value. If the reviewerType is Reviewers, this collection specifies the users who will be reviewers, either by ID or as members of a group, using a collection of singleUser and groupMembers.
        ## @return a user_set
        ## 
        def reviewers
            return @reviewers
        end
        ## 
        ## Sets the reviewers property value. If the reviewerType is Reviewers, this collection specifies the users who will be reviewers, either by ID or as members of a group, using a collection of singleUser and groupMembers.
        ## @param value Value to set for the reviewers property.
        ## @return a void
        ## 
        def reviewers=(value)
            @reviewers = value
        end
        ## 
        ## Gets the reviewerType property value. Who should be asked to do the review, either Self or Reviewers.
        ## @return a string
        ## 
        def reviewer_type
            return @reviewer_type
        end
        ## 
        ## Sets the reviewerType property value. Who should be asked to do the review, either Self or Reviewers.
        ## @param value Value to set for the reviewerType property.
        ## @return a void
        ## 
        def reviewer_type=(value)
            @reviewer_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("accessReviewTimeoutBehavior", @access_review_timeout_behavior)
            writer.write_number_value("durationInDays", @duration_in_days)
            writer.write_boolean_value("isAccessRecommendationEnabled", @is_access_recommendation_enabled)
            writer.write_boolean_value("isApprovalJustificationRequired", @is_approval_justification_required)
            writer.write_boolean_value("isEnabled", @is_enabled)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("recurrenceType", @recurrence_type)
            writer.write_collection_of_object_values("reviewers", @reviewers)
            writer.write_string_value("reviewerType", @reviewer_type)
            writer.write_date_time_value("startDateTime", @start_date_time)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the startDateTime property value. When the first review should start.
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. When the first review should start.
        ## @param value Value to set for the startDateTime property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
        end
    end
end
