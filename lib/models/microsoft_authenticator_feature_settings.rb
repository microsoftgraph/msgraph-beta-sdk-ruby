require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MicrosoftAuthenticatorFeatureSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Determines whether users will be able to approve push notifications on other Microsoft applications such as Outlook Mobile.
            @companion_app_allowed_state
            ## 
            # Determines whether the user's Authenticator app will show them the client app they are signing into.
            @display_app_information_required_state
            ## 
            # Determines whether the user's Authenticator app will show them the geographic location of where the authentication request originated from.
            @display_location_information_required_state
            ## 
            # Specifies whether the user needs to enter a number in the Authenticator app from the login screen to complete their login. Value is ignored for phone sign-in notifications.
            @number_matching_required_state
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the companionAppAllowedState property value. Determines whether users will be able to approve push notifications on other Microsoft applications such as Outlook Mobile.
            ## @return a authentication_method_feature_configuration
            ## 
            def companion_app_allowed_state
                return @companion_app_allowed_state
            end
            ## 
            ## Sets the companionAppAllowedState property value. Determines whether users will be able to approve push notifications on other Microsoft applications such as Outlook Mobile.
            ## @param value Value to set for the companionAppAllowedState property.
            ## @return a void
            ## 
            def companion_app_allowed_state=(value)
                @companion_app_allowed_state = value
            end
            ## 
            ## Instantiates a new microsoftAuthenticatorFeatureSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_authenticator_feature_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftAuthenticatorFeatureSettings.new
            end
            ## 
            ## Gets the displayAppInformationRequiredState property value. Determines whether the user's Authenticator app will show them the client app they are signing into.
            ## @return a authentication_method_feature_configuration
            ## 
            def display_app_information_required_state
                return @display_app_information_required_state
            end
            ## 
            ## Sets the displayAppInformationRequiredState property value. Determines whether the user's Authenticator app will show them the client app they are signing into.
            ## @param value Value to set for the displayAppInformationRequiredState property.
            ## @return a void
            ## 
            def display_app_information_required_state=(value)
                @display_app_information_required_state = value
            end
            ## 
            ## Gets the displayLocationInformationRequiredState property value. Determines whether the user's Authenticator app will show them the geographic location of where the authentication request originated from.
            ## @return a authentication_method_feature_configuration
            ## 
            def display_location_information_required_state
                return @display_location_information_required_state
            end
            ## 
            ## Sets the displayLocationInformationRequiredState property value. Determines whether the user's Authenticator app will show them the geographic location of where the authentication request originated from.
            ## @param value Value to set for the displayLocationInformationRequiredState property.
            ## @return a void
            ## 
            def display_location_information_required_state=(value)
                @display_location_information_required_state = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "companionAppAllowedState" => lambda {|n| @companion_app_allowed_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodFeatureConfiguration.create_from_discriminator_value(pn) }) },
                    "displayAppInformationRequiredState" => lambda {|n| @display_app_information_required_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodFeatureConfiguration.create_from_discriminator_value(pn) }) },
                    "displayLocationInformationRequiredState" => lambda {|n| @display_location_information_required_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodFeatureConfiguration.create_from_discriminator_value(pn) }) },
                    "numberMatchingRequiredState" => lambda {|n| @number_matching_required_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodFeatureConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the numberMatchingRequiredState property value. Specifies whether the user needs to enter a number in the Authenticator app from the login screen to complete their login. Value is ignored for phone sign-in notifications.
            ## @return a authentication_method_feature_configuration
            ## 
            def number_matching_required_state
                return @number_matching_required_state
            end
            ## 
            ## Sets the numberMatchingRequiredState property value. Specifies whether the user needs to enter a number in the Authenticator app from the login screen to complete their login. Value is ignored for phone sign-in notifications.
            ## @param value Value to set for the numberMatchingRequiredState property.
            ## @return a void
            ## 
            def number_matching_required_state=(value)
                @number_matching_required_state = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("companionAppAllowedState", @companion_app_allowed_state)
                writer.write_object_value("displayAppInformationRequiredState", @display_app_information_required_state)
                writer.write_object_value("displayLocationInformationRequiredState", @display_location_information_required_state)
                writer.write_object_value("numberMatchingRequiredState", @number_matching_required_state)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
