require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # MobileApp Intent and Install State for a given device.
    class MobileAppIntentAndState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Device identifier created or collected by Intune.
        @managed_device_identifier
        ## 
        # The list of payload intents and states for the tenant.
        @mobile_app_list
        ## 
        # Identifier for the user that tried to enroll the device.
        @user_id
        ## 
        ## Instantiates a new mobileAppIntentAndState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mobile_app_intent_and_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MobileAppIntentAndState.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "managedDeviceIdentifier" => lambda {|n| @managed_device_identifier = n.get_string_value() },
                "mobileAppList" => lambda {|n| @mobile_app_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppIntentAndStateDetail.create_from_discriminator_value(pn) }) },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the managedDeviceIdentifier property value. Device identifier created or collected by Intune.
        ## @return a string
        ## 
        def managed_device_identifier
            return @managed_device_identifier
        end
        ## 
        ## Sets the managedDeviceIdentifier property value. Device identifier created or collected by Intune.
        ## @param value Value to set for the managedDeviceIdentifier property.
        ## @return a void
        ## 
        def managed_device_identifier=(value)
            @managed_device_identifier = value
        end
        ## 
        ## Gets the mobileAppList property value. The list of payload intents and states for the tenant.
        ## @return a mobile_app_intent_and_state_detail
        ## 
        def mobile_app_list
            return @mobile_app_list
        end
        ## 
        ## Sets the mobileAppList property value. The list of payload intents and states for the tenant.
        ## @param value Value to set for the mobileAppList property.
        ## @return a void
        ## 
        def mobile_app_list=(value)
            @mobile_app_list = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("managedDeviceIdentifier", @managed_device_identifier)
            writer.write_collection_of_object_values("mobileAppList", @mobile_app_list)
            writer.write_string_value("userId", @user_id)
        end
        ## 
        ## Gets the userId property value. Identifier for the user that tried to enroll the device.
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. Identifier for the user that tried to enroll the device.
        ## @param value Value to set for the userId property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
    end
end
