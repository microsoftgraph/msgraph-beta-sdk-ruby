require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './restore_cloud_pc'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module Item
                module RestoreCloudPc
                    class RestoreCloudPcPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The cloudPcSnapshotId property
                        @cloud_pc_snapshot_id
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
                        ## Gets the cloudPcSnapshotId property value. The cloudPcSnapshotId property
                        ## @return a string
                        ## 
                        def cloud_pc_snapshot_id
                            return @cloud_pc_snapshot_id
                        end
                        ## 
                        ## Sets the cloudPcSnapshotId property value. The cloudPcSnapshotId property
                        ## @param value Value to set for the cloud_pc_snapshot_id property.
                        ## @return a void
                        ## 
                        def cloud_pc_snapshot_id=(value)
                            @cloud_pc_snapshot_id = value
                        end
                        ## 
                        ## Instantiates a new restoreCloudPcPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a restore_cloud_pc_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RestoreCloudPcPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "cloudPcSnapshotId" => lambda {|n| @cloud_pc_snapshot_id = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("cloudPcSnapshotId", @cloud_pc_snapshot_id)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
