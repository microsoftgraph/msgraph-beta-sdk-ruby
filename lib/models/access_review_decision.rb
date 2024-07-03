require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessReviewDecision < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The feature- generated recommendation shown to the reviewer, one of: Approve, Deny, NotAvailable.
            @access_recommendation
            ## 
            # The feature-generated ID of the access review.
            @access_review_id
            ## 
            # When the review completes, if the results were manually applied, the user identity of the user who applied the decision. If the review was autoapplied, the userPrincipalName is empty.
            @applied_by
            ## 
            # The date and time when the review decision was applied.
            @applied_date_time
            ## 
            # The outcome of applying the decision, one of: NotApplied, Success, Failed, NotFound, NotSupported.
            @apply_result
            ## 
            # The reviewer's business justification, if supplied.
            @justification
            ## 
            # The result of the review, one of NotReviewed, Deny, DontKnow or Approve.
            @review_result
            ## 
            # The identity of the reviewer. If the recommendation was used as the review, the userPrincipalName is empty.
            @reviewed_by
            ## 
            # The reviewedDateTime property
            @reviewed_date_time
            ## 
            ## Gets the accessRecommendation property value. The feature- generated recommendation shown to the reviewer, one of: Approve, Deny, NotAvailable.
            ## @return a string
            ## 
            def access_recommendation
                return @access_recommendation
            end
            ## 
            ## Sets the accessRecommendation property value. The feature- generated recommendation shown to the reviewer, one of: Approve, Deny, NotAvailable.
            ## @param value Value to set for the accessRecommendation property.
            ## @return a void
            ## 
            def access_recommendation=(value)
                @access_recommendation = value
            end
            ## 
            ## Gets the accessReviewId property value. The feature-generated ID of the access review.
            ## @return a string
            ## 
            def access_review_id
                return @access_review_id
            end
            ## 
            ## Sets the accessReviewId property value. The feature-generated ID of the access review.
            ## @param value Value to set for the accessReviewId property.
            ## @return a void
            ## 
            def access_review_id=(value)
                @access_review_id = value
            end
            ## 
            ## Gets the appliedBy property value. When the review completes, if the results were manually applied, the user identity of the user who applied the decision. If the review was autoapplied, the userPrincipalName is empty.
            ## @return a user_identity
            ## 
            def applied_by
                return @applied_by
            end
            ## 
            ## Sets the appliedBy property value. When the review completes, if the results were manually applied, the user identity of the user who applied the decision. If the review was autoapplied, the userPrincipalName is empty.
            ## @param value Value to set for the appliedBy property.
            ## @return a void
            ## 
            def applied_by=(value)
                @applied_by = value
            end
            ## 
            ## Gets the appliedDateTime property value. The date and time when the review decision was applied.
            ## @return a date_time
            ## 
            def applied_date_time
                return @applied_date_time
            end
            ## 
            ## Sets the appliedDateTime property value. The date and time when the review decision was applied.
            ## @param value Value to set for the appliedDateTime property.
            ## @return a void
            ## 
            def applied_date_time=(value)
                @applied_date_time = value
            end
            ## 
            ## Gets the applyResult property value. The outcome of applying the decision, one of: NotApplied, Success, Failed, NotFound, NotSupported.
            ## @return a string
            ## 
            def apply_result
                return @apply_result
            end
            ## 
            ## Sets the applyResult property value. The outcome of applying the decision, one of: NotApplied, Success, Failed, NotFound, NotSupported.
            ## @param value Value to set for the applyResult property.
            ## @return a void
            ## 
            def apply_result=(value)
                @apply_result = value
            end
            ## 
            ## Instantiates a new AccessReviewDecision and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_review_decision
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewDecision.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessRecommendation" => lambda {|n| @access_recommendation = n.get_string_value() },
                    "accessReviewId" => lambda {|n| @access_review_id = n.get_string_value() },
                    "appliedBy" => lambda {|n| @applied_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "appliedDateTime" => lambda {|n| @applied_date_time = n.get_date_time_value() },
                    "applyResult" => lambda {|n| @apply_result = n.get_string_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "reviewResult" => lambda {|n| @review_result = n.get_string_value() },
                    "reviewedBy" => lambda {|n| @reviewed_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "reviewedDateTime" => lambda {|n| @reviewed_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the justification property value. The reviewer's business justification, if supplied.
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. The reviewer's business justification, if supplied.
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the reviewResult property value. The result of the review, one of NotReviewed, Deny, DontKnow or Approve.
            ## @return a string
            ## 
            def review_result
                return @review_result
            end
            ## 
            ## Sets the reviewResult property value. The result of the review, one of NotReviewed, Deny, DontKnow or Approve.
            ## @param value Value to set for the reviewResult property.
            ## @return a void
            ## 
            def review_result=(value)
                @review_result = value
            end
            ## 
            ## Gets the reviewedBy property value. The identity of the reviewer. If the recommendation was used as the review, the userPrincipalName is empty.
            ## @return a user_identity
            ## 
            def reviewed_by
                return @reviewed_by
            end
            ## 
            ## Sets the reviewedBy property value. The identity of the reviewer. If the recommendation was used as the review, the userPrincipalName is empty.
            ## @param value Value to set for the reviewedBy property.
            ## @return a void
            ## 
            def reviewed_by=(value)
                @reviewed_by = value
            end
            ## 
            ## Gets the reviewedDateTime property value. The reviewedDateTime property
            ## @return a date_time
            ## 
            def reviewed_date_time
                return @reviewed_date_time
            end
            ## 
            ## Sets the reviewedDateTime property value. The reviewedDateTime property
            ## @param value Value to set for the reviewedDateTime property.
            ## @return a void
            ## 
            def reviewed_date_time=(value)
                @reviewed_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("accessRecommendation", @access_recommendation)
                writer.write_string_value("accessReviewId", @access_review_id)
                writer.write_object_value("appliedBy", @applied_by)
                writer.write_date_time_value("appliedDateTime", @applied_date_time)
                writer.write_string_value("applyResult", @apply_result)
                writer.write_string_value("justification", @justification)
                writer.write_string_value("reviewResult", @review_result)
                writer.write_object_value("reviewedBy", @reviewed_by)
                writer.write_date_time_value("reviewedDateTime", @reviewed_date_time)
            end
        end
    end
end
