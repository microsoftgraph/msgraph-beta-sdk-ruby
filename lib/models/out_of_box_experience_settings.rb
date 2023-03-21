require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Out of box experience setting
        class OutOfBoxExperienceSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The deviceUsageType property
            @device_usage_type
            ## 
            # Show or hide EULA to user
            @hide_e_u_l_a
            ## 
            # If set to true, then the user can't start over with different account, on company sign-in
            @hide_escape_link
            ## 
            # Show or hide privacy settings to user
            @hide_privacy_settings
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If set, then skip the keyboard selection page if Language and Region are set
            @skip_keyboard_selection_page
            ## 
            # The userType property
            @user_type
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
            ## Instantiates a new outOfBoxExperienceSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a out_of_box_experience_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OutOfBoxExperienceSettings.new
            end
            ## 
            ## Gets the deviceUsageType property value. The deviceUsageType property
            ## @return a windows_device_usage_type
            ## 
            def device_usage_type
                return @device_usage_type
            end
            ## 
            ## Sets the deviceUsageType property value. The deviceUsageType property
            ## @param value Value to set for the device_usage_type property.
            ## @return a void
            ## 
            def device_usage_type=(value)
                @device_usage_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceUsageType" => lambda {|n| @device_usage_type = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsDeviceUsageType) },
                    "hideEULA" => lambda {|n| @hide_e_u_l_a = n.get_boolean_value() },
                    "hideEscapeLink" => lambda {|n| @hide_escape_link = n.get_boolean_value() },
                    "hidePrivacySettings" => lambda {|n| @hide_privacy_settings = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "skipKeyboardSelectionPage" => lambda {|n| @skip_keyboard_selection_page = n.get_boolean_value() },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUserType) },
                }
            end
            ## 
            ## Gets the hideEULA property value. Show or hide EULA to user
            ## @return a boolean
            ## 
            def hide_e_u_l_a
                return @hide_e_u_l_a
            end
            ## 
            ## Sets the hideEULA property value. Show or hide EULA to user
            ## @param value Value to set for the hide_e_u_l_a property.
            ## @return a void
            ## 
            def hide_e_u_l_a=(value)
                @hide_e_u_l_a = value
            end
            ## 
            ## Gets the hideEscapeLink property value. If set to true, then the user can't start over with different account, on company sign-in
            ## @return a boolean
            ## 
            def hide_escape_link
                return @hide_escape_link
            end
            ## 
            ## Sets the hideEscapeLink property value. If set to true, then the user can't start over with different account, on company sign-in
            ## @param value Value to set for the hide_escape_link property.
            ## @return a void
            ## 
            def hide_escape_link=(value)
                @hide_escape_link = value
            end
            ## 
            ## Gets the hidePrivacySettings property value. Show or hide privacy settings to user
            ## @return a boolean
            ## 
            def hide_privacy_settings
                return @hide_privacy_settings
            end
            ## 
            ## Sets the hidePrivacySettings property value. Show or hide privacy settings to user
            ## @param value Value to set for the hide_privacy_settings property.
            ## @return a void
            ## 
            def hide_privacy_settings=(value)
                @hide_privacy_settings = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_enum_value("deviceUsageType", @device_usage_type)
                writer.write_boolean_value("hideEULA", @hide_e_u_l_a)
                writer.write_boolean_value("hideEscapeLink", @hide_escape_link)
                writer.write_boolean_value("hidePrivacySettings", @hide_privacy_settings)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("skipKeyboardSelectionPage", @skip_keyboard_selection_page)
                writer.write_enum_value("userType", @user_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the skipKeyboardSelectionPage property value. If set, then skip the keyboard selection page if Language and Region are set
            ## @return a boolean
            ## 
            def skip_keyboard_selection_page
                return @skip_keyboard_selection_page
            end
            ## 
            ## Sets the skipKeyboardSelectionPage property value. If set, then skip the keyboard selection page if Language and Region are set
            ## @param value Value to set for the skip_keyboard_selection_page property.
            ## @return a void
            ## 
            def skip_keyboard_selection_page=(value)
                @skip_keyboard_selection_page = value
            end
            ## 
            ## Gets the userType property value. The userType property
            ## @return a windows_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. The userType property
            ## @param value Value to set for the user_type property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
