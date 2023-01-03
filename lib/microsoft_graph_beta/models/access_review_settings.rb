require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessReviewSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates whether showing recommendations to reviewers is enabled.
        @access_recommendations_enabled
        ## 
        # The number of days of user activities to show to reviewers.
        @activity_duration_in_days
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Indicates whether the auto-apply capability, to automatically change the target object access resource, is enabled.  If not enabled, a user must, after the review completes, apply the access review.
        @auto_apply_review_results_enabled
        ## 
        # Indicates whether a decision should be set if the reviewer did not supply one. For use when auto-apply is enabled. If you don't want to have a review decision recorded unless the reviewer makes an explicit choice, set it to false.
        @auto_review_enabled
        ## 
        # Detailed settings for how the feature should set the review decision. For use when auto-apply is enabled.
        @auto_review_settings
        ## 
        # Indicates whether reviewers are required to provide a justification when reviewing access.
        @justification_required_on_approval
        ## 
        # Indicates whether sending mails to reviewers and the review creator is enabled.
        @mail_notifications_enabled
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Detailed settings for recurrence.
        @recurrence_settings
        ## 
        # Indicates whether sending reminder emails to reviewers is enabled.
        @reminders_enabled
        ## 
        ## Gets the accessRecommendationsEnabled property value. Indicates whether showing recommendations to reviewers is enabled.
        ## @return a boolean
        ## 
        def access_recommendations_enabled
            return @access_recommendations_enabled
        end
        ## 
        ## Sets the accessRecommendationsEnabled property value. Indicates whether showing recommendations to reviewers is enabled.
        ## @param value Value to set for the accessRecommendationsEnabled property.
        ## @return a void
        ## 
        def access_recommendations_enabled=(value)
            @access_recommendations_enabled = value
        end
        ## 
        ## Gets the activityDurationInDays property value. The number of days of user activities to show to reviewers.
        ## @return a integer
        ## 
        def activity_duration_in_days
            return @activity_duration_in_days
        end
        ## 
        ## Sets the activityDurationInDays property value. The number of days of user activities to show to reviewers.
        ## @param value Value to set for the activityDurationInDays property.
        ## @return a void
        ## 
        def activity_duration_in_days=(value)
            @activity_duration_in_days = value
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
        ## Gets the autoApplyReviewResultsEnabled property value. Indicates whether the auto-apply capability, to automatically change the target object access resource, is enabled.  If not enabled, a user must, after the review completes, apply the access review.
        ## @return a boolean
        ## 
        def auto_apply_review_results_enabled
            return @auto_apply_review_results_enabled
        end
        ## 
        ## Sets the autoApplyReviewResultsEnabled property value. Indicates whether the auto-apply capability, to automatically change the target object access resource, is enabled.  If not enabled, a user must, after the review completes, apply the access review.
        ## @param value Value to set for the autoApplyReviewResultsEnabled property.
        ## @return a void
        ## 
        def auto_apply_review_results_enabled=(value)
            @auto_apply_review_results_enabled = value
        end
        ## 
        ## Gets the autoReviewEnabled property value. Indicates whether a decision should be set if the reviewer did not supply one. For use when auto-apply is enabled. If you don't want to have a review decision recorded unless the reviewer makes an explicit choice, set it to false.
        ## @return a boolean
        ## 
        def auto_review_enabled
            return @auto_review_enabled
        end
        ## 
        ## Sets the autoReviewEnabled property value. Indicates whether a decision should be set if the reviewer did not supply one. For use when auto-apply is enabled. If you don't want to have a review decision recorded unless the reviewer makes an explicit choice, set it to false.
        ## @param value Value to set for the autoReviewEnabled property.
        ## @return a void
        ## 
        def auto_review_enabled=(value)
            @auto_review_enabled = value
        end
        ## 
        ## Gets the autoReviewSettings property value. Detailed settings for how the feature should set the review decision. For use when auto-apply is enabled.
        ## @return a auto_review_settings
        ## 
        def auto_review_settings
            return @auto_review_settings
        end
        ## 
        ## Sets the autoReviewSettings property value. Detailed settings for how the feature should set the review decision. For use when auto-apply is enabled.
        ## @param value Value to set for the autoReviewSettings property.
        ## @return a void
        ## 
        def auto_review_settings=(value)
            @auto_review_settings = value
        end
        ## 
        ## Instantiates a new accessReviewSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_review_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.businessFlowSettings"
                        return BusinessFlowSettings.new
                end
            end
            return AccessReviewSettings.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "accessRecommendationsEnabled" => lambda {|n| @access_recommendations_enabled = n.get_boolean_value() },
                "activityDurationInDays" => lambda {|n| @activity_duration_in_days = n.get_number_value() },
                "autoApplyReviewResultsEnabled" => lambda {|n| @auto_apply_review_results_enabled = n.get_boolean_value() },
                "autoReviewEnabled" => lambda {|n| @auto_review_enabled = n.get_boolean_value() },
                "autoReviewSettings" => lambda {|n| @auto_review_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AutoReviewSettings.create_from_discriminator_value(pn) }) },
                "justificationRequiredOnApproval" => lambda {|n| @justification_required_on_approval = n.get_boolean_value() },
                "mailNotificationsEnabled" => lambda {|n| @mail_notifications_enabled = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "recurrenceSettings" => lambda {|n| @recurrence_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewRecurrenceSettings.create_from_discriminator_value(pn) }) },
                "remindersEnabled" => lambda {|n| @reminders_enabled = n.get_boolean_value() },
            }
        end
        ## 
        ## Gets the justificationRequiredOnApproval property value. Indicates whether reviewers are required to provide a justification when reviewing access.
        ## @return a boolean
        ## 
        def justification_required_on_approval
            return @justification_required_on_approval
        end
        ## 
        ## Sets the justificationRequiredOnApproval property value. Indicates whether reviewers are required to provide a justification when reviewing access.
        ## @param value Value to set for the justificationRequiredOnApproval property.
        ## @return a void
        ## 
        def justification_required_on_approval=(value)
            @justification_required_on_approval = value
        end
        ## 
        ## Gets the mailNotificationsEnabled property value. Indicates whether sending mails to reviewers and the review creator is enabled.
        ## @return a boolean
        ## 
        def mail_notifications_enabled
            return @mail_notifications_enabled
        end
        ## 
        ## Sets the mailNotificationsEnabled property value. Indicates whether sending mails to reviewers and the review creator is enabled.
        ## @param value Value to set for the mailNotificationsEnabled property.
        ## @return a void
        ## 
        def mail_notifications_enabled=(value)
            @mail_notifications_enabled = value
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
        ## Gets the recurrenceSettings property value. Detailed settings for recurrence.
        ## @return a access_review_recurrence_settings
        ## 
        def recurrence_settings
            return @recurrence_settings
        end
        ## 
        ## Sets the recurrenceSettings property value. Detailed settings for recurrence.
        ## @param value Value to set for the recurrenceSettings property.
        ## @return a void
        ## 
        def recurrence_settings=(value)
            @recurrence_settings = value
        end
        ## 
        ## Gets the remindersEnabled property value. Indicates whether sending reminder emails to reviewers is enabled.
        ## @return a boolean
        ## 
        def reminders_enabled
            return @reminders_enabled
        end
        ## 
        ## Sets the remindersEnabled property value. Indicates whether sending reminder emails to reviewers is enabled.
        ## @param value Value to set for the remindersEnabled property.
        ## @return a void
        ## 
        def reminders_enabled=(value)
            @reminders_enabled = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("accessRecommendationsEnabled", @access_recommendations_enabled)
            writer.write_number_value("activityDurationInDays", @activity_duration_in_days)
            writer.write_boolean_value("autoApplyReviewResultsEnabled", @auto_apply_review_results_enabled)
            writer.write_boolean_value("autoReviewEnabled", @auto_review_enabled)
            writer.write_object_value("autoReviewSettings", @auto_review_settings)
            writer.write_boolean_value("justificationRequiredOnApproval", @justification_required_on_approval)
            writer.write_boolean_value("mailNotificationsEnabled", @mail_notifications_enabled)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("recurrenceSettings", @recurrence_settings)
            writer.write_boolean_value("remindersEnabled", @reminders_enabled)
            writer.write_additional_data(@additional_data)
        end
    end
end
