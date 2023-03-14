require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcRemoteActionResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The specified action. Supported values in the Microsoft Endpoint Manager portal are: Reprovision, Resize, Restore. Supported values in enterprise Cloud PC devices are: Reboot, Rename, Reprovision, Troubleshoot.
            @action_name
            ## 
            # State of the action. Possible values are: None, pending, canceled, active, done, failed, notSupported. Read-only.
            @action_state
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The ID of the Cloud PC device on which the remote action is performed. Read-only.
            @cloud_pc_id
            ## 
            # Last update time for action. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.
            @last_updated_date_time
            ## 
            # The ID of the Intune managed device on which the remote action is performed. Read-only.
            @managed_device_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Time the action was initiated. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.
            @start_date_time
            ## 
            # The details of the Cloud PC status.
            @status_details
            ## 
            ## Gets the actionName property value. The specified action. Supported values in the Microsoft Endpoint Manager portal are: Reprovision, Resize, Restore. Supported values in enterprise Cloud PC devices are: Reboot, Rename, Reprovision, Troubleshoot.
            ## @return a string
            ## 
            def action_name
                return @action_name
            end
            ## 
            ## Sets the actionName property value. The specified action. Supported values in the Microsoft Endpoint Manager portal are: Reprovision, Resize, Restore. Supported values in enterprise Cloud PC devices are: Reboot, Rename, Reprovision, Troubleshoot.
            ## @param value Value to set for the action_name property.
            ## @return a void
            ## 
            def action_name=(value)
                @action_name = value
            end
            ## 
            ## Gets the actionState property value. State of the action. Possible values are: None, pending, canceled, active, done, failed, notSupported. Read-only.
            ## @return a action_state
            ## 
            def action_state
                return @action_state
            end
            ## 
            ## Sets the actionState property value. State of the action. Possible values are: None, pending, canceled, active, done, failed, notSupported. Read-only.
            ## @param value Value to set for the action_state property.
            ## @return a void
            ## 
            def action_state=(value)
                @action_state = value
            end
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
            ## Gets the cloudPcId property value. The ID of the Cloud PC device on which the remote action is performed. Read-only.
            ## @return a string
            ## 
            def cloud_pc_id
                return @cloud_pc_id
            end
            ## 
            ## Sets the cloudPcId property value. The ID of the Cloud PC device on which the remote action is performed. Read-only.
            ## @param value Value to set for the cloud_pc_id property.
            ## @return a void
            ## 
            def cloud_pc_id=(value)
                @cloud_pc_id = value
            end
            ## 
            ## Instantiates a new cloudPcRemoteActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_remote_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcRemoteActionResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actionName" => lambda {|n| @action_name = n.get_string_value() },
                    "actionState" => lambda {|n| @action_state = n.get_enum_value(MicrosoftGraphBeta::Models::ActionState) },
                    "cloudPcId" => lambda {|n| @cloud_pc_id = n.get_string_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "statusDetails" => lambda {|n| @status_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcStatusDetails.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. Last update time for action. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. Last update time for action. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.
            ## @param value Value to set for the last_updated_date_time property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the managedDeviceId property value. The ID of the Intune managed device on which the remote action is performed. Read-only.
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. The ID of the Intune managed device on which the remote action is performed. Read-only.
            ## @param value Value to set for the managed_device_id property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
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
                writer.write_string_value("actionName", @action_name)
                writer.write_enum_value("actionState", @action_state)
                writer.write_string_value("cloudPcId", @cloud_pc_id)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_object_value("statusDetails", @status_details)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startDateTime property value. Time the action was initiated. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Time the action was initiated. The Timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the statusDetails property value. The details of the Cloud PC status.
            ## @return a cloud_pc_status_details
            ## 
            def status_details
                return @status_details
            end
            ## 
            ## Sets the statusDetails property value. The details of the Cloud PC status.
            ## @param value Value to set for the status_details property.
            ## @return a void
            ## 
            def status_details=(value)
                @status_details = value
            end
        end
    end
end
