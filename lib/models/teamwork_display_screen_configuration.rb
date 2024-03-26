require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkDisplayScreenConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The brightness level on the device (0-100). Not applicable for Microsoft Teams Rooms devices.
            @backlight_brightness
            ## 
            # Timeout for backlight (30-3600 secs). Not applicable for Teams Rooms devices.
            @backlight_timeout
            ## 
            # True if high contrast mode is enabled. Not applicable for Teams Rooms devices.
            @is_high_contrast_enabled
            ## 
            # True if screensaver is enabled. Not applicable for Teams Rooms devices.
            @is_screensaver_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Screensaver timeout from 30 to 3600 secs. Not applicable for Teams Rooms devices.
            @screensaver_timeout
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
            ## Gets the backlightBrightness property value. The brightness level on the device (0-100). Not applicable for Microsoft Teams Rooms devices.
            ## @return a integer
            ## 
            def backlight_brightness
                return @backlight_brightness
            end
            ## 
            ## Sets the backlightBrightness property value. The brightness level on the device (0-100). Not applicable for Microsoft Teams Rooms devices.
            ## @param value Value to set for the backlightBrightness property.
            ## @return a void
            ## 
            def backlight_brightness=(value)
                @backlight_brightness = value
            end
            ## 
            ## Gets the backlightTimeout property value. Timeout for backlight (30-3600 secs). Not applicable for Teams Rooms devices.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def backlight_timeout
                return @backlight_timeout
            end
            ## 
            ## Sets the backlightTimeout property value. Timeout for backlight (30-3600 secs). Not applicable for Teams Rooms devices.
            ## @param value Value to set for the backlightTimeout property.
            ## @return a void
            ## 
            def backlight_timeout=(value)
                @backlight_timeout = value
            end
            ## 
            ## Instantiates a new TeamworkDisplayScreenConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_display_screen_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkDisplayScreenConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "backlightBrightness" => lambda {|n| @backlight_brightness = n.get_number_value() },
                    "backlightTimeout" => lambda {|n| @backlight_timeout = n.get_duration_value() },
                    "isHighContrastEnabled" => lambda {|n| @is_high_contrast_enabled = n.get_boolean_value() },
                    "isScreensaverEnabled" => lambda {|n| @is_screensaver_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "screensaverTimeout" => lambda {|n| @screensaver_timeout = n.get_duration_value() },
                }
            end
            ## 
            ## Gets the isHighContrastEnabled property value. True if high contrast mode is enabled. Not applicable for Teams Rooms devices.
            ## @return a boolean
            ## 
            def is_high_contrast_enabled
                return @is_high_contrast_enabled
            end
            ## 
            ## Sets the isHighContrastEnabled property value. True if high contrast mode is enabled. Not applicable for Teams Rooms devices.
            ## @param value Value to set for the isHighContrastEnabled property.
            ## @return a void
            ## 
            def is_high_contrast_enabled=(value)
                @is_high_contrast_enabled = value
            end
            ## 
            ## Gets the isScreensaverEnabled property value. True if screensaver is enabled. Not applicable for Teams Rooms devices.
            ## @return a boolean
            ## 
            def is_screensaver_enabled
                return @is_screensaver_enabled
            end
            ## 
            ## Sets the isScreensaverEnabled property value. True if screensaver is enabled. Not applicable for Teams Rooms devices.
            ## @param value Value to set for the isScreensaverEnabled property.
            ## @return a void
            ## 
            def is_screensaver_enabled=(value)
                @is_screensaver_enabled = value
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
            ## Gets the screensaverTimeout property value. Screensaver timeout from 30 to 3600 secs. Not applicable for Teams Rooms devices.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def screensaver_timeout
                return @screensaver_timeout
            end
            ## 
            ## Sets the screensaverTimeout property value. Screensaver timeout from 30 to 3600 secs. Not applicable for Teams Rooms devices.
            ## @param value Value to set for the screensaverTimeout property.
            ## @return a void
            ## 
            def screensaver_timeout=(value)
                @screensaver_timeout = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("backlightBrightness", @backlight_brightness)
                writer.write_duration_value("backlightTimeout", @backlight_timeout)
                writer.write_boolean_value("isHighContrastEnabled", @is_high_contrast_enabled)
                writer.write_boolean_value("isScreensaverEnabled", @is_screensaver_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_duration_value("screensaverTimeout", @screensaver_timeout)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
