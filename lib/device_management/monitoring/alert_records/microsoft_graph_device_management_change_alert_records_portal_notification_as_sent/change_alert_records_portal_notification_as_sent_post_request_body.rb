require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../monitoring'
require_relative '../alert_records'
require_relative './microsoft_graph_device_management_change_alert_records_portal_notification_as_sent'

module MicrosoftGraphBeta
    module DeviceManagement
        module Monitoring
            module AlertRecords
                module MicrosoftGraphDeviceManagementChangeAlertRecordsPortalNotificationAsSent
                    class ChangeAlertRecordsPortalNotificationAsSentPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The alertRecordIds property
                        @alert_record_ids
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
                        ## Gets the alertRecordIds property value. The alertRecordIds property
                        ## @return a string
                        ## 
                        def alert_record_ids
                            return @alert_record_ids
                        end
                        ## 
                        ## Sets the alertRecordIds property value. The alertRecordIds property
                        ## @param value Value to set for the alertRecordIds property.
                        ## @return a void
                        ## 
                        def alert_record_ids=(value)
                            @alert_record_ids = value
                        end
                        ## 
                        ## Instantiates a new ChangeAlertRecordsPortalNotificationAsSentPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a change_alert_records_portal_notification_as_sent_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ChangeAlertRecordsPortalNotificationAsSentPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "alertRecordIds" => lambda {|n| @alert_record_ids = n.get_collection_of_primitive_values(String) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_primitive_values("alertRecordIds", @alert_record_ids)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
