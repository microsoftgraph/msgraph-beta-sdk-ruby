require 'microsoft_kiota_abstractions'
require_relative '../../../../models/windows_assigned_access_profile'
require_relative '../../../device_management'
require_relative '../../device_configurations'
require_relative '../item'
require_relative './assigned_access_multi_mode_profiles'

module MicrosoftGraphBeta::DeviceManagement::DeviceConfigurations::Item::AssignedAccessMultiModeProfiles
    class AssignedAccessMultiModeProfilesPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The assignedAccessMultiModeProfiles property
        @assigned_access_multi_mode_profiles
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the assignedAccessMultiModeProfiles property value. The assignedAccessMultiModeProfiles property
        ## @return a windows_assigned_access_profile
        ## 
        def assigned_access_multi_mode_profiles
            return @assigned_access_multi_mode_profiles
        end
        ## 
        ## Sets the assignedAccessMultiModeProfiles property value. The assignedAccessMultiModeProfiles property
        ## @param value Value to set for the assignedAccessMultiModeProfiles property.
        ## @return a void
        ## 
        def assigned_access_multi_mode_profiles=(value)
            @assigned_access_multi_mode_profiles = value
        end
        ## 
        ## Instantiates a new assignedAccessMultiModeProfilesPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a assigned_access_multi_mode_profiles_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AssignedAccessMultiModeProfilesPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "assignedAccessMultiModeProfiles" => lambda {|n| @assigned_access_multi_mode_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsAssignedAccessProfile.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("assignedAccessMultiModeProfiles", @assigned_access_multi_mode_profiles)
            writer.write_additional_data(@additional_data)
        end
    end
end
