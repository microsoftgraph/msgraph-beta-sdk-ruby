require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/scheduled_retire_state'
require_relative '../../device_management'
require_relative '../device_compliance_policies'
require_relative './set_scheduled_retire_state'

module MicrosoftGraphBeta
    module DeviceManagement
        module DeviceCompliancePolicies
            module SetScheduledRetireState
                class SetScheduledRetireStatePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The managedDeviceIds property
                    @managed_device_ids
                    ## 
                    # The scopedToAllDevices property
                    @scoped_to_all_devices
                    ## 
                    # Cancel or confirm scheduled retire 
                    @state
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
                    ## Instantiates a new setScheduledRetireStatePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a set_scheduled_retire_state_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return SetScheduledRetireStatePostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "managedDeviceIds" => lambda {|n| @managed_device_ids = n.get_collection_of_primitive_values(String) },
                            "scopedToAllDevices" => lambda {|n| @scoped_to_all_devices = n.get_boolean_value() },
                            "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::ScheduledRetireState) },
                        }
                    end
                    ## 
                    ## Gets the managedDeviceIds property value. The managedDeviceIds property
                    ## @return a string
                    ## 
                    def managed_device_ids
                        return @managed_device_ids
                    end
                    ## 
                    ## Sets the managedDeviceIds property value. The managedDeviceIds property
                    ## @param value Value to set for the managed_device_ids property.
                    ## @return a void
                    ## 
                    def managed_device_ids=(value)
                        @managed_device_ids = value
                    end
                    ## 
                    ## Gets the scopedToAllDevices property value. The scopedToAllDevices property
                    ## @return a boolean
                    ## 
                    def scoped_to_all_devices
                        return @scoped_to_all_devices
                    end
                    ## 
                    ## Sets the scopedToAllDevices property value. The scopedToAllDevices property
                    ## @param value Value to set for the scoped_to_all_devices property.
                    ## @return a void
                    ## 
                    def scoped_to_all_devices=(value)
                        @scoped_to_all_devices = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_primitive_values("managedDeviceIds", @managed_device_ids)
                        writer.write_boolean_value("scopedToAllDevices", @scoped_to_all_devices)
                        writer.write_enum_value("state", @state)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the state property value. Cancel or confirm scheduled retire 
                    ## @return a scheduled_retire_state
                    ## 
                    def state
                        return @state
                    end
                    ## 
                    ## Sets the state property value. Cancel or confirm scheduled retire 
                    ## @param value Value to set for the state property.
                    ## @return a void
                    ## 
                    def state=(value)
                        @state = value
                    end
                end
            end
        end
    end
end
