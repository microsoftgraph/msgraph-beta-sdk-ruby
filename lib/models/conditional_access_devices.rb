require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ConditionalAccessDevices
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Filter that defines the dynamic-device-syntax rule to include/exclude devices. A filter can use device properties (such as extension attributes) to include/exclude them. Cannot be set if includeDevices or excludeDevices is set.
            @device_filter
            ## 
            # The excludeDeviceStates property
            @exclude_device_states
            ## 
            # States excluded from the scope of the policy. Possible values: Compliant, DomainJoined. Cannot be set if deviceFIlter is set.
            @exclude_devices
            ## 
            # The includeDeviceStates property
            @include_device_states
            ## 
            # States in the scope of the policy. All is the only allowed value. Cannot be set if deviceFilter is set.
            @include_devices
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new ConditionalAccessDevices and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_devices
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessDevices.new
            end
            ## 
            ## Gets the deviceFilter property value. Filter that defines the dynamic-device-syntax rule to include/exclude devices. A filter can use device properties (such as extension attributes) to include/exclude them. Cannot be set if includeDevices or excludeDevices is set.
            ## @return a conditional_access_filter
            ## 
            def device_filter
                return @device_filter
            end
            ## 
            ## Sets the deviceFilter property value. Filter that defines the dynamic-device-syntax rule to include/exclude devices. A filter can use device properties (such as extension attributes) to include/exclude them. Cannot be set if includeDevices or excludeDevices is set.
            ## @param value Value to set for the deviceFilter property.
            ## @return a void
            ## 
            def device_filter=(value)
                @device_filter = value
            end
            ## 
            ## Gets the excludeDeviceStates property value. The excludeDeviceStates property
            ## @return a string
            ## 
            def exclude_device_states
                return @exclude_device_states
            end
            ## 
            ## Sets the excludeDeviceStates property value. The excludeDeviceStates property
            ## @param value Value to set for the excludeDeviceStates property.
            ## @return a void
            ## 
            def exclude_device_states=(value)
                @exclude_device_states = value
            end
            ## 
            ## Gets the excludeDevices property value. States excluded from the scope of the policy. Possible values: Compliant, DomainJoined. Cannot be set if deviceFIlter is set.
            ## @return a string
            ## 
            def exclude_devices
                return @exclude_devices
            end
            ## 
            ## Sets the excludeDevices property value. States excluded from the scope of the policy. Possible values: Compliant, DomainJoined. Cannot be set if deviceFIlter is set.
            ## @param value Value to set for the excludeDevices property.
            ## @return a void
            ## 
            def exclude_devices=(value)
                @exclude_devices = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceFilter" => lambda {|n| @device_filter = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessFilter.create_from_discriminator_value(pn) }) },
                    "excludeDeviceStates" => lambda {|n| @exclude_device_states = n.get_collection_of_primitive_values(String) },
                    "excludeDevices" => lambda {|n| @exclude_devices = n.get_collection_of_primitive_values(String) },
                    "includeDeviceStates" => lambda {|n| @include_device_states = n.get_collection_of_primitive_values(String) },
                    "includeDevices" => lambda {|n| @include_devices = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the includeDeviceStates property value. The includeDeviceStates property
            ## @return a string
            ## 
            def include_device_states
                return @include_device_states
            end
            ## 
            ## Sets the includeDeviceStates property value. The includeDeviceStates property
            ## @param value Value to set for the includeDeviceStates property.
            ## @return a void
            ## 
            def include_device_states=(value)
                @include_device_states = value
            end
            ## 
            ## Gets the includeDevices property value. States in the scope of the policy. All is the only allowed value. Cannot be set if deviceFilter is set.
            ## @return a string
            ## 
            def include_devices
                return @include_devices
            end
            ## 
            ## Sets the includeDevices property value. States in the scope of the policy. All is the only allowed value. Cannot be set if deviceFilter is set.
            ## @param value Value to set for the includeDevices property.
            ## @return a void
            ## 
            def include_devices=(value)
                @include_devices = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("deviceFilter", @device_filter)
                writer.write_collection_of_primitive_values("excludeDeviceStates", @exclude_device_states)
                writer.write_collection_of_primitive_values("excludeDevices", @exclude_devices)
                writer.write_collection_of_primitive_values("includeDeviceStates", @include_device_states)
                writer.write_collection_of_primitive_values("includeDevices", @include_devices)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
