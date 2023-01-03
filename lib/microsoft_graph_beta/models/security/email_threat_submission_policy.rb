require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class EmailThreatSubmissionPolicy < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies the email address of the sender from which email notifications will be sent to end users to inform them whether an email is spam, phish or clean. The default value is null. Optional for creation.
        @customized_notification_sender_email_address
        ## 
        # Specifies the destination where the reported messages from end users will land whenever they report something as phish, junk or not junk. The default value is null. Optional for creation.
        @customized_report_recipient_email_address
        ## 
        # Indicates whether end users can report a message as spam, phish or junk directly without a confirmation(popup). The default value is true.  Optional for creation.
        @is_always_report_enabled_for_users
        ## 
        # Indicates whether end users can confirm using a popup before reporting messages as spam, phish or not junk. The default value is true.  Optional for creation.
        @is_ask_me_enabled_for_users
        ## 
        # Indicates whether the email notifications sent to end users to inform them if an email is phish, spam or junk is customized or not. The default value is false. Optional for creation.
        @is_customized_message_enabled
        ## 
        # If enabled, customized message only shows when email is reported as phishing. The default value is false. Optional for creation.
        @is_customized_message_enabled_for_phishing
        ## 
        # Indicates whether to use the sender email address set using customizedNotificationSenderEmailAddress for sending email notifications to end users. The default value is false. Optional for creation.
        @is_customized_notification_sender_enabled
        ## 
        # Indicates whether end users can simply move the message from one folder to another based on the action of spam, phish or not junk without actually reporting it. The default value is true. Optional for creation.
        @is_never_report_enabled_for_users
        ## 
        # Indicates whether the branding logo should be used in the email notifications sent to end users. The default value is false. Optional for creation.
        @is_organization_branding_enabled
        ## 
        # Indicates whether end users can submit from the quarantine page. The default value is true. Optional for creation.
        @is_report_from_quarantine_enabled
        ## 
        # Indicates whether emails reported by end users should be send to the custom mailbox configured using customizedReportRecipientEmailAddress.  The default value is false. Optional for creation.
        @is_report_to_customized_email_address_enabled
        ## 
        # If enabled, the email will be sent to Microsoft for analysis. The default value is false. Required for creation.
        @is_report_to_microsoft_enabled
        ## 
        # Indicates whether an email notification is sent to the end user who reported the email when it has been reviewed by the admin. The default value is false. Optional for creation.
        @is_review_email_notification_enabled
        ## 
        ## Instantiates a new emailThreatSubmissionPolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a email_threat_submission_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EmailThreatSubmissionPolicy.new
        end
        ## 
        ## Gets the customizedNotificationSenderEmailAddress property value. Specifies the email address of the sender from which email notifications will be sent to end users to inform them whether an email is spam, phish or clean. The default value is null. Optional for creation.
        ## @return a string
        ## 
        def customized_notification_sender_email_address
            return @customized_notification_sender_email_address
        end
        ## 
        ## Sets the customizedNotificationSenderEmailAddress property value. Specifies the email address of the sender from which email notifications will be sent to end users to inform them whether an email is spam, phish or clean. The default value is null. Optional for creation.
        ## @param value Value to set for the customizedNotificationSenderEmailAddress property.
        ## @return a void
        ## 
        def customized_notification_sender_email_address=(value)
            @customized_notification_sender_email_address = value
        end
        ## 
        ## Gets the customizedReportRecipientEmailAddress property value. Specifies the destination where the reported messages from end users will land whenever they report something as phish, junk or not junk. The default value is null. Optional for creation.
        ## @return a string
        ## 
        def customized_report_recipient_email_address
            return @customized_report_recipient_email_address
        end
        ## 
        ## Sets the customizedReportRecipientEmailAddress property value. Specifies the destination where the reported messages from end users will land whenever they report something as phish, junk or not junk. The default value is null. Optional for creation.
        ## @param value Value to set for the customizedReportRecipientEmailAddress property.
        ## @return a void
        ## 
        def customized_report_recipient_email_address=(value)
            @customized_report_recipient_email_address = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "customizedNotificationSenderEmailAddress" => lambda {|n| @customized_notification_sender_email_address = n.get_string_value() },
                "customizedReportRecipientEmailAddress" => lambda {|n| @customized_report_recipient_email_address = n.get_string_value() },
                "isAlwaysReportEnabledForUsers" => lambda {|n| @is_always_report_enabled_for_users = n.get_boolean_value() },
                "isAskMeEnabledForUsers" => lambda {|n| @is_ask_me_enabled_for_users = n.get_boolean_value() },
                "isCustomizedMessageEnabled" => lambda {|n| @is_customized_message_enabled = n.get_boolean_value() },
                "isCustomizedMessageEnabledForPhishing" => lambda {|n| @is_customized_message_enabled_for_phishing = n.get_boolean_value() },
                "isCustomizedNotificationSenderEnabled" => lambda {|n| @is_customized_notification_sender_enabled = n.get_boolean_value() },
                "isNeverReportEnabledForUsers" => lambda {|n| @is_never_report_enabled_for_users = n.get_boolean_value() },
                "isOrganizationBrandingEnabled" => lambda {|n| @is_organization_branding_enabled = n.get_boolean_value() },
                "isReportFromQuarantineEnabled" => lambda {|n| @is_report_from_quarantine_enabled = n.get_boolean_value() },
                "isReportToCustomizedEmailAddressEnabled" => lambda {|n| @is_report_to_customized_email_address_enabled = n.get_boolean_value() },
                "isReportToMicrosoftEnabled" => lambda {|n| @is_report_to_microsoft_enabled = n.get_boolean_value() },
                "isReviewEmailNotificationEnabled" => lambda {|n| @is_review_email_notification_enabled = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the isAlwaysReportEnabledForUsers property value. Indicates whether end users can report a message as spam, phish or junk directly without a confirmation(popup). The default value is true.  Optional for creation.
        ## @return a boolean
        ## 
        def is_always_report_enabled_for_users
            return @is_always_report_enabled_for_users
        end
        ## 
        ## Sets the isAlwaysReportEnabledForUsers property value. Indicates whether end users can report a message as spam, phish or junk directly without a confirmation(popup). The default value is true.  Optional for creation.
        ## @param value Value to set for the isAlwaysReportEnabledForUsers property.
        ## @return a void
        ## 
        def is_always_report_enabled_for_users=(value)
            @is_always_report_enabled_for_users = value
        end
        ## 
        ## Gets the isAskMeEnabledForUsers property value. Indicates whether end users can confirm using a popup before reporting messages as spam, phish or not junk. The default value is true.  Optional for creation.
        ## @return a boolean
        ## 
        def is_ask_me_enabled_for_users
            return @is_ask_me_enabled_for_users
        end
        ## 
        ## Sets the isAskMeEnabledForUsers property value. Indicates whether end users can confirm using a popup before reporting messages as spam, phish or not junk. The default value is true.  Optional for creation.
        ## @param value Value to set for the isAskMeEnabledForUsers property.
        ## @return a void
        ## 
        def is_ask_me_enabled_for_users=(value)
            @is_ask_me_enabled_for_users = value
        end
        ## 
        ## Gets the isCustomizedMessageEnabled property value. Indicates whether the email notifications sent to end users to inform them if an email is phish, spam or junk is customized or not. The default value is false. Optional for creation.
        ## @return a boolean
        ## 
        def is_customized_message_enabled
            return @is_customized_message_enabled
        end
        ## 
        ## Sets the isCustomizedMessageEnabled property value. Indicates whether the email notifications sent to end users to inform them if an email is phish, spam or junk is customized or not. The default value is false. Optional for creation.
        ## @param value Value to set for the isCustomizedMessageEnabled property.
        ## @return a void
        ## 
        def is_customized_message_enabled=(value)
            @is_customized_message_enabled = value
        end
        ## 
        ## Gets the isCustomizedMessageEnabledForPhishing property value. If enabled, customized message only shows when email is reported as phishing. The default value is false. Optional for creation.
        ## @return a boolean
        ## 
        def is_customized_message_enabled_for_phishing
            return @is_customized_message_enabled_for_phishing
        end
        ## 
        ## Sets the isCustomizedMessageEnabledForPhishing property value. If enabled, customized message only shows when email is reported as phishing. The default value is false. Optional for creation.
        ## @param value Value to set for the isCustomizedMessageEnabledForPhishing property.
        ## @return a void
        ## 
        def is_customized_message_enabled_for_phishing=(value)
            @is_customized_message_enabled_for_phishing = value
        end
        ## 
        ## Gets the isCustomizedNotificationSenderEnabled property value. Indicates whether to use the sender email address set using customizedNotificationSenderEmailAddress for sending email notifications to end users. The default value is false. Optional for creation.
        ## @return a boolean
        ## 
        def is_customized_notification_sender_enabled
            return @is_customized_notification_sender_enabled
        end
        ## 
        ## Sets the isCustomizedNotificationSenderEnabled property value. Indicates whether to use the sender email address set using customizedNotificationSenderEmailAddress for sending email notifications to end users. The default value is false. Optional for creation.
        ## @param value Value to set for the isCustomizedNotificationSenderEnabled property.
        ## @return a void
        ## 
        def is_customized_notification_sender_enabled=(value)
            @is_customized_notification_sender_enabled = value
        end
        ## 
        ## Gets the isNeverReportEnabledForUsers property value. Indicates whether end users can simply move the message from one folder to another based on the action of spam, phish or not junk without actually reporting it. The default value is true. Optional for creation.
        ## @return a boolean
        ## 
        def is_never_report_enabled_for_users
            return @is_never_report_enabled_for_users
        end
        ## 
        ## Sets the isNeverReportEnabledForUsers property value. Indicates whether end users can simply move the message from one folder to another based on the action of spam, phish or not junk without actually reporting it. The default value is true. Optional for creation.
        ## @param value Value to set for the isNeverReportEnabledForUsers property.
        ## @return a void
        ## 
        def is_never_report_enabled_for_users=(value)
            @is_never_report_enabled_for_users = value
        end
        ## 
        ## Gets the isOrganizationBrandingEnabled property value. Indicates whether the branding logo should be used in the email notifications sent to end users. The default value is false. Optional for creation.
        ## @return a boolean
        ## 
        def is_organization_branding_enabled
            return @is_organization_branding_enabled
        end
        ## 
        ## Sets the isOrganizationBrandingEnabled property value. Indicates whether the branding logo should be used in the email notifications sent to end users. The default value is false. Optional for creation.
        ## @param value Value to set for the isOrganizationBrandingEnabled property.
        ## @return a void
        ## 
        def is_organization_branding_enabled=(value)
            @is_organization_branding_enabled = value
        end
        ## 
        ## Gets the isReportFromQuarantineEnabled property value. Indicates whether end users can submit from the quarantine page. The default value is true. Optional for creation.
        ## @return a boolean
        ## 
        def is_report_from_quarantine_enabled
            return @is_report_from_quarantine_enabled
        end
        ## 
        ## Sets the isReportFromQuarantineEnabled property value. Indicates whether end users can submit from the quarantine page. The default value is true. Optional for creation.
        ## @param value Value to set for the isReportFromQuarantineEnabled property.
        ## @return a void
        ## 
        def is_report_from_quarantine_enabled=(value)
            @is_report_from_quarantine_enabled = value
        end
        ## 
        ## Gets the isReportToCustomizedEmailAddressEnabled property value. Indicates whether emails reported by end users should be send to the custom mailbox configured using customizedReportRecipientEmailAddress.  The default value is false. Optional for creation.
        ## @return a boolean
        ## 
        def is_report_to_customized_email_address_enabled
            return @is_report_to_customized_email_address_enabled
        end
        ## 
        ## Sets the isReportToCustomizedEmailAddressEnabled property value. Indicates whether emails reported by end users should be send to the custom mailbox configured using customizedReportRecipientEmailAddress.  The default value is false. Optional for creation.
        ## @param value Value to set for the isReportToCustomizedEmailAddressEnabled property.
        ## @return a void
        ## 
        def is_report_to_customized_email_address_enabled=(value)
            @is_report_to_customized_email_address_enabled = value
        end
        ## 
        ## Gets the isReportToMicrosoftEnabled property value. If enabled, the email will be sent to Microsoft for analysis. The default value is false. Required for creation.
        ## @return a boolean
        ## 
        def is_report_to_microsoft_enabled
            return @is_report_to_microsoft_enabled
        end
        ## 
        ## Sets the isReportToMicrosoftEnabled property value. If enabled, the email will be sent to Microsoft for analysis. The default value is false. Required for creation.
        ## @param value Value to set for the isReportToMicrosoftEnabled property.
        ## @return a void
        ## 
        def is_report_to_microsoft_enabled=(value)
            @is_report_to_microsoft_enabled = value
        end
        ## 
        ## Gets the isReviewEmailNotificationEnabled property value. Indicates whether an email notification is sent to the end user who reported the email when it has been reviewed by the admin. The default value is false. Optional for creation.
        ## @return a boolean
        ## 
        def is_review_email_notification_enabled
            return @is_review_email_notification_enabled
        end
        ## 
        ## Sets the isReviewEmailNotificationEnabled property value. Indicates whether an email notification is sent to the end user who reported the email when it has been reviewed by the admin. The default value is false. Optional for creation.
        ## @param value Value to set for the isReviewEmailNotificationEnabled property.
        ## @return a void
        ## 
        def is_review_email_notification_enabled=(value)
            @is_review_email_notification_enabled = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("customizedNotificationSenderEmailAddress", @customized_notification_sender_email_address)
            writer.write_string_value("customizedReportRecipientEmailAddress", @customized_report_recipient_email_address)
            writer.write_boolean_value("isAlwaysReportEnabledForUsers", @is_always_report_enabled_for_users)
            writer.write_boolean_value("isAskMeEnabledForUsers", @is_ask_me_enabled_for_users)
            writer.write_boolean_value("isCustomizedMessageEnabled", @is_customized_message_enabled)
            writer.write_boolean_value("isCustomizedMessageEnabledForPhishing", @is_customized_message_enabled_for_phishing)
            writer.write_boolean_value("isCustomizedNotificationSenderEnabled", @is_customized_notification_sender_enabled)
            writer.write_boolean_value("isNeverReportEnabledForUsers", @is_never_report_enabled_for_users)
            writer.write_boolean_value("isOrganizationBrandingEnabled", @is_organization_branding_enabled)
            writer.write_boolean_value("isReportFromQuarantineEnabled", @is_report_from_quarantine_enabled)
            writer.write_boolean_value("isReportToCustomizedEmailAddressEnabled", @is_report_to_customized_email_address_enabled)
            writer.write_boolean_value("isReportToMicrosoftEnabled", @is_report_to_microsoft_enabled)
            writer.write_boolean_value("isReviewEmailNotificationEnabled", @is_review_email_notification_enabled)
        end
    end
end
