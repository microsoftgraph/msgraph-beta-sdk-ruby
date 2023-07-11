require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that describes tenant level settings for derived credentials
        class DeviceManagementDerivedCredentialSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name for the profile.
            @display_name
            ## 
            # The URL that will be accessible to end users as they retrieve a derived credential using the Company Portal.
            @help_url
            ## 
            # Supported values for the derived credential issuer.
            @issuer
            ## 
            # Supported values for the notification type to use.
            @notification_type
            ## 
            # The nominal percentage of time before certificate renewal is initiated by the client.
            @renewal_threshold_percentage
            ## 
            ## Instantiates a new deviceManagementDerivedCredentialSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_derived_credential_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementDerivedCredentialSettings.new
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "helpUrl" => lambda {|n| @help_url = n.get_string_value() },
                    "issuer" => lambda {|n| @issuer = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementDerivedCredentialIssuer) },
                    "notificationType" => lambda {|n| @notification_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementDerivedCredentialNotificationType) },
                    "renewalThresholdPercentage" => lambda {|n| @renewal_threshold_percentage = n.get_number_value() },
                })
            end
            ## 
            ## Gets the helpUrl property value. The URL that will be accessible to end users as they retrieve a derived credential using the Company Portal.
            ## @return a string
            ## 
            def help_url
                return @help_url
            end
            ## 
            ## Sets the helpUrl property value. The URL that will be accessible to end users as they retrieve a derived credential using the Company Portal.
            ## @param value Value to set for the help_url property.
            ## @return a void
            ## 
            def help_url=(value)
                @help_url = value
            end
            ## 
            ## Gets the issuer property value. Supported values for the derived credential issuer.
            ## @return a device_management_derived_credential_issuer
            ## 
            def issuer
                return @issuer
            end
            ## 
            ## Sets the issuer property value. Supported values for the derived credential issuer.
            ## @param value Value to set for the issuer property.
            ## @return a void
            ## 
            def issuer=(value)
                @issuer = value
            end
            ## 
            ## Gets the notificationType property value. Supported values for the notification type to use.
            ## @return a device_management_derived_credential_notification_type
            ## 
            def notification_type
                return @notification_type
            end
            ## 
            ## Sets the notificationType property value. Supported values for the notification type to use.
            ## @param value Value to set for the notification_type property.
            ## @return a void
            ## 
            def notification_type=(value)
                @notification_type = value
            end
            ## 
            ## Gets the renewalThresholdPercentage property value. The nominal percentage of time before certificate renewal is initiated by the client.
            ## @return a integer
            ## 
            def renewal_threshold_percentage
                return @renewal_threshold_percentage
            end
            ## 
            ## Sets the renewalThresholdPercentage property value. The nominal percentage of time before certificate renewal is initiated by the client.
            ## @param value Value to set for the renewal_threshold_percentage property.
            ## @return a void
            ## 
            def renewal_threshold_percentage=(value)
                @renewal_threshold_percentage = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("helpUrl", @help_url)
                writer.write_enum_value("issuer", @issuer)
                writer.write_enum_value("notificationType", @notification_type)
                writer.write_number_value("renewalThresholdPercentage", @renewal_threshold_percentage)
            end
        end
    end
end
