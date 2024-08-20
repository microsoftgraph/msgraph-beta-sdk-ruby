require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SharingViewpoint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The defaultSharingLink property
            @default_sharing_link
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The sharingAbilities property
            @sharing_abilities
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
            ## Instantiates a new SharingViewpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sharing_viewpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharingViewpoint.new
            end
            ## 
            ## Gets the defaultSharingLink property value. The defaultSharingLink property
            ## @return a default_sharing_link
            ## 
            def default_sharing_link
                return @default_sharing_link
            end
            ## 
            ## Sets the defaultSharingLink property value. The defaultSharingLink property
            ## @param value Value to set for the defaultSharingLink property.
            ## @return a void
            ## 
            def default_sharing_link=(value)
                @default_sharing_link = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultSharingLink" => lambda {|n| @default_sharing_link = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DefaultSharingLink.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sharingAbilities" => lambda {|n| @sharing_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharePointSharingAbilities.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("defaultSharingLink", @default_sharing_link)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("sharingAbilities", @sharing_abilities)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sharingAbilities property value. The sharingAbilities property
            ## @return a share_point_sharing_abilities
            ## 
            def sharing_abilities
                return @sharing_abilities
            end
            ## 
            ## Sets the sharingAbilities property value. The sharingAbilities property
            ## @param value Value to set for the sharingAbilities property.
            ## @return a void
            ## 
            def sharing_abilities=(value)
                @sharing_abilities = value
            end
        end
    end
end
