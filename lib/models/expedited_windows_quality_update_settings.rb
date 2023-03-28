require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A complex type to store the expedited quality update settings such as release date and days until forced reboot.
        class ExpeditedWindowsQualityUpdateSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of days after installation that forced reboot will happen.
            @days_until_forced_reboot
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The release date to identify a quality update.
            @quality_update_release
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
            ## Instantiates a new expeditedWindowsQualityUpdateSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a expedited_windows_quality_update_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExpeditedWindowsQualityUpdateSettings.new
            end
            ## 
            ## Gets the daysUntilForcedReboot property value. The number of days after installation that forced reboot will happen.
            ## @return a integer
            ## 
            def days_until_forced_reboot
                return @days_until_forced_reboot
            end
            ## 
            ## Sets the daysUntilForcedReboot property value. The number of days after installation that forced reboot will happen.
            ## @param value Value to set for the days_until_forced_reboot property.
            ## @return a void
            ## 
            def days_until_forced_reboot=(value)
                @days_until_forced_reboot = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "daysUntilForcedReboot" => lambda {|n| @days_until_forced_reboot = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "qualityUpdateRelease" => lambda {|n| @quality_update_release = n.get_string_value() },
                }
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
            ## Gets the qualityUpdateRelease property value. The release date to identify a quality update.
            ## @return a string
            ## 
            def quality_update_release
                return @quality_update_release
            end
            ## 
            ## Sets the qualityUpdateRelease property value. The release date to identify a quality update.
            ## @param value Value to set for the quality_update_release property.
            ## @return a void
            ## 
            def quality_update_release=(value)
                @quality_update_release = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("daysUntilForcedReboot", @days_until_forced_reboot)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("qualityUpdateRelease", @quality_update_release)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
