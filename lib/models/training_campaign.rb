require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrainingCampaign < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The campaignSchedule property
            @campaign_schedule
            ## 
            # The createdBy property
            @created_by
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The endUserNotificationSetting property
            @end_user_notification_setting
            ## 
            # The excludedAccountTarget property
            @excluded_account_target
            ## 
            # The includedAccountTarget property
            @included_account_target
            ## 
            # The lastModifiedBy property
            @last_modified_by
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The report property
            @report
            ## 
            # The trainingSetting property
            @training_setting
            ## 
            ## Gets the campaignSchedule property value. The campaignSchedule property
            ## @return a campaign_schedule
            ## 
            def campaign_schedule
                return @campaign_schedule
            end
            ## 
            ## Sets the campaignSchedule property value. The campaignSchedule property
            ## @param value Value to set for the campaignSchedule property.
            ## @return a void
            ## 
            def campaign_schedule=(value)
                @campaign_schedule = value
            end
            ## 
            ## Instantiates a new TrainingCampaign and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training_campaign
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrainingCampaign.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
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
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endUserNotificationSetting property value. The endUserNotificationSetting property
            ## @return a end_user_notification_setting
            ## 
            def end_user_notification_setting
                return @end_user_notification_setting
            end
            ## 
            ## Sets the endUserNotificationSetting property value. The endUserNotificationSetting property
            ## @param value Value to set for the endUserNotificationSetting property.
            ## @return a void
            ## 
            def end_user_notification_setting=(value)
                @end_user_notification_setting = value
            end
            ## 
            ## Gets the excludedAccountTarget property value. The excludedAccountTarget property
            ## @return a account_target_content
            ## 
            def excluded_account_target
                return @excluded_account_target
            end
            ## 
            ## Sets the excludedAccountTarget property value. The excludedAccountTarget property
            ## @param value Value to set for the excludedAccountTarget property.
            ## @return a void
            ## 
            def excluded_account_target=(value)
                @excluded_account_target = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "campaignSchedule" => lambda {|n| @campaign_schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CampaignSchedule.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endUserNotificationSetting" => lambda {|n| @end_user_notification_setting = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EndUserNotificationSetting.create_from_discriminator_value(pn) }) },
                    "excludedAccountTarget" => lambda {|n| @excluded_account_target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccountTargetContent.create_from_discriminator_value(pn) }) },
                    "includedAccountTarget" => lambda {|n| @included_account_target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccountTargetContent.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "report" => lambda {|n| @report = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TrainingCampaignReport.create_from_discriminator_value(pn) }) },
                    "trainingSetting" => lambda {|n| @training_setting = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TrainingSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the includedAccountTarget property value. The includedAccountTarget property
            ## @return a account_target_content
            ## 
            def included_account_target
                return @included_account_target
            end
            ## 
            ## Sets the includedAccountTarget property value. The includedAccountTarget property
            ## @param value Value to set for the includedAccountTarget property.
            ## @return a void
            ## 
            def included_account_target=(value)
                @included_account_target = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The lastModifiedBy property
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The lastModifiedBy property
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the report property value. The report property
            ## @return a training_campaign_report
            ## 
            def report
                return @report
            end
            ## 
            ## Sets the report property value. The report property
            ## @param value Value to set for the report property.
            ## @return a void
            ## 
            def report=(value)
                @report = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("campaignSchedule", @campaign_schedule)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("endUserNotificationSetting", @end_user_notification_setting)
                writer.write_object_value("excludedAccountTarget", @excluded_account_target)
                writer.write_object_value("includedAccountTarget", @included_account_target)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("report", @report)
                writer.write_object_value("trainingSetting", @training_setting)
            end
            ## 
            ## Gets the trainingSetting property value. The trainingSetting property
            ## @return a training_setting
            ## 
            def training_setting
                return @training_setting
            end
            ## 
            ## Sets the trainingSetting property value. The trainingSetting property
            ## @param value Value to set for the trainingSetting property.
            ## @return a void
            ## 
            def training_setting=(value)
                @training_setting = value
            end
        end
    end
end
