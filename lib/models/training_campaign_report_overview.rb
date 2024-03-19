require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrainingCampaignReportOverview
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The trainingModuleCompletion property
            @training_module_completion
            ## 
            # The trainingNotificationDeliveryStatus property
            @training_notification_delivery_status
            ## 
            # The userCompletionStatus property
            @user_completion_status
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new TrainingCampaignReportOverview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training_campaign_report_overview
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrainingCampaignReportOverview.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "trainingModuleCompletion" => lambda {|n| @training_module_completion = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TrainingEventsContent.create_from_discriminator_value(pn) }) },
                    "trainingNotificationDeliveryStatus" => lambda {|n| @training_notification_delivery_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TrainingNotificationDelivery.create_from_discriminator_value(pn) }) },
                    "userCompletionStatus" => lambda {|n| @user_completion_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserTrainingCompletionSummary.create_from_discriminator_value(pn) }) },
                }
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("trainingModuleCompletion", @training_module_completion)
                writer.write_object_value("trainingNotificationDeliveryStatus", @training_notification_delivery_status)
                writer.write_object_value("userCompletionStatus", @user_completion_status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trainingModuleCompletion property value. The trainingModuleCompletion property
            ## @return a training_events_content
            ## 
            def training_module_completion
                return @training_module_completion
            end
            ## 
            ## Sets the trainingModuleCompletion property value. The trainingModuleCompletion property
            ## @param value Value to set for the trainingModuleCompletion property.
            ## @return a void
            ## 
            def training_module_completion=(value)
                @training_module_completion = value
            end
            ## 
            ## Gets the trainingNotificationDeliveryStatus property value. The trainingNotificationDeliveryStatus property
            ## @return a training_notification_delivery
            ## 
            def training_notification_delivery_status
                return @training_notification_delivery_status
            end
            ## 
            ## Sets the trainingNotificationDeliveryStatus property value. The trainingNotificationDeliveryStatus property
            ## @param value Value to set for the trainingNotificationDeliveryStatus property.
            ## @return a void
            ## 
            def training_notification_delivery_status=(value)
                @training_notification_delivery_status = value
            end
            ## 
            ## Gets the userCompletionStatus property value. The userCompletionStatus property
            ## @return a user_training_completion_summary
            ## 
            def user_completion_status
                return @user_completion_status
            end
            ## 
            ## Sets the userCompletionStatus property value. The userCompletionStatus property
            ## @param value Value to set for the userCompletionStatus property.
            ## @return a void
            ## 
            def user_completion_status=(value)
                @user_completion_status = value
            end
        end
    end
end
