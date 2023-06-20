require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsFeatureUpdateProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of group assignments of the profile.
            @assignments
            ## 
            # The date time that the profile was created.
            @created_date_time
            ## 
            # Friendly display name of the quality update profile deployable content
            @deployable_content_display_name
            ## 
            # The description of the profile which is specified by the user.
            @description
            ## 
            # The display name of the profile.
            @display_name
            ## 
            # The last supported date for a feature update
            @end_of_support_date
            ## 
            # The feature update version that will be deployed to the devices targeted by this profile. The version could be any supported version for example 1709, 1803 or 1809 and so on.
            @feature_update_version
            ## 
            # The date time that the profile was last modified.
            @last_modified_date_time
            ## 
            # List of Scope Tags for this Feature Update entity.
            @role_scope_tag_ids
            ## 
            # The windows update rollout settings, including offer start date time, offer end date time, and days between each set of offers.
            @rollout_settings
            ## 
            ## Gets the assignments property value. The list of group assignments of the profile.
            ## @return a windows_feature_update_profile_assignment
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
            ## Instantiates a new WindowsFeatureUpdateProfile and sets the default values.
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
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_feature_update_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsFeatureUpdateProfile.new
            end
            ## 
            ## Gets the deployableContentDisplayName property value. Friendly display name of the quality update profile deployable content
            ## @return a string
            ## 
            def deployable_content_display_name
                return @deployable_content_display_name
            end
            ## 
            ## Sets the deployableContentDisplayName property value. Friendly display name of the quality update profile deployable content
            ## @param value Value to set for the deployable_content_display_name property.
            ## @return a void
            ## 
            def deployable_content_display_name=(value)
                @deployable_content_display_name = value
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
            ## Gets the displayName property value. The display name of the profile.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the profile.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endOfSupportDate property value. The last supported date for a feature update
            ## @return a date_time
            ## 
            def end_of_support_date
                return @end_of_support_date
            end
            ## 
            ## Sets the endOfSupportDate property value. The last supported date for a feature update
            ## @param value Value to set for the end_of_support_date property.
            ## @return a void
            ## 
            def end_of_support_date=(value)
                @end_of_support_date = value
            end
            ## 
            ## Gets the featureUpdateVersion property value. The feature update version that will be deployed to the devices targeted by this profile. The version could be any supported version for example 1709, 1803 or 1809 and so on.
            ## @return a string
            ## 
            def feature_update_version
                return @feature_update_version
            end
            ## 
            ## Sets the featureUpdateVersion property value. The feature update version that will be deployed to the devices targeted by this profile. The version could be any supported version for example 1709, 1803 or 1809 and so on.
            ## @param value Value to set for the feature_update_version property.
            ## @return a void
            ## 
            def feature_update_version=(value)
                @feature_update_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsFeatureUpdateProfileAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deployableContentDisplayName" => lambda {|n| @deployable_content_display_name = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endOfSupportDate" => lambda {|n| @end_of_support_date = n.get_date_time_value() },
                    "featureUpdateVersion" => lambda {|n| @feature_update_version = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "rolloutSettings" => lambda {|n| @rollout_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdateRolloutSettings.create_from_discriminator_value(pn) }) },
                })
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
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for this Feature Update entity.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for this Feature Update entity.
            ## @param value Value to set for the role_scope_tag_ids property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Gets the rolloutSettings property value. The windows update rollout settings, including offer start date time, offer end date time, and days between each set of offers.
            ## @return a windows_update_rollout_settings
            ## 
            def rollout_settings
                return @rollout_settings
            end
            ## 
            ## Sets the rolloutSettings property value. The windows update rollout settings, including offer start date time, offer end date time, and days between each set of offers.
            ## @param value Value to set for the rollout_settings property.
            ## @return a void
            ## 
            def rollout_settings=(value)
                @rollout_settings = value
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
                writer.write_string_value("deployableContentDisplayName", @deployable_content_display_name)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("endOfSupportDate", @end_of_support_date)
                writer.write_string_value("featureUpdateVersion", @feature_update_version)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_object_value("rolloutSettings", @rollout_settings)
            end
        end
    end
end
