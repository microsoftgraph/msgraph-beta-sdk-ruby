require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics Device without Cloud Identity.
    class UserExperienceAnalyticsDeviceWithoutCloudIdentity < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Azure Active Directory Device Id
        @azure_ad_device_id
        ## 
        # The tenant attach device's name.
        @device_name
        ## 
        ## Gets the azureAdDeviceId property value. Azure Active Directory Device Id
        ## @return a string
        ## 
        def azure_ad_device_id
            return @azure_ad_device_id
        end
        ## 
        ## Sets the azureAdDeviceId property value. Azure Active Directory Device Id
        ## @param value Value to set for the azure_ad_device_id property.
        ## @return a void
        ## 
        def azure_ad_device_id=(value)
            @azure_ad_device_id = value
        end
        ## 
        ## Instantiates a new userExperienceAnalyticsDeviceWithoutCloudIdentity and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_device_without_cloud_identity
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsDeviceWithoutCloudIdentity.new
        end
        ## 
        ## Gets the deviceName property value. The tenant attach device's name.
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. The tenant attach device's name.
        ## @param value Value to set for the device_name property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "azureAdDeviceId" => lambda {|n| @azure_ad_device_id = n.get_string_value() },
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
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
            writer.write_string_value("azureAdDeviceId", @azure_ad_device_id)
            writer.write_string_value("deviceName", @device_name)
        end
    end
end
