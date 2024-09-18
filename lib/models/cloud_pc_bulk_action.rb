require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcBulkAction < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Run summary of this bulk action.
            @action_summary
            ## 
            # The cloudPcIds property
            @cloud_pc_ids
            ## 
            # The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Name of the bulk action.
            @display_name
            ## 
            # Indicates the user principal name (UPN) of the user who initiated this bulk action. Read-only.
            @initiated_by_user_principal_name
            ## 
            # Indicates whether the bulk action is scheduled according to the maintenance window. When true, the bulk action uses the maintenance window to schedule the action; false means that the bulk action doesn't use the maintenance window. The default value is false.
            @scheduled_during_maintenance_window
            ## 
            # Indicates the status of bulk actions. Possible values are pending, succeeded, failed, unknownFutureValue. The default value is pending. Read-only.
            @status
            ## 
            ## Gets the actionSummary property value. Run summary of this bulk action.
            ## @return a cloud_pc_bulk_action_summary
            ## 
            def action_summary
                return @action_summary
            end
            ## 
            ## Sets the actionSummary property value. Run summary of this bulk action.
            ## @param value Value to set for the actionSummary property.
            ## @return a void
            ## 
            def action_summary=(value)
                @action_summary = value
            end
            ## 
            ## Gets the cloudPcIds property value. The cloudPcIds property
            ## @return a string
            ## 
            def cloud_pc_ids
                return @cloud_pc_ids
            end
            ## 
            ## Sets the cloudPcIds property value. The cloudPcIds property
            ## @param value Value to set for the cloudPcIds property.
            ## @return a void
            ## 
            def cloud_pc_ids=(value)
                @cloud_pc_ids = value
            end
            ## 
            ## Instantiates a new CloudPcBulkAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_bulk_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.cloudPcBulkDisasterRecoveryFailback"
                            return CloudPcBulkDisasterRecoveryFailback.new
                        when "#microsoft.graph.cloudPcBulkDisasterRecoveryFailover"
                            return CloudPcBulkDisasterRecoveryFailover.new
                        when "#microsoft.graph.cloudPcBulkModifyDiskEncryptionType"
                            return CloudPcBulkModifyDiskEncryptionType.new
                        when "#microsoft.graph.cloudPcBulkPowerOff"
                            return CloudPcBulkPowerOff.new
                        when "#microsoft.graph.cloudPcBulkPowerOn"
                            return CloudPcBulkPowerOn.new
                        when "#microsoft.graph.cloudPcBulkReprovision"
                            return CloudPcBulkReprovision.new
                        when "#microsoft.graph.cloudPcBulkResize"
                            return CloudPcBulkResize.new
                        when "#microsoft.graph.cloudPcBulkRestart"
                            return CloudPcBulkRestart.new
                        when "#microsoft.graph.cloudPcBulkRestore"
                            return CloudPcBulkRestore.new
                        when "#microsoft.graph.cloudPcBulkTroubleshoot"
                            return CloudPcBulkTroubleshoot.new
                    end
                end
                return CloudPcBulkAction.new
            end
            ## 
            ## Gets the displayName property value. Name of the bulk action.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the bulk action.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionSummary" => lambda {|n| @action_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcBulkActionSummary.create_from_discriminator_value(pn) }) },
                    "cloudPcIds" => lambda {|n| @cloud_pc_ids = n.get_collection_of_primitive_values(String) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "initiatedByUserPrincipalName" => lambda {|n| @initiated_by_user_principal_name = n.get_string_value() },
                    "scheduledDuringMaintenanceWindow" => lambda {|n| @scheduled_during_maintenance_window = n.get_boolean_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcBulkActionStatus) },
                })
            end
            ## 
            ## Gets the initiatedByUserPrincipalName property value. Indicates the user principal name (UPN) of the user who initiated this bulk action. Read-only.
            ## @return a string
            ## 
            def initiated_by_user_principal_name
                return @initiated_by_user_principal_name
            end
            ## 
            ## Sets the initiatedByUserPrincipalName property value. Indicates the user principal name (UPN) of the user who initiated this bulk action. Read-only.
            ## @param value Value to set for the initiatedByUserPrincipalName property.
            ## @return a void
            ## 
            def initiated_by_user_principal_name=(value)
                @initiated_by_user_principal_name = value
            end
            ## 
            ## Gets the scheduledDuringMaintenanceWindow property value. Indicates whether the bulk action is scheduled according to the maintenance window. When true, the bulk action uses the maintenance window to schedule the action; false means that the bulk action doesn't use the maintenance window. The default value is false.
            ## @return a boolean
            ## 
            def scheduled_during_maintenance_window
                return @scheduled_during_maintenance_window
            end
            ## 
            ## Sets the scheduledDuringMaintenanceWindow property value. Indicates whether the bulk action is scheduled according to the maintenance window. When true, the bulk action uses the maintenance window to schedule the action; false means that the bulk action doesn't use the maintenance window. The default value is false.
            ## @param value Value to set for the scheduledDuringMaintenanceWindow property.
            ## @return a void
            ## 
            def scheduled_during_maintenance_window=(value)
                @scheduled_during_maintenance_window = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("actionSummary", @action_summary)
                writer.write_collection_of_primitive_values("cloudPcIds", @cloud_pc_ids)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("initiatedByUserPrincipalName", @initiated_by_user_principal_name)
                writer.write_boolean_value("scheduledDuringMaintenanceWindow", @scheduled_during_maintenance_window)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Indicates the status of bulk actions. Possible values are pending, succeeded, failed, unknownFutureValue. The default value is pending. Read-only.
            ## @return a cloud_pc_bulk_action_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Indicates the status of bulk actions. Possible values are pending, succeeded, failed, unknownFutureValue. The default value is pending. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
