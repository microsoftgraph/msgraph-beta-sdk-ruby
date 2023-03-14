require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RestrictedAppsViolation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Device configuration profile unique identifier, must be Guid
            @device_configuration_id
            ## 
            # Device configuration profile name
            @device_configuration_name
            ## 
            # Device name
            @device_name
            ## 
            # Managed device unique identifier, must be Guid
            @managed_device_id
            ## 
            # Supported platform types for policies.
            @platform_type
            ## 
            # List of violated restricted apps
            @restricted_apps
            ## 
            # Restricted apps state
            @restricted_apps_state
            ## 
            # User unique identifier, must be Guid
            @user_id
            ## 
            # User name
            @user_name
            ## 
            ## Instantiates a new RestrictedAppsViolation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a restricted_apps_violation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RestrictedAppsViolation.new
            end
            ## 
            ## Gets the deviceConfigurationId property value. Device configuration profile unique identifier, must be Guid
            ## @return a string
            ## 
            def device_configuration_id
                return @device_configuration_id
            end
            ## 
            ## Sets the deviceConfigurationId property value. Device configuration profile unique identifier, must be Guid
            ## @param value Value to set for the device_configuration_id property.
            ## @return a void
            ## 
            def device_configuration_id=(value)
                @device_configuration_id = value
            end
            ## 
            ## Gets the deviceConfigurationName property value. Device configuration profile name
            ## @return a string
            ## 
            def device_configuration_name
                return @device_configuration_name
            end
            ## 
            ## Sets the deviceConfigurationName property value. Device configuration profile name
            ## @param value Value to set for the device_configuration_name property.
            ## @return a void
            ## 
            def device_configuration_name=(value)
                @device_configuration_name = value
            end
            ## 
            ## Gets the deviceName property value. Device name
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Device name
            ## @param value Value to set for the device_name property.
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
                    "deviceConfigurationId" => lambda {|n| @device_configuration_id = n.get_string_value() },
                    "deviceConfigurationName" => lambda {|n| @device_configuration_name = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "platformType" => lambda {|n| @platform_type = n.get_enum_value(MicrosoftGraphBeta::Models::PolicyPlatformType) },
                    "restrictedApps" => lambda {|n| @restricted_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceReportedApp.create_from_discriminator_value(pn) }) },
                    "restrictedAppsState" => lambda {|n| @restricted_apps_state = n.get_enum_value(MicrosoftGraphBeta::Models::RestrictedAppsState) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the managedDeviceId property value. Managed device unique identifier, must be Guid
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. Managed device unique identifier, must be Guid
            ## @param value Value to set for the managed_device_id property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the platformType property value. Supported platform types for policies.
            ## @return a policy_platform_type
            ## 
            def platform_type
                return @platform_type
            end
            ## 
            ## Sets the platformType property value. Supported platform types for policies.
            ## @param value Value to set for the platform_type property.
            ## @return a void
            ## 
            def platform_type=(value)
                @platform_type = value
            end
            ## 
            ## Gets the restrictedApps property value. List of violated restricted apps
            ## @return a managed_device_reported_app
            ## 
            def restricted_apps
                return @restricted_apps
            end
            ## 
            ## Sets the restrictedApps property value. List of violated restricted apps
            ## @param value Value to set for the restricted_apps property.
            ## @return a void
            ## 
            def restricted_apps=(value)
                @restricted_apps = value
            end
            ## 
            ## Gets the restrictedAppsState property value. Restricted apps state
            ## @return a restricted_apps_state
            ## 
            def restricted_apps_state
                return @restricted_apps_state
            end
            ## 
            ## Sets the restrictedAppsState property value. Restricted apps state
            ## @param value Value to set for the restricted_apps_state property.
            ## @return a void
            ## 
            def restricted_apps_state=(value)
                @restricted_apps_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("deviceConfigurationId", @device_configuration_id)
                writer.write_string_value("deviceConfigurationName", @device_configuration_name)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_enum_value("platformType", @platform_type)
                writer.write_collection_of_object_values("restrictedApps", @restricted_apps)
                writer.write_enum_value("restrictedAppsState", @restricted_apps_state)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userName", @user_name)
            end
            ## 
            ## Gets the userId property value. User unique identifier, must be Guid
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. User unique identifier, must be Guid
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userName property value. User name
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. User name
            ## @param value Value to set for the user_name property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end
