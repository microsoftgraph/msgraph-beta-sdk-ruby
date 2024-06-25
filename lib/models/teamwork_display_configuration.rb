require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkDisplayConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The list of configured displays. Applicable only for Microsoft Teams Rooms devices.
            @configured_displays
            ## 
            # Total number of connected displays, including the inbuilt display. Applicable only for Teams Rooms devices.
            @display_count
            ## 
            # Configuration for the inbuilt display. Not applicable for Teams Rooms devices.
            @in_built_display_screen_configuration
            ## 
            # True if content duplication is allowed. Applicable only for Teams Rooms devices.
            @is_content_duplication_allowed
            ## 
            # True if dual display mode is enabled. If isDualDisplayModeEnabled is true, then the content will be displayed on both front of room screens instead of just the one screen, when it is shared via the HDMI ingest module on the Microsoft Teams Rooms device. Applicable only for Teams Rooms devices.
            @is_dual_display_mode_enabled
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the configuredDisplays property value. The list of configured displays. Applicable only for Microsoft Teams Rooms devices.
            ## @return a teamwork_configured_peripheral
            ## 
            def configured_displays
                return @configured_displays
            end
            ## 
            ## Sets the configuredDisplays property value. The list of configured displays. Applicable only for Microsoft Teams Rooms devices.
            ## @param value Value to set for the configuredDisplays property.
            ## @return a void
            ## 
            def configured_displays=(value)
                @configured_displays = value
            end
            ## 
            ## Instantiates a new TeamworkDisplayConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_display_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkDisplayConfiguration.new
            end
            ## 
            ## Gets the displayCount property value. Total number of connected displays, including the inbuilt display. Applicable only for Teams Rooms devices.
            ## @return a integer
            ## 
            def display_count
                return @display_count
            end
            ## 
            ## Sets the displayCount property value. Total number of connected displays, including the inbuilt display. Applicable only for Teams Rooms devices.
            ## @param value Value to set for the displayCount property.
            ## @return a void
            ## 
            def display_count=(value)
                @display_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "configuredDisplays" => lambda {|n| @configured_displays = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkConfiguredPeripheral.create_from_discriminator_value(pn) }) },
                    "displayCount" => lambda {|n| @display_count = n.get_number_value() },
                    "inBuiltDisplayScreenConfiguration" => lambda {|n| @in_built_display_screen_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDisplayScreenConfiguration.create_from_discriminator_value(pn) }) },
                    "isContentDuplicationAllowed" => lambda {|n| @is_content_duplication_allowed = n.get_boolean_value() },
                    "isDualDisplayModeEnabled" => lambda {|n| @is_dual_display_mode_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the inBuiltDisplayScreenConfiguration property value. Configuration for the inbuilt display. Not applicable for Teams Rooms devices.
            ## @return a teamwork_display_screen_configuration
            ## 
            def in_built_display_screen_configuration
                return @in_built_display_screen_configuration
            end
            ## 
            ## Sets the inBuiltDisplayScreenConfiguration property value. Configuration for the inbuilt display. Not applicable for Teams Rooms devices.
            ## @param value Value to set for the inBuiltDisplayScreenConfiguration property.
            ## @return a void
            ## 
            def in_built_display_screen_configuration=(value)
                @in_built_display_screen_configuration = value
            end
            ## 
            ## Gets the isContentDuplicationAllowed property value. True if content duplication is allowed. Applicable only for Teams Rooms devices.
            ## @return a boolean
            ## 
            def is_content_duplication_allowed
                return @is_content_duplication_allowed
            end
            ## 
            ## Sets the isContentDuplicationAllowed property value. True if content duplication is allowed. Applicable only for Teams Rooms devices.
            ## @param value Value to set for the isContentDuplicationAllowed property.
            ## @return a void
            ## 
            def is_content_duplication_allowed=(value)
                @is_content_duplication_allowed = value
            end
            ## 
            ## Gets the isDualDisplayModeEnabled property value. True if dual display mode is enabled. If isDualDisplayModeEnabled is true, then the content will be displayed on both front of room screens instead of just the one screen, when it is shared via the HDMI ingest module on the Microsoft Teams Rooms device. Applicable only for Teams Rooms devices.
            ## @return a boolean
            ## 
            def is_dual_display_mode_enabled
                return @is_dual_display_mode_enabled
            end
            ## 
            ## Sets the isDualDisplayModeEnabled property value. True if dual display mode is enabled. If isDualDisplayModeEnabled is true, then the content will be displayed on both front of room screens instead of just the one screen, when it is shared via the HDMI ingest module on the Microsoft Teams Rooms device. Applicable only for Teams Rooms devices.
            ## @param value Value to set for the isDualDisplayModeEnabled property.
            ## @return a void
            ## 
            def is_dual_display_mode_enabled=(value)
                @is_dual_display_mode_enabled = value
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
                writer.write_collection_of_object_values("configuredDisplays", @configured_displays)
                writer.write_number_value("displayCount", @display_count)
                writer.write_object_value("inBuiltDisplayScreenConfiguration", @in_built_display_screen_configuration)
                writer.write_boolean_value("isContentDuplicationAllowed", @is_content_duplication_allowed)
                writer.write_boolean_value("isDualDisplayModeEnabled", @is_dual_display_mode_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
