require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualMachineWithAwsStorageBucketAccessFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The total number of storage buckets that the EC2 instance can access using the role.
            @accessible_count
            ## 
            # The total number of storage buckets in the authorization system that hosts the EC2 instance.
            @bucket_count
            ## 
            # The ec2Instance property
            @ec2_instance
            ## 
            # The permissionsCreepIndex property
            @permissions_creep_index
            ## 
            # The role property
            @role
            ## 
            ## Gets the accessibleCount property value. The total number of storage buckets that the EC2 instance can access using the role.
            ## @return a integer
            ## 
            def accessible_count
                return @accessible_count
            end
            ## 
            ## Sets the accessibleCount property value. The total number of storage buckets that the EC2 instance can access using the role.
            ## @param value Value to set for the accessibleCount property.
            ## @return a void
            ## 
            def accessible_count=(value)
                @accessible_count = value
            end
            ## 
            ## Gets the bucketCount property value. The total number of storage buckets in the authorization system that hosts the EC2 instance.
            ## @return a integer
            ## 
            def bucket_count
                return @bucket_count
            end
            ## 
            ## Sets the bucketCount property value. The total number of storage buckets in the authorization system that hosts the EC2 instance.
            ## @param value Value to set for the bucketCount property.
            ## @return a void
            ## 
            def bucket_count=(value)
                @bucket_count = value
            end
            ## 
            ## Instantiates a new VirtualMachineWithAwsStorageBucketAccessFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_machine_with_aws_storage_bucket_access_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualMachineWithAwsStorageBucketAccessFinding.new
            end
            ## 
            ## Gets the ec2Instance property value. The ec2Instance property
            ## @return a authorization_system_resource
            ## 
            def ec2_instance
                return @ec2_instance
            end
            ## 
            ## Sets the ec2Instance property value. The ec2Instance property
            ## @param value Value to set for the ec2Instance property.
            ## @return a void
            ## 
            def ec2_instance=(value)
                @ec2_instance = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessibleCount" => lambda {|n| @accessible_count = n.get_number_value() },
                    "bucketCount" => lambda {|n| @bucket_count = n.get_number_value() },
                    "ec2Instance" => lambda {|n| @ec2_instance = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                    "permissionsCreepIndex" => lambda {|n| @permissions_creep_index = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsCreepIndex.create_from_discriminator_value(pn) }) },
                    "role" => lambda {|n| @role = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AwsRole.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @return a permissions_creep_index
            ## 
            def permissions_creep_index
                return @permissions_creep_index
            end
            ## 
            ## Sets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @param value Value to set for the permissionsCreepIndex property.
            ## @return a void
            ## 
            def permissions_creep_index=(value)
                @permissions_creep_index = value
            end
            ## 
            ## Gets the role property value. The role property
            ## @return a aws_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The role property
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("accessibleCount", @accessible_count)
                writer.write_number_value("bucketCount", @bucket_count)
                writer.write_object_value("ec2Instance", @ec2_instance)
                writer.write_object_value("permissionsCreepIndex", @permissions_creep_index)
                writer.write_object_value("role", @role)
            end
        end
    end
end
