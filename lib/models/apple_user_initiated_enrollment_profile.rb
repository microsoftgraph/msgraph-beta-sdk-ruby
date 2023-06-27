require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The enrollmentProfile resource represents a collection of configurations which must be provided pre-enrollment to enable enrolling certain devices whose identities have been pre-staged. Pre-staged device identities are assigned to this type of profile to apply the profile's configurations at enrollment of the corresponding device.
        class AppleUserInitiatedEnrollmentProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of assignments for this profile.
            @assignments
            ## 
            # List of available enrollment type options
            @available_enrollment_type_options
            ## 
            # Profile creation time
            @created_date_time
            ## 
            # The defaultEnrollmentType property
            @default_enrollment_type
            ## 
            # Description of the profile
            @description
            ## 
            # Name of the profile
            @display_name
            ## 
            # Profile last modified time
            @last_modified_date_time
            ## 
            # Supported platform types.
            @platform
            ## 
            # Priority, 0 is highest
            @priority
            ## 
            ## Gets the assignments property value. The list of assignments for this profile.
            ## @return a apple_enrollment_profile_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of assignments for this profile.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the availableEnrollmentTypeOptions property value. List of available enrollment type options
            ## @return a apple_owner_type_enrollment_type
            ## 
            def available_enrollment_type_options
                return @available_enrollment_type_options
            end
            ## 
            ## Sets the availableEnrollmentTypeOptions property value. List of available enrollment type options
            ## @param value Value to set for the available_enrollment_type_options property.
            ## @return a void
            ## 
            def available_enrollment_type_options=(value)
                @available_enrollment_type_options = value
            end
            ## 
            ## Instantiates a new appleUserInitiatedEnrollmentProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Profile creation time
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Profile creation time
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a apple_user_initiated_enrollment_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppleUserInitiatedEnrollmentProfile.new
            end
            ## 
            ## Gets the defaultEnrollmentType property value. The defaultEnrollmentType property
            ## @return a apple_user_initiated_enrollment_type
            ## 
            def default_enrollment_type
                return @default_enrollment_type
            end
            ## 
            ## Sets the defaultEnrollmentType property value. The defaultEnrollmentType property
            ## @param value Value to set for the default_enrollment_type property.
            ## @return a void
            ## 
            def default_enrollment_type=(value)
                @default_enrollment_type = value
            end
            ## 
            ## Gets the description property value. Description of the profile
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the profile
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Name of the profile
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the profile
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
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppleEnrollmentProfileAssignment.create_from_discriminator_value(pn) }) },
                    "availableEnrollmentTypeOptions" => lambda {|n| @available_enrollment_type_options = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppleOwnerTypeEnrollmentType.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "defaultEnrollmentType" => lambda {|n| @default_enrollment_type = n.get_enum_value(MicrosoftGraphBeta::Models::AppleUserInitiatedEnrollmentType) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraphBeta::Models::DevicePlatformType) },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Profile last modified time
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Profile last modified time
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the platform property value. Supported platform types.
            ## @return a device_platform_type
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. Supported platform types.
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Gets the priority property value. Priority, 0 is highest
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Priority, 0 is highest
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
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
                writer.write_collection_of_object_values("availableEnrollmentTypeOptions", @available_enrollment_type_options)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("defaultEnrollmentType", @default_enrollment_type)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("platform", @platform)
                writer.write_number_value("priority", @priority)
            end
        end
    end
end
