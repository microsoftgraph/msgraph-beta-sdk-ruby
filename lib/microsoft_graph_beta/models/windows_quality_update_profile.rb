require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Windows Quality Update Profile
    class WindowsQualityUpdateProfile < MicrosoftGraphBeta::Models::Entity
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
        # The display name for the profile.
        @display_name
        ## 
        # Expedited update settings.
        @expedited_update_settings
        ## 
        # The date time that the profile was last modified.
        @last_modified_date_time
        ## 
        # Friendly release date to display for a Quality Update release
        @release_date_display_name
        ## 
        # List of Scope Tags for this Quality Update entity.
        @role_scope_tag_ids
        ## 
        ## Gets the assignments property value. The list of group assignments of the profile.
        ## @return a windows_quality_update_profile_assignment
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
        ## Instantiates a new windowsQualityUpdateProfile and sets the default values.
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
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_quality_update_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsQualityUpdateProfile.new
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
        ## @param value Value to set for the deployableContentDisplayName property.
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
        ## Gets the expeditedUpdateSettings property value. Expedited update settings.
        ## @return a expedited_windows_quality_update_settings
        ## 
        def expedited_update_settings
            return @expedited_update_settings
        end
        ## 
        ## Sets the expeditedUpdateSettings property value. Expedited update settings.
        ## @param value Value to set for the expeditedUpdateSettings property.
        ## @return a void
        ## 
        def expedited_update_settings=(value)
            @expedited_update_settings = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsQualityUpdateProfileAssignment.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "deployableContentDisplayName" => lambda {|n| @deployable_content_display_name = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "expeditedUpdateSettings" => lambda {|n| @expedited_update_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ExpeditedWindowsQualityUpdateSettings.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "releaseDateDisplayName" => lambda {|n| @release_date_display_name = n.get_string_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
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
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the releaseDateDisplayName property value. Friendly release date to display for a Quality Update release
        ## @return a string
        ## 
        def release_date_display_name
            return @release_date_display_name
        end
        ## 
        ## Sets the releaseDateDisplayName property value. Friendly release date to display for a Quality Update release
        ## @param value Value to set for the releaseDateDisplayName property.
        ## @return a void
        ## 
        def release_date_display_name=(value)
            @release_date_display_name = value
        end
        ## 
        ## Gets the roleScopeTagIds property value. List of Scope Tags for this Quality Update entity.
        ## @return a string
        ## 
        def role_scope_tag_ids
            return @role_scope_tag_ids
        end
        ## 
        ## Sets the roleScopeTagIds property value. List of Scope Tags for this Quality Update entity.
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
            writer.write_collection_of_object_values("assignments", @assignments)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("deployableContentDisplayName", @deployable_content_display_name)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_object_value("expeditedUpdateSettings", @expedited_update_settings)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("releaseDateDisplayName", @release_date_display_name)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
        end
    end
end
