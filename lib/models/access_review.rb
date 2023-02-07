require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessReview < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The business flow template identifier. Required on create.  This value is case sensitive.
        @business_flow_template_id
        ## 
        # The user who created this review.
        @created_by
        ## 
        # The collection of decisions for this access review.
        @decisions
        ## 
        # The description provided by the access review creator, to show to the reviewers.
        @description
        ## 
        # The access review name. Required on create.
        @display_name
        ## 
        # The DateTime when the review is scheduled to end. This must be at least one day later than the start date.  Required on create.
        @end_date_time
        ## 
        # The collection of access reviews instances past, present and future, if this object is a recurring access review.
        @instances
        ## 
        # The collection of decisions for the caller, if the caller is a reviewer.
        @my_decisions
        ## 
        # The object for which the access reviews is reviewing the access rights assignments. This can be the group for the review of memberships of users in a group, or the app for a review of assignments of users to an application. Required on create.
        @reviewed_entity
        ## 
        # The relationship type of reviewer to the target object, one of self, delegated or entityOwners. Required on create.
        @reviewer_type
        ## 
        # The collection of reviewers for an access review, if access review reviewerType is of type delegated.
        @reviewers
        ## 
        # The settings of an accessReview, see type definition below.
        @settings
        ## 
        # The DateTime when the review is scheduled to be start.  This could be a date in the future.  Required on create.
        @start_date_time
        ## 
        # This read-only field specifies the status of an accessReview. The typical states include Initializing, NotStarted, Starting,InProgress, Completing, Completed, AutoReviewing, and AutoReviewed.
        @status
        ## 
        ## Gets the businessFlowTemplateId property value. The business flow template identifier. Required on create.  This value is case sensitive.
        ## @return a string
        ## 
        def business_flow_template_id
            return @business_flow_template_id
        end
        ## 
        ## Sets the businessFlowTemplateId property value. The business flow template identifier. Required on create.  This value is case sensitive.
        ## @param value Value to set for the business_flow_template_id property.
        ## @return a void
        ## 
        def business_flow_template_id=(value)
            @business_flow_template_id = value
        end
        ## 
        ## Instantiates a new accessReview and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdBy property value. The user who created this review.
        ## @return a user_identity
        ## 
        def created_by
            return @created_by
        end
        ## 
        ## Sets the createdBy property value. The user who created this review.
        ## @param value Value to set for the created_by property.
        ## @return a void
        ## 
        def created_by=(value)
            @created_by = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_review
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AccessReview.new
        end
        ## 
        ## Gets the decisions property value. The collection of decisions for this access review.
        ## @return a access_review_decision
        ## 
        def decisions
            return @decisions
        end
        ## 
        ## Sets the decisions property value. The collection of decisions for this access review.
        ## @param value Value to set for the decisions property.
        ## @return a void
        ## 
        def decisions=(value)
            @decisions = value
        end
        ## 
        ## Gets the description property value. The description provided by the access review creator, to show to the reviewers.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description provided by the access review creator, to show to the reviewers.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The access review name. Required on create.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The access review name. Required on create.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the endDateTime property value. The DateTime when the review is scheduled to end. This must be at least one day later than the start date.  Required on create.
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. The DateTime when the review is scheduled to end. This must be at least one day later than the start date.  Required on create.
        ## @param value Value to set for the end_date_time property.
        ## @return a void
        ## 
        def end_date_time=(value)
            @end_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "businessFlowTemplateId" => lambda {|n| @business_flow_template_id = n.get_string_value() },
                "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                "decisions" => lambda {|n| @decisions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewDecision.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                "instances" => lambda {|n| @instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessReview.create_from_discriminator_value(pn) }) },
                "myDecisions" => lambda {|n| @my_decisions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewDecision.create_from_discriminator_value(pn) }) },
                "reviewedEntity" => lambda {|n| @reviewed_entity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Identity.create_from_discriminator_value(pn) }) },
                "reviewerType" => lambda {|n| @reviewer_type = n.get_string_value() },
                "reviewers" => lambda {|n| @reviewers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewReviewer.create_from_discriminator_value(pn) }) },
                "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewSettings.create_from_discriminator_value(pn) }) },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                "status" => lambda {|n| @status = n.get_string_value() },
            })
        end
        ## 
        ## Gets the instances property value. The collection of access reviews instances past, present and future, if this object is a recurring access review.
        ## @return a access_review
        ## 
        def instances
            return @instances
        end
        ## 
        ## Sets the instances property value. The collection of access reviews instances past, present and future, if this object is a recurring access review.
        ## @param value Value to set for the instances property.
        ## @return a void
        ## 
        def instances=(value)
            @instances = value
        end
        ## 
        ## Gets the myDecisions property value. The collection of decisions for the caller, if the caller is a reviewer.
        ## @return a access_review_decision
        ## 
        def my_decisions
            return @my_decisions
        end
        ## 
        ## Sets the myDecisions property value. The collection of decisions for the caller, if the caller is a reviewer.
        ## @param value Value to set for the my_decisions property.
        ## @return a void
        ## 
        def my_decisions=(value)
            @my_decisions = value
        end
        ## 
        ## Gets the reviewedEntity property value. The object for which the access reviews is reviewing the access rights assignments. This can be the group for the review of memberships of users in a group, or the app for a review of assignments of users to an application. Required on create.
        ## @return a identity
        ## 
        def reviewed_entity
            return @reviewed_entity
        end
        ## 
        ## Sets the reviewedEntity property value. The object for which the access reviews is reviewing the access rights assignments. This can be the group for the review of memberships of users in a group, or the app for a review of assignments of users to an application. Required on create.
        ## @param value Value to set for the reviewed_entity property.
        ## @return a void
        ## 
        def reviewed_entity=(value)
            @reviewed_entity = value
        end
        ## 
        ## Gets the reviewerType property value. The relationship type of reviewer to the target object, one of self, delegated or entityOwners. Required on create.
        ## @return a string
        ## 
        def reviewer_type
            return @reviewer_type
        end
        ## 
        ## Sets the reviewerType property value. The relationship type of reviewer to the target object, one of self, delegated or entityOwners. Required on create.
        ## @param value Value to set for the reviewer_type property.
        ## @return a void
        ## 
        def reviewer_type=(value)
            @reviewer_type = value
        end
        ## 
        ## Gets the reviewers property value. The collection of reviewers for an access review, if access review reviewerType is of type delegated.
        ## @return a access_review_reviewer
        ## 
        def reviewers
            return @reviewers
        end
        ## 
        ## Sets the reviewers property value. The collection of reviewers for an access review, if access review reviewerType is of type delegated.
        ## @param value Value to set for the reviewers property.
        ## @return a void
        ## 
        def reviewers=(value)
            @reviewers = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("businessFlowTemplateId", @business_flow_template_id)
            writer.write_object_value("createdBy", @created_by)
            writer.write_collection_of_object_values("decisions", @decisions)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("endDateTime", @end_date_time)
            writer.write_collection_of_object_values("instances", @instances)
            writer.write_collection_of_object_values("myDecisions", @my_decisions)
            writer.write_object_value("reviewedEntity", @reviewed_entity)
            writer.write_string_value("reviewerType", @reviewer_type)
            writer.write_collection_of_object_values("reviewers", @reviewers)
            writer.write_object_value("settings", @settings)
            writer.write_date_time_value("startDateTime", @start_date_time)
            writer.write_string_value("status", @status)
        end
        ## 
        ## Gets the settings property value. The settings of an accessReview, see type definition below.
        ## @return a access_review_settings
        ## 
        def settings
            return @settings
        end
        ## 
        ## Sets the settings property value. The settings of an accessReview, see type definition below.
        ## @param value Value to set for the settings property.
        ## @return a void
        ## 
        def settings=(value)
            @settings = value
        end
        ## 
        ## Gets the startDateTime property value. The DateTime when the review is scheduled to be start.  This could be a date in the future.  Required on create.
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. The DateTime when the review is scheduled to be start.  This could be a date in the future.  Required on create.
        ## @param value Value to set for the start_date_time property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
        end
        ## 
        ## Gets the status property value. This read-only field specifies the status of an accessReview. The typical states include Initializing, NotStarted, Starting,InProgress, Completing, Completed, AutoReviewing, and AutoReviewed.
        ## @return a string
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. This read-only field specifies the status of an accessReview. The typical states include Initializing, NotStarted, Starting,InProgress, Completing, Completed, AutoReviewing, and AutoReviewed.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
