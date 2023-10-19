require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OpenAwsSecurityGroupFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignedComputeInstancesDetails property
            @assigned_compute_instances_details
            ## 
            # The inboundPorts property
            @inbound_ports
            ## 
            # The securityGroup property
            @security_group
            ## 
            # The totalStorageBucketCount property
            @total_storage_bucket_count
            ## 
            ## Gets the assignedComputeInstancesDetails property value. The assignedComputeInstancesDetails property
            ## @return a assigned_compute_instance_details
            ## 
            def assigned_compute_instances_details
                return @assigned_compute_instances_details
            end
            ## 
            ## Sets the assignedComputeInstancesDetails property value. The assignedComputeInstancesDetails property
            ## @param value Value to set for the assignedComputeInstancesDetails property.
            ## @return a void
            ## 
            def assigned_compute_instances_details=(value)
                @assigned_compute_instances_details = value
            end
            ## 
            ## Instantiates a new openAwsSecurityGroupFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a open_aws_security_group_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OpenAwsSecurityGroupFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedComputeInstancesDetails" => lambda {|n| @assigned_compute_instances_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AssignedComputeInstanceDetails.create_from_discriminator_value(pn) }) },
                    "inboundPorts" => lambda {|n| @inbound_ports = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InboundPorts.create_from_discriminator_value(pn) }) },
                    "securityGroup" => lambda {|n| @security_group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AwsAuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                    "totalStorageBucketCount" => lambda {|n| @total_storage_bucket_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the inboundPorts property value. The inboundPorts property
            ## @return a inbound_ports
            ## 
            def inbound_ports
                return @inbound_ports
            end
            ## 
            ## Sets the inboundPorts property value. The inboundPorts property
            ## @param value Value to set for the inboundPorts property.
            ## @return a void
            ## 
            def inbound_ports=(value)
                @inbound_ports = value
            end
            ## 
            ## Gets the securityGroup property value. The securityGroup property
            ## @return a aws_authorization_system_resource
            ## 
            def security_group
                return @security_group
            end
            ## 
            ## Sets the securityGroup property value. The securityGroup property
            ## @param value Value to set for the securityGroup property.
            ## @return a void
            ## 
            def security_group=(value)
                @security_group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignedComputeInstancesDetails", @assigned_compute_instances_details)
                writer.write_object_value("inboundPorts", @inbound_ports)
                writer.write_object_value("securityGroup", @security_group)
                writer.write_number_value("totalStorageBucketCount", @total_storage_bucket_count)
            end
            ## 
            ## Gets the totalStorageBucketCount property value. The totalStorageBucketCount property
            ## @return a integer
            ## 
            def total_storage_bucket_count
                return @total_storage_bucket_count
            end
            ## 
            ## Sets the totalStorageBucketCount property value. The totalStorageBucketCount property
            ## @param value Value to set for the totalStorageBucketCount property.
            ## @return a void
            ## 
            def total_storage_bucket_count=(value)
                @total_storage_bucket_count = value
            end
        end
    end
end
