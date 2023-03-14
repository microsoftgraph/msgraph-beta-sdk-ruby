require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class ApplicableContent
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The catalogEntry property
                @catalog_entry
                ## 
                # Collection of devices and recommendations for applicable catalog content.
                @matched_devices
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
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the catalogEntry property value. The catalogEntry property
                ## @return a catalog_entry
                ## 
                def catalog_entry
                    return @catalog_entry
                end
                ## 
                ## Sets the catalogEntry property value. The catalogEntry property
                ## @param value Value to set for the catalog_entry property.
                ## @return a void
                ## 
                def catalog_entry=(value)
                    @catalog_entry = value
                end
                ## 
                ## Instantiates a new applicableContent and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a applicable_content
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApplicableContent.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "catalogEntry" => lambda {|n| @catalog_entry = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::CatalogEntry.create_from_discriminator_value(pn) }) },
                        "matchedDevices" => lambda {|n| @matched_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::ApplicableContentDeviceMatch.create_from_discriminator_value(pn) }) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the matchedDevices property value. Collection of devices and recommendations for applicable catalog content.
                ## @return a applicable_content_device_match
                ## 
                def matched_devices
                    return @matched_devices
                end
                ## 
                ## Sets the matchedDevices property value. Collection of devices and recommendations for applicable catalog content.
                ## @param value Value to set for the matched_devices property.
                ## @return a void
                ## 
                def matched_devices=(value)
                    @matched_devices = value
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
                    writer.write_object_value("catalogEntry", @catalog_entry)
                    writer.write_collection_of_object_values("matchedDevices", @matched_devices)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
