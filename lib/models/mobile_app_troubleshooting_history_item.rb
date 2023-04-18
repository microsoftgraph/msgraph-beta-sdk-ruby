require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # History Item contained in the Mobile App Troubleshooting Event.
        class MobileAppTroubleshootingHistoryItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Time when the history item occurred.
            @occurrence_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Object containing detailed information about the error and its remediation.
            @troubleshooting_error_details
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
            ## Instantiates a new mobileAppTroubleshootingHistoryItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_troubleshooting_history_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.mobileAppTroubleshootingAppPolicyCreationHistory"
                            return MobileAppTroubleshootingAppPolicyCreationHistory.new
                        when "#microsoft.graph.mobileAppTroubleshootingAppStateHistory"
                            return MobileAppTroubleshootingAppStateHistory.new
                        when "#microsoft.graph.mobileAppTroubleshootingAppTargetHistory"
                            return MobileAppTroubleshootingAppTargetHistory.new
                        when "#microsoft.graph.mobileAppTroubleshootingAppUpdateHistory"
                            return MobileAppTroubleshootingAppUpdateHistory.new
                        when "#microsoft.graph.mobileAppTroubleshootingDeviceCheckinHistory"
                            return MobileAppTroubleshootingDeviceCheckinHistory.new
                    end
                end
                return MobileAppTroubleshootingHistoryItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "occurrenceDateTime" => lambda {|n| @occurrence_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "troubleshootingErrorDetails" => lambda {|n| @troubleshooting_error_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTroubleshootingErrorDetails.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the occurrenceDateTime property value. Time when the history item occurred.
            ## @return a date_time
            ## 
            def occurrence_date_time
                return @occurrence_date_time
            end
            ## 
            ## Sets the occurrenceDateTime property value. Time when the history item occurred.
            ## @param value Value to set for the occurrence_date_time property.
            ## @return a void
            ## 
            def occurrence_date_time=(value)
                @occurrence_date_time = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_date_time_value("occurrenceDateTime", @occurrence_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("troubleshootingErrorDetails", @troubleshooting_error_details)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the troubleshootingErrorDetails property value. Object containing detailed information about the error and its remediation.
            ## @return a device_management_troubleshooting_error_details
            ## 
            def troubleshooting_error_details
                return @troubleshooting_error_details
            end
            ## 
            ## Sets the troubleshootingErrorDetails property value. Object containing detailed information about the error and its remediation.
            ## @param value Value to set for the troubleshooting_error_details property.
            ## @return a void
            ## 
            def troubleshooting_error_details=(value)
                @troubleshooting_error_details = value
            end
        end
    end
end
