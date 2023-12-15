require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The number of devices remediated by a device health script on a given date.
        class DeviceHealthScriptRemediationHistoryData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date on which devices were remediated by the device health script.
            @date
            ## 
            # The number of devices for which the detection script found an issue.
            @detect_failed_device_count
            ## 
            # The number of devices that were found to have no issue by the device health script.
            @no_issue_device_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of devices remediated by the device health script.
            @remediated_device_count
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new deviceHealthScriptRemediationHistoryData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_health_script_remediation_history_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceHealthScriptRemediationHistoryData.new
            end
            ## 
            ## Gets the date property value. The date on which devices were remediated by the device health script.
            ## @return a date
            ## 
            def date
                return @date
            end
            ## 
            ## Sets the date property value. The date on which devices were remediated by the device health script.
            ## @param value Value to set for the date property.
            ## @return a void
            ## 
            def date=(value)
                @date = value
            end
            ## 
            ## Gets the detectFailedDeviceCount property value. The number of devices for which the detection script found an issue.
            ## @return a integer
            ## 
            def detect_failed_device_count
                return @detect_failed_device_count
            end
            ## 
            ## Sets the detectFailedDeviceCount property value. The number of devices for which the detection script found an issue.
            ## @param value Value to set for the detectFailedDeviceCount property.
            ## @return a void
            ## 
            def detect_failed_device_count=(value)
                @detect_failed_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "date" => lambda {|n| @date = n.get_date_value() },
                    "detectFailedDeviceCount" => lambda {|n| @detect_failed_device_count = n.get_number_value() },
                    "noIssueDeviceCount" => lambda {|n| @no_issue_device_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "remediatedDeviceCount" => lambda {|n| @remediated_device_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the noIssueDeviceCount property value. The number of devices that were found to have no issue by the device health script.
            ## @return a integer
            ## 
            def no_issue_device_count
                return @no_issue_device_count
            end
            ## 
            ## Sets the noIssueDeviceCount property value. The number of devices that were found to have no issue by the device health script.
            ## @param value Value to set for the noIssueDeviceCount property.
            ## @return a void
            ## 
            def no_issue_device_count=(value)
                @no_issue_device_count = value
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
            ## Gets the remediatedDeviceCount property value. The number of devices remediated by the device health script.
            ## @return a integer
            ## 
            def remediated_device_count
                return @remediated_device_count
            end
            ## 
            ## Sets the remediatedDeviceCount property value. The number of devices remediated by the device health script.
            ## @param value Value to set for the remediatedDeviceCount property.
            ## @return a void
            ## 
            def remediated_device_count=(value)
                @remediated_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_value("date", @date)
                writer.write_number_value("detectFailedDeviceCount", @detect_failed_device_count)
                writer.write_number_value("noIssueDeviceCount", @no_issue_device_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("remediatedDeviceCount", @remediated_device_count)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
