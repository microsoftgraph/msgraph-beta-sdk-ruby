require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AssignedComputeInstanceDetails < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessedStorageBuckets property
            @accessed_storage_buckets
            ## 
            # The assignedComputeInstance property
            @assigned_compute_instance
            ## 
            ## Gets the accessedStorageBuckets property value. The accessedStorageBuckets property
            ## @return a authorization_system_resource
            ## 
            def accessed_storage_buckets
                return @accessed_storage_buckets
            end
            ## 
            ## Sets the accessedStorageBuckets property value. The accessedStorageBuckets property
            ## @param value Value to set for the accessedStorageBuckets property.
            ## @return a void
            ## 
            def accessed_storage_buckets=(value)
                @accessed_storage_buckets = value
            end
            ## 
            ## Gets the assignedComputeInstance property value. The assignedComputeInstance property
            ## @return a authorization_system_resource
            ## 
            def assigned_compute_instance
                return @assigned_compute_instance
            end
            ## 
            ## Sets the assignedComputeInstance property value. The assignedComputeInstance property
            ## @param value Value to set for the assignedComputeInstance property.
            ## @return a void
            ## 
            def assigned_compute_instance=(value)
                @assigned_compute_instance = value
            end
            ## 
            ## Instantiates a new assignedComputeInstanceDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a assigned_compute_instance_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AssignedComputeInstanceDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessedStorageBuckets" => lambda {|n| @accessed_storage_buckets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                    "assignedComputeInstance" => lambda {|n| @assigned_compute_instance = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("accessedStorageBuckets", @accessed_storage_buckets)
                writer.write_object_value("assignedComputeInstance", @assigned_compute_instance)
            end
        end
    end
end
