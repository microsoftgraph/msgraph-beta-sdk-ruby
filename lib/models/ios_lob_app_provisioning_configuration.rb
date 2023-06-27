require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This topic provides descriptions of the declared methods, properties and relationships exposed by the iOS Lob App Provisioning Configuration resource.
        class IosLobAppProvisioningConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The associated group assignments for IosLobAppProvisioningConfiguration.
            @assignments
            ## 
            # DateTime the object was created.
            @created_date_time
            ## 
            # Admin provided description of the Device Configuration.
            @description
            ## 
            # The list of device installation states for this mobile app configuration.
            @device_statuses
            ## 
            # Admin provided name of the device configuration.
            @display_name
            ## 
            # Optional profile expiration date and time.
            @expiration_date_time
            ## 
            # The associated group assignments.
            @group_assignments
            ## 
            # DateTime the object was last modified.
            @last_modified_date_time
            ## 
            # Payload. (UTF8 encoded byte array)
            @payload
            ## 
            # Payload file name (.mobileprovision
            @payload_file_name
            ## 
            # List of Scope Tags for this iOS LOB app provisioning configuration entity.
            @role_scope_tag_ids
            ## 
            # The list of user installation states for this mobile app configuration.
            @user_statuses
            ## 
            # Version of the device configuration.
            @version
            ## 
            ## Gets the assignments property value. The associated group assignments for IosLobAppProvisioningConfiguration.
            ## @return a ios_lob_app_provisioning_configuration_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The associated group assignments for IosLobAppProvisioningConfiguration.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new iosLobAppProvisioningConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. DateTime the object was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. DateTime the object was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_lob_app_provisioning_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosLobAppProvisioningConfiguration.new
            end
            ## 
            ## Gets the description property value. Admin provided description of the Device Configuration.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Admin provided description of the Device Configuration.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceStatuses property value. The list of device installation states for this mobile app configuration.
            ## @return a managed_device_mobile_app_configuration_device_status
            ## 
            def device_statuses
                return @device_statuses
            end
            ## 
            ## Sets the deviceStatuses property value. The list of device installation states for this mobile app configuration.
            ## @param value Value to set for the device_statuses property.
            ## @return a void
            ## 
            def device_statuses=(value)
                @device_statuses = value
            end
            ## 
            ## Gets the displayName property value. Admin provided name of the device configuration.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Admin provided name of the device configuration.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the expirationDateTime property value. Optional profile expiration date and time.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Optional profile expiration date and time.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosLobAppProvisioningConfigurationAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceStatuses" => lambda {|n| @device_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceMobileAppConfigurationDeviceStatus.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "groupAssignments" => lambda {|n| @group_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppProvisioningConfigGroupAssignment.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "payload" => lambda {|n| @payload = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "payloadFileName" => lambda {|n| @payload_file_name = n.get_string_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "userStatuses" => lambda {|n| @user_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceMobileAppConfigurationUserStatus.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the groupAssignments property value. The associated group assignments.
            ## @return a mobile_app_provisioning_config_group_assignment
            ## 
            def group_assignments
                return @group_assignments
            end
            ## 
            ## Sets the groupAssignments property value. The associated group assignments.
            ## @param value Value to set for the group_assignments property.
            ## @return a void
            ## 
            def group_assignments=(value)
                @group_assignments = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. DateTime the object was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. DateTime the object was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the payload property value. Payload. (UTF8 encoded byte array)
            ## @return a base64url
            ## 
            def payload
                return @payload
            end
            ## 
            ## Sets the payload property value. Payload. (UTF8 encoded byte array)
            ## @param value Value to set for the payload property.
            ## @return a void
            ## 
            def payload=(value)
                @payload = value
            end
            ## 
            ## Gets the payloadFileName property value. Payload file name (.mobileprovision
            ## @return a string
            ## 
            def payload_file_name
                return @payload_file_name
            end
            ## 
            ## Sets the payloadFileName property value. Payload file name (.mobileprovision
            ## @param value Value to set for the payload_file_name property.
            ## @return a void
            ## 
            def payload_file_name=(value)
                @payload_file_name = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for this iOS LOB app provisioning configuration entity.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for this iOS LOB app provisioning configuration entity.
            ## @param value Value to set for the role_scope_tag_ids property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("deviceStatuses", @device_statuses)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_collection_of_object_values("groupAssignments", @group_assignments)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("payload", @payload)
                writer.write_string_value("payloadFileName", @payload_file_name)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_collection_of_object_values("userStatuses", @user_statuses)
                writer.write_number_value("version", @version)
            end
            ## 
            ## Gets the userStatuses property value. The list of user installation states for this mobile app configuration.
            ## @return a managed_device_mobile_app_configuration_user_status
            ## 
            def user_statuses
                return @user_statuses
            end
            ## 
            ## Sets the userStatuses property value. The list of user installation states for this mobile app configuration.
            ## @param value Value to set for the user_statuses property.
            ## @return a void
            ## 
            def user_statuses=(value)
                @user_statuses = value
            end
            ## 
            ## Gets the version property value. Version of the device configuration.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the device configuration.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
