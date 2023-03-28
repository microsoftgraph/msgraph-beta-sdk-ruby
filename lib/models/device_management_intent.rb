require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that represents an intent to apply settings to a device
        class DeviceManagementIntent < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of assignments
            @assignments
            ## 
            # Collection of setting categories within the intent
            @categories
            ## 
            # The user given description
            @description
            ## 
            # Collection of settings and their states and counts of devices that belong to corresponding state for all settings within the intent
            @device_setting_state_summaries
            ## 
            # A summary of device states and counts of devices that belong to corresponding state for all devices that the intent is applied to
            @device_state_summary
            ## 
            # Collection of states of all devices that the intent is applied to
            @device_states
            ## 
            # The user given display name
            @display_name
            ## 
            # Signifies whether or not the intent is assigned to users
            @is_assigned
            ## 
            # When the intent was last modified
            @last_modified_date_time
            ## 
            # List of Scope Tags for this Entity instance.
            @role_scope_tag_ids
            ## 
            # Collection of all settings to be applied
            @settings
            ## 
            # The ID of the template this intent was created from (if any)
            @template_id
            ## 
            # A summary of user states and counts of users that belong to corresponding state for all users that the intent is applied to
            @user_state_summary
            ## 
            # Collection of states of all users that the intent is applied to
            @user_states
            ## 
            ## Gets the assignments property value. Collection of assignments
            ## @return a device_management_intent_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Collection of assignments
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the categories property value. Collection of setting categories within the intent
            ## @return a device_management_intent_setting_category
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. Collection of setting categories within the intent
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Instantiates a new deviceManagementIntent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_intent
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementIntent.new
            end
            ## 
            ## Gets the description property value. The user given description
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The user given description
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceSettingStateSummaries property value. Collection of settings and their states and counts of devices that belong to corresponding state for all settings within the intent
            ## @return a device_management_intent_device_setting_state_summary
            ## 
            def device_setting_state_summaries
                return @device_setting_state_summaries
            end
            ## 
            ## Sets the deviceSettingStateSummaries property value. Collection of settings and their states and counts of devices that belong to corresponding state for all settings within the intent
            ## @param value Value to set for the device_setting_state_summaries property.
            ## @return a void
            ## 
            def device_setting_state_summaries=(value)
                @device_setting_state_summaries = value
            end
            ## 
            ## Gets the deviceStateSummary property value. A summary of device states and counts of devices that belong to corresponding state for all devices that the intent is applied to
            ## @return a device_management_intent_device_state_summary
            ## 
            def device_state_summary
                return @device_state_summary
            end
            ## 
            ## Sets the deviceStateSummary property value. A summary of device states and counts of devices that belong to corresponding state for all devices that the intent is applied to
            ## @param value Value to set for the device_state_summary property.
            ## @return a void
            ## 
            def device_state_summary=(value)
                @device_state_summary = value
            end
            ## 
            ## Gets the deviceStates property value. Collection of states of all devices that the intent is applied to
            ## @return a device_management_intent_device_state
            ## 
            def device_states
                return @device_states
            end
            ## 
            ## Sets the deviceStates property value. Collection of states of all devices that the intent is applied to
            ## @param value Value to set for the device_states property.
            ## @return a void
            ## 
            def device_states=(value)
                @device_states = value
            end
            ## 
            ## Gets the displayName property value. The user given display name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The user given display name
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
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntentAssignment.create_from_discriminator_value(pn) }) },
                    "categories" => lambda {|n| @categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntentSettingCategory.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceSettingStateSummaries" => lambda {|n| @device_setting_state_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntentDeviceSettingStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceStateSummary" => lambda {|n| @device_state_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntentDeviceStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceStates" => lambda {|n| @device_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntentDeviceState.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "settings" => lambda {|n| @settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingInstance.create_from_discriminator_value(pn) }) },
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
                    "userStateSummary" => lambda {|n| @user_state_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntentUserStateSummary.create_from_discriminator_value(pn) }) },
                    "userStates" => lambda {|n| @user_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntentUserState.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isAssigned property value. Signifies whether or not the intent is assigned to users
            ## @return a boolean
            ## 
            def is_assigned
                return @is_assigned
            end
            ## 
            ## Sets the isAssigned property value. Signifies whether or not the intent is assigned to users
            ## @param value Value to set for the is_assigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. When the intent was last modified
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. When the intent was last modified
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
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
                writer.write_collection_of_object_values("categories", @categories)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("deviceSettingStateSummaries", @device_setting_state_summaries)
                writer.write_object_value("deviceStateSummary", @device_state_summary)
                writer.write_collection_of_object_values("deviceStates", @device_states)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isAssigned", @is_assigned)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_collection_of_object_values("settings", @settings)
                writer.write_string_value("templateId", @template_id)
                writer.write_object_value("userStateSummary", @user_state_summary)
                writer.write_collection_of_object_values("userStates", @user_states)
            end
            ## 
            ## Gets the settings property value. Collection of all settings to be applied
            ## @return a device_management_setting_instance
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Collection of all settings to be applied
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the templateId property value. The ID of the template this intent was created from (if any)
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. The ID of the template this intent was created from (if any)
            ## @param value Value to set for the template_id property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
            ## 
            ## Gets the userStateSummary property value. A summary of user states and counts of users that belong to corresponding state for all users that the intent is applied to
            ## @return a device_management_intent_user_state_summary
            ## 
            def user_state_summary
                return @user_state_summary
            end
            ## 
            ## Sets the userStateSummary property value. A summary of user states and counts of users that belong to corresponding state for all users that the intent is applied to
            ## @param value Value to set for the user_state_summary property.
            ## @return a void
            ## 
            def user_state_summary=(value)
                @user_state_summary = value
            end
            ## 
            ## Gets the userStates property value. Collection of states of all users that the intent is applied to
            ## @return a device_management_intent_user_state
            ## 
            def user_states
                return @user_states
            end
            ## 
            ## Sets the userStates property value. Collection of states of all users that the intent is applied to
            ## @param value Value to set for the user_states property.
            ## @return a void
            ## 
            def user_states=(value)
                @user_states = value
            end
        end
    end
end
