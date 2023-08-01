require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SiteSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The language tag for the language used on this site.
            @language_tag
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the time offset for the time zone of the site from Coordinated Universal Time (UTC).
            @time_zone
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
            ## Instantiates a new siteSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a site_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SiteSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
                }
            end
            ## 
            ## Gets the languageTag property value. The language tag for the language used on this site.
            ## @return a string
            ## 
            def language_tag
                return @language_tag
            end
            ## 
            ## Sets the languageTag property value. The language tag for the language used on this site.
            ## @param value Value to set for the languageTag property.
            ## @return a void
            ## 
            def language_tag=(value)
                @language_tag = value
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
                writer.write_string_value("languageTag", @language_tag)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("timeZone", @time_zone)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeZone property value. Indicates the time offset for the time zone of the site from Coordinated Universal Time (UTC).
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. Indicates the time offset for the time zone of the site from Coordinated Universal Time (UTC).
            ## @param value Value to set for the timeZone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
        end
    end
end
