require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class ContentApplicabilitySettings
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Offer if the update is recommended by a vendor in the list, otherwise withhold the offer.
                @offer_while_recommended_by
                ## 
                # Settings for governing safeguard holds on offering content.
                @safeguard
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
                ## Instantiates a new contentApplicabilitySettings and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a content_applicability_settings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ContentApplicabilitySettings.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "offerWhileRecommendedBy" => lambda {|n| @offer_while_recommended_by = n.get_collection_of_primitive_values(String) },
                        "safeguard" => lambda {|n| @safeguard = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::SafeguardSettings.create_from_discriminator_value(pn) }) },
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
                ## Gets the offerWhileRecommendedBy property value. Offer if the update is recommended by a vendor in the list, otherwise withhold the offer.
                ## @return a string
                ## 
                def offer_while_recommended_by
                    return @offer_while_recommended_by
                end
                ## 
                ## Sets the offerWhileRecommendedBy property value. Offer if the update is recommended by a vendor in the list, otherwise withhold the offer.
                ## @param value Value to set for the offer_while_recommended_by property.
                ## @return a void
                ## 
                def offer_while_recommended_by=(value)
                    @offer_while_recommended_by = value
                end
                ## 
                ## Gets the safeguard property value. Settings for governing safeguard holds on offering content.
                ## @return a safeguard_settings
                ## 
                def safeguard
                    return @safeguard
                end
                ## 
                ## Sets the safeguard property value. Settings for governing safeguard holds on offering content.
                ## @param value Value to set for the safeguard property.
                ## @return a void
                ## 
                def safeguard=(value)
                    @safeguard = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_collection_of_primitive_values("offerWhileRecommendedBy", @offer_while_recommended_by)
                    writer.write_object_value("safeguard", @safeguard)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
