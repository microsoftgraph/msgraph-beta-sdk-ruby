require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceRegistrationPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the authorization policy for controlling registration of new devices using Azure AD Join within your organization. Required. For more information, see What is a device identity?.
            @azure_a_d_join
            ## 
            # Specifies the authorization policy for controlling registration of new devices using Azure AD registered within your organization. Required. For more information, see What is a device identity?.
            @azure_a_d_registration
            ## 
            # The description of the device registration policy. It is always set to Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks. Read-only.
            @description
            ## 
            # The name of the device registration policy. It is always set to Device Registration Policy. Read-only.
            @display_name
            ## 
            # Specifies the setting for Local Admin Password Solution (LAPS) within your organization.
            @local_admin_password
            ## 
            # The multiFactorAuthConfiguration property
            @multi_factor_auth_configuration
            ## 
            # Specifies the maximum number of devices that a user can have within your organization before blocking new device registrations. The default value is set to 50. If this property is not specified during the policy update operation, it is automatically reset to 0 to indicate that users are not allowed to join any devices.
            @user_device_quota
            ## 
            ## Gets the azureADJoin property value. Specifies the authorization policy for controlling registration of new devices using Azure AD Join within your organization. Required. For more information, see What is a device identity?.
            ## @return a azure_ad_join_policy
            ## 
            def azure_a_d_join
                return @azure_a_d_join
            end
            ## 
            ## Sets the azureADJoin property value. Specifies the authorization policy for controlling registration of new devices using Azure AD Join within your organization. Required. For more information, see What is a device identity?.
            ## @param value Value to set for the azure_a_d_join property.
            ## @return a void
            ## 
            def azure_a_d_join=(value)
                @azure_a_d_join = value
            end
            ## 
            ## Gets the azureADRegistration property value. Specifies the authorization policy for controlling registration of new devices using Azure AD registered within your organization. Required. For more information, see What is a device identity?.
            ## @return a azure_a_d_registration_policy
            ## 
            def azure_a_d_registration
                return @azure_a_d_registration
            end
            ## 
            ## Sets the azureADRegistration property value. Specifies the authorization policy for controlling registration of new devices using Azure AD registered within your organization. Required. For more information, see What is a device identity?.
            ## @param value Value to set for the azure_a_d_registration property.
            ## @return a void
            ## 
            def azure_a_d_registration=(value)
                @azure_a_d_registration = value
            end
            ## 
            ## Instantiates a new deviceRegistrationPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_registration_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceRegistrationPolicy.new
            end
            ## 
            ## Gets the description property value. The description of the device registration policy. It is always set to Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the device registration policy. It is always set to Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the device registration policy. It is always set to Device Registration Policy. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the device registration policy. It is always set to Device Registration Policy. Read-only.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "azureADJoin" => lambda {|n| @azure_a_d_join = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AzureAdJoinPolicy.create_from_discriminator_value(pn) }) },
                    "azureADRegistration" => lambda {|n| @azure_a_d_registration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AzureADRegistrationPolicy.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "localAdminPassword" => lambda {|n| @local_admin_password = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LocalAdminPasswordSettings.create_from_discriminator_value(pn) }) },
                    "multiFactorAuthConfiguration" => lambda {|n| @multi_factor_auth_configuration = n.get_enum_value(MicrosoftGraphBeta::Models::MultiFactorAuthConfiguration) },
                    "userDeviceQuota" => lambda {|n| @user_device_quota = n.get_number_value() },
                })
            end
            ## 
            ## Gets the localAdminPassword property value. Specifies the setting for Local Admin Password Solution (LAPS) within your organization.
            ## @return a local_admin_password_settings
            ## 
            def local_admin_password
                return @local_admin_password
            end
            ## 
            ## Sets the localAdminPassword property value. Specifies the setting for Local Admin Password Solution (LAPS) within your organization.
            ## @param value Value to set for the local_admin_password property.
            ## @return a void
            ## 
            def local_admin_password=(value)
                @local_admin_password = value
            end
            ## 
            ## Gets the multiFactorAuthConfiguration property value. The multiFactorAuthConfiguration property
            ## @return a multi_factor_auth_configuration
            ## 
            def multi_factor_auth_configuration
                return @multi_factor_auth_configuration
            end
            ## 
            ## Sets the multiFactorAuthConfiguration property value. The multiFactorAuthConfiguration property
            ## @param value Value to set for the multi_factor_auth_configuration property.
            ## @return a void
            ## 
            def multi_factor_auth_configuration=(value)
                @multi_factor_auth_configuration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("azureADJoin", @azure_a_d_join)
                writer.write_object_value("azureADRegistration", @azure_a_d_registration)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("localAdminPassword", @local_admin_password)
                writer.write_enum_value("multiFactorAuthConfiguration", @multi_factor_auth_configuration)
                writer.write_number_value("userDeviceQuota", @user_device_quota)
            end
            ## 
            ## Gets the userDeviceQuota property value. Specifies the maximum number of devices that a user can have within your organization before blocking new device registrations. The default value is set to 50. If this property is not specified during the policy update operation, it is automatically reset to 0 to indicate that users are not allowed to join any devices.
            ## @return a integer
            ## 
            def user_device_quota
                return @user_device_quota
            end
            ## 
            ## Sets the userDeviceQuota property value. Specifies the maximum number of devices that a user can have within your organization before blocking new device registrations. The default value is set to 50. If this property is not specified during the policy update operation, it is automatically reset to 0 to indicate that users are not allowed to join any devices.
            ## @param value Value to set for the user_device_quota property.
            ## @return a void
            ## 
            def user_device_quota=(value)
                @user_device_quota = value
            end
        end
    end
end
