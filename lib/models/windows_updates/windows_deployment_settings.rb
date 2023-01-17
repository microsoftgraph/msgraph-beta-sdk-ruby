require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class WindowsDeploymentSettings < MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentSettings
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Settings governing the user's update experience on a device.
        @user_experience
        ## 
        ## Instantiates a new WindowsDeploymentSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.windowsDeploymentSettings"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_deployment_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsDeploymentSettings.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "userExperience" => lambda {|n| @user_experience = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UserExperienceSettings.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("userExperience", @user_experience)
        end
        ## 
        ## Gets the userExperience property value. Settings governing the user's update experience on a device.
        ## @return a user_experience_settings
        ## 
        def user_experience
            return @user_experience
        end
        ## 
        ## Sets the userExperience property value. Settings governing the user's update experience on a device.
        ## @param value Value to set for the userExperience property.
        ## @return a void
        ## 
        def user_experience=(value)
            @user_experience = value
        end
    end
end
