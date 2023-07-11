require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This task derived type represents a list of unmanaged devices discovered in the network.
        class UnmanagedDeviceDiscoveryTask < MicrosoftGraphBeta::Models::DeviceAppManagementTask
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Unmanaged devices discovered in the network.
            @unmanaged_devices
            ## 
            ## Instantiates a new unmanagedDeviceDiscoveryTask and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.unmanagedDeviceDiscoveryTask"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unmanaged_device_discovery_task
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnmanagedDeviceDiscoveryTask.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "unmanagedDevices" => lambda {|n| @unmanaged_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnmanagedDevice.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("unmanagedDevices", @unmanaged_devices)
            end
            ## 
            ## Gets the unmanagedDevices property value. Unmanaged devices discovered in the network.
            ## @return a unmanaged_device
            ## 
            def unmanaged_devices
                return @unmanaged_devices
            end
            ## 
            ## Sets the unmanagedDevices property value. Unmanaged devices discovered in the network.
            ## @param value Value to set for the unmanaged_devices property.
            ## @return a void
            ## 
            def unmanaged_devices=(value)
                @unmanaged_devices = value
            end
        end
    end
end
