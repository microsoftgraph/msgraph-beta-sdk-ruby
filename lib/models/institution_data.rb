require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InstitutionData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Short description of the institution the user studied at.
            @description
            ## 
            # Name of the institution the user studied at.
            @display_name
            ## 
            # Address or location of the institute.
            @location
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Link to the institution or department homepage.
            @web_url
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
            ## Instantiates a new InstitutionData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a institution_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InstitutionData.new
            end
            ## 
            ## Gets the description property value. Short description of the institution the user studied at.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Short description of the institution the user studied at.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Name of the institution the user studied at.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the institution the user studied at.
            ## @param value Value to set for the display_name property.
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
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the location property value. Address or location of the institute.
            ## @return a physical_address
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. Address or location of the institute.
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
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
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("location", @location)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("webUrl", @web_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the webUrl property value. Link to the institution or department homepage.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Link to the institution or department homepage.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
