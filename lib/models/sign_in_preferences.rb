require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SignInPreferences
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the credential preferences of the system are enabled.
            @is_system_preferred_authentication_method_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The default second-factor method used by the user when signing in. If a user is enabled for system-preferred authentication, then this value is ignored except for a few scenarios where a user is authenticating via NPS extension or ADFS adapter. Possible values are push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, and unknownFutureValue
            @user_preferred_method_for_secondary_authentication
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new signInPreferences and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sign_in_preferences
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignInPreferences.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isSystemPreferredAuthenticationMethodEnabled" => lambda {|n| @is_system_preferred_authentication_method_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userPreferredMethodForSecondaryAuthentication" => lambda {|n| @user_preferred_method_for_secondary_authentication = n.get_enum_value(MicrosoftGraphBeta::Models::UserDefaultAuthenticationMethodType) },
                }
            end
            ## 
            ## Gets the isSystemPreferredAuthenticationMethodEnabled property value. Indicates whether the credential preferences of the system are enabled.
            ## @return a boolean
            ## 
            def is_system_preferred_authentication_method_enabled
                return @is_system_preferred_authentication_method_enabled
            end
            ## 
            ## Sets the isSystemPreferredAuthenticationMethodEnabled property value. Indicates whether the credential preferences of the system are enabled.
            ## @param value Value to set for the isSystemPreferredAuthenticationMethodEnabled property.
            ## @return a void
            ## 
            def is_system_preferred_authentication_method_enabled=(value)
                @is_system_preferred_authentication_method_enabled = value
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
                writer.write_boolean_value("isSystemPreferredAuthenticationMethodEnabled", @is_system_preferred_authentication_method_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("userPreferredMethodForSecondaryAuthentication", @user_preferred_method_for_secondary_authentication)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userPreferredMethodForSecondaryAuthentication property value. The default second-factor method used by the user when signing in. If a user is enabled for system-preferred authentication, then this value is ignored except for a few scenarios where a user is authenticating via NPS extension or ADFS adapter. Possible values are push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, and unknownFutureValue
            ## @return a user_default_authentication_method_type
            ## 
            def user_preferred_method_for_secondary_authentication
                return @user_preferred_method_for_secondary_authentication
            end
            ## 
            ## Sets the userPreferredMethodForSecondaryAuthentication property value. The default second-factor method used by the user when signing in. If a user is enabled for system-preferred authentication, then this value is ignored except for a few scenarios where a user is authenticating via NPS extension or ADFS adapter. Possible values are push, oath, voiceMobile, voiceAlternateMobile, voiceOffice, sms, and unknownFutureValue
            ## @param value Value to set for the userPreferredMethodForSecondaryAuthentication property.
            ## @return a void
            ## 
            def user_preferred_method_for_secondary_authentication=(value)
                @user_preferred_method_for_secondary_authentication = value
            end
        end
    end
end
