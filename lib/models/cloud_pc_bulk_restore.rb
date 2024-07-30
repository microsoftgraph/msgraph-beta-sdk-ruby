require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcBulkRestore < MicrosoftGraphBeta::Models::CloudPcBulkAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time point for the selected Cloud PCs to restore. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @restore_point_date_time
            ## 
            # The timeRange property
            @time_range
            ## 
            ## Instantiates a new CloudPcBulkRestore and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudPcBulkRestore"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_bulk_restore
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcBulkRestore.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "restorePointDateTime" => lambda {|n| @restore_point_date_time = n.get_date_time_value() },
                    "timeRange" => lambda {|n| @time_range = n.get_enum_value(MicrosoftGraphBeta::Models::RestoreTimeRange) },
                })
            end
            ## 
            ## Gets the restorePointDateTime property value. The date and time point for the selected Cloud PCs to restore. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def restore_point_date_time
                return @restore_point_date_time
            end
            ## 
            ## Sets the restorePointDateTime property value. The date and time point for the selected Cloud PCs to restore. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the restorePointDateTime property.
            ## @return a void
            ## 
            def restore_point_date_time=(value)
                @restore_point_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("restorePointDateTime", @restore_point_date_time)
                writer.write_enum_value("timeRange", @time_range)
            end
            ## 
            ## Gets the timeRange property value. The timeRange property
            ## @return a restore_time_range
            ## 
            def time_range
                return @time_range
            end
            ## 
            ## Sets the timeRange property value. The timeRange property
            ## @param value Value to set for the timeRange property.
            ## @return a void
            ## 
            def time_range=(value)
                @time_range = value
            end
        end
    end
end
