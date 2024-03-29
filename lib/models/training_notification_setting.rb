require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrainingNotificationSetting < MicrosoftGraphBeta::Models::EndUserNotificationSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The trainingAssignment property
            @training_assignment
            ## 
            # The trainingReminder property
            @training_reminder
            ## 
            ## Instantiates a new trainingNotificationSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.trainingNotificationSetting"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training_notification_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrainingNotificationSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "trainingAssignment" => lambda {|n| @training_assignment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BaseEndUserNotification.create_from_discriminator_value(pn) }) },
                    "trainingReminder" => lambda {|n| @training_reminder = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TrainingReminderNotification.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("trainingAssignment", @training_assignment)
                writer.write_object_value("trainingReminder", @training_reminder)
            end
            ## 
            ## Gets the trainingAssignment property value. The trainingAssignment property
            ## @return a base_end_user_notification
            ## 
            def training_assignment
                return @training_assignment
            end
            ## 
            ## Sets the trainingAssignment property value. The trainingAssignment property
            ## @param value Value to set for the trainingAssignment property.
            ## @return a void
            ## 
            def training_assignment=(value)
                @training_assignment = value
            end
            ## 
            ## Gets the trainingReminder property value. The trainingReminder property
            ## @return a training_reminder_notification
            ## 
            def training_reminder
                return @training_reminder
            end
            ## 
            ## Sets the trainingReminder property value. The trainingReminder property
            ## @param value Value to set for the trainingReminder property.
            ## @return a void
            ## 
            def training_reminder=(value)
                @training_reminder = value
            end
        end
    end
end
