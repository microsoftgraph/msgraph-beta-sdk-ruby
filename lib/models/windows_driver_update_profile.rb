require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows Driver Update Profile
        class WindowsDriverUpdateProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An enum type to represent approval type of a driver update profile.
            @approval_type
            ## 
            # The list of group assignments of the profile.
            @assignments
            ## 
            # The date time that the profile was created.
            @created_date_time
            ## 
            # Deployment deferral settings in days, only applicable when ApprovalType is set to automatic approval.
            @deployment_deferral_in_days
            ## 
            # The description of the profile which is specified by the user.
            @description
            ## 
            # Number of devices reporting for this profile
            @device_reporting
            ## 
            # The display name for the profile.
            @display_name
            ## 
            # Driver inventories for this profile.
            @driver_inventories
            ## 
            # Driver inventory sync status for this profile.
            @inventory_sync_status
            ## 
            # The date time that the profile was last modified.
            @last_modified_date_time
            ## 
            # Number of new driver updates available for this profile.
            @new_updates
            ## 
            # List of Scope Tags for this Driver Update entity.
            @role_scope_tag_ids
            ## 
            ## Gets the approvalType property value. An enum type to represent approval type of a driver update profile.
            ## @return a driver_update_profile_approval_type
            ## 
            def approval_type
                return @approval_type
            end
            ## 
            ## Sets the approvalType property value. An enum type to represent approval type of a driver update profile.
            ## @param value Value to set for the approvalType property.
            ## @return a void
            ## 
            def approval_type=(value)
                @approval_type = value
            end
            ## 
            ## Gets the assignments property value. The list of group assignments of the profile.
            ## @return a windows_driver_update_profile_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of group assignments of the profile.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new windowsDriverUpdateProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date time that the profile was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date time that the profile was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_driver_update_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDriverUpdateProfile.new
            end
            ## 
            ## Gets the deploymentDeferralInDays property value. Deployment deferral settings in days, only applicable when ApprovalType is set to automatic approval.
            ## @return a integer
            ## 
            def deployment_deferral_in_days
                return @deployment_deferral_in_days
            end
            ## 
            ## Sets the deploymentDeferralInDays property value. Deployment deferral settings in days, only applicable when ApprovalType is set to automatic approval.
            ## @param value Value to set for the deploymentDeferralInDays property.
            ## @return a void
            ## 
            def deployment_deferral_in_days=(value)
                @deployment_deferral_in_days = value
            end
            ## 
            ## Gets the description property value. The description of the profile which is specified by the user.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the profile which is specified by the user.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceReporting property value. Number of devices reporting for this profile
            ## @return a integer
            ## 
            def device_reporting
                return @device_reporting
            end
            ## 
            ## Sets the deviceReporting property value. Number of devices reporting for this profile
            ## @param value Value to set for the deviceReporting property.
            ## @return a void
            ## 
            def device_reporting=(value)
                @device_reporting = value
            end
            ## 
            ## Gets the displayName property value. The display name for the profile.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the profile.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the driverInventories property value. Driver inventories for this profile.
            ## @return a windows_driver_update_inventory
            ## 
            def driver_inventories
                return @driver_inventories
            end
            ## 
            ## Sets the driverInventories property value. Driver inventories for this profile.
            ## @param value Value to set for the driverInventories property.
            ## @return a void
            ## 
            def driver_inventories=(value)
                @driver_inventories = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approvalType" => lambda {|n| @approval_type = n.get_enum_value(MicrosoftGraphBeta::Models::DriverUpdateProfileApprovalType) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDriverUpdateProfileAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deploymentDeferralInDays" => lambda {|n| @deployment_deferral_in_days = n.get_number_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceReporting" => lambda {|n| @device_reporting = n.get_number_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "driverInventories" => lambda {|n| @driver_inventories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDriverUpdateInventory.create_from_discriminator_value(pn) }) },
                    "inventorySyncStatus" => lambda {|n| @inventory_sync_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDriverUpdateProfileInventorySyncStatus.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "newUpdates" => lambda {|n| @new_updates = n.get_number_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the inventorySyncStatus property value. Driver inventory sync status for this profile.
            ## @return a windows_driver_update_profile_inventory_sync_status
            ## 
            def inventory_sync_status
                return @inventory_sync_status
            end
            ## 
            ## Sets the inventorySyncStatus property value. Driver inventory sync status for this profile.
            ## @param value Value to set for the inventorySyncStatus property.
            ## @return a void
            ## 
            def inventory_sync_status=(value)
                @inventory_sync_status = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date time that the profile was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date time that the profile was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the newUpdates property value. Number of new driver updates available for this profile.
            ## @return a integer
            ## 
            def new_updates
                return @new_updates
            end
            ## 
            ## Sets the newUpdates property value. Number of new driver updates available for this profile.
            ## @param value Value to set for the newUpdates property.
            ## @return a void
            ## 
            def new_updates=(value)
                @new_updates = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for this Driver Update entity.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for this Driver Update entity.
            ## @param value Value to set for the roleScopeTagIds property.
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
                writer.write_enum_value("approvalType", @approval_type)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_number_value("deploymentDeferralInDays", @deployment_deferral_in_days)
                writer.write_string_value("description", @description)
                writer.write_number_value("deviceReporting", @device_reporting)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("driverInventories", @driver_inventories)
                writer.write_object_value("inventorySyncStatus", @inventory_sync_status)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_number_value("newUpdates", @new_updates)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            end
        end
    end
end
