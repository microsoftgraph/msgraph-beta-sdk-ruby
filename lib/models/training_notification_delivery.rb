require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrainingNotificationDelivery
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The failedMessageDeliveryCount property
            @failed_message_delivery_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The resolvedTargetsCount property
            @resolved_targets_count
            ## 
            # The successfulMessageDeliveryCount property
            @successful_message_delivery_count
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
            ## Instantiates a new TrainingNotificationDelivery and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training_notification_delivery
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrainingNotificationDelivery.new
            end
            ## 
            ## Gets the failedMessageDeliveryCount property value. The failedMessageDeliveryCount property
            ## @return a integer
            ## 
            def failed_message_delivery_count
                return @failed_message_delivery_count
            end
            ## 
            ## Sets the failedMessageDeliveryCount property value. The failedMessageDeliveryCount property
            ## @param value Value to set for the failedMessageDeliveryCount property.
            ## @return a void
            ## 
            def failed_message_delivery_count=(value)
                @failed_message_delivery_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedMessageDeliveryCount" => lambda {|n| @failed_message_delivery_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "resolvedTargetsCount" => lambda {|n| @resolved_targets_count = n.get_number_value() },
                    "successfulMessageDeliveryCount" => lambda {|n| @successful_message_delivery_count = n.get_number_value() },
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
            ## Gets the resolvedTargetsCount property value. The resolvedTargetsCount property
            ## @return a integer
            ## 
            def resolved_targets_count
                return @resolved_targets_count
            end
            ## 
            ## Sets the resolvedTargetsCount property value. The resolvedTargetsCount property
            ## @param value Value to set for the resolvedTargetsCount property.
            ## @return a void
            ## 
            def resolved_targets_count=(value)
                @resolved_targets_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("failedMessageDeliveryCount", @failed_message_delivery_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("resolvedTargetsCount", @resolved_targets_count)
                writer.write_number_value("successfulMessageDeliveryCount", @successful_message_delivery_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulMessageDeliveryCount property value. The successfulMessageDeliveryCount property
            ## @return a integer
            ## 
            def successful_message_delivery_count
                return @successful_message_delivery_count
            end
            ## 
            ## Sets the successfulMessageDeliveryCount property value. The successfulMessageDeliveryCount property
            ## @param value Value to set for the successfulMessageDeliveryCount property.
            ## @return a void
            ## 
            def successful_message_delivery_count=(value)
                @successful_message_delivery_count = value
            end
        end
    end
end
