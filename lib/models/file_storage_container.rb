require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class FileStorageContainer < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Sensitivity label assigned to the fileStorageContainer. Read-write.
            @assigned_sensitivity_label
            ## 
            # The set of custom structured metadata supported by the fileStorageContainer. Read-write.
            @columns
            ## 
            # Container type ID of the fileStorageContainer. Each container must have only one container type. Read-only.
            @container_type_id
            ## 
            # Date and time of the fileStorageContainer creation. Read-only.
            @created_date_time
            ## 
            # Custom property collection for the fileStorageContainer. Read-write.
            @custom_properties
            ## 
            # Provides a user-visible description of the fileStorageContainer. Read-write.
            @description
            ## 
            # The display name of the fileStorageContainer. Read-write.
            @display_name
            ## 
            # The drive of the resource fileStorageContainer. Read-only.
            @drive
            ## 
            # The externalGroupId property
            @external_group_id
            ## 
            # Indicates whether versioning is enabled for the fileStorageContainer. The setting is applicable to all items in the fileStorageContainer. Read-Write.
            @is_item_versioning_enabled
            ## 
            # Maximum number of major versions allowed for items in the fileStorageContainer. Read-write.
            @item_major_version_limit
            ## 
            # Indicates the lock state of the fileStorageContainer. The possible values are unlocked and lockedReadOnly. Read-only.
            @lock_state
            ## 
            # List of users who own the fileStorageContainer. Read-only.
            @owners
            ## 
            # Ownership type of the fileStorageContainer.The possible values are: tenantOwned. Read-only.
            @ownership_type
            ## 
            # The set of permissions for users in the fileStorageContainer. The permission for each user is set by the roles property. The possible values are 'reader', 'writer', 'manager', and 'owner'. Read-write.
            @permissions
            ## 
            # Recycle bin of the fileStorageContainer. Read-only.
            @recycle_bin
            ## 
            # Status of the fileStorageContainer. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours. The possible values are: inactive, active. Read-only.
            @status
            ## 
            # Storage used in the fileStorageContainer, in bytes. Read-only.
            @storage_used_in_bytes
            ## 
            # Data specific to the current user. Read-only.
            @viewpoint
            ## 
            ## Gets the assignedSensitivityLabel property value. Sensitivity label assigned to the fileStorageContainer. Read-write.
            ## @return a assigned_label
            ## 
            def assigned_sensitivity_label
                return @assigned_sensitivity_label
            end
            ## 
            ## Sets the assignedSensitivityLabel property value. Sensitivity label assigned to the fileStorageContainer. Read-write.
            ## @param value Value to set for the assignedSensitivityLabel property.
            ## @return a void
            ## 
            def assigned_sensitivity_label=(value)
                @assigned_sensitivity_label = value
            end
            ## 
            ## Gets the columns property value. The set of custom structured metadata supported by the fileStorageContainer. Read-write.
            ## @return a column_definition
            ## 
            def columns
                return @columns
            end
            ## 
            ## Sets the columns property value. The set of custom structured metadata supported by the fileStorageContainer. Read-write.
            ## @param value Value to set for the columns property.
            ## @return a void
            ## 
            def columns=(value)
                @columns = value
            end
            ## 
            ## Instantiates a new FileStorageContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the containerTypeId property value. Container type ID of the fileStorageContainer. Each container must have only one container type. Read-only.
            ## @return a guid
            ## 
            def container_type_id
                return @container_type_id
            end
            ## 
            ## Sets the containerTypeId property value. Container type ID of the fileStorageContainer. Each container must have only one container type. Read-only.
            ## @param value Value to set for the containerTypeId property.
            ## @return a void
            ## 
            def container_type_id=(value)
                @container_type_id = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of the fileStorageContainer creation. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of the fileStorageContainer creation. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a file_storage_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileStorageContainer.new
            end
            ## 
            ## Gets the customProperties property value. Custom property collection for the fileStorageContainer. Read-write.
            ## @return a file_storage_container_custom_property_dictionary
            ## 
            def custom_properties
                return @custom_properties
            end
            ## 
            ## Sets the customProperties property value. Custom property collection for the fileStorageContainer. Read-write.
            ## @param value Value to set for the customProperties property.
            ## @return a void
            ## 
            def custom_properties=(value)
                @custom_properties = value
            end
            ## 
            ## Gets the description property value. Provides a user-visible description of the fileStorageContainer. Read-write.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Provides a user-visible description of the fileStorageContainer. Read-write.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the fileStorageContainer. Read-write.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the fileStorageContainer. Read-write.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the drive property value. The drive of the resource fileStorageContainer. Read-only.
            ## @return a drive
            ## 
            def drive
                return @drive
            end
            ## 
            ## Sets the drive property value. The drive of the resource fileStorageContainer. Read-only.
            ## @param value Value to set for the drive property.
            ## @return a void
            ## 
            def drive=(value)
                @drive = value
            end
            ## 
            ## Gets the externalGroupId property value. The externalGroupId property
            ## @return a guid
            ## 
            def external_group_id
                return @external_group_id
            end
            ## 
            ## Sets the externalGroupId property value. The externalGroupId property
            ## @param value Value to set for the externalGroupId property.
            ## @return a void
            ## 
            def external_group_id=(value)
                @external_group_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedSensitivityLabel" => lambda {|n| @assigned_sensitivity_label = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AssignedLabel.create_from_discriminator_value(pn) }) },
                    "columns" => lambda {|n| @columns = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ColumnDefinition.create_from_discriminator_value(pn) }) },
                    "containerTypeId" => lambda {|n| @container_type_id = n.get_guid_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customProperties" => lambda {|n| @custom_properties = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::FileStorageContainerCustomPropertyDictionary.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "drive" => lambda {|n| @drive = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Drive.create_from_discriminator_value(pn) }) },
                    "externalGroupId" => lambda {|n| @external_group_id = n.get_guid_value() },
                    "isItemVersioningEnabled" => lambda {|n| @is_item_versioning_enabled = n.get_boolean_value() },
                    "itemMajorVersionLimit" => lambda {|n| @item_major_version_limit = n.get_number_value() },
                    "lockState" => lambda {|n| @lock_state = n.get_enum_value(MicrosoftGraphBeta::Models::SiteLockState) },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "ownershipType" => lambda {|n| @ownership_type = n.get_enum_value(MicrosoftGraphBeta::Models::FileStorageContainerOwnershipType) },
                    "permissions" => lambda {|n| @permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Permission.create_from_discriminator_value(pn) }) },
                    "recycleBin" => lambda {|n| @recycle_bin = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RecycleBin.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::FileStorageContainerStatus) },
                    "storageUsedInBytes" => lambda {|n| @storage_used_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "viewpoint" => lambda {|n| @viewpoint = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::FileStorageContainerViewpoint.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isItemVersioningEnabled property value. Indicates whether versioning is enabled for the fileStorageContainer. The setting is applicable to all items in the fileStorageContainer. Read-Write.
            ## @return a boolean
            ## 
            def is_item_versioning_enabled
                return @is_item_versioning_enabled
            end
            ## 
            ## Sets the isItemVersioningEnabled property value. Indicates whether versioning is enabled for the fileStorageContainer. The setting is applicable to all items in the fileStorageContainer. Read-Write.
            ## @param value Value to set for the isItemVersioningEnabled property.
            ## @return a void
            ## 
            def is_item_versioning_enabled=(value)
                @is_item_versioning_enabled = value
            end
            ## 
            ## Gets the itemMajorVersionLimit property value. Maximum number of major versions allowed for items in the fileStorageContainer. Read-write.
            ## @return a integer
            ## 
            def item_major_version_limit
                return @item_major_version_limit
            end
            ## 
            ## Sets the itemMajorVersionLimit property value. Maximum number of major versions allowed for items in the fileStorageContainer. Read-write.
            ## @param value Value to set for the itemMajorVersionLimit property.
            ## @return a void
            ## 
            def item_major_version_limit=(value)
                @item_major_version_limit = value
            end
            ## 
            ## Gets the lockState property value. Indicates the lock state of the fileStorageContainer. The possible values are unlocked and lockedReadOnly. Read-only.
            ## @return a site_lock_state
            ## 
            def lock_state
                return @lock_state
            end
            ## 
            ## Sets the lockState property value. Indicates the lock state of the fileStorageContainer. The possible values are unlocked and lockedReadOnly. Read-only.
            ## @param value Value to set for the lockState property.
            ## @return a void
            ## 
            def lock_state=(value)
                @lock_state = value
            end
            ## 
            ## Gets the owners property value. List of users who own the fileStorageContainer. Read-only.
            ## @return a user_identity
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. List of users who own the fileStorageContainer. Read-only.
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the ownershipType property value. Ownership type of the fileStorageContainer.The possible values are: tenantOwned. Read-only.
            ## @return a file_storage_container_ownership_type
            ## 
            def ownership_type
                return @ownership_type
            end
            ## 
            ## Sets the ownershipType property value. Ownership type of the fileStorageContainer.The possible values are: tenantOwned. Read-only.
            ## @param value Value to set for the ownershipType property.
            ## @return a void
            ## 
            def ownership_type=(value)
                @ownership_type = value
            end
            ## 
            ## Gets the permissions property value. The set of permissions for users in the fileStorageContainer. The permission for each user is set by the roles property. The possible values are 'reader', 'writer', 'manager', and 'owner'. Read-write.
            ## @return a permission
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. The set of permissions for users in the fileStorageContainer. The permission for each user is set by the roles property. The possible values are 'reader', 'writer', 'manager', and 'owner'. Read-write.
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Gets the recycleBin property value. Recycle bin of the fileStorageContainer. Read-only.
            ## @return a recycle_bin
            ## 
            def recycle_bin
                return @recycle_bin
            end
            ## 
            ## Sets the recycleBin property value. Recycle bin of the fileStorageContainer. Read-only.
            ## @param value Value to set for the recycleBin property.
            ## @return a void
            ## 
            def recycle_bin=(value)
                @recycle_bin = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("assignedSensitivityLabel", @assigned_sensitivity_label)
                writer.write_collection_of_object_values("columns", @columns)
                writer.write_guid_value("containerTypeId", @container_type_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("customProperties", @custom_properties)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("drive", @drive)
                writer.write_guid_value("externalGroupId", @external_group_id)
                writer.write_boolean_value("isItemVersioningEnabled", @is_item_versioning_enabled)
                writer.write_number_value("itemMajorVersionLimit", @item_major_version_limit)
                writer.write_enum_value("lockState", @lock_state)
                writer.write_collection_of_object_values("owners", @owners)
                writer.write_enum_value("ownershipType", @ownership_type)
                writer.write_collection_of_object_values("permissions", @permissions)
                writer.write_object_value("recycleBin", @recycle_bin)
                writer.write_enum_value("status", @status)
                writer.write_object_value("storageUsedInBytes", @storage_used_in_bytes)
                writer.write_object_value("viewpoint", @viewpoint)
            end
            ## 
            ## Gets the status property value. Status of the fileStorageContainer. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours. The possible values are: inactive, active. Read-only.
            ## @return a file_storage_container_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the fileStorageContainer. Containers are created as inactive and require activation. Inactive containers are subjected to automatic deletion in 24 hours. The possible values are: inactive, active. Read-only.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the storageUsedInBytes property value. Storage used in the fileStorageContainer, in bytes. Read-only.
            ## @return a int64
            ## 
            def storage_used_in_bytes
                return @storage_used_in_bytes
            end
            ## 
            ## Sets the storageUsedInBytes property value. Storage used in the fileStorageContainer, in bytes. Read-only.
            ## @param value Value to set for the storageUsedInBytes property.
            ## @return a void
            ## 
            def storage_used_in_bytes=(value)
                @storage_used_in_bytes = value
            end
            ## 
            ## Gets the viewpoint property value. Data specific to the current user. Read-only.
            ## @return a file_storage_container_viewpoint
            ## 
            def viewpoint
                return @viewpoint
            end
            ## 
            ## Sets the viewpoint property value. Data specific to the current user. Read-only.
            ## @param value Value to set for the viewpoint property.
            ## @return a void
            ## 
            def viewpoint=(value)
                @viewpoint = value
            end
        end
    end
end
