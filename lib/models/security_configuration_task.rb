require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A security configuration task.
        class SecurityConfigurationTask < MicrosoftGraphBeta::Models::DeviceAppManagementTask
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The endpoint security configuration applicable platform.
            @applicable_platform
            ## 
            # The endpoint security policy type.
            @endpoint_security_policy
            ## 
            # The endpoint security policy profile type.
            @endpoint_security_policy_profile
            ## 
            # Information about the mitigation.
            @insights
            ## 
            # The intended settings and their values.
            @intended_settings
            ## 
            # The number of vulnerable devices. Valid values 0 to 65536
            @managed_device_count
            ## 
            # The vulnerable managed devices.
            @managed_devices
            ## 
            ## Gets the applicablePlatform property value. The endpoint security configuration applicable platform.
            ## @return a endpoint_security_configuration_applicable_platform
            ## 
            def applicable_platform
                return @applicable_platform
            end
            ## 
            ## Sets the applicablePlatform property value. The endpoint security configuration applicable platform.
            ## @param value Value to set for the applicablePlatform property.
            ## @return a void
            ## 
            def applicable_platform=(value)
                @applicable_platform = value
            end
            ## 
            ## Instantiates a new SecurityConfigurationTask and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.securityConfigurationTask"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_configuration_task
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityConfigurationTask.new
            end
            ## 
            ## Gets the endpointSecurityPolicy property value. The endpoint security policy type.
            ## @return a endpoint_security_configuration_type
            ## 
            def endpoint_security_policy
                return @endpoint_security_policy
            end
            ## 
            ## Sets the endpointSecurityPolicy property value. The endpoint security policy type.
            ## @param value Value to set for the endpointSecurityPolicy property.
            ## @return a void
            ## 
            def endpoint_security_policy=(value)
                @endpoint_security_policy = value
            end
            ## 
            ## Gets the endpointSecurityPolicyProfile property value. The endpoint security policy profile type.
            ## @return a endpoint_security_configuration_profile_type
            ## 
            def endpoint_security_policy_profile
                return @endpoint_security_policy_profile
            end
            ## 
            ## Sets the endpointSecurityPolicyProfile property value. The endpoint security policy profile type.
            ## @param value Value to set for the endpointSecurityPolicyProfile property.
            ## @return a void
            ## 
            def endpoint_security_policy_profile=(value)
                @endpoint_security_policy_profile = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicablePlatform" => lambda {|n| @applicable_platform = n.get_enum_value(MicrosoftGraphBeta::Models::EndpointSecurityConfigurationApplicablePlatform) },
                    "endpointSecurityPolicy" => lambda {|n| @endpoint_security_policy = n.get_enum_value(MicrosoftGraphBeta::Models::EndpointSecurityConfigurationType) },
                    "endpointSecurityPolicyProfile" => lambda {|n| @endpoint_security_policy_profile = n.get_enum_value(MicrosoftGraphBeta::Models::EndpointSecurityConfigurationProfileType) },
                    "insights" => lambda {|n| @insights = n.get_string_value() },
                    "intendedSettings" => lambda {|n| @intended_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "managedDeviceCount" => lambda {|n| @managed_device_count = n.get_number_value() },
                    "managedDevices" => lambda {|n| @managed_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VulnerableManagedDevice.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the insights property value. Information about the mitigation.
            ## @return a string
            ## 
            def insights
                return @insights
            end
            ## 
            ## Sets the insights property value. Information about the mitigation.
            ## @param value Value to set for the insights property.
            ## @return a void
            ## 
            def insights=(value)
                @insights = value
            end
            ## 
            ## Gets the intendedSettings property value. The intended settings and their values.
            ## @return a key_value_pair
            ## 
            def intended_settings
                return @intended_settings
            end
            ## 
            ## Sets the intendedSettings property value. The intended settings and their values.
            ## @param value Value to set for the intendedSettings property.
            ## @return a void
            ## 
            def intended_settings=(value)
                @intended_settings = value
            end
            ## 
            ## Gets the managedDeviceCount property value. The number of vulnerable devices. Valid values 0 to 65536
            ## @return a integer
            ## 
            def managed_device_count
                return @managed_device_count
            end
            ## 
            ## Sets the managedDeviceCount property value. The number of vulnerable devices. Valid values 0 to 65536
            ## @param value Value to set for the managedDeviceCount property.
            ## @return a void
            ## 
            def managed_device_count=(value)
                @managed_device_count = value
            end
            ## 
            ## Gets the managedDevices property value. The vulnerable managed devices.
            ## @return a vulnerable_managed_device
            ## 
            def managed_devices
                return @managed_devices
            end
            ## 
            ## Sets the managedDevices property value. The vulnerable managed devices.
            ## @param value Value to set for the managedDevices property.
            ## @return a void
            ## 
            def managed_devices=(value)
                @managed_devices = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("applicablePlatform", @applicable_platform)
                writer.write_enum_value("endpointSecurityPolicy", @endpoint_security_policy)
                writer.write_enum_value("endpointSecurityPolicyProfile", @endpoint_security_policy_profile)
                writer.write_string_value("insights", @insights)
                writer.write_collection_of_object_values("intendedSettings", @intended_settings)
                writer.write_number_value("managedDeviceCount", @managed_device_count)
                writer.write_collection_of_object_values("managedDevices", @managed_devices)
            end
        end
    end
end
