require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationRedirectSettingDefinition < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # A deep link that points to the specific location in the Intune console where feature support must be managed from.
        @deep_link
        ## 
        # A message that explains that clicking the link will redirect the user to a supported page to manage the settings.
        @redirect_message
        ## 
        # Indicates the reason for redirecting the user to an alternative location in the console.  For example: WiFi profiles are not supported in the settings catalog and must be created with a template policy.
        @redirect_reason
        ## 
        ## Instantiates a new DeviceManagementConfigurationRedirectSettingDefinition and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_redirect_setting_definition
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationRedirectSettingDefinition.new
        end
        ## 
        ## Gets the deepLink property value. A deep link that points to the specific location in the Intune console where feature support must be managed from.
        ## @return a string
        ## 
        def deep_link
            return @deep_link
        end
        ## 
        ## Sets the deepLink property value. A deep link that points to the specific location in the Intune console where feature support must be managed from.
        ## @param value Value to set for the deepLink property.
        ## @return a void
        ## 
        def deep_link=(value)
            @deep_link = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deepLink" => lambda {|n| @deep_link = n.get_string_value() },
                "redirectMessage" => lambda {|n| @redirect_message = n.get_string_value() },
                "redirectReason" => lambda {|n| @redirect_reason = n.get_string_value() },
            })
        end
        ## 
        ## Gets the redirectMessage property value. A message that explains that clicking the link will redirect the user to a supported page to manage the settings.
        ## @return a string
        ## 
        def redirect_message
            return @redirect_message
        end
        ## 
        ## Sets the redirectMessage property value. A message that explains that clicking the link will redirect the user to a supported page to manage the settings.
        ## @param value Value to set for the redirectMessage property.
        ## @return a void
        ## 
        def redirect_message=(value)
            @redirect_message = value
        end
        ## 
        ## Gets the redirectReason property value. Indicates the reason for redirecting the user to an alternative location in the console.  For example: WiFi profiles are not supported in the settings catalog and must be created with a template policy.
        ## @return a string
        ## 
        def redirect_reason
            return @redirect_reason
        end
        ## 
        ## Sets the redirectReason property value. Indicates the reason for redirecting the user to an alternative location in the console.  For example: WiFi profiles are not supported in the settings catalog and must be created with a template policy.
        ## @param value Value to set for the redirectReason property.
        ## @return a void
        ## 
        def redirect_reason=(value)
            @redirect_reason = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("deepLink", @deep_link)
            writer.write_string_value("redirectMessage", @redirect_message)
            writer.write_string_value("redirectReason", @redirect_reason)
        end
    end
end
