require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesApplicableContentDeviceMatch
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The deviceId property
            @device_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Collection of vendors who recommend the content.
            @recommended_by
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
            ## Instantiates a new windowsUpdatesApplicableContentDeviceMatch and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_applicable_content_device_match
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesApplicableContentDeviceMatch.new
            end
            ## 
            ## Gets the deviceId property value. The deviceId property
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The deviceId property
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommendedBy" => lambda {|n| @recommended_by = n.get_collection_of_primitive_values(String) },
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
            ## Gets the recommendedBy property value. Collection of vendors who recommend the content.
            ## @return a string
            ## 
            def recommended_by
                return @recommended_by
            end
            ## 
            ## Sets the recommendedBy property value. Collection of vendors who recommend the content.
            ## @param value Value to set for the recommendedBy property.
            ## @return a void
            ## 
            def recommended_by=(value)
                @recommended_by = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("recommendedBy", @recommended_by)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
