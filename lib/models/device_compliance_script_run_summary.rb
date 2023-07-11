require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for the run summary of a device management script.
        class DeviceComplianceScriptRunSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of devices on which the detection script execution encountered an error and did not complete. Valid values -2147483648 to 2147483647
            @detection_script_error_device_count
            ## 
            # Number of devices which have not yet run the latest version of the device compliance script. Valid values -2147483648 to 2147483647
            @detection_script_pending_device_count
            ## 
            # Number of devices for which the detection script found an issue. Valid values -2147483648 to 2147483647
            @issue_detected_device_count
            ## 
            # Last run time for the script across all devices
            @last_script_run_date_time
            ## 
            # Number of devices for which the detection script did not find an issue and the device is healthy. Valid values -2147483648 to 2147483647
            @no_issue_detected_device_count
            ## 
            ## Instantiates a new deviceComplianceScriptRunSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_script_run_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceComplianceScriptRunSummary.new
            end
            ## 
            ## Gets the detectionScriptErrorDeviceCount property value. Number of devices on which the detection script execution encountered an error and did not complete. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def detection_script_error_device_count
                return @detection_script_error_device_count
            end
            ## 
            ## Sets the detectionScriptErrorDeviceCount property value. Number of devices on which the detection script execution encountered an error and did not complete. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the detection_script_error_device_count property.
            ## @return a void
            ## 
            def detection_script_error_device_count=(value)
                @detection_script_error_device_count = value
            end
            ## 
            ## Gets the detectionScriptPendingDeviceCount property value. Number of devices which have not yet run the latest version of the device compliance script. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def detection_script_pending_device_count
                return @detection_script_pending_device_count
            end
            ## 
            ## Sets the detectionScriptPendingDeviceCount property value. Number of devices which have not yet run the latest version of the device compliance script. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the detection_script_pending_device_count property.
            ## @return a void
            ## 
            def detection_script_pending_device_count=(value)
                @detection_script_pending_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "detectionScriptErrorDeviceCount" => lambda {|n| @detection_script_error_device_count = n.get_number_value() },
                    "detectionScriptPendingDeviceCount" => lambda {|n| @detection_script_pending_device_count = n.get_number_value() },
                    "issueDetectedDeviceCount" => lambda {|n| @issue_detected_device_count = n.get_number_value() },
                    "lastScriptRunDateTime" => lambda {|n| @last_script_run_date_time = n.get_date_time_value() },
                    "noIssueDetectedDeviceCount" => lambda {|n| @no_issue_detected_device_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the issueDetectedDeviceCount property value. Number of devices for which the detection script found an issue. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def issue_detected_device_count
                return @issue_detected_device_count
            end
            ## 
            ## Sets the issueDetectedDeviceCount property value. Number of devices for which the detection script found an issue. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the issue_detected_device_count property.
            ## @return a void
            ## 
            def issue_detected_device_count=(value)
                @issue_detected_device_count = value
            end
            ## 
            ## Gets the lastScriptRunDateTime property value. Last run time for the script across all devices
            ## @return a date_time
            ## 
            def last_script_run_date_time
                return @last_script_run_date_time
            end
            ## 
            ## Sets the lastScriptRunDateTime property value. Last run time for the script across all devices
            ## @param value Value to set for the last_script_run_date_time property.
            ## @return a void
            ## 
            def last_script_run_date_time=(value)
                @last_script_run_date_time = value
            end
            ## 
            ## Gets the noIssueDetectedDeviceCount property value. Number of devices for which the detection script did not find an issue and the device is healthy. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def no_issue_detected_device_count
                return @no_issue_detected_device_count
            end
            ## 
            ## Sets the noIssueDetectedDeviceCount property value. Number of devices for which the detection script did not find an issue and the device is healthy. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the no_issue_detected_device_count property.
            ## @return a void
            ## 
            def no_issue_detected_device_count=(value)
                @no_issue_detected_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("detectionScriptErrorDeviceCount", @detection_script_error_device_count)
                writer.write_number_value("detectionScriptPendingDeviceCount", @detection_script_pending_device_count)
                writer.write_number_value("issueDetectedDeviceCount", @issue_detected_device_count)
                writer.write_date_time_value("lastScriptRunDateTime", @last_script_run_date_time)
                writer.write_number_value("noIssueDetectedDeviceCount", @no_issue_detected_device_count)
            end
        end
    end
end
