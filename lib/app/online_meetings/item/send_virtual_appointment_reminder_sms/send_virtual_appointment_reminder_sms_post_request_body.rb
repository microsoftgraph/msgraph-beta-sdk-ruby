require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/remind_before_time_in_minutes_type'
require_relative '../../../app'
require_relative '../../online_meetings'
require_relative '../item'
require_relative './send_virtual_appointment_reminder_sms'

module MicrosoftGraphBeta
    module App
        module OnlineMeetings
            module Item
                module SendVirtualAppointmentReminderSms
                    class SendVirtualAppointmentReminderSmsPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The phoneNumbers property
                        @phone_numbers
                        ## 
                        # The remindBeforeTimeInMinutesType property
                        @remind_before_time_in_minutes_type
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
                        ## Instantiates a new sendVirtualAppointmentReminderSmsPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a send_virtual_appointment_reminder_sms_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SendVirtualAppointmentReminderSmsPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "phoneNumbers" => lambda {|n| @phone_numbers = n.get_collection_of_primitive_values(String) },
                                "remindBeforeTimeInMinutesType" => lambda {|n| @remind_before_time_in_minutes_type = n.get_enum_value(MicrosoftGraphBeta::Models::RemindBeforeTimeInMinutesType) },
                            }
                        end
                        ## 
                        ## Gets the phoneNumbers property value. The phoneNumbers property
                        ## @return a string
                        ## 
                        def phone_numbers
                            return @phone_numbers
                        end
                        ## 
                        ## Sets the phoneNumbers property value. The phoneNumbers property
                        ## @param value Value to set for the phoneNumbers property.
                        ## @return a void
                        ## 
                        def phone_numbers=(value)
                            @phone_numbers = value
                        end
                        ## 
                        ## Gets the remindBeforeTimeInMinutesType property value. The remindBeforeTimeInMinutesType property
                        ## @return a remind_before_time_in_minutes_type
                        ## 
                        def remind_before_time_in_minutes_type
                            return @remind_before_time_in_minutes_type
                        end
                        ## 
                        ## Sets the remindBeforeTimeInMinutesType property value. The remindBeforeTimeInMinutesType property
                        ## @param value Value to set for the remindBeforeTimeInMinutesType property.
                        ## @return a void
                        ## 
                        def remind_before_time_in_minutes_type=(value)
                            @remind_before_time_in_minutes_type = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_primitive_values("phoneNumbers", @phone_numbers)
                            writer.write_enum_value("remindBeforeTimeInMinutesType", @remind_before_time_in_minutes_type)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
