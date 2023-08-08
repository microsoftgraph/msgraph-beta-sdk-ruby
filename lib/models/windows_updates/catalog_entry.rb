require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class CatalogEntry < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The date on which the content is no longer available to deploy using the service. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
                @deployable_until_date_time
                ## 
                # The display name of the content. Read-only.
                @display_name
                ## 
                # The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
                @release_date_time
                ## 
                ## Instantiates a new catalogEntry and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a catalog_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry"
                                return DriverUpdateCatalogEntry.new
                            when "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry"
                                return FeatureUpdateCatalogEntry.new
                            when "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry"
                                return QualityUpdateCatalogEntry.new
                            when "#microsoft.graph.windowsUpdates.softwareUpdateCatalogEntry"
                                return SoftwareUpdateCatalogEntry.new
                        end
                    end
                    return CatalogEntry.new
                end
                ## 
                ## Gets the deployableUntilDateTime property value. The date on which the content is no longer available to deploy using the service. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
                ## @return a date_time
                ## 
                def deployable_until_date_time
                    return @deployable_until_date_time
                end
                ## 
                ## Sets the deployableUntilDateTime property value. The date on which the content is no longer available to deploy using the service. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
                ## @param value Value to set for the deployableUntilDateTime property.
                ## @return a void
                ## 
                def deployable_until_date_time=(value)
                    @deployable_until_date_time = value
                end
                ## 
                ## Gets the displayName property value. The display name of the content. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name of the content. Read-only.
                ## @param value Value to set for the displayName property.
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
                        "deployableUntilDateTime" => lambda {|n| @deployable_until_date_time = n.get_date_time_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "releaseDateTime" => lambda {|n| @release_date_time = n.get_date_time_value() },
                    })
                end
                ## 
                ## Gets the releaseDateTime property value. The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
                ## @return a date_time
                ## 
                def release_date_time
                    return @release_date_time
                end
                ## 
                ## Sets the releaseDateTime property value. The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
                ## @param value Value to set for the releaseDateTime property.
                ## @return a void
                ## 
                def release_date_time=(value)
                    @release_date_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_date_time_value("deployableUntilDateTime", @deployable_until_date_time)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_date_time_value("releaseDateTime", @release_date_time)
                end
            end
        end
    end
end
