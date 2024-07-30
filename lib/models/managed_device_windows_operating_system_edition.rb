require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Different Windows' versions have Edition specific support timelines. This complex type defines the date until which a particular edition is supported in a Windows' version.
        class ManagedDeviceWindowsOperatingSystemEdition
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Windows Operating System is available in different editions, which have a specific set of features available. This enum type defines the corresponding edition.
            @edition_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the Date until which this Operating System edition type is officially supported. The Timestamp type represents date and time information using ISO 8601 format and is always in Pacific Time Zone (PT). For example, 2014-01-01 would mean '2014-01-01T07:00:00Z' in UTC time. Returned by default. Read-only.
            @support_end_date
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
            ## Instantiates a new ManagedDeviceWindowsOperatingSystemEdition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_windows_operating_system_edition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDeviceWindowsOperatingSystemEdition.new
            end
            ## 
            ## Gets the editionType property value. Windows Operating System is available in different editions, which have a specific set of features available. This enum type defines the corresponding edition.
            ## @return a managed_device_windows_operating_system_edition_type
            ## 
            def edition_type
                return @edition_type
            end
            ## 
            ## Sets the editionType property value. Windows Operating System is available in different editions, which have a specific set of features available. This enum type defines the corresponding edition.
            ## @param value Value to set for the editionType property.
            ## @return a void
            ## 
            def edition_type=(value)
                @edition_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "editionType" => lambda {|n| @edition_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedDeviceWindowsOperatingSystemEditionType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "supportEndDate" => lambda {|n| @support_end_date = n.get_date_value() },
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
                writer.write_enum_value("editionType", @edition_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_value("supportEndDate", @support_end_date)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the supportEndDate property value. Indicates the Date until which this Operating System edition type is officially supported. The Timestamp type represents date and time information using ISO 8601 format and is always in Pacific Time Zone (PT). For example, 2014-01-01 would mean '2014-01-01T07:00:00Z' in UTC time. Returned by default. Read-only.
            ## @return a date
            ## 
            def support_end_date
                return @support_end_date
            end
            ## 
            ## Sets the supportEndDate property value. Indicates the Date until which this Operating System edition type is officially supported. The Timestamp type represents date and time information using ISO 8601 format and is always in Pacific Time Zone (PT). For example, 2014-01-01 would mean '2014-01-01T07:00:00Z' in UTC time. Returned by default. Read-only.
            ## @param value Value to set for the supportEndDate property.
            ## @return a void
            ## 
            def support_end_date=(value)
                @support_end_date = value
            end
        end
    end
end
