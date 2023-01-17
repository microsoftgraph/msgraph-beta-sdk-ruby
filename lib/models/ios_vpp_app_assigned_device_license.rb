require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class IosVppAppAssignedDeviceLicense < MicrosoftGraphBeta::Models::IosVppAppAssignedLicense
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The device name.
        @device_name
        ## 
        # The managed device ID.
        @managed_device_id
        ## 
        ## Instantiates a new IosVppAppAssignedDeviceLicense and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ios_vpp_app_assigned_device_license
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosVppAppAssignedDeviceLicense.new
        end
        ## 
        ## Gets the deviceName property value. The device name.
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. The device name.
        ## @param value Value to set for the deviceName property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the managedDeviceId property value. The managed device ID.
        ## @return a string
        ## 
        def managed_device_id
            return @managed_device_id
        end
        ## 
        ## Sets the managedDeviceId property value. The managed device ID.
        ## @param value Value to set for the managedDeviceId property.
        ## @return a void
        ## 
        def managed_device_id=(value)
            @managed_device_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("deviceName", @device_name)
            writer.write_string_value("managedDeviceId", @managed_device_id)
        end
    end
end
