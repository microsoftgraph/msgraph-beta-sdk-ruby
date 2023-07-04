require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcSnapshot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier for the Cloud PC.
            @cloud_pc_id
            ## 
            # The date and time at which the snapshot was taken. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The date and time when the snapshot expires. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @expiration_date_time
            ## 
            # The date and time at which the snapshot was last used to restore the Cloud PC device. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_restored_date_time
            ## 
            # The type of snapshot that indicates how to create the snapshot. Possible values are automatic, manual. Default value is automatic.
            @snapshot_type
            ## 
            # The status of the Cloud PC snapshot. The possible values are: ready, unknownFutureValue.
            @status
            ## 
            ## Gets the cloudPcId property value. The unique identifier for the Cloud PC.
            ## @return a string
            ## 
            def cloud_pc_id
                return @cloud_pc_id
            end
            ## 
            ## Sets the cloudPcId property value. The unique identifier for the Cloud PC.
            ## @param value Value to set for the cloud_pc_id property.
            ## @return a void
            ## 
            def cloud_pc_id=(value)
                @cloud_pc_id = value
            end
            ## 
            ## Instantiates a new cloudPcSnapshot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time at which the snapshot was taken. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time at which the snapshot was taken. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_snapshot
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcSnapshot.new
            end
            ## 
            ## Gets the expirationDateTime property value. The date and time when the snapshot expires. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The date and time when the snapshot expires. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cloudPcId" => lambda {|n| @cloud_pc_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "lastRestoredDateTime" => lambda {|n| @last_restored_date_time = n.get_date_time_value() },
                    "snapshotType" => lambda {|n| @snapshot_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcSnapshotType) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcSnapshotStatus) },
                })
            end
            ## 
            ## Gets the lastRestoredDateTime property value. The date and time at which the snapshot was last used to restore the Cloud PC device. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_restored_date_time
                return @last_restored_date_time
            end
            ## 
            ## Sets the lastRestoredDateTime property value. The date and time at which the snapshot was last used to restore the Cloud PC device. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the last_restored_date_time property.
            ## @return a void
            ## 
            def last_restored_date_time=(value)
                @last_restored_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("cloudPcId", @cloud_pc_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("lastRestoredDateTime", @last_restored_date_time)
                writer.write_enum_value("snapshotType", @snapshot_type)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the snapshotType property value. The type of snapshot that indicates how to create the snapshot. Possible values are automatic, manual. Default value is automatic.
            ## @return a cloud_pc_snapshot_type
            ## 
            def snapshot_type
                return @snapshot_type
            end
            ## 
            ## Sets the snapshotType property value. The type of snapshot that indicates how to create the snapshot. Possible values are automatic, manual. Default value is automatic.
            ## @param value Value to set for the snapshot_type property.
            ## @return a void
            ## 
            def snapshot_type=(value)
                @snapshot_type = value
            end
            ## 
            ## Gets the status property value. The status of the Cloud PC snapshot. The possible values are: ready, unknownFutureValue.
            ## @return a cloud_pc_snapshot_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the Cloud PC snapshot. The possible values are: ready, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
